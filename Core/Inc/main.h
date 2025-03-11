/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define GREEN_BUTTON_Pin GPIO_PIN_2
#define GREEN_BUTTON_GPIO_Port GPIOE
#define GREEN_BUTTON_EXTI_IRQn EXTI2_IRQn
#define YELLOW_BUTTON_Pin GPIO_PIN_3
#define YELLOW_BUTTON_GPIO_Port GPIOE
#define YELLOW_BUTTON_EXTI_IRQn EXTI3_IRQn
#define BLACK_BUTTON_Pin GPIO_PIN_4
#define BLACK_BUTTON_GPIO_Port GPIOE
#define BLACK_BUTTON_EXTI_IRQn EXTI4_IRQn
#define BLUE_BUTTON_Pin GPIO_PIN_5
#define BLUE_BUTTON_GPIO_Port GPIOE
#define BLUE_BUTTON_EXTI_IRQn EXTI9_5_IRQn
#define RED_BUTTON_Pin GPIO_PIN_6
#define RED_BUTTON_GPIO_Port GPIOE
#define RED_BUTTON_EXTI_IRQn EXTI9_5_IRQn
#define LED_Pin GPIO_PIN_6
#define LED_GPIO_Port GPIOA
#define LED_B_Pin GPIO_PIN_0
#define LED_B_GPIO_Port GPIOB
#define BRIGHTNESS_Pin GPIO_PIN_1
#define BRIGHTNESS_GPIO_Port GPIOB
#define BMP280_SCL_Pin GPIO_PIN_10
#define BMP280_SCL_GPIO_Port GPIOB
#define BMP280_SDA_Pin GPIO_PIN_11
#define BMP280_SDA_GPIO_Port GPIOB
#define LCD_SCK_Pin GPIO_PIN_13
#define LCD_SCK_GPIO_Port GPIOB
#define LCD_SDA_Pin GPIO_PIN_15
#define LCD_SDA_GPIO_Port GPIOB
#define LCD_A0_Pin GPIO_PIN_13
#define LCD_A0_GPIO_Port GPIOD
#define LCD_CS_Pin GPIO_PIN_15
#define LCD_CS_GPIO_Port GPIOD
#define CO2_WAK_Pin GPIO_PIN_8
#define CO2_WAK_GPIO_Port GPIOC
#define CO2_SDA_Pin GPIO_PIN_9
#define CO2_SDA_GPIO_Port GPIOC
#define CO2_SCL_Pin GPIO_PIN_8
#define CO2_SCL_GPIO_Port GPIOA
#define LCD_RESET_Pin GPIO_PIN_4
#define LCD_RESET_GPIO_Port GPIOD
#define AHT10_SCL_Pin GPIO_PIN_6
#define AHT10_SCL_GPIO_Port GPIOB
#define AHT10_SDA_Pin GPIO_PIN_7
#define AHT10_SDA_GPIO_Port GPIOB
#define LED_R_Pin GPIO_PIN_8
#define LED_R_GPIO_Port GPIOB
#define LED_G_Pin GPIO_PIN_9
#define LED_G_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
