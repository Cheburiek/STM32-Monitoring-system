/**
 * TFT display header
 */

#ifndef __ST7735_H__
#define __ST7735_H__

#include "main.h"
#include <stm32f4xx_hal.h>

/* Width of the display in pixels for the 1.44" and mini versions */
#define ST7735_TFTWIDTH_128 128
/* Width of the display in pixels for the mini version */
#define ST7735_TFTWIDTH_80 80
/* Height of the display in pixels for the 1.44" version */
#define ST7735_TFTHEIGHT_128 128
/* Height of the display in pixels for the 1.8" and mini versions */
#define ST7735_TFTHEIGHT_160 160

/* Special signifier used in command lists to introduce a delay */
#define ST_CMD_DELAY 0x80

/* No Operation command */
#define ST77XX_NOP 0x00
/* Software reset command */
#define ST77XX_SWRESET 0x01
/* Read Display ID command */
#define ST77XX_RDDID 0x04
/* Read Display Status command */
#define ST77XX_RDDST 0x09

/* Enter Sleep Mode command */
#define ST77XX_SLPIN 0x10
/* Exit Sleep Mode command */
#define ST77XX_SLPOUT 0x11
/* Partial Mode ON command */
#define ST77XX_PTLON 0x12
/* Normal Display Mode ON command */
#define ST77XX_NORON 0x13

/* Display Inversion OFF command */
#define ST77XX_INVOFF 0x20
/* Display Inversion ON command */
#define ST77XX_INVON 0x21
/* Display OFF command */
#define ST77XX_DISPOFF 0x28
/* Display ON command */
#define ST77XX_DISPON 0x29
/* Column Address Set command */
#define ST77XX_CASET 0x2A
/* Row Address Set command */
#define ST77XX_RASET 0x2B
/* Memory Write command */
#define ST77XX_RAMWR 0x2C
/* Memory Read command */
#define ST77XX_RAMRD 0x2E

/* Partial Area command */
#define ST77XX_PTLAR 0x30
/* Tearing Effect Line OFF command */
#define ST77XX_TEOFF 0x34
/* Tearing Effect Line ON command */
#define ST77XX_TEON 0x35
/* Memory Access Control command */
#define ST77XX_MADCTL 0x36
/* Interface Pixel Format command */
#define ST77XX_COLMOD 0x3A

/* MADCTL My bit: row address order */
#define ST77XX_MADCTL_MY 0x80
/* MADCTL Mx bit: column address order */
#define ST77XX_MADCTL_MX 0x40
/* MADCTL MV bit: row/column exchange */
#define ST77XX_MADCTL_MV 0x20
/* MADCTL ML bit: vertical refresh order */
#define ST77XX_MADCTL_ML 0x10
/* MADCTL RGB bit: RGB pixel format */
#define ST77XX_MADCTL_RGB 0x00

/* Read ID1 command */
#define ST77XX_RDID1 0xDA
/* Read ID2 command */
#define ST77XX_RDID2 0xDB
/* Read ID3 command */
#define ST77XX_RDID3 0xDC
/* Read ID4 command */
#define ST77XX_RDID4 0xDD

/* 16-bit color: black */
#define ST77XX_BLACK 0x0000
/* 16-bit color: white */
#define ST77XX_WHITE 0xFFFF
/* 16-bit color: red */
#define ST77XX_RED 0xF800
/* 16-bit color: green */
#define ST77XX_GREEN 0x07E0
/* 16-bit color: blue */
#define ST77XX_BLUE 0x001F
/* 16-bit color: cyan */
#define ST77XX_CYAN 0x07FF
/* 16-bit color: magenta */
#define ST77XX_MAGENTA 0xF81F
/* 16-bit color: yellow */
#define ST77XX_YELLOW 0xFFE0
/* 16-bit color: orange */
#define ST77XX_ORANGE 0xFC00

/* Initialization code for the green tab version */
#define INITR_GREENTAB 0x00
/* Initialization code for the red tab version */
#define INITR_REDTAB 0x01
/* Initialization code for the black tab version */
#define INITR_BLACKTAB 0x02
/* Initialization code for the 1.8" green tab version */
#define INITR_18GREENTAB INITR_GREENTAB
/* Initialization code for the 1.8" red tab version */
#define INITR_18REDTAB INITR_REDTAB
/* Initialization code for the 1.8" black tab version */
#define INITR_18BLACKTAB INITR_BLACKTAB
/* Initialization code for the 1.44" green tab version */
#define INITR_144GREENTAB 0x01
/* Initialization code for the mini 160x80 version */
#define INITR_MINI160x80 0x04
/* Initialization code for the Hallowing version */
#define INITR_HALLOWING 0x05

