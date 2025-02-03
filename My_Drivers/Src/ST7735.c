/**
 * TFT display realisation
 */

#include "ST7735.h"
#include "ST7735_FONT.h"
#include "cmsis_os.h"
#include <stm32f4xx_hal.h>
#include <stdlib.h>
#include <stdint.h>

extern osMutexId_t ScreenMutexHandle;
/**
 * @brief Swaps two 16-bit integers.
 * @details Exchanges the values of two 16-bit integers.
 * @param a The first integer.
 * @param b The second integer.
 */
#define swap16(a, b)      \
	{                     \
		uint16_t t = (a); \
		(a) = (b);        \
		(b) = (t);        \
	}

/* This handle is used for SPI communication with the LCD display. */
extern SPI_HandleTypeDef hspi2;

/**
 * @brief Initialization commands for the ST7735R display.
 * @details Contains a list of initialization commands to configure the ST7735R display.
 * The commands include settings for frame rate, power control, gamma correction, and more.
 */
const uint8_t Rcmd[] = {                // 7735R init, part 1 (red or green tab)
		21,                             // Number of commands in the list
		ST77XX_SWRESET, ST_CMD_DELAY,   //  1: Software reset, 0 args, w/delay
		150,                            //     150 ms delay
		ST77XX_SLPOUT, ST_CMD_DELAY,    //  2: Out of sleep mode, 0 args, w/delay
		255,                            //     500 ms delay
		ST7735_FRMCTR1, 3,              //  3: Framerate control - normal mode, 3 args:
		0x01, 0x2C, 0x2D,               //     Rate = fosc/(1x2+40) * (LINE+2C+2D)
		ST7735_FRMCTR2, 3,              //  4: Framerate control - idle mode, 3 args:
		0x01, 0x2C, 0x2D,               //     Rate = fosc/(1x2+40) * (LINE+2C+2D)
		ST7735_FRMCTR3, 6,              //  5: Framerate - partial mode, 6 args:
		0x01, 0x2C, 0x2D,               //     Dot inversion mode
		0x01, 0x2C, 0x2D,               //     Line inversion mode
		ST7735_INVCTR, 1,               //  6: Display inversion control, 1 arg:
		0x07,                           //     No inversion
		ST7735_PWCTR1, 3,               //  7: Power control, 3 args, no delay:
		0xA2,                           //     Power settings
		0x02,                           //     -4.6V
		0x84,                           //     AUTO mode
		ST7735_PWCTR2, 1,               //  8: Power control, 1 arg, no delay:
		0xC5,                           //     VGH25=2.4C VGSEL=-10 VGH=3 * AVDD
		ST7735_PWCTR3, 2,               //  9: Power control, 2 args, no delay:
		0x0A,                           //     Opamp current small
		0x00,                           //     Boost frequency
		ST7735_PWCTR4, 2,               // 10: Power control, 2 args, no delay:
		0x8A,                           //     BCLK/2
		0x2A,                           //     Opamp current small & medium low
		ST7735_PWCTR5, 2,               // 11: Power control, 2 args, no delay:
		0x8A, 0xEE, ST7735_VMCTR1, 1,   // 12: Power control, 1 arg, no delay:
		0x0E,                           //     Additional settings
		ST77XX_INVOFF, 0,               // 13: Don't invert display, no args
		ST77XX_MADCTL, 1,               // 14: Memory access control (directions), 1 arg:
		0xC8,                           //     Row/col address, bottom-top refresh
		ST77XX_COLMOD, 1,               // 15: Set color mode, 1 arg, no delay:
		0x05,                           //     16-bit color mode
		ST77XX_CASET, 4,                //  1: Column address set, 4 args, no delay:
		0x00, 0x00,                     //     XSTART = 0
		0x00, 0x7F,                     //     XEND = 127
		ST77XX_RASET, 4,                //  2: Row address set, 4 args, no delay:
		0x00, 0x00,                     //     YSTART = 0
		0x00, 0x9F,                     //     YEND = 159
		ST7735_GMCTRP1, 16,       //  1: Gamma Adjustments (positive polarity), 16 args + delay:
		0x02, 0x1c, 0x07, 0x12,   //     Provides accurate colors
		0x37, 0x32, 0x29, 0x2d,   //     (Not entirely necessary)
		0x29, 0x25, 0x2B, 0x39, 0x00, 0x01, 0x03, 0x10, ST7735_GMCTRN1,
		16,                       //  2: Gamma Adjustments (negative polarity), 16 args + delay:
		0x03, 0x1d, 0x07, 0x06,   //     Provides accurate colors
		0x2E, 0x2C, 0x29, 0x2D,   //     (Not entirely necessary)
		0x2E, 0x2E, 0x37, 0x3F, 0x00, 0x00, 0x02, 0x10, ST77XX_NORON,
		ST_CMD_DELAY,                  //  3: Normal display on, no args, w/delay
		10,                            //     10 ms delay
		ST77XX_DISPON, ST_CMD_DELAY,   //  4: Main screen turn on, no args w/delay
		100};                          //     100 ms delay

