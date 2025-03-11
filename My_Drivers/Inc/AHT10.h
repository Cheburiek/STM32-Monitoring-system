/**
 * Temperature and humidity reading device header
 */

#ifndef __AHT10_h__
#define __AHT10_h__

#include <stdint.h>
#include <stdbool.h>
#include "main.h"

/* I2C address for the AHT10 sensor. */
#define AHT10_ADDRESS (0x38 << 1)

/* Timeout for I2C communications in milliseconds. */
#define AHT10_MY_I2C_DELAY 50

/* Initialization command for the AHT10 sensor. */
#define AHT10_INIT_CMD 0xE1

/* Command to start a measurement. */
#define AHT10_START_MEASURMENT_CMD 0xAC

/* Command to set normal cycle mode. */
#define AHT10_NORMAL_CMD 0xA8

/* Command for a soft reset. */
#define AHT10_SOFT_RESET_CMD 0xBA

/* Enable normal mode. */
#define AHT10_INIT_NORMAL_MODE 0x00

/* Enable cycle mode. */
#define AHT10_INIT_CYCLE_MODE 0x20

/* Enable command mode. */
#define AHT10_INIT_CMD_MODE 0x40

/* Load factory calibration coefficient. */
#define AHT10_INIT_CAL_ENABLE 0x08

/* Command to enable data measurement. */
#define AHT10_DATA_MEASURMENT_CMD 0x33

/* No data measurement command. */
#define AHT10_DATA_NOP 0x00

/* Measurement delay, must be greater than 75 milliseconds. */
#define AHT10_MEASURMENT_DELAY 80

/* Power-on delay, must be between 20-40 milliseconds. */
#define AHT10_POWER_ON_DELAY 40

/* Command delay, must be greater than 300 milliseconds. */
#define AHT10_CMD_DELAY 350

/* Soft reset delay, must be less than 20 milliseconds. */
#define AHT10_SOFT_RESET_DELAY 20

/* Flag to force reading data. */
#define AHT10_FORCE_READ_DATA 1

/* Flag to use data from the previous read. */
#define AHT10_USE_READ_DATA 0

/* Return value for communication errors. */
#define AHT10_ERROR 0xFF

/**
  * @brief Initialize the AHT10 sensor over I2C.
  * @details This function sets up the I2C communication and configures the AHT10 sensor
  * by loading the factory calibration coefficients. It must be called before
  * performing any measurements.
  * @param[in] address The 8-bit I2C address, which should be converted to 7-bit before calling.
  * @param[in] hi2c1 Pointer to the I2C handle structure.
  * @return True if factory calibration coefficients are loaded successfully, otherwise false.
  */
bool AHT10_init(uint8_t address, I2C_HandleTypeDef *hi2c1);

/**
 * @brief Perform a soft reset of the AHT10 sensor.
 * @details This function resets the AHT10 sensor without powering it off, restoring all registers
 * to their default values. The operation takes approximately 20 milliseconds.
 * @return True if factory calibration coefficients are reloaded successfully, otherwise false.
 */
bool AHT10_soft_reset(void);

/**
 * @brief Set the sensor to normal measurement mode.
 * @details This mode allows the sensor to perform measurements at standard intervals.
 * @return True if the mode is set successfully, otherwise false.
 */
bool AHT10_set_normal_mode(void);

/**
 * @brief Set the sensor to cycle measurement mode for continuous measurement.
 * @details In this mode, the sensor continuously performs measurements at predefined intervals.
 * @return True if the mode is set successfully, otherwise false.
 */
bool AHT10_set_cycle_mode(void);

/**
 * @brief Load factory calibration coefficients into the sensor.
 * @details Ensures that the sensor uses its factory-provided calibration for accurate measurements.
 * @return True if calibration coefficients are loaded successfully, otherwise false.
 */
bool AHT10_enable_factory_cal_coeff(void);

/**
 * @brief Read raw data from the AHT10 sensor.
 * @details Retrieves the raw sensor data necessary for temperature and humidity calculations.
 * @return A status code indicating success or AHT10_ERROR on failure.
 */
uint8_t AHT10_read_raw_data(void);

/**
 * @brief Read the status byte from the sensor over I2C.
 * @details The status byte provides information about the sensor's current state and errors.
 * @return The status byte on success, or AHT10_ERROR on failure.
 */
uint8_t AHT10_read_status_byte(void);

/**
 * @brief Check the calibration bit in the status byte.
 * @details Determines whether the factory calibration coefficients are loaded.
 * @param i2c_read Flag indicating whether to use the last read data or force a new read.
 * @return The calibration bit status or AHT10_ERROR on error.
 * @note 0 indicates calibration coefficients are disabled; 1 indicates they are loaded.
 */
uint8_t AHT10_get_calibration_bit(bool i2c_read);

/**
 * @brief Check the busy bit in the status byte.
 * @details Indicates whether the sensor is currently busy performing a measurement.
 * @param i2c_read Flag indicating whether to use the last read data or force a new read.
 * @return The busy bit status or AHT10_ERROR on failure.
 * @note 0 indicates the sensor is idle; 1 indicates it is busy.
 */
uint8_t AHT10_get_busy_bit(bool i2c_read);

/**
 * @brief Read the temperature in degrees Celsius.
 * @details Retrieves the current temperature measurement from the sensor.
 * @param i2c_read Flag indicating whether to use the last read data or force a new read.
 * @return Temperature as a floating point value on success, or AHT10_ERROR on failure.
 * @note Temperature range: -40°C to +80°C. Resolution: 0.01°C. Accuracy: ±0.3°C.
 */
float AHT10_read_temperature(bool i2c_read);

/**
 * @brief Read the relative humidity in percentage.
 * @details Retrieves the current humidity measurement from the sensor.
 * @param i2c_read Flag indicating whether to use the last read data or force a new read.
 * @return Humidity as a floating point value on success, or AHT10_ERROR on failure.
 * @note Humidity range: 0% to 100%. Resolution: 0.024%. Accuracy: ±2%.
 */
float AHT10_read_humidity(bool i2c_read);

#endif // __AHT10_h__
