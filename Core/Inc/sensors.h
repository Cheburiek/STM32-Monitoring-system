#ifndef __SENSOR_READINGS_H__
#define __SENSOR_READINGS_H__
#include "init.h"

/**
 * @brief Enumeration of possible read results.
 * @details This enumeration describes different states for read operations from various sensors.
 */
typedef enum {
	READ_OK = 0,                /* Successful read operation. */
	READ_HUMIDITY_ERR = -1,     /* Error reading humidity data. */
	READ_PRESSURE_ERR = -2,     /* Error reading pressure data. */
	READ_CO2_ERR = -3,          /* Error reading CO2 data. */
	READ_TEMPERATURE_ERR = -40, /* Error reading temperature data. */
} read_state_t;

/* This external array is used to store the results from different sensor readings. */
extern uint16_t res[2];

/**
 * @brief Retrieves the humidity reading.
 * @details This function retrieves the current humidity reading from the humidity sensor.
 * @return The humidity reading as a floating-point value.
 */
float get_humidity_readings(void);

/**
 * @brief Retrieves the pressure reading.
 * @details This function retrieves the current pressure reading from the BMP280 sensor.
 * @param[in] device Pointer to the BMP280 deviceice handle for communication with the sensor.
 * @return The pressure reading as a floating-point value.
 */
float get_pressure_readings(struct BMP280_HandleTypedef *device);

/**
 * @brief Retrieves the temperature reading.
 * @details This function retrieves the current temperature reading from the BMP280 sensor.
 * @param[in] device Pointer to the BMP280 deviceice handle for communication with the sensor.
 * @return The temperature reading as a floating-point value.
 */
float get_temperature_readings(struct BMP280_HandleTypedef *device);

/**
 * @brief Retrieves the CO2 reading.
 * @details This function retrieves the current CO2 reading from the CO2 sensor.
 * @param[in] _hi2c Pointer to the I2C object used for communication with the sensor.
 * @return Pointer to the CO2 reading value stored in a uint16_t array.
 */
uint16_t *get_co2_readings(I2C_HandleTypeDef *_hi2c);

/**
 * @brief Retrieves the brightness reading.
 * @details This function retrieves the current brightness reading from the photoresistor.
 * @param[in] _hadc1 Pointer to the ADC object used for communication with the sensor.
 * @return Calculated value of brightness in lumens.
 */
uint32_t calculate_brightness(ADC_HandleTypeDef *_hadc1);

#endif /*__SENSOR_READINGS_H__*/