/* Stores the rotation setting of the display (0-3). */
static uint8_t rotation;

/* Stores the start coordinates for drawing on the display. */
static uint16_t _xstart, _ystart;

/* Stores the dimensions of the display. */
static uint16_t _width, _height;

/* Stores the start coordinates for column and row address settings. */
static uint8_t _colstart, _rowstart;

/* Stores the current cursor position for text drawing. */
static uint16_t cursor_y = 0, cursor_x = 0;

/* Stores the size multiplier for text rendering in both directions. */
static uint16_t textsize_x = 1, textsize_y = 1;

/* Stores the color used for rendering text. */
static uint16_t textcolor = ST77XX_WHITE;

/* Stores the background color used for text rendering. */
static uint16_t textbgcolor = ST77XX_BLACK;

/* Indicates whether text should wrap at the end of a line. */
static uint8_t wrap = 1;

/**
 * @brief Starts a write operation to the ST7735 display.
 * @details This function asserts the Chip Select (CS) pin to begin communication with the display.
 */
static void ST7735_start_write(void) {
	HAL_GPIO_WritePin(LCD_CS_GPIO_Port, LCD_CS_Pin, GPIO_PIN_RESET);
}

/**
 * @brief Ends a write operation to the ST7735 display.
 * @details This function de-asserts the Chip Select (CS) pin to end communication with the display.
 */
static void ST7735_end_write(void) {
	HAL_GPIO_WritePin(LCD_CS_GPIO_Port, LCD_CS_Pin, GPIO_PIN_SET);
}

/**
 * @brief Starts a command transmission to the ST7735 display.
 * @details This function asserts the A0 pin to indicate that the following bytes will be command data.
 */
static void ST7735_start_command(void) {
	HAL_GPIO_WritePin(LCD_A0_GPIO_Port, LCD_A0_Pin, GPIO_PIN_RESET);
}

/**
 * @brief Starts a data transmission to the ST7735 display.
 * @details This function asserts the A0 pin to indicate that the following bytes will be data.
 */
static void ST7735_start_data(void) {
	HAL_GPIO_WritePin(LCD_A0_GPIO_Port, LCD_A0_Pin, GPIO_PIN_SET);
}

/**
 * @brief Sends a command byte to the ST7735 display over SPI.
 * @details This function starts a command transmission, sends the command byte, and handles errors.
 * @param command The command byte to be sent to the display.
 */
static void ST7735_spi_send_com(uint8_t command) {
	HAL_StatusTypeDef status;

	/* Start command transmission */
	ST7735_start_command();

	/* Transmit command byte */
	status = HAL_SPI_Transmit(&hspi2, &command, 1, 1000);

	/* Check transmission status */
	if (status != HAL_OK) {
		/* If transmission fails, enter an infinite loop */
		while (status != HAL_OK) {
			HAL_Delay(20); /* Delay to avoid rapid loop iteration */
			status = HAL_SPI_Transmit(&hspi2, &command, 1, 1000);
		}
	}
}

/**
 * @brief Sends data bytes to the ST7735 display over SPI.
 * @details This function starts a data transmission, sends the data bytes, and handles errors.
 * @param data Pointer to the data bytes to be sent to the display.
 * @param size Number of bytes to be transmitted.
 */
