#include <math.h>
#include "sensors.h"

/* Pointer to handler function */
typedef void (*ButtonHandler)(void);

/* Array of pointers to handler functions for each button */
extern ButtonHandler buttonHandlers[];

/**
 * @brief Function for devices initialization
 * @details Contains initialization functions for all devices
 */
void sensor_init(void);

/**
 * @brief Function for receiving values from sensors
 * @details Contains functions for receiving values from sensors
 */
void sensor_working(void);

/**
 * @brief Function for output values from sensors
 */
void sensor_out(void);

/**
 * @brief Menu function
 * @details This function is used to select parameters for setting the limits of the norm
 */
void menu_func(void);

/**
 * @brief Function for led color change
 * @details This function is used to change the color to the one that reflects the status 
 * of the parameters
 */
void led_func(void);

/**
 * @brief Function to set the limits of measurements
 * @details This function is used to set the limits for parameters 
 */
void barrier_ctrl_func(void);