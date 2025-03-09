/**
 * Pressure and humidity reading device realisation
 */

#include "BMP280.h"

/* Mask for clearing mode bits */
#define BMP280_MODE_MASK 0b11

/**
 *  Shift values for pressure compensation calculations 
 */
/* Used to scale calibration data appropriately during the pressure compensation process */
#define BMP280_PRESSURE_CALC_SHIFT_4 4
/* Used to scale down intermediate calculation results by dividing them by 256 (2^8). */
#define BMP280_PRESSURE_CALC_SHIFT_8 8
/* Used to scale down values in intermediate calculations. */
#define BMP280_PRESSURE_CALC_SHIFT_12 12
/* Helps in adjusting the pressure calculation results. */
#define BMP280_PRESSURE_CALC_SHIFT_13 13
/* Used in intermediate calculations for scaling. */
#define BMP280_PRESSURE_CALC_SHIFT_17 17
/* Used in intermediate pressure calculations. */
#define BMP280_PRESSURE_CALC_SHIFT_19 19
/* Used in intermediate pressure calculations. */
#define BMP280_PRESSURE_CALC_SHIFT_25 25
/* Used to align intermediate calculations. */
#define BMP280_PRESSURE_CALC_SHIFT_31 31
/* Used in final calculations to handle large values. */
#define BMP280_PRESSURE_CALC_SHIFT_33 33
/* Used to handle very large numbers. */
#define BMP280_PRESSURE_CALC_SHIFT_35 35
/* Used for handling large result adjustments. */
#define BMP280_PRESSURE_CALC_SHIFT_47 47
/* Adjustment value used in pressure compensation calculations */
#define BMP280_PRESSURE_ADJUSTMENT 1048576
/* Scale factor for pressure conversion */
#define BMP280_PRESSURE_CONVERT_SCALE 3125
/* Offset adjustment constant for pressure compensation calculations */
#define BMP280_TEMP_OFFSET 128000

/* Shift values for temperature compensation calculations  */
#define BMP280_TEMP_SHIFT_3     3  /* Used to divide the raw temperature measurement by 8. */
#define BMP280_TEMP_SHIFT_4     4  /* Used to divide the raw temperature measurement by 16. */
#define BMP280_TEMP_SHIFT_11    11 /* Used in the compensation algorithm for bitwise operations. */
#define BMP280_TEMP_SHIFT_12    12 /* Used to align raw data and intermediate calculations. */
#define BMP280_TEMP_SHIFT_14    14 /* Used in the calculation of compensation coefficients.*/
#define BMP280_TEMP_SCALE_SHIFT 8  /* Used for scaling the final temperature result. */

/* Scale factor for temperature conversion */
#define BMP280_TEMP_SCALE 5

/* Adjustment value used in temperature compensation calculations */
#define BMP280_TEMP_ADJUSTMENT 128

/* Constants for BMP280 data reading */
#define BMP280_PRESSURE_DATA_SIZE    6    /* Number of bytes to read for pressure */
#define BMP280_TEMPERATURE_DATA_SIZE 4    /* Number of bytes to read for temperature */
#define BMP280_DATA_START_ADDR       0xF7 /* Starting register address for data read */

/* Bit shift constants for ADC data extraction */
#define BMP280_PRESSURE_SHIFT_12 12
#define BMP280_PRESSURE_SHIFT_4  4
#define BMP280_TEMP_SHIFT_12     12
#define BMP280_TEMP_SHIFT_4      4

/* Bit shift constants for ADC data alignment */
#define BMP280_ADC_SHIFT 4

/* Bit position for the measuring status in the status register */
#define BMP280_STATUS_MEASURING_BIT 3

/* Bit shift constants for configuration registers */
#define BMP280_CTRL_OS_TEMP_SHIFT  5 /**< Bit shift for temperature oversampling */
#define BMP280_CTRL_OS_PRESS_SHIFT 2 /**< Bit shift for pressure oversampling */

/* Bit shift constants for the configuration register */
#define BMP280_CONFIG_STANDBY_SHIFT 5 /**< Bit shift for standby time configuration */
#define BMP280_CONFIG_FILTER_SHIFT  2 /**< Bit shift for filter configuration */

/* Mask for mode selection in the control register */
#define BMP280_CTRL_MODE_MASK 0x03 /**< Mask for mode bits */

/**
 * @brief Function for reading data (2 bytes) from a register.
 * @details Reads a 2-byte value from the specified register address of the BMP280 sensor.
 * @param[in] device Pointer to BMP Handle structure.
 * @param address Memory address to read from.
 * @param[in] value Pointer to store the read result.
 * @return True on success, false otherwise.
 */