static void ST7735_spi_send_data(uint8_t *data, size_t size) {
	HAL_StatusTypeDef status;

	if (size) {
		/* Start data transmission */
		ST7735_start_data();

		/* Transmit data bytes */
		status = HAL_SPI_Transmit(&hspi2, data, size, 1000);

		/* Check transmission status */
		if (status != HAL_OK) {
			/* If transmission fails, enter an infinite loop */
			while (1) {
				/* Infinite loop to handle error */
			}
		}
	}
}

/**
 * @brief Sets the drawing window on the ST7735 display.
 * @details This function configures the column and row address ranges where subsequent drawing commands will affect.
 * @param x Starting X-coordinate of the window.
 * @param y Starting Y-coordinate of the window.
 * @param w Width of the window.
 * @param h Height of the window.
 */
static void ST7735_set_window(uint16_t x, uint16_t y, uint16_t w, uint16_t h) {
	/* Adjust coordinates by start offsets */
	x += _xstart;
	y += _ystart;

	/* Prepare column address data */
	uint8_t xa[4] = {x >> 8, x, (x + w - 1) >> 8, (x + w - 1)};

	/* Prepare row address data */
	uint8_t ya[4] = {y >> 8, y, (y + h - 1) >> 8, (y + h - 1)};

	/* Set column address */
	ST7735_spi_send_com(ST77XX_CASET);
	ST7735_spi_send_data(xa, 4);

	/* Set row address */
	ST7735_spi_send_com(ST77XX_RASET);
	ST7735_spi_send_data(ya, 4);

	/* Write to memory */
	ST7735_spi_send_com(ST77XX_RAMWR);
}

int ST7735_init(void) {
	uint8_t num_commands, cmd, numArgs;
	uint16_t ms;

	/* Pointer to the command list */
	const uint8_t *ptr = Rcmd;

	/* Set the reset pin high */
	HAL_GPIO_WritePin(LCD_RESET_GPIO_Port, LCD_RESET_Pin, GPIO_PIN_SET);
	HAL_Delay(100);
	/* Set the reset pin low */
	HAL_GPIO_WritePin(LCD_RESET_GPIO_Port, LCD_RESET_Pin, GPIO_PIN_RESET);
	HAL_Delay(100);
	/* Set the reset pin high again */
	HAL_GPIO_WritePin(LCD_RESET_GPIO_Port, LCD_RESET_Pin, GPIO_PIN_SET);
	HAL_Delay(100);

	/* Read the number of commands to execute */
	num_commands = *ptr++;
	while (num_commands--) {
		/* Read the command */
		cmd = *ptr++;
		/* Read the number of arguments for the command */
		numArgs = *ptr++;
		/* Check if a delay is needed */
		ms = numArgs & ST_CMD_DELAY;
		numArgs &= ~ST_CMD_DELAY;
		/* Start writing to the display */
		ST7735_start_write();
		/* Send the command to the display */
		ST7735_spi_send_com(cmd);
		/* Send the arguments to the display */
		ST7735_spi_send_data((uint8_t *)ptr, numArgs);
		/* End writing to the display */
		ST7735_end_write();
		ptr += numArgs;

		if (ms) {
			/* Read the delay time */
			ms = *ptr++;
			if (ms == 255)
				ms = 500;
			HAL_Delay(ms);
		}
	}

	ST7735_start_write();
	/* Set the display rotation */
	ST7735_set_rotation(2);
	ST7735_end_write();

	return 0;
}

