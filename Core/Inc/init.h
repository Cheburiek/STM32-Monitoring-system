#ifndef __INIT_H__
#define __INIT_H__

#include "ST7735.h"
#include "BMP280.h"
#include "AHT10.h"
#include "CCS811.h"
#include "GL5516.h"

/* This structure defines the object for interacting with the BMP280 sensor using the `BMP280_HandleTypedef` type. */
extern struct BMP280_HandleTypedef bmp280;

/**
 * @brief Enumeration of possible initialization results.
 * @details This enumeration describes different initialization states for various components.
 */
typedef enum {
	INIT_OK = 0,          /* Successful initialization. */
	INIT_ERR = 1,         /* Initialization failed. */
	INIT_AHT10_ERR = -1,  /* Error initializing the AHT10 sensor. */
	INIT_BMP280_ERR = -2, /* Error initializing the BMP280 sensor. */
	INIT_CC811_ERR = -3,  /* Error initializing the CC811 sensor. */
} init_state_t;

/**
 * @brief Initializes the TFT display.
 * @details This function performs the initialization of the TFT display and returns the status of the operation.
 * @return Status of the initialization: 0 if successful, or a non-zero value if an error occurred.
 */
uint8_t tft_display_init(void);

/**
 * @brief Initializes the barometric sensor.
 * @details This function performs the initialization of the barometric sensor connected via I2C.
 * @param[in] _hi2c2 Pointer to the I2C object used for communication with the sensor.
 * @return Status of the initialization: 0 if successful, or a non-zero value if an error occurred.
 */
uint8_t barometr_sensor_init(I2C_HandleTypeDef *_hi2c2);

/**
 * @brief Initializes the humidity sensor.
 * @details This function performs the initialization of the humidity sensor connected via I2C.
 * @param[in] hi2c1 Pointer to the I2C object used for communication with the sensor.
 * @return Status of the initialization: 0 if successful, or a non-zero value if an error occurred.
 */
uint8_t humidity_sensor_init(I2C_HandleTypeDef *hi2c1);

/**
 * @brief Initializes the CO2 sensor.
 * @details This function performs the initialization of the CO2 sensor connected via I2C.
 * @param[in] _hi2c Pointer to the I2C object used for communication with the sensor.
 * @return Status of the initialization: 0 if successful, or a non-zero value if an error occurred.
 */
uint8_t co2_sensor_init(I2C_HandleTypeDef *_hi2c);

#endif /*__INIT_H__*/