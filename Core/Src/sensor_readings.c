#include "sensor_readings.h"

uint16_t res[2];

float get_pressure_readings(struct BMP280_HandleTypedef *dev) {
    float pressure;
    /* Read pressure from the BMP280 sensor */
    if (!BMP280_read_pressure(dev, &pressure)) {
        return READ_PRESSURE_ERR;  /* Return error status if reading fails */
    }
    /* Convert pressure to the required unit */
    pressure = pressure * 0.750062;
    return pressure;  /* Return the pressure reading */
}

float get_temperature_readings(struct BMP280_HandleTypedef *dev) {
    float bmp280_temperature, aht10_temperature;

    /* Read temperature from the AHT10 sensor */
    aht10_temperature = AHT10_read_temperature(true);
    /* Read temperature from the BMP280 sensor and check for errors */
    if (!BMP280_read_temperature(dev, &bmp280_temperature) || (aht10_temperature == AHT10_ERROR)) {
        return READ_TEMPERATURE_ERR;  /* Return error status if reading fails */
    }
    /* Calculate the average temperature from both sensors */
    bmp280_temperature = (aht10_temperature + bmp280_temperature) / 2;
    bmp280_temperature *= 100;  /* Convert temperature to desired scale */
    return bmp280_temperature;  /* Return the temperature reading */
}

float get_humidity_readings(void) {
    float humidity = AHT10_read_humidity(true);
    /* Check for errors in the humidity reading */
    if (humidity == AHT10_ERROR) {
        return READ_HUMIDITY_ERR;  /* Return error status if reading fails */
    }
    humidity *= 100;  /* Convert humidity to percentage */
    return humidity;  /* Return the humidity reading */
}

uint16_t *get_co2_readings(I2C_HandleTypeDef *_hi2c) {
    uint16_t CO2;
    uint16_t TVOC;

    /* Read CO2 and TVOC data from the CCS811 sensor */
    CCS811_alg_read_data(_hi2c, &CO2, &TVOC);

    res[0] = CO2;  /* Store CO2 reading */
    res[1] = TVOC; /* Store TVOC reading */

    return res;  /* Return the array containing CO2 and TVOC readings */
}