int ST7735_set_rotation(int m) {
	uint8_t madctl = 0;

	/* Ensure rotation value is between 0 and 3 */
	rotation = m & 3;

	switch (rotation) {
		case 0:
			/* Set MADCTL for rotation 0 */
			madctl = ST77XX_MADCTL_MX | ST77XX_MADCTL_MY | ST77XX_MADCTL_RGB;
			_height = ST7735_TFTHEIGHT_160;
			_width = ST7735_TFTWIDTH_128;
			_xstart = _colstart;
			_ystart = _rowstart;
			break;
		case 1:
			/* Set MADCTL for rotation 1 */
			madctl = ST77XX_MADCTL_MY | ST77XX_MADCTL_MV | ST77XX_MADCTL_RGB;
			_width = ST7735_TFTHEIGHT_160;
			_height = ST7735_TFTWIDTH_128;
			_ystart = _colstart;
			_xstart = _rowstart;
			break;
		case 2:
			/* Set MADCTL for rotation 2 */
			madctl = ST77XX_MADCTL_RGB;
			_height = ST7735_TFTHEIGHT_160;
			_width = ST7735_TFTWIDTH_128;
			_xstart = _colstart;
			_ystart = _rowstart;
			break;
		case 3:
			/* Set MADCTL for rotation 3 */
			madctl = ST77XX_MADCTL_MX | ST77XX_MADCTL_MV | ST7735_MADCTL_BGR;
			_width = ST7735_TFTHEIGHT_160;
			_height = ST7735_TFTWIDTH_128;
			_ystart = _colstart;
			_xstart = _rowstart;
			break;
	}

	/* Send the MADCTL command to the display */
	ST7735_spi_send_com(ST77XX_MADCTL);
	/* Send the MADCTL data to the display */
	ST7735_spi_send_data(&madctl, 1);
	return 0;
}

void ST7735_pixel(int16_t x, int16_t y, uint16_t color) {
	osMutexAcquire(ScreenMutexHandle, osWaitForever);
	if ((x >= 0) && (x < _width) && (y >= 0) && (y < _height)) {
		/* Start writing to the display */
		ST7735_start_write();
		/* Set the window to the pixel location */
		ST7735_set_window(x, y, 1, 1);
		/* Start data transmission */
		ST7735_start_data();
		uint8_t c[2] = {color >> 8, color};
		/* Send the pixel color data */
		ST7735_spi_send_data(c, 2);
		/* End writing to the display */
		ST7735_end_write();
	}
	osMutexRelease(ScreenMutexHandle);
}

void ST7735_vline(uint16_t x, uint16_t y, uint16_t h, uint16_t color) {
	osMutexAcquire(ScreenMutexHandle, osWaitForever);
	/* Start writing to the display */
	ST7735_start_write();
	/* Set the window to the vertical line location */
	ST7735_set_window(x, y, 1, h);
	/* Start data transmission */
	ST7735_start_data();
	uint8_t c[2] = {color >> 8, color};
	do
		/* Send the line color data */
		ST7735_spi_send_data(c, 2);
	while (h--);
	/* End writing to the display */
	ST7735_end_write();
	osMutexRelease(ScreenMutexHandle);
}

void ST7735_hline(uint16_t x, uint16_t y, uint16_t w, uint16_t color) {
	osMutexAcquire(ScreenMutexHandle, osWaitForever);
	/* Start writing to the display */
	ST7735_start_write();
	/* Set the window to the horizontal line location */
	ST7735_set_window(x, y, w, 1);
	/* Start data transmission */
	ST7735_start_data();
	uint8_t c[2] = {color >> 8, color};
	do
		/* Send the line color data */
		ST7735_spi_send_data(c, 2);
	while (w--);
	/* End writing to the display */
	ST7735_end_write();
	osMutexRelease(ScreenMutexHandle);
}

void ST7735_rect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color) {
	/* Draw the left vertical line of the rectangle */
	ST7735_vline(x, y, h, color);
	/* Draw the right vertical line of the rectangle */
	ST7735_vline(x + w, y, h, color);
	/* Draw the top horizontal line of the rectangle */
	ST7735_hline(x, y, w, color);
	/* Draw the bottom horizontal line of the rectangle */
	ST7735_hline(x, y + h, w, color);
}

void ST7735_fill_rect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color) {
	osMutexAcquire(ScreenMutexHandle, osWaitForever);
	/* Ensure x is within bounds */
	if (x < 0)
		x = 0;
	/* Ensure y is within bounds */
	if (y < 0)
		y = 0;
	/* Adjust width if it goes beyond the display width */
	if (x + w > _width)
		w = _width - x;
	/* Adjust height if it goes beyond the display height */
	if (y + h > _height)
		h = _height - y;
	/* Start writing to the display */

	ST7735_start_write();
	/* Set the window to the rectangle location */
	ST7735_set_window(x, y, w, h);
	/* Color data for the rectangle */
	uint8_t c[2] = {color >> 8, color};
	uint32_t cnt = w * h;
	while (cnt--)
		/* Send the rectangle color data */
		ST7735_spi_send_data(c, 2);
	/* End writing to the display */
	ST7735_end_write();
	osMutexRelease(ScreenMutexHandle);
}

