/**
 * eCO2 and TVOC reading device realosation
 */

#include "CCS811.h"

/* Define constants for bit manipulation */
#define FIRMWARE_ERROR_BIT_MASK 0x01 /* Mask for checking the firmware error bit */
#define DATA_BYTE_0_SHIFT       8    /* Shift amount for combining bytes to form CO2 value */
#define DATA_BYTE_2_SHIFT       8    /* Shift amount for combining bytes to form TVOC value */
#define BIT_CHECK_MASK          1    /* Mask for checking a single bit */
#define BYTE_SHIFT_8            8    /* Number of bits to shift for combining bytes */
#define STATUS_BIT_3            3 /* Bit position for checking data availability in the status register */

/* Define constants for CCS811 sensor */
#define TIMEOUT                50 /* Timeout for I2C operations in milliseconds */
#define TRIALS_FOR_READY_CHECK 3  /* Number of attempts to check device readiness */

uint8_t CCS811_init(I2C_HandleTypeDef *hi2c) {
	HAL_StatusTypeDef check_alive = HAL_ERROR;
	uint8_t app_start = CCS811_APP_START;
	uint8_t check_firmware = HAL_ERROR;

	/* Check if the CCS811 sensor is alive by repeatedly checking device readiness */
	while (check_alive != HAL_OK) {
		/* Check if device is ready; if busy or error, reset the sensor */
		check_alive = HAL_I2C_IsDeviceReady(hi2c, CCS811_ADDRESS, TRIALS_FOR_READY_CHECK, TIMEOUT);
		if (check_alive == HAL_BUSY || check_alive == HAL_ERROR) {
			/* Toggle reset pin to reset the sensor */
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);
		}
	}

	/* Read the status register to check for errors */
	HAL_I2C_Mem_Read(hi2c, CCS811_ADDRESS, CCS811_STATUS, 1, &check_firmware, 1, TIMEOUT);
	/* Check if there are no errors indicated by the status register */
	if ((check_firmware & FIRMWARE_ERROR_BIT_MASK) == HAL_OK) {
		/* Send application start command to the sensor */
		HAL_I2C_Master_Transmit(hi2c, CCS811_ADDRESS, &app_start, 1, TIMEOUT);
		uint8_t meas_mode = CCS811_MEAS_MODE_1;
		/* Set the measurement mode of the sensor */
		HAL_I2C_Mem_Write(hi2c, CCS811_ADDRESS, CCS811_MEAS_MODE_REG, 1, &meas_mode, 1, TIMEOUT);
		return HAL_OK; /* Return success if initialization is complete */
	} else {
		return HAL_ERROR; /* Return error if initialization failed */
	}
}

uint8_t CCS811_alg_read_data(I2C_HandleTypeDef *hi2c, uint16_t *co2, uint16_t *tvoc) {
	uint8_t received_data[4];
	uint8_t status_register = 0u;
	uint8_t meas_mode;

	/* Read the status register to check if data is ready */
	HAL_I2C_Mem_Read(hi2c, CCS811_ADDRESS, CCS811_STATUS, 1, &status_register, 1, TIMEOUT);
	HAL_I2C_Mem_Read(hi2c, CCS811_ADDRESS, 0x01, 1, &meas_mode, 1, TIMEOUT);
	/* Check if data is available */
	if ((status_register >> STATUS_BIT_3 & BIT_CHECK_MASK) == 1) {
		/* Read data from the sensor */
		HAL_I2C_Mem_Read(hi2c, CCS811_ADDRESS, CCS811_ALG_RESULT_DATA, 1, received_data,
				sizeof(received_data), TIMEOUT);
		/* Extract CO2 value by combining the two bytes with appropriate shifts */
		*co2 = (uint16_t)((received_data[0] << DATA_BYTE_0_SHIFT) | (received_data[1]));
		/* Extract TVOC value by combining the two bytes with appropriate shifts */
		*tvoc = (int16_t)((received_data[2] << DATA_BYTE_2_SHIFT) | (received_data[3]));
		return HAL_OK; /* Return success if data read is complete */
	}
	return HAL_ERROR; /* Return error if data is not available */
}