static bool read_register(struct BMP280_HandleTypedef *device, uint8_t address, uint16_t *value) {
	uint16_t tx_buff;
	uint8_t rx_buff[2];
	/* Shift address for I2C write operation. */
	tx_buff = (device->address << 1);

	/* Read 2 bytes from the specified register. */
	if (HAL_I2C_Mem_Read(device->hi2c1, tx_buff, address, 1, rx_buff, 2, 5000) == HAL_OK) {
		/* Combine bytes. */
		*value = (uint16_t)((rx_buff[1] << 8) | rx_buff[0]);
		return true;
	} else {
		return false;
	}
}

/**
 * @brief Function for reading data of a certain length.
 * @details Reads a specified number of bytes from a register address.
 * @param[in] device Pointer to BMP Handle structure.
 * @param address Memory address to read from.
 * @param[in] value Pointer to store the read result.
 * @param len Length of data to read.
 * @return 0 on success, 1 otherwise.
 */
static inline int read_data(struct BMP280_HandleTypedef *device, uint8_t address, uint8_t *value,
		uint8_t len) {
	/* Prepare the address for I2C operation. */
	uint16_t tx_buff = (device->address << 1);

	/* Read data from the specified register. */
	if (HAL_I2C_Mem_Read(device->hi2c1, tx_buff, address, 1, value, len, 5000) == HAL_OK) {
		return 0;
	} else {
		return 1;
	}
}

/**
 * @brief Function for reading calibration data.
 * @details Reads and stores calibration data required for temperature and pressure compensation.
 * @param[in] device Pointer to BMP Handle structure.
 * @return True on success, false otherwise.
 */
static bool read_calibration_data(struct BMP280_HandleTypedef *device) {
	/* Read each calibration register using defined addresses. */
	if (read_register(device, BMP280_REG_CALIB_DIG_T1, &device->dig_T1) &&
			read_register(device, BMP280_REG_CALIB_DIG_T2, (uint16_t *)&device->dig_T2) &&
			read_register(device, BMP280_REG_CALIB_DIG_T3, (uint16_t *)&device->dig_T3) &&
			read_register(device, BMP280_REG_CALIB_DIG_P1, &device->dig_P1) &&
			read_register(device, BMP280_REG_CALIB_DIG_P2, (uint16_t *)&device->dig_P2) &&
			read_register(device, BMP280_REG_CALIB_DIG_P3, (uint16_t *)&device->dig_P3) &&
			read_register(device, BMP280_REG_CALIB_DIG_P4, (uint16_t *)&device->dig_P4) &&
			read_register(device, BMP280_REG_CALIB_DIG_P5, (uint16_t *)&device->dig_P5) &&
			read_register(device, BMP280_REG_CALIB_DIG_P6, (uint16_t *)&device->dig_P6) &&
			read_register(device, BMP280_REG_CALIB_DIG_P7, (uint16_t *)&device->dig_P7) &&
			read_register(device, BMP280_REG_CALIB_DIG_P8, (uint16_t *)&device->dig_P8) &&
			read_register(device, BMP280_REG_CALIB_DIG_P9, (uint16_t *)&device->dig_P9)) {
		return true;
	} else {
		return false;
	}
}

/**
 * @brief Function for writing data (1 byte) to a register.
 * @details Writes a byte of data to the specified register address.
 * @param[in] device Pointer to BMP Handle structure.
 * @param address Memory address to write to.
 * @param value Data to be written.
 * @return True on success, false otherwise.
 */
static bool write_register8(struct BMP280_HandleTypedef *device, uint8_t address, uint8_t value) {
	/* Prepare the address for I2C operation.*/
	uint16_t tx_buff = (device->address << 1);

	/* Write the data to the specified register. */
	if (HAL_I2C_Mem_Write(device->hi2c1, tx_buff, address, 1, &value, 1, 10000) == HAL_OK) {
		return true;
	} else {
		return false;
	}
}

/**
 * @brief Temperature compensation algorithm from BMP280 datasheet.
 * @details Calculates the compensated temperature using calibration data.
 * @param[in] device Pointer to BMP Handle structure.
 * @param adc_temp Raw temperature value from sensor.
 * @param[in] fine_temp Pointer to store the fine-tuned temperature value.
 * @return Compensated temperature in degrees Celsius.
 */
static inline int32_t compensate_temperature(struct BMP280_HandleTypedef *device, int32_t adc_temp,
		int32_t *fine_temp) {
	/* Calculate compensation parameters. */
	int32_t init_comp_par =
			((((adc_temp >> BMP280_TEMP_SHIFT_3) - ((int32_t)device->dig_T1 << 1))) *
					(int32_t)device->dig_T2) >>
			BMP280_TEMP_SHIFT_11;
	int32_t intermed_comp_par =
			(((((adc_temp >> BMP280_TEMP_SHIFT_4) - (int32_t)device->dig_T1) *
					  ((adc_temp >> BMP280_TEMP_SHIFT_4) - (int32_t)device->dig_T1)) >>
					 BMP280_TEMP_SHIFT_12) *
					(int32_t)device->dig_T3) >>
			BMP280_TEMP_SHIFT_14;

	*fine_temp = init_comp_par + intermed_comp_par;

	/* Return temperature in °C. */
	return (*fine_temp * BMP280_TEMP_SCALE + BMP280_TEMP_ADJUSTMENT) >> BMP280_TEMP_SCALE_SHIFT;
}