void ST7735_fill(uint16_t color) {
	/* Fill the entire screen with the given color */
	ST7735_fill_rect(0, 0, _width, _height, color);
}

void ST7735_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color) {
	/* Determine if the line is steep */
	int16_t steep = abs(y1 - y0) > abs(x1 - x0);
	if (steep) {
		/* Swap x and y coordinates if the line is steep */
		swap16(x0, y0);
		swap16(x1, y1);
	}

	if (x0 > x1) {
		/* Ensure drawing from left to right */
		swap16(x0, x1);
		swap16(y0, y1);
	}

	int16_t dx, dy;
	dx = x1 - x0;
	dy = abs(y1 - y0);

	/* Error term for Bresenham's algorithm */
	int16_t err = dx / 2;
	int16_t ystep;

	/* Determine the direction of the step */
	if (y0 < y1) {
		ystep = 1;
	} else {
		ystep = -1;
	}

	/* Draw the line */
	for (; x0 <= x1; x0++) {
		if (steep) {
			ST7735_pixel(y0, x0, color);
		} else {
			ST7735_pixel(x0, y0, color);
		}
		err -= dy;
		if (err < 0) {
			y0 += ystep;
			err += dx;
		}
	}
}

void ST7735_circle(int16_t x0, int16_t y0, int16_t r, uint16_t color) {
	/* Initial decision parameter for Bresenham's circle algorithm */
	int16_t f = 1 - r;
	int16_t ddF_x = 1;
	int16_t ddF_y = -2 * r;
	int16_t x = 0;
	int16_t y = r;

	/* Start writing to the display */
	// ST7735_start_write();
	/* Draw the initial points */
	ST7735_pixel(x0, y0 + r, color);
	ST7735_pixel(x0, y0 - r, color);
	ST7735_pixel(x0 + r, y0, color);
	ST7735_pixel(x0 - r, y0, color);

	/* Draw the circle */
	while (x < y) {
		if (f >= 0) {
			y--;
			ddF_y += 2;
			f += ddF_y;
		}
		x++;
		ddF_x += 2;
		f += ddF_x;

		ST7735_pixel(x0 + x, y0 + y, color);
		ST7735_pixel(x0 - x, y0 + y, color);
		ST7735_pixel(x0 + x, y0 - y, color);
		ST7735_pixel(x0 - x, y0 - y, color);
		ST7735_pixel(x0 + y, y0 + x, color);
		ST7735_pixel(x0 - y, y0 + x, color);
		ST7735_pixel(x0 + y, y0 - x, color);
		ST7735_pixel(x0 - y, y0 - x, color);
	}
	/* End writing to the display */
	// ST7735_end_write();
}

void ST7735_fill_circle(int16_t x0, int16_t y0, int16_t r, uint16_t color) {
	/* Initial decision parameter for Bresenham's circle algorithm */
	int16_t f = 1 - r;
	int16_t ddF_x = 1;
	int16_t ddF_y = -2 * r;
	int16_t x = 0;
	int16_t y = r;
	int16_t px = x;
	int16_t py = y;

	/* Draw the filled circle */
	while (x < y) {
		if (f >= 0) {
			y--;
			ddF_y += 2;
			f += ddF_y;
		}
		x++;
		ddF_x += 2;
		f += ddF_x;
		if (x < (y + 1)) {
			ST7735_vline(x0 + x, y0 - y, 2 * y + 1, color);
			ST7735_vline(x0 - x, y0 - y, 2 * y + 1, color);
		}
		if (y != py) {
			ST7735_vline(x0 + py, y0 - px, 2 * px + 1, color);
			ST7735_vline(x0 - py, y0 - px, 2 * px + 1, color);
			py = y;
		}
		px = x;
	}
	/* Draw the central vertical line */
	ST7735_vline(x0, y0 - r, 2 * r + 1, color);
}

