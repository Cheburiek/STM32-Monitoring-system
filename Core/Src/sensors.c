#include "sensors.h"
#include <math.h>

#define PHT_UP_R   1000.0F
#define PHT_10LX_R 10000.0F
#define PHT_GAMMA  0.5F

float get_pressure_readings(struct BMP280_HandleTypedef *dev) {
	float pressure;
	/* Read pressure from the BMP280 sensor */
	if (!BMP280_read_pressure(dev, &pressure)) {
		return READ_PRESSURE_ERR; /* Return error status if reading fails */
	}
	/* Convert pressure to the required unit */
	/* What is 0.750062? */
	pressure = pressure * 0.750062;
	return pressure; /* Return the pressure reading */
}

float get_temperature_readings(struct BMP280_HandleTypedef *dev) {
	float bmp280_temperature;

	/* Read temperature from the AHT10 sensor */
	float aht10_temperature = AHT10_read_temperature(true);
	/* Read temperature from the BMP280 sensor and check for errors */
	if (!BMP280_read_temperature(dev, &bmp280_temperature) || (aht10_temperature == AHT10_ERROR)) {
		return READ_TEMPERATURE_ERR; /* Return error status if reading fails */
	}
	/* Calculate the average temperature from both sensors */
	bmp280_temperature = (aht10_temperature + bmp280_temperature) / 2;
	return bmp280_temperature; /* Return the temperature reading */
}

float get_humidity_readings(void) {
	float humidity = AHT10_read_humidity(true);
	/* Check for errors in the humidity reading */
	if (humidity == AHT10_ERROR) {
		return READ_HUMIDITY_ERR; /* Return error status if reading fails */
	}
	humidity *= 100; /* Convert humidity to percentage */
	return humidity; /* Return the humidity reading */
}

uint16_t *get_co2_readings(I2C_HandleTypeDef *_hi2c) {
	uint16_t CO2;
	uint16_t TVOC;
	static uint16_t res[2];

	/* Read CO2 and TVOC data from the CCS811 sensor */
	CCS811_alg_read_data(_hi2c, &CO2, &TVOC);

	res[0] = CO2;  /* Store CO2 reading */
	res[1] = TVOC; /* Store TVOC reading */

	return res; /* Return the array containing CO2 and TVOC readings */
}

uint32_t calculate_brightness(ADC_HandleTypeDef *_hadc1) {

	/* Start ADC readings */
	HAL_ADC_Start(_hadc1);
	HAL_ADC_PollForConversion(_hadc1, 1000);

	/* Get resistance value */
	uint16_t read_value = HAL_ADC_GetValue(_hadc1);

	/* Convert to LUX */
	uint32_t pht_r = ((PHT_UP_R) / (4095.0 / read_value - 1));
	float pht_div = PHT_10LX_R / pht_r;
	float pht_temp = ((0.42 * log(pht_div)) / (PHT_GAMMA)) + 1;
	uint32_t pht_lux = pow(10, pht_temp) * 5;

	return pht_lux;
}