/**
 * @brief Pressure compensation algorithm from BMP280 datasheet.
 * @details Calculates the compensated pressure using calibration data and temperature.
 * @param[in] device Pointer to BMP Handle structure.
 * @param adc_press Raw pressure value from sensor.
 * @param fine_temp Compensated temperature value for pressure correction.
 * @return Compensated pressure in Pascals.
 */
static inline uint32_t compensate_pressure(struct BMP280_HandleTypedef *device, int32_t adc_press,
		int32_t fine_temp) {
	/* Calculate the initial compensation parameter `init_comp_par` using temperature. */
	int64_t init_comp_par = (int64_t)fine_temp - BMP280_TEMP_OFFSET;

	/* Calculate intermediate compensation parameter `intermed_comp_par` using temperature and calibration data. */
	int64_t intermed_comp_par = init_comp_par * init_comp_par * (int64_t)device->dig_P6;
	intermed_comp_par = intermed_comp_par + ((init_comp_par * (int64_t)device->dig_P5)
													<< BMP280_PRESSURE_CALC_SHIFT_17);
	intermed_comp_par =
			intermed_comp_par + (((int64_t)device->dig_P4) << BMP280_PRESSURE_CALC_SHIFT_35);

	/* Update `init_comp_par` with additional calibration data for pressure calculation. */
	init_comp_par = ((init_comp_par * init_comp_par * (int64_t)device->dig_P3) >>
							BMP280_PRESSURE_CALC_SHIFT_8) +
					((init_comp_par * (int64_t)device->dig_P2) << BMP280_PRESSURE_CALC_SHIFT_12);

	/* Complete the calculation of `init_comp_par` for pressure compensation. */
	init_comp_par = (((int64_t)1 << BMP280_PRESSURE_CALC_SHIFT_47) + init_comp_par) *
							((int64_t)device->dig_P1) >>
					BMP280_PRESSURE_CALC_SHIFT_33;

	/* Avoid division by zero to prevent calculation errors. */
	if (init_comp_par == 0) {
		return 0;
	}

	/* Perform final pressure calculations using the compensated values. */
	int64_t pressure = BMP280_PRESSURE_ADJUSTMENT - adc_press;
	pressure = (((pressure << BMP280_PRESSURE_CALC_SHIFT_31) - intermed_comp_par) *
					   BMP280_PRESSURE_CONVERT_SCALE) /
			   init_comp_par;

	/* Compute additional pressure adjustment factors. */
	init_comp_par = ((int64_t)device->dig_P9 * (pressure >> BMP280_PRESSURE_CALC_SHIFT_13) *
							(pressure >> BMP280_PRESSURE_CALC_SHIFT_13)) >>
					BMP280_PRESSURE_CALC_SHIFT_25;
	intermed_comp_par = ((int64_t)device->dig_P8 * pressure) >> BMP280_PRESSURE_CALC_SHIFT_19;

	/* Finalize pressure calculation and return pressure value in Pascals. */
	pressure = ((pressure + init_comp_par + intermed_comp_par) >> BMP280_PRESSURE_CALC_SHIFT_8) +
			   ((int64_t)device->dig_P7 << BMP280_PRESSURE_CALC_SHIFT_4);
	return pressure;
}

void BMP280_init_default_params(struct bmp280_params_t *params) {
	/* Set sensor mode to normal. */
	params->mode = BMP280_MODE_NORMAL;
	/* Disable internal filter. */
	params->filter = BMP280_FILTER_OFF;
	/* Standard pressure oversampling. */
	params->oversampling_pressure = BMP280_STANDARD;
	/* Standard temperature oversampling. */
	params->oversampling_temperature = BMP280_STANDARD;
	/* Standby time set to 250 ms. */
	params->standby = BMP280_STANDBY_250;
}