/* MADCTL BGR bit: blue-green-red pixel order */
#define ST7735_MADCTL_BGR 0x08
/* MADCTL MH bit: horizontal refresh order */
#define ST7735_MADCTL_MH 0x04

/* Frame Rate Control (Normal Mode) command */
#define ST7735_FRMCTR1 0xB1
/* Frame Rate Control (Idle Mode) command */
#define ST7735_FRMCTR2 0xB2
/* Frame Rate Control (Partial Mode) command */
#define ST7735_FRMCTR3 0xB3
/* Display Inversion Control command */
#define ST7735_INVCTR 0xB4
/* Display Function Set command */
#define ST7735_DISSET5 0xB6

/* Power Control 1 command */
#define ST7735_PWCTR1 0xC0
/* Power Control 2 command */
#define ST7735_PWCTR2 0xC1
/* Power Control 3 command */
#define ST7735_PWCTR3 0xC2
/* Power Control 4 command */
#define ST7735_PWCTR4 0xC3
/* Power Control 5 command */
#define ST7735_PWCTR5 0xC4
/* VCOM Control 1 command */
#define ST7735_VMCTR1 0xC5

/* Power Control 6 command */
#define ST7735_PWCTR6 0xFC

/* Positive Gamma Correction command */
#define ST7735_GMCTRP1 0xE0
/* Negative Gamma Correction command */
#define ST7735_GMCTRN1 0xE1

/* 16-bit color: black (alias) */
#define ST7735_BLACK ST77XX_BLACK
/* 16-bit color: white (alias) */
#define ST7735_WHITE ST77XX_WHITE
/* 16-bit color: red (alias) */
#define ST7735_RED ST77XX_RED
/* 16-bit color: green (alias) */
#define ST7735_GREEN ST77XX_GREEN
/* 16-bit color: blue (alias) */
#define ST7735_BLUE ST77XX_BLUE
/* 16-bit color: cyan (alias) */
#define ST7735_CYAN ST77XX_CYAN
/* 16-bit color: magenta (alias) */
#define ST7735_MAGENTA ST77XX_MAGENTA
/* 16-bit color: yellow (alias) */
#define ST7735_YELLOW ST77XX_YELLOW
/* 16-bit color: orange (alias) */
#define ST7735_ORANGE ST77XX_ORANGE

/**
 * @brief Initializes the LCD display.
 * @details Sets up the hardware interface and configures the display parameters.
 * @return Returns 0 on success, non-zero on failure.
 */
int ST7735_init(void);

/**
 * @brief Sets the rotation of the display.
 * @details Changes the orientation of the display content.
 * @param m The rotation mode (0-3).
 * @return Returns 0 on success, non-zero on failure.
 */
int ST7735_set_rotation(int m);

/**
 * @brief Draws a pixel on the display.
 * @details Sets a single pixel to the specified color at the given coordinates.
 * @param x The x-coordinate of the pixel.
 * @param y The y-coordinate of the pixel.
 * @param color The color of the pixel.
 */
void ST7735_pixel(int16_t x, int16_t y, uint16_t color);

/**
 * @brief Draws a vertical line on the display.
 * @details Draws a line of specified height and color from the start coordinates.
 * @param x The x-coordinate of the start of the line.
 * @param y The y-coordinate of the start of the line.
 * @param h The height of the line.
 * @param color The color of the line.
 */
void ST7735_vline(uint16_t x, uint16_t y, uint16_t h, uint16_t color);

/**
 * @brief Draws a horizontal line on the display.
 * @details Draws a line of specified width and color from the start coordinates.
 * @param x The x-coordinate of the start of the line.
 * @param y The y-coordinate of the start of the line.
 * @param w The width of the line.
 * @param color The color of the line.
 */
void ST7735_hline(uint16_t x, uint16_t y, uint16_t w, uint16_t color);

/**
 * @brief Draws a rectangle on the display.
 * @details Outlines a rectangle with the specified dimensions and color.
 * @param x The x-coordinate of the top-left corner.
 * @param y The y-coordinate of the top-left corner.
 * @param w The width of the rectangle.
 * @param h The height of the rectangle.
 * @param color The color of the rectangle.
 */
