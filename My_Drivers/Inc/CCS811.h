/**
 * eCO2 and TVOC reading device header
 */

#ifndef __CCS811_H__
#define __CCS811_H__

#include "stm32f4xx_hal.h"
#include <stdint.h>

/* I2C address for the CCS811 sensor, shifted left for 7-bit addressing. */
#define CCS811_ADDRESS         (0x5Au) << 1u  

/* Register to check the status of the sensor. */
#define CCS811_STATUS          0x00u

/* Register for performing a software reset on the sensor. */
#define CCS811_SW_RESET        0xFFu

/* Register to set the measurement mode of the sensor. */
#define CCS811_MEAS_MODE       0x28u 

/* Register to read algorithm result data like CO2 and TVOC levels. */
#define CCS811_ALG_RESULT_DATA 0x02u

/* Register to provide environmental data to the sensor. */
#define CCS811_ENV_DATA        0x05u

/* Register for reading NTC temperature sensor data. */
#define CCS811_NTC             0x06u

/* Command to start the application firmware on the sensor. */
#define CCS811_APP_START       0xF4

/* Register to read error identification codes. */
#define CCS811_ERROR_ID        0xE0

/* Register to read the hardware ID of the sensor. */
#define CCS811_HW_ID           0x20

/**
 * @brief Initializes the CCS811 sensor.
 * @details This function checks if the CCS811 sensor is ready and initializes it by starting the application mode
 * and setting the measurement mode.
 * @param hi2c Pointer to the I2C handle structure.
 * @return HAL_OK if initialization is successful, otherwise HAL_ERROR.
 */
uint8_t CCS811_init(I2C_HandleTypeDef *hi2c);

/**
 * @brief Reads CO2 and TVOC data from the CCS811 sensor.
 * @details This function checks the status register of the CCS811 sensor and reads the
 * CO2 and TVOC data if the data is ready.
 * @param hi2c Pointer to the I2C handle structure.
 * @param co2 Pointer to store the CO2 concentration value.
 * @param tvoc Pointer to store the TVOC concentration value.
 * @return HAL_OK if data is successfully read, otherwise HAL_ERROR.
 */
uint8_t CCS811_alg_read_data(I2C_HandleTypeDef *hi2c, uint16_t *co2, uint16_t *tvoc);

#endif // __CCS811_H__