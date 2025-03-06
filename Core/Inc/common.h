#include <math.h>
#include "sensors.h"

typedef void (*ButtonHandler)(void);
extern ButtonHandler buttonHandlers[];
void sensor_init(void);
void sensor_working(void);
void sensor_out(void);
void menu_func(void);
void led_func(void);
void barrier_ctrl_func(void);