void ST7735_set_text_color(uint16_t color) {
	textcolor = color;
}

void ST7735_set_text_bg_color(uint16_t color) {
	textbgcolor = color;
}

void ST7735_char(int16_t x, int16_t y, unsigned char c, uint16_t color, uint16_t bg, uint8_t size_x,
		uint8_t size_y) {
	/* Return if character is completely off-screen */
	if ((x >= _width) || (y >= _height) || ((x + 6 * size_x - 1) < 0) || ((y + 8 * size_y - 1) < 0))
		return;

	/* Adjust character code for font */
	if (c >= 176)
		c++;

	// ST7735_start_write();
	/* Draw each column of the character */
	for (int8_t i = 0; i < 5; i++) {
		uint8_t line = font[c * 5 + i];
		/* Draw each pixel in the column */
		for (int8_t j = 0; j < 8; j++, line >>= 1) {
			if (line & 1) {
				/* Draw the foreground pixel */
				if (size_x == 1 && size_y == 1)
					ST7735_pixel(x + i, y + j, color);
				else
					ST7735_fill_rect(x + i * size_x, y + j * size_y, size_x, size_y, color);
			} else if (bg != color) {
				/* Draw the background pixel */
				if (size_x == 1 && size_y == 1)
					ST7735_pixel(x + i, y + j, bg);
				else
					ST7735_fill_rect(x + i * size_x, y + j * size_y, size_x, size_y, bg);
			}
		}
	}
	/* Draw the background for the spacing between characters */
	if (bg != color) {
		if (size_x == 1 && size_y == 1)
			ST7735_vline(x + 5, y, 8, bg);
		else
			ST7735_fill_rect(x + 5 * size_x, y, size_x, 8 * size_y, bg);
	}
	// ST7735_end_write();
}

void ST7735_putchar(char c) {
	/* Handle new line character by moving cursor to the start of the next line */
	if (c == '\n') {
		cursor_x = 0;
		cursor_y += textsize_y * 8;
	} else if (c != '\r') { /* Handle carriage return (ignore) */
							/* Wrap text if it reaches the end of the display width */
		if (wrap && ((cursor_x + textsize_x * 6) > _width)) {
			cursor_x = 0;
			cursor_y += textsize_y * 8;
		}
		/* Draw the character at the current cursor position */
		ST7735_char(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize_x, textsize_y);
		/* Move cursor to the right for the next character */
		cursor_x += textsize_x * 6;
	}
}

void ST7735_print(char *text) {
	/* Loop through each character in the text and print it */
	while (*text) {
		ST7735_putchar(*text++);
	}
	/* Reset cursor position after printing the text */
	cursor_x = 0;
	cursor_y = 0;
}

void ST7735_putchar_config(int16_t x, int16_t y, char c, uint16_t color, uint16_t bg,
		uint8_t size_x, uint8_t size_y) {
	/* Handle new line character by moving to the next line */
	if (c == '\n') {
		x = 0;
		y += size_y * 8;
	} else if (c != '\r') { /* Handle carriage return (ignore) */
							/* Wrap text if it reaches the end of the display width */
		if (wrap && ((x + size_x * 6) > _width)) {
			x = 0;
			y += size_y * 8;
		}
		/* Draw the character at the specified position */
		ST7735_char(x, y, c, color, bg, size_x, size_y);
		/* Move to the right for the next character */
		x += size_x * 6;
	}
}

void ST7735_print_config(int16_t x, int16_t y, char *text, uint16_t color, uint16_t bg,
		uint8_t size_x, uint8_t size_y) {
	/* Set the cursor position and text properties */
	cursor_x = x;
	cursor_y = y;
	textcolor = color;
	textbgcolor = bg;
	textsize_x = size_x;
	textsize_y = size_y;
	/* Print the text using the specified configuration */
	// osMutexAcquire(ScreenMutexHandle, 0);
	ST7735_print(text);
	// osMutexRelease(ScreenMutexHandle);
}
