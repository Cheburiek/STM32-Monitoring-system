#include "init.h"

struct BMP280_HandleTypedef bmp280;

uint8_t tft_display_init(void) {
	/* Initialize the ST7735 display */
	ST7735_init();
	/* Fill the display with black color */
	ST7735_fill(ST7735_BLACK);
	return INIT_OK; /* Return success status */
}

uint8_t barometr_sensor_init(I2C_HandleTypeDef *_hi2c2) {
	/* Set default parameters for the BMP280 sensor */
	BMP280_init_default_params(&bmp280.params);
	/* Set the I2C address and handle for the BMP280 sensor */
	bmp280.address = BMP280_I2C_ADDRESS_0;
	bmp280.hi2c1 = _hi2c2;

	/* Initialize the BMP280 sensor with the default parameters */
	if (!BMP280_init(&bmp280, &bmp280.params)) {
		return INIT_BMP280_ERR; /* Return error status if initialization fails */
	} else {
		return INIT_OK; /* Return success status if initialization succeeds */
	}
}

uint8_t humidity_sensor_init(I2C_HandleTypeDef *hi2c1) {
	/* Initialize the AHT10 sensor with its I2C address and handle */
	if (AHT10_init(AHT10_ADDRESS, hi2c1) != true) {
		return INIT_AHT10_ERR; /* Return error status if initialization fails */
	} else {
		return INIT_OK; /* Return success status if initialization succeeds */
	}
}

uint8_t co2_sensor_init(I2C_HandleTypeDef *_hi2c) {
	/* Initialize the CCS811 sensor with the I2C handle */
	if (CCS811_init(_hi2c)) {
		return INIT_CC811_ERR; /* Return error status if initialization fails */
	} else {
		return INIT_OK; /* Return success status if initialization succeeds */
	}
}
