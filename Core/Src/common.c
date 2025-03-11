#include <stdio.h>
#include "common.h"
#include "cmsis_os.h"
#include <string.h>

#define TEMP_ERR -40

#define IS_YELLOW_RANGE(val, min, max) \
	((val < min && val >= (min - 10)) || (val > max && val <= (max + 10)))
#define IS_GREEN_RANGE(val, min, max) (val >= min && val <= max)

/* Periphery hendlers */
extern osSemaphoreId_t CO2_SemHandle;
extern ADC_HandleTypeDef hadc1;
extern I2C_HandleTypeDef hi2c1;
extern I2C_HandleTypeDef hi2c2;
extern I2C_HandleTypeDef hi2c3;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;
extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;

/* Variables for storing measurements*/
/* Why not static? */
static uint16_t hum_get = 0;
static int16_t tmp_get = 0;
static uint32_t brightness = 0;
static uint16_t pressure_get = 0;
static uint16_t co2_avg_sum = 0;
static uint16_t tvoc_avg_sum = 0;

/* UART variables */
static uint16_t uart_tx_size;
static uint8_t uart_tx_data[256];

/* Control variables */
static bool menu = false, tmp = false, hum = false, ok = false;
static uint8_t hum_min = 30, hum_max = 60, tmp_min = 22, tmp_max = 26;
static uint8_t barrier = 1;
static uint8_t avg_cnt = 0;

typedef void (*ButtonHandler)(void);

/* Button hendlers */
void HandleYellowButtonPress(void) {
	menu = true;
}

void HandleBlackButtonPress(void) {
	barrier++;
}
void HandleBlueButtonPress(void) {
	barrier--;
}
void HandleGreenButtonPress(void) {
	if (menu) {
		if (barrier == 1) {
			tmp = true;
			barrier = 0;
		} else if (barrier == 2) {
			hum = true;
			barrier = 0;
		} else if (tmp || hum) {
			ok = true;
		}
	}
}
void HandleRedButtonPress(void) {
	hum = false;
	tmp = false;
	menu = false;
	ok = false;
}

/* Array of button handlers */
ButtonHandler buttonHandlers[] = {[YELLOW_BUTTON_Pin] = HandleYellowButtonPress,
		[BLACK_BUTTON_Pin] = HandleBlackButtonPress,
		[BLUE_BUTTON_Pin] = HandleBlueButtonPress,
		[GREEN_BUTTON_Pin] = HandleGreenButtonPress,
		[RED_BUTTON_Pin] = HandleRedButtonPress};

/**
 * @brief Function for set LED color
 * @param[in] red A numeric value for the red color
 * @param[in] green A numeric value for the green color
 * @param[in] blue A numeric value for the blue color
 */
static void Set_RGB_Color(uint16_t red, uint16_t green, uint16_t blue) {
	__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_3, red);
	__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_4, green);
	__HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_3, blue);
}

/**
 * @brief Function for log output
 * @param[in] format А pointer to a constant format string
 * @param[in] args Argument for output
 * @param[in] x Position X
 * @param[in] y Position Y
 */
static void log_out(const char *format, unsigned int args, uint8_t x, uint8_t y) {
	if (args) {
		uart_tx_size = sprintf((char *)uart_tx_data, format, args);
		ST7735_print_config(x, y, (char *)uart_tx_data, ST77XX_WHITE, ST77XX_BLACK, 1, 1);
	} else {
		uart_tx_size = sprintf((char *)uart_tx_data, format);
		ST7735_print_config(x, y, (char *)uart_tx_data, ST77XX_WHITE, ST77XX_BLACK, 1, 1);
	}
	HAL_UART_Transmit(&huart1, uart_tx_data, uart_tx_size, 1000);
}

void sensor_init(void) {
	uint8_t get_init_result = INIT_ERR;
	tft_display_init();
	log_out("INITIALIZATION \r\nSTARTED\r\n", 0, 0, 2);
	while (get_init_result) {
		if (humidity_sensor_init(&hi2c1)) {
			get_init_result = INIT_ERR;
			log_out("AHT10: Initialization failed\r\n", 0, 2, 26);
		} else if (barometr_sensor_init(&hi2c2)) {
			get_init_result = INIT_ERR;
			log_out("BMP280: Initialization failed\r\n", 0, 2, 38);
		} else if (co2_sensor_init(&hi2c3)) {
			get_init_result = INIT_ERR;
			log_out("CCS811: Initialization failed\r\n", 0, 2, 50);

		} else {
			get_init_result = INIT_OK;
			log_out("BMP280: Start\r\n", 0, 2, 26);
			log_out("AHT10: Start\r\n", 0, 2, 38);
			log_out("CCS811: Start\r\n", 0, 2, 50);
		}
		log_out("INITIALIZATION \r\nFINISHED\r\n", 0, 0, 62);
		HAL_Delay(2000);
	}
}