bool BMP280_init(struct BMP280_HandleTypedef *device, struct bmp280_params_t *params) {
	/* Return false if device address is incorrect. */
	if (device->address != BMP280_I2C_ADDRESS_0) {
		return false;
	}
	/* Return false if chip ID read fails. */
	if (read_data(device, BMP280_REG_ID, &device->chip_id, 1)) {
		return false;
	}
	/* Return false if chip ID does not match expected value. */
	if (device->chip_id != BMP280_CHIP_ID) {
		return false;
	}
	/* Return false if soft reset fails. */
	if (!write_register8(device, BMP280_REG_RESET, BMP280_RESET_VALUE)) {
		return false;
	}
	/* Wait for sensor to finish copying NVP data. */
	while (1) {
		uint8_t status;
		if (!read_data(device, BMP280_REG_STATUS, &status, 1) && (status & 1) == 0)
			break;
	}
	/* Return false if calibration data read fails. */
	if (!read_calibration_data(device)) {
		return false;
	}
	/* Configure the sensor with standby and filter settings. */
	uint8_t config = (params->standby << BMP280_CONFIG_STANDBY_SHIFT) |
					 (params->filter << BMP280_CONFIG_FILTER_SHIFT);
	if (!write_register8(device, BMP280_REG_CONFIG, config)) {
		return false;
	}
	/* Set initial mode to sleep for forced mode. */
	if (params->mode == BMP280_MODE_FORCED) {
		params->mode = BMP280_MODE_SLEEP;
	}
	/* Configure the sensor with oversampling settings and mode. */
	uint8_t sensor_ctrl_settings = (params->oversampling_temperature << BMP280_CTRL_OS_TEMP_SHIFT) |
								   (params->oversampling_pressure << BMP280_CTRL_OS_PRESS_SHIFT) |
								   (params->mode);

	/* Return false if control register write fails. */
	if (!write_register8(device, BMP280_REG_CTRL, sensor_ctrl_settings)) {
		return false;
	}
	/* Return true if initialization is successful. */
	return true;
}

bool BMP280_force_measurement(struct BMP280_HandleTypedef *device) {
	uint8_t sensor_ctrl_settings;

	/* Return false if reading control register fails. */
	if (read_data(device, BMP280_REG_CTRL, &sensor_ctrl_settings, 1)) {
		return false;
	}

	/* Clear the two lower bits and set mode to forced. */
	sensor_ctrl_settings &= ~BMP280_MODE_MASK;
	sensor_ctrl_settings |= BMP280_MODE_FORCED;

	/* Return false if writing control register fails. */
	if (write_register8(device, BMP280_REG_CTRL, sensor_ctrl_settings)) {
		return false;
	}
	/* Return true if measurement initiation is successful. */
	return true;
}

bool BMP280_is_measuring(struct BMP280_HandleTypedef *device) {
	uint8_t status;

	/* Return false if reading status register fails. */
	if (read_data(device, BMP280_REG_STATUS, &status, 1)) {
		return false;
	}
	/* Return true if measuring bit is set. */
	return (status & (1 << BMP280_STATUS_MEASURING_BIT)) != 0;
}

bool BMP280_read_fixed(struct BMP280_HandleTypedef *device, int32_t *temperature,
		uint32_t *pressure) {
	uint8_t data[8];

	/* Determine read size based on requested data. */
	size_t size = pressure ? BMP280_PRESSURE_DATA_SIZE : BMP280_TEMPERATURE_DATA_SIZE;

	/* Return false if reading data fails. */
	if (read_data(device, BMP280_DATA_START_ADDR, data, size)) {
		return false;
	}

	int32_t fine_temp = 0;

	/* Compensate pressure if requested. */
	if (pressure) {
		int32_t adc_pressure = data[0] << BMP280_PRESSURE_SHIFT_12 |
							   data[1] << BMP280_PRESSURE_SHIFT_4 | data[2] >> BMP280_ADC_SHIFT;
		*pressure = compensate_pressure(device, adc_pressure, fine_temp);
	}

	/* Compensate temperature if requested. */
	if (temperature) {
		int32_t adc_temp = data[3] << BMP280_TEMP_SHIFT_12 | data[4] << BMP280_TEMP_SHIFT_4 |
						   data[5] >> BMP280_ADC_SHIFT;
		*temperature = compensate_temperature(device, adc_temp, &fine_temp);
	}

	/* Return true if data read and compensation are successful. */
	return true;
}

bool BMP280_read_pressure(struct BMP280_HandleTypedef *device, float *pressure) {
	uint32_t fixed_pressure;

	/* Call BMP280_read_fixed to retrieve pressure and convert to float. */
	if (BMP280_read_fixed(device, NULL, &fixed_pressure)) {
		*pressure = (float)fixed_pressure / 256;
		return true;
	}

	/* Return false if reading pressure fails. */
	return false;
}

bool BMP280_read_temperature(struct BMP280_HandleTypedef *device, float *temperature) {
	int32_t fixed_temperature;

	/* Call BMP280_read_fixed to retrieve temperature and convert to float. */
	if (BMP280_read_fixed(device, &fixed_temperature, NULL)) {
		*temperature = (float)fixed_temperature / 100;
		return true;
	}

	/* Return false if reading temperature fails. */
	return false;
}