void ST7735_rect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);

/**
 * @brief Fills a rectangle with a color on the display.
 * @details Draws a filled rectangle with the specified dimensions and color.
 * @param x The x-coordinate of the top-left corner.
 * @param y The y-coordinate of the top-left corner.
 * @param w The width of the rectangle.
 * @param h The height of the rectangle.
 * @param color The fill color of the rectangle.
 */
void ST7735_fill_rect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);

/**
 * @brief Fills the entire display with a single color.
 * @details Clears the display by filling it with the specified color.
 * @param color The fill color.
 */
void ST7735_fill(uint16_t color);

/**
 * @brief Draws a line between two points on the display.
 * @details Uses Bresenham's algorithm to draw a line with the specified color.
 * @param x0 The x-coordinate of the start point.
 * @param y0 The y-coordinate of the start point.
 * @param x1 The x-coordinate of the end point.
 * @param y1 The y-coordinate of the end point.
 * @param color The color of the line.
 */
void ST7735_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color);

/**
 * @brief Draws a circle on the display.
 * @details Uses the midpoint circle algorithm to draw an outlined circle.
 * @param x0 The x-coordinate of the circle's center.
 * @param y0 The y-coordinate of the circle's center.
 * @param r The radius of the circle.
 * @param color The color of the circle.
 */
void ST7735_circle(int16_t x0, int16_t y0, int16_t r, uint16_t color);

/**
 * @brief Fills a circle with a color on the display.
 * @details Uses a filled circle drawing algorithm to fill a circle with color.
 * @param x0 The x-coordinate of the circle's center.
 * @param y0 The y-coordinate of the circle's center.
 * @param r The radius of the circle.
 * @param color The fill color of the circle.
 */
void ST7735_fill_circle(int16_t x0, int16_t y0, int16_t r, uint16_t color);

/**
 * @brief Sets the text color for subsequent text operations.
 * @details Configures the color for future text drawing on the display.
 * @param color The text color.
 */
void ST7735_set_text_color(uint16_t color);

/**
 * @brief Sets the background color for subsequent text operations.
 * @details Configures the background color for future text drawing.
 * @param color The background color.
 */
void ST7735_set_text_bg_color(uint16_t color);

/**
 * @brief Draws a character on the display.
 * @details Renders a character at specified position, size, and colors.
 * @param x The x-coordinate of the character's top-left corner.
 * @param y The y-coordinate of the character's top-left corner.
 * @param c The character to draw.
 * @param color The color of the character.
 * @param bg The background color of the character.
 * @param size_x The horizontal size multiplier.
 * @param size_y The vertical size multiplier.
 */
void ST7735_char(int16_t x, int16_t y, unsigned char c, uint16_t color, uint16_t bg, uint8_t size_x,
		uint8_t size_y);

/**
 * @brief Prints a character at the current cursor position.
 * @details Writes a character using the current text and background colors.
 * @param c The character to print.
 */
void ST7735_putchar(char c);

/**
 * @brief Prints a string at the current cursor position.
 * @details Writes a string using the current text and background colors.
 * @param[in] text The string to print.
 */
void ST7735_print(char *text);

/**
 * @brief Draws a character with configuration options.
 * @details Renders a character with specified position, size, and colors.
 * @param x The x-coordinate of the character's top-left corner.
 * @param y The y-coordinate of the character's top-left corner.
 * @param c The character to draw.
 * @param color The color of the character.
 * @param bg The background color of the character.
 * @param size_x The horizontal size multiplier.
 * @param size_y The vertical size multiplier.
 */
void ST7735_putchar_config(int16_t x, int16_t y, char c, uint16_t color, uint16_t bg,
		uint8_t size_x, uint8_t size_y);

/**
 * @brief Prints a string with configuration options.
 * @details Writes a string at specified position with given size and colors.
 * @param x The x-coordinate of the text's start position.
 * @param y The y-coordinate of the text's start position.
 * @param text The string to print.
 * @param color The color of the text.
 * @param bg The background color of the text.
 * @param size_x The horizontal size multiplier.
 * @param size_y The vertical size multiplier.
 */
void ST7735_print_config(int16_t x, int16_t y, char *text, uint16_t color, uint16_t bg,
		uint8_t size_x, uint8_t size_y);

#endif /* __ST7735_H__ */