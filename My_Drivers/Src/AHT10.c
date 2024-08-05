/**
 * Temperature and humidity reading device realisation
 */

#include "AHT10.h"
#include "main.h"
/* Define bit position for calibration bit in the status byte */
#define CALIBRATION_BIT_SHIFT 3 /* Bit position for calibration bit */

/* Define bit position for busy bit in the status byte */
#define BUSY_BIT_SHIFT 7 /* Bit position for busy bit */

/* Define mask for extracting the busy bit from the status byte */
#define AHT10_BUSY_BIT_MASK 0x80 /* Mask for the busy bit in status byte */

/* Define mask for extracting the 3rd bit (calibration bit) from the status byte */
#define CALIBRATION_BIT_MASK 0x08 /* Mask for the 3rd bit in status byte */

/* Define mask for extracting the lower 4 bits from a byte */
#define TEMPERATURE_LOWER_4_BITS_MASK 0x0F /* Mask for the lower 4 bits */

/* Define shift amounts for extracting 20-bit temperature data */
#define AHT10_RAW_TEMP_SHIFT_16 16 
#define AHT10_RAW_TEMP_SHIFT_8  8  

/* Define shift amounts for extracting 20-bit humidity data */
#define AHT10_RAW_HUMIDITY_SHIFT_4  4  
#define AHT10_RAW_HUMIDITY_SHIFT_8  8  
#define AHT10_RAW_HUMIDITY_SHIFT_16 16 

/* Define conversion scale and offset for temperature data */
#define AHT10_TEMP_CONVERT_SCALE  0.000191 /* Temperature conversion scale */
#define AHT10_TEMP_CONVERT_OFFSET -50      /* Temperature conversion offset */

/* Define conversion scale for humidity data */
#define AHT10_HUM_CONVERT_SCALE 0.000095 /* Humidity conversion scale */

/* Define minimum and maximum bounds for humidity value */
#define AHT10_HUMIDITY_MIN 0   /* Minimum humidity value */
#define AHT10_HUMIDITY_MAX 100 /* Maximum humidity value */

/* Pointer to the I2C handle structure used for communication. */
I2C_HandleTypeDef *_hi2c1;

/* The 7-bit I2C address of the AHT10 sensor. */
uint8_t _address;

/* Buffer to store raw data from the sensor, initialized with default error value. */
uint8_t raw_data_buffer[6] = {AHT10_ERROR, 0, 0, 0, 0, 0};

/* Result of the last I2C communication operation. */
HAL_StatusTypeDef result;

bool AHT10_init(uint8_t address, I2C_HandleTypeDef *hi2c1) {
	_address = address;
	_hi2c1 = hi2c1;

	/* Wait for sensor to initialize. */
	HAL_Delay(AHT10_POWER_ON_DELAY);

	/* Set sensor to normal measurement mode. */
	AHT10_set_normal_mode();

	/* Load factory calibration coefficients. */
	return AHT10_enable_factory_cal_coeff();
}

bool AHT10_soft_reset(void) {
	uint8_t rx_buffer[1];
	rx_buffer[0] = AHT10_SOFT_RESET_CMD;

	/* Transmit soft reset command via I2C. */
	result = HAL_I2C_Master_Transmit(_hi2c1, _address, rx_buffer, 1, AHT10_MY_I2C_DELAY);

	if (result != HAL_OK) {
		return false;
	}

	/* Wait for soft reset to complete. */
	HAL_Delay(AHT10_SOFT_RESET_DELAY);

	/* Reinitialize sensor registers after reset. */
	AHT10_set_normal_mode();
	return AHT10_enable_factory_cal_coeff();
}

bool AHT10_set_normal_mode(void) {
	uint8_t tx_buffer[3];

	/* Prepare command buffer for normal mode. */
	tx_buffer[0] = AHT10_NORMAL_CMD;
	tx_buffer[1] = AHT10_DATA_NOP;
	tx_buffer[2] = AHT10_DATA_NOP;

	/* Transmit normal mode command via I2C. */
	result = HAL_I2C_Master_Transmit(_hi2c1, _address, tx_buffer, 3, AHT10_MY_I2C_DELAY);

	/* Check if transmission is successful. */
	if (result != HAL_OK) {
		return false;
	}

	/* Wait for command processing. */
	HAL_Delay(AHT10_CMD_DELAY);

	return true;
}