void sensor_working(void) {
	uint16_t co2_tvoc_read[2] = {0};
	hum_get = (get_humidity_readings() / 100);
	pressure_get = (get_pressure_readings(&bmp280) / 100);
	tmp_get = (get_temperature_readings(&bmp280));
	memcpy(co2_tvoc_read, get_co2_readings(&hi2c3), sizeof(co2_tvoc_read));
	if (avg_cnt < 10) {
		co2_avg_sum += co2_tvoc_read[0];
		tvoc_avg_sum += co2_tvoc_read[1];
		avg_cnt++;
	}
	brightness = calculate_brightness(&hadc1);
}

void sensor_out(void) {
	osDelay(10);
	ST7735_fill(ST7735_BLACK);
	if (hum_get < 0) {
		log_out("Humidity reading failed\r\n", 0, 2, 2);
	} else {
		log_out("Humidity: %u %% \r\n", hum_get, 2, 2);
	}
	if (pressure_get < 0) {
		log_out("Pressure reading failed\r\n", 0, 2, 14);
	} else {
		log_out("Pressure: %u mmHg \r\n", (unsigned int)pressure_get, 2, 14);
	}
	if (tmp_get <= TEMP_ERR) {
		log_out("Temperature reading failed\r\n", 0, 2, 26);
	} else {
		log_out("Temperature: %u C \r\n", tmp_get, 2, 26);
	}
	log_out("CO2: %u ppm \r\n", co2_avg_sum / 10, 2, 38);
	log_out("TVOC: %u \r\n", tvoc_avg_sum / 10, 2, 50);
	log_out("Brightness: %lu LUX \r\n", brightness, 2, 62);
	co2_avg_sum = 0;
	tvoc_avg_sum = 0;
	avg_cnt = 0;
}

void menu_func(void) {
	ST7735_fill(ST7735_BLACK);
	log_out("Menu:\r\n", 0, 2, 2);
	log_out("	* Temperature limits\r\n", 0, 2, 14);
	log_out("	* Humidity limits\r\n", 0, 2, 26);
	if (barrier > 2 || barrier < 1) {
		barrier = 1;
	}
	log_out("	* Choose: %u \r\n", barrier, 2, 38);
	osDelay(1000);
}

void led_func(void) {
	if (IS_GREEN_RANGE(tmp_get, tmp_min, tmp_max) && IS_GREEN_RANGE(hum_get, hum_min, hum_max)) {
		Set_RGB_Color(255, 1, 255);   //Green

	} else if (IS_YELLOW_RANGE(hum_get, hum_min, hum_max) ||
			   IS_YELLOW_RANGE(tmp_get, tmp_min, tmp_max)) {
		Set_RGB_Color(100, 10, 255);   //Yellow
	} else {
		Set_RGB_Color(1, 255, 255);   //Red
	}

	if (menu) {
		Set_RGB_Color(250, 255, 200);
	}
}

void barrier_ctrl_func(void) {
	if (hum) {
		ST7735_fill(ST7735_BLACK);
		log_out("Humidity min: %u \r\n", hum_min, 2, 2);
		log_out("Humidity max: %u \r\n", hum_max, 2, 14);
		if (!ok) {
			hum_min = barrier;
		} else {
			hum_max = barrier;
			if (hum_max < hum_min || hum_max > 100) {
				hum_max = hum_min;
			}
		}
	} else if (tmp) {
		ST7735_fill(ST7735_BLACK);
		log_out("Temperature min: %u \r\n", tmp_min, 2, 2);
		log_out("Temperature max: %u \r\n", tmp_max, 2, 14);
		if (!ok) {
			tmp_min = barrier;
		} else {
			tmp_max = barrier;
			if (tmp_max < tmp_min) {
				tmp_max = tmp_min;
			}
		}
	}
	osDelay(1000);
}