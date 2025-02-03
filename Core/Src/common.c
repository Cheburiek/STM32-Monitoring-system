#include <stdio.h>
#include "common.h"
#include "cmsis_os.h"

#define IS_YELLOW_RANGE(val, min, max) \
	((val < min && val >= (min - 10)) || (val > max && val <= (max + 10)))
#define IS_GREEN_RANGE(val, min, max) (val >= min && val <= max)

extern osSemaphoreId_t CO2_SemHandle;
extern ADC_HandleTypeDef hadc1;

extern I2C_HandleTypeDef hi2c1;
extern I2C_HandleTypeDef hi2c2;
extern I2C_HandleTypeDef hi2c3;

extern RTC_HandleTypeDef hrtc;

extern SPI_HandleTypeDef hspi2;

extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;

extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;

uint16_t hum_get;
int16_t tmp_get;
uint16_t uart_tx_size;
uint8_t uart_tx_data[256];
bool menu = 0, tmp = 0, hum = 0, ok = 0;
uint8_t hum_min = 30, hum_max = 60, tmp_min = 22, tmp_max = 26;
uint32_t brightness;
uint8_t barrier = 1;
uint16_t co2_read[2];

typedef void (*ButtonHandler)(void);

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
	if (menu && barrier == 1) {
		tmp = true;
		barrier = 0;
	} else if (menu && barrier == 2) {
		hum = true;
		barrier = 0;
	} else if (tmp || hum) {
		ok = true;
	}
}
void HandleRedButtonPress(void) {
	hum = false;
	tmp = false;
	menu = false;
	ok = false;
}

ButtonHandler buttonHandlers[] = {[YELLOW_BUTTON_Pin] = HandleYellowButtonPress,
		[BLACK_BUTTON_Pin] = HandleBlackButtonPress,
		[BLUE_BUTTON_Pin] = HandleBlueButtonPress,
		[GREEN_BUTTON_Pin] = HandleGreenButtonPress,
		[RED_BUTTON_Pin] = HandleRedButtonPress};

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
	uint8_t get_init_result = 1;
	tft_display_init();
	log_out("INITIALIZATION \r\nSTARTED\r\n", 0, 0, 2);
	while (get_init_result) {
		if (humidity_sensor_init(&hi2c1)) {
			get_init_result = 1;
			log_out("AHT10: Initialization failed\r\n", 0, 0, 0);
		} else if (barometr_sensor_init(&hi2c2)) {
			get_init_result = 1;
			log_out("BMP280: Initialization failed\r\n", 0, 0, 0);
#if WITH_CCS
		} else if (co2_sensor_init(&hi2c3)) {
			get_init_result = 1;
			log_out("CCS811: Initialization failed\r\n", 0, 0, 0);
#endif
		} else {
			get_init_result = 0;
			log_out("BMP280: Start\r\n", 0, 2, 26);
			log_out("AHT10: Start\r\n", 0, 2, 38);
#if WITH_CCS
			log_out("CCS811: Start\r\n", 0, 2, 50);
#endif
		}
		log_out("INITIALIZATION \r\nFINISHED\r\n", 0, 0, 50);
#if WITH_SIM
		SIM800L_init();
		HAL_Delay(2000);
		SIM800L_send_sms("Data Logger init done", 22, "+380679488373", 14);
#endif
		HAL_Delay(2000);
	}
}

void sensor_working(void) {
	osDelay(10);
	ST7735_fill(ST7735_BLACK);
	uint16_t pressure_get = 0;
	uint16_t co2_get __attribute__((unused));

	hum_get = (get_humidity_readings() / 100);
	if (hum_get < 0) {
		log_out("Humidity reading failed\r\n", 0, 2, 2);
	} else {
		log_out("Humidity: %u %% \r\n", hum_get, 2, 2);
	}

	pressure_get = (get_pressure_readings(&bmp280) / 100);
	if (pressure_get < 0) {
		log_out("Pressure reading failed\r\n", 0, 2, 14);
	} else {
		log_out("Pressure: %u mmHg \r\n", (unsigned int)pressure_get, 2, 14);
	}

	tmp_get = (get_temperature_readings(&bmp280) / 100);
	if (tmp_get <= -40) {
		log_out("Temperature reading failed\r\n", 0, 2, 26);
	} else {
		log_out("Temperature: %u C \r\n", tmp_get, 2, 26);
	}

#if WITH_CCS
	sprintf((char *)co2_read, (char *)get_co2_readings(&hi2c3));
	log_out("CO2: %u ppm \r\n", co2_read[0], 2, 38);
	log_out("TVOC: %u \r\n", co2_read[1], 2, 50);

#endif

	brightness = calculate_brightness(&hadc1);
	log_out("Bright: %lu LUX \r\n", brightness, 2, 38);
	osSemaphoreRelease(CO2_SemHandle);
	osDelay(10000);
}

void sensor_out(void) {
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

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) {
	if (huart->Instance == huart2.Instance) {
		SIM800L_uart_callback();
	}
}

static void Set_RGB_Color(uint16_t red, uint16_t green, uint16_t blue) {
	__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_3, red);
	__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_4, green);
	__HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_3, blue);
}

void led_func(void) {
#if WITH_CCS
	if (co2_read[0] < 600) {
		Set_RGB_Color(255, 255, 1);   //Blue
	}
	if (co2_read[0] >= 600 && co2_read[0] < 1000) {
		Set_RGB_Color(255, 1, 255);   //Green
	}
	if (co2_read[0] >= 1000 && co2_read[0] < 1500) {
		Set_RGB_Color(100, 10, 255);   //Yellow
	}
	if (co2_read[0] >= 1500 && co2_read[0] < 2200) {
		Set_RGB_Color(60, 40, 255);
	}
	if (co2_read[0] >= 2200) {
		Set_RGB_Color(1, 255, 255);   //Red
	}
#else
	if (IS_GREEN_RANGE(tmp_get, tmp_min, tmp_max) && IS_GREEN_RANGE(hum_get, hum_min, hum_max)) {
		Set_RGB_Color(255, 1, 255);   //Green

	} else if (IS_YELLOW_RANGE(hum_get, hum_min, hum_max) ||
			   IS_YELLOW_RANGE(tmp_get, tmp_min, tmp_max)) {
		Set_RGB_Color(100, 10, 255);   //Yellow
	} else {
		Set_RGB_Color(1, 255, 255);   //Red
	}
#endif
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

		osDelay(1000);
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
		osDelay(1000);
	}
}