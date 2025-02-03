#ifndef __SIM800L_H__
#define __SIM800L_H__

#include "stm32f4xx_hal.h"

/* Maximum buffer size for UART communication with SIM800L. */
#define SIM800_UART_BUFFER_MAX_SIZE 512
#define SIM800_UART                      huart2
#define WITH_SIM 0

/* UART handle for communication with SIM800L module. */
extern UART_HandleTypeDef SIM800_UART;

/**
 * @brief Initializes the SIM800L module.
 * @details This function configures and initializes the SIM800L module, setting up any required UART
 * settings, module parameters, or initial communication.
 * @return Init result (HAL_OK if everything inited fine, HAL_ERROR if not.)
 */
void SIM800L_init();

/**
 * @brief UART callback function for SIM800L module.
 * @details This function is called when data is received over UART from the SIM800L module. It processes
 * incoming data, handles events, or triggers further actions based on the received data.
 */
void SIM800L_uart_callback();

/**
 * @brief Sends an SMS message using the SIM800L module.
 * @details This function sends an SMS message through the SIM800L module.
 * @param[in] SMS Pointer to the SMS message data to be sent.
 * @param SMS_len Length of the SMS message data.
 * @param[in] phone_number Pointer to the phone number to which the SMS will be sent.
 * @param phone_number_len Length of the phone number.
 */
void SIM800L_send_sms(uint8_t *SMS, uint8_t SMS_len, uint8_t *phone_number, uint8_t phone_num_len);

#endif