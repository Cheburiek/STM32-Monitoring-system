#include "GL5516.h"

uint16_t GL5516_get(ADC_HandleTypeDef *_hadc1) {
	return HAL_ADC_GetValue(_hadc1);
}