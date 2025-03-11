/**
 * Pressure and humidity reading device header
 */

#ifndef __BMP280_H__
#define __BMP280_H__

#include "stm32f4xx_hal.h"
#include <stdint.h>
#include <stdbool.h>

/* BMP280 address is 0x76 */
#define BMP280_I2C_ADDRESS_0 0x76

/* BMP280 has chip-id 0x58 */
#define BMP280_CHIP_ID 0x58

/**
 * BMP280 registers
 */
#define BMP280_REG_TEMP_XLSB  0xFC   /* Extra Least Significant Byte of temperature */
#define BMP280_REG_TEMP_LSB   0xFB   /* Least Significant Byte of temperature */
#define BMP280_REG_TEMP_MSB   0xFA   /* Most Significant Byte of temperature */
#define BMP280_REG_TEMP       (BMP280_REG_TEMP_MSB) 
#define BMP280_REG_PRESS_XLSB 0xF9   /* Extra Least Significant Byte of pressure */
#define BMP280_REG_PRESS_LSB  0xF8   /* Least Significant Byte of pressure */
#define BMP280_REG_PRESS_MSB  0xF7   /* Most Significant Byte of pressure */
#define BMP280_REG_PRESSURE   (BMP280_REG_PRESS_MSB)
#define BMP280_REG_CONFIG     0xF5   /* Configuration register */
#define BMP280_REG_CTRL       0xF4   /* Control register for measurements */
#define BMP280_REG_STATUS     0xF3   /* Status register */ 
#define BMP280_REG_RESET      0xE0   /* Reset register */
#define BMP280_REG_ID         0xD0   /* Chip ID register */
#define BMP280_REG_CALIB      0x88   /* Calibration data start register */

#define BMP280_RESET_VALUE 0xB6   /* Reset command value */

/**
 * @brief Register addresses for BMP280 calibration data.
 */
#define BMP280_REG_CALIB_DIG_T1   0x88  /* Calibration register for T1 */
#define BMP280_REG_CALIB_DIG_T2   0x8A  /* Calibration register for T2 */
#define BMP280_REG_CALIB_DIG_T3   0x8C  /* Calibration register for T3 */
#define BMP280_REG_CALIB_DIG_P1   0x8E  /* Calibration register for P1 */
#define BMP280_REG_CALIB_DIG_P2   0x90  /* Calibration register for P2 */
#define BMP280_REG_CALIB_DIG_P3   0x92  /* Calibration register for P3 */
#define BMP280_REG_CALIB_DIG_P4   0x94  /* Calibration register for P4 */
#define BMP280_REG_CALIB_DIG_P5   0x96  /* Calibration register for P5 */
#define BMP280_REG_CALIB_DIG_P6   0x98  /* Calibration register for P6 */
#define BMP280_REG_CALIB_DIG_P7   0x9A  /* Calibration register for P7 */
#define BMP280_REG_CALIB_DIG_P8   0x9C  /* Calibration register for P8 */
#define BMP280_REG_CALIB_DIG_P9   0x9E  /* Calibration register for P9 */

/**
 * @brief Struct for BMP280 module operation modes.
 * @param BMP280_MODE_SLEEP No measurements, sensor in sleep mode
 * @param BMP280_MODE_FORCED One-time measurement initiated by user
 * @param BMP280_MODE_NORMAL Continuous measurement mode
 */
typedef enum {
	BMP280_MODE_SLEEP = 0,
	BMP280_MODE_FORCED = 1,
	BMP280_MODE_NORMAL = 3
} bmp280_mode_t;

/**
 * @brief Filter settings for BMP280 to reduce noise.
 * @note BMP280_FILTER_OFF is the default parameter
 */
typedef enum {
	BMP280_FILTER_OFF = 0,   /* No filtering */
	BMP280_FILTER_2 = 1,     /* Filter coefficient 2 */
	BMP280_FILTER_4 = 2,     /* Filter coefficient 4 */
	BMP280_FILTER_8 = 3,     /* Filter coefficient 8 */
	BMP280_FILTER_16 = 4     /* Filter coefficient 16 */
} bmp280_filter_t;

/**
 * @brief Pressure and temperature oversampling settings
 * @param BMP280_SKIPPED No measurement (disabled)
 * @param BMP280_ULTRA_LOW_POWER Minimum power consumption, oversampling x1
 * @param BMP280_LOW_POWER Low power consumption, oversampling x2
 * @param BMP280_STANDARD Standard mode, oversampling x4
 * @param BMP280_HIGH_RES High resolution, oversampling x16
 */
typedef enum {
	BMP280_SKIPPED = 0,
	BMP280_ULTRA_LOW_POWER = 1, /* Oversampling x1 */
	BMP280_LOW_POWER = 2,       /* Oversampling x2 */
	BMP280_STANDARD = 3,        /* Oversampling x4 */
	BMP280_HIGH_RES = 4,        /* Oversampling x8 */
	BMP280_ULTRA_HIGH_RES = 5   /* Oversampling x16 */
} bmp280_oversampling_t;