bool AHT10_set_cycle_mode(void) {
	uint8_t tx_buffer[3];

	/* Prepare command buffer for cycle mode. */
	tx_buffer[0] = AHT10_INIT_CMD;
	tx_buffer[1] = AHT10_INIT_CYCLE_MODE | AHT10_INIT_CAL_ENABLE;
	tx_buffer[2] = AHT10_DATA_NOP;

	/* Transmit cycle mode command via I2C. */
	result = HAL_I2C_Master_Transmit(_hi2c1, _address, tx_buffer, 3, AHT10_MY_I2C_DELAY);

	/* Check if transmission is successful. */
	if (result != HAL_OK) {
		return false;
	}

	return true;
}

bool AHT10_enable_factory_cal_coeff() {
	uint8_t tx_buffer[3];

	/* Prepare command buffer to enable calibration. */
	tx_buffer[0] = AHT10_INIT_CMD;
	tx_buffer[1] = AHT10_INIT_CAL_ENABLE;
	tx_buffer[2] = AHT10_DATA_NOP;

	/* Transmit calibration command via I2C. */
	result = HAL_I2C_Master_Transmit(_hi2c1, _address, tx_buffer, 3, AHT10_MY_I2C_DELAY);

	/* Check if transmission is successful. */
	if (result != HAL_OK) {
		return false;
	}

	/* Wait for command processing. */
	HAL_Delay(AHT10_CMD_DELAY);

	/* Verify if calibration is enabled. */
	if (AHT10_get_calibration_bit(AHT10_FORCE_READ_DATA) == 0x01) {
		return true;
	} else {
		return false;
	}
}

uint8_t AHT10_read_raw_data() {
	uint8_t tx_buffer[3];
	tx_buffer[0] = AHT10_START_MEASURMENT_CMD;
	tx_buffer[1] = AHT10_DATA_MEASURMENT_CMD;
	tx_buffer[2] = AHT10_DATA_NOP;

	/* Send measurement command via I2C. */
	result = HAL_I2C_Master_Transmit(_hi2c1, _address, tx_buffer, 3, AHT10_MY_I2C_DELAY);

	/* Error handling for I2C transmission failure. */
	if (result != HAL_OK) {
		return AHT10_ERROR;
	}

	/* Error handling for calibration disabled. */
	if (AHT10_get_calibration_bit(AHT10_FORCE_READ_DATA) != 0x01) {
		return AHT10_ERROR;
	}

	/* Check if the sensor is busy and wait if necessary. */
	if (AHT10_get_busy_bit(AHT10_USE_READ_DATA) != 0x00) {
		HAL_Delay(AHT10_MEASURMENT_DELAY);
	}

	/* Receive 6 bytes of data from the sensor. */
	result = HAL_I2C_Master_Receive(_hi2c1, _address, raw_data_buffer, 6, AHT10_MY_I2C_DELAY);

	if (result != HAL_OK) {
		raw_data_buffer[0] = AHT10_ERROR;
		return AHT10_ERROR;
	}

	return true;
}
uint8_t AHT10_read_status_byte() {
	/* Read a single byte status from the sensor via I2C. */
	result = HAL_I2C_Master_Receive(_hi2c1, _address, raw_data_buffer, 1, AHT10_MY_I2C_DELAY);

	/* Check if the I2C reception was successful. */
	if (result != HAL_OK) {
		raw_data_buffer[0] = AHT10_ERROR;
		return AHT10_ERROR;
	}

	return raw_data_buffer[0];
}