/**
 * @brief Standby time settings between measurements in normal mode
 * @param BMP280_STANDBY_05 Shortest standby time, 0.5ms
 * @param BMP280_STANDBY_62 Standby time of 62.5ms
 * @param BMP280_STANDBY_125 Standby time of 125ms
 * @param BMP280_STANDBY_250 Standby time of 250ms
 * @param BMP280_STANDBY_500 Standby time of 500ms
 * @param BMP280_STANDBY_1000 Standby time of 1s
 * @param BMP280_STANDBY_2000 Standby time of 2s
 * @param BMP280_STANDBY_4000 Longest standby time, 4s
 */
typedef enum {
	BMP280_STANDBY_05 = 0,
	BMP280_STANDBY_62 = 1,
	BMP280_STANDBY_125 = 2,
	BMP280_STANDBY_250 = 3,
	BMP280_STANDBY_500 = 4,
	BMP280_STANDBY_1000 = 5,
	BMP280_STANDBY_2000 = 6,
	BMP280_STANDBY_4000 = 7
} bmp280_standby_time_t;

/**
 * @brief Configuration parameters for the BMP280 module.
 * @param mode Operation mode of the BMP280
 * @param filter Filter settings for noise reduction
 * @param oversampling_pressure Pressure measurement oversampling
 * @param oversampling_temperature Temperature measurement oversampling
 * @param standby Standby time setting for normal mode
 */
struct bmp280_params_t {
	bmp280_mode_t mode;
	bmp280_filter_t filter;
	bmp280_oversampling_t oversampling_pressure;
	bmp280_oversampling_t oversampling_temperature;
	bmp280_standby_time_t standby;
};

/**
 * @brief BMP Handle Structure definition
 * @param dig_T# Temperature compensation coefficients
 * @param dig_P# Pressure compensation coefficients
 * @param hi2c1 I2C handle for communication
 */
struct BMP280_HandleTypedef {
	uint16_t dig_T1;
	int16_t dig_T2;
	int16_t dig_T3;
	uint16_t dig_P1;
	int16_t dig_P2;
	int16_t dig_P3;
	int16_t dig_P4;
	int16_t dig_P5;
	int16_t dig_P6;
	int16_t dig_P7;
	int16_t dig_P8;
	int16_t dig_P9;
	uint16_t address;
	I2C_HandleTypeDef *hi2c1;
	struct bmp280_params_t params;
	uint8_t chip_id;
};

/**
 * @brief Initialize default parameters for the BMP280 sensor.
 * @details This function sets up the BMP280 sensor with default parameters for easy startup.
 * @param[in] params Pointer to configuration parameters for the BMP280 module.
 * @note Default configuration: 
 * - Mode: NORMAL
 * - Filter: OFF
 * - Oversampling: x4 for both temperature and pressure
 * - Standby time: 250ms
 */
void BMP280_init_default_params(struct bmp280_params_t *params);

/**
 * @brief Initialize BMP280 module.
 * @details This function probes for the BMP280 device, performs a soft reset, reads calibration constants,
 * and configures the device with the provided parameters.
 * @param device Pointer to the BMP Handle structure.
 * @param[in] params Pointer to configuration parameters for the BMP280 module.
 * @return True on success, false otherwise.
 * @note Can be called again to reinitialize the device with new settings.
 */
bool BMP280_init(struct BMP280_HandleTypedef *device, struct bmp280_params_t *params);

/**
 * @brief Start a measurement in forced mode.
 * @details Initiates a single measurement in forced mode, which is suitable for low power applications.
 * @param[in] device Pointer to the BMP Handle structure.
 * @return True on success, false otherwise.
 * @note Do not call this method if the device is in normal mode.
 */
bool BMP280_force_measurement(struct BMP280_HandleTypedef *device);

/**
 * @brief Check if BMP280 is currently measuring.
 * @details Determines whether the BMP280 sensor is busy with ongoing temperature or pressure measurements.
 * @param[in] device Pointer to the BMP Handle structure.
 * @return True if the BMP280 is busy, false otherwise.
 */
bool BMP280_is_measuring(struct BMP280_HandleTypedef *device);

/**
 * @brief Read compensated temperature and pressure data.
 * @details temperature and pressure measurements from the BMP280, applying necessary compensation algorithms.
 * @param[in] device Pointer to the BMP Handle structure.
 * @param[in] temperature Pointer to store the temperature value.
 * @param[in] pressure Pointer to store the pressure value.
 * @return True on success, false otherwise.
 * @note Temperature is returned in degrees Celsius times 100.
 * Pressure is returned in Pascals in fixed point 24-bit integer 8-bit fraction format.
 */
bool BMP280_read_fixed(struct BMP280_HandleTypedef *device, int32_t *temperature,
		uint32_t *pressure);

/**
 * @brief Function to read pressure.
 * @details This function reads and returns the pressure value from the BMP280 sensor.
 * @param[in] device Pointer to the BMP Handle structure.
 * @param[in] pressure Pointer to store the pressure value.
 * @return True on success, false otherwise.
 */
bool BMP280_read_pressure(struct BMP280_HandleTypedef *device, float *pressure);

/**
 * @brief Function to read temperature.
 * @details This function reads and returns the temperature value from the BMP280 sensor.
 * @param[in] device Pointer to the BMP Handle structure.
 * @param[in] temperature Pointer to store the temperature value.
 * @return True on success, false otherwise.
 */
bool BMP280_read_temperature(struct BMP280_HandleTypedef *device, float *temperature);

#endif   //  __BMP280_H__