uint8_t AHT10_get_calibration_bit(bool i2c_read) {
	uint8_t value_bit;

	/* Force reading the status byte if required. */
	if (i2c_read == AHT10_FORCE_READ_DATA) {
		raw_data_buffer[0] = AHT10_read_status_byte();
	}

	/* Extract the 3rd bit (calibration bit) from the status byte. */
	if (raw_data_buffer[0] != AHT10_ERROR) {
		value_bit = (raw_data_buffer[0] & CALIBRATION_BIT_MASK);
		return (value_bit >> CALIBRATION_BIT_SHIFT);
	} else {
		return AHT10_ERROR;
	}
}

uint8_t AHT10_get_busy_bit(bool i2c_read) {
	uint8_t value_bit;

	/* Force reading the status byte if required. */
	if (i2c_read == AHT10_FORCE_READ_DATA) {
		raw_data_buffer[0] = AHT10_read_status_byte();
	}

	/* Extract the 7th bit (busy bit) from the status byte. */
	if (raw_data_buffer[0] != AHT10_ERROR) {
		value_bit = (raw_data_buffer[0] & AHT10_BUSY_BIT_MASK);
		return (value_bit >> BUSY_BIT_SHIFT);
	} else {
		return AHT10_ERROR;
	}
}

float AHT10_read_temperature(bool i2c_read) {
	unsigned temperature;

	/* Check if a forced read of data is requested */
	if (i2c_read == AHT10_FORCE_READ_DATA) {
		/* Read raw data from sensor and check for errors */
		if (AHT10_read_raw_data() == AHT10_ERROR) {
			/* Return error code if reading raw data fails */
			return AHT10_ERROR;
		}
	}

	/* Check if there was an error during the I2C communication */
	if (raw_data_buffer[0] == AHT10_ERROR) {
		/* Return error code if there was a collision or error on the I2C bus */
		return AHT10_ERROR;
	}

	/* Extract 20-bit raw temperature data from the raw_data_buffer */
	/* Combine bytes 3, 4, and 5 to form a 20-bit integer */
	temperature = ((uint32_t)(raw_data_buffer[3] & TEMPERATURE_LOWER_4_BITS_MASK)
						  << AHT10_RAW_TEMP_SHIFT_16) |
				  ((uint16_t)raw_data_buffer[4] << AHT10_RAW_TEMP_SHIFT_8) | raw_data_buffer[5];

	/* Convert raw temperature data to Celsius and return it */
	return (float)temperature * AHT10_TEMP_CONVERT_SCALE + AHT10_TEMP_CONVERT_OFFSET;
}

float AHT10_read_humidity(bool i2c_read) {
	unsigned raw_data;

	/* Check if a forced read of data is requested */
	if (i2c_read == AHT10_FORCE_READ_DATA) {
		/* Read raw data from sensor and check for errors */
		if (AHT10_read_raw_data() == AHT10_ERROR) {
			/* Return error code if reading raw data fails */
			return AHT10_ERROR;
		}
	}

	/* Check if there was an error during the I2C communication */
	if (raw_data_buffer[0] == AHT10_ERROR) {
		/* Return error code if there was a collision or error on the I2C bus */
		return AHT10_ERROR;
	}

	/* Extract 20-bit raw humidity data from the raw_data_buffer */
	/* Combine bytes 1, 2, and 3, then shift right by 4 bits to obtain 20-bit value */
	raw_data = (((unsigned)raw_data_buffer[1] << AHT10_RAW_HUMIDITY_SHIFT_16) |
					   ((uint16_t)raw_data_buffer[2] << AHT10_RAW_HUMIDITY_SHIFT_8) |
					   (raw_data_buffer[3])) >>
			   AHT10_RAW_HUMIDITY_SHIFT_4;

	/* Convert raw humidity data to percentage and clamp the value to [0, 100] range */
	float humidity = (float)raw_data * AHT10_HUM_CONVERT_SCALE;

	/* Ensure humidity value is within valid range */
	if (humidity < AHT10_HUMIDITY_MIN) {
		return AHT10_HUMIDITY_MIN;
	}
	if (humidity > AHT10_HUMIDITY_MAX) {
		return AHT10_HUMIDITY_MAX;
	}
	return humidity;
}