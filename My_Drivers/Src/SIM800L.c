#include "SIM800L.h"

#include <stdint.h>
#include "obit_string.h"

/* Buffer for UART communication with the SIM800L module */
uint8_t SIM800L_uart_buffer[SIM800_UART_BUFFER_MAX_SIZE];

/* Index for tracking the position in the UART buffer */
uint16_t SIM800L_uart_rx_index;

/* Timestamp of the last UART communication event */
uint32_t SIM800L_uart_last_time;

/* Data buffer for receiving data from UART */
uint8_t SIM800L_data_buff;

void SIM800L_uart_callback() {
	/* Update the last time of UART communication */
	SIM800L_uart_last_time = HAL_GetTick();

	/* Increment the index if it's within the buffer limits */
	if (SIM800L_uart_rx_index < SIM800_UART_BUFFER_MAX_SIZE - 1) {
		SIM800L_uart_rx_index++;
	}

	/* Clear the buffer entry and store the new data */
	SIM800L_uart_buffer[SIM800L_uart_rx_index] = 0;
	SIM800L_uart_buffer[SIM800L_uart_rx_index] = SIM800L_data_buff;

	/* Re-enable UART reception interrupt */
	HAL_UART_Receive_IT(&SIM800_UART, &SIM800L_data_buff, 1);
}

void SIM800L_send_sms(uint8_t* SMS, uint8_t SMS_len, uint8_t* phone_number, uint8_t phone_num_len) {
	char AT_SMS[60];
	uint8_t ctrl_z = 26;

	/* Prepare the AT command to send SMS */
	sprintf(AT_SMS, "AT+CMGS=\"%s\"\r\n", phone_number);

	/* Send the AT command and wait for response */
	SIM800L_send_at_not_wait_response(AT_SMS);
	HAL_Delay(200);

	/* Send the SMS content */
	SIM800L_send_at_not_wait_response((char*)SMS);

	/* Send Ctrl+Z to indicate the end of the SMS message */
	HAL_UART_Transmit(&SIM800_UART, &ctrl_z, 1, 100);
}

/**
 * @brief Sends an AT command to the SIM800L module without waiting for a response.
 * @details This function transmits the given AT command via UART to the SIM800L module.
 * It does not wait for any response from the module.
 * @param[in] str Pointer to the AT command string to be sent.
 */
void SIM800L_send_at_not_wait_response(char* str) {
	/* Transmit the AT command via UART */
	HAL_UART_Transmit(&SIM800_UART, (uint8_t*)str, strlen(str), 100);
}

/**
 * @brief Sends an AT command and waits for a response.
 * @details This function sends an AT command to the SIM800L module and waits for the specified
 * response within a timeout period. If the response is received and matches the expected
 * answer, the function returns success. If not, it retries sending the command.
 * @param[in] at_command Pointer to the AT command to be sent.
 * @param time_out Timeout period in milliseconds to wait for the response.
 * @param[in] answer Pointer to the expected response string.
 * @param answer_length Length of the expected response string.
 * @param clear_buffer Flag indicating whether to clear the UART buffer after a successful match.
 * 
 * @return HAL_OK if the expected response is received, HAL_ERROR if the timeout occurs.
 */
static uint8_t SIM800L_send_at_command(uint8_t* at_command, uint8_t AtLength, uint32_t time_out,
		uint8_t* answer, uint8_t answer_length, uint8_t clear_buffer) {
	uint8_t str1;
	uint16_t size_uart_buffer;
	uint32_t send_cmd_start_time = HAL_GetTick();
	uint32_t time_cmd_wait;

	/* Loop until the timeout period has elapsed */
	while (HAL_GetTick() - send_cmd_start_time < time_out) {
		/* Calculate the elapsed time since the last UART event */
		time_cmd_wait = HAL_GetTick() - SIM800L_uart_last_time;

		/* Check if enough time has passed and sufficient data has been received */
		if ((time_cmd_wait > 50) && (SIM800L_uart_rx_index > answer_length - 1)) {
			size_uart_buffer = SIM800L_uart_rx_index;
			str1 = obit_strcmp(answer, answer_length, SIM800L_uart_buffer, size_uart_buffer);

			/* If the response matches the expected answer */
			if (str1 == 1) {
				/* Clear the UART buffer if required */
				if (clear_buffer) {
					SIM800L_uart_rx_index = 0;
					memset((char*)SIM800L_uart_buffer, 0, SIM800_UART_BUFFER_MAX_SIZE);
				}
				return HAL_OK; /* Return success */
			} else {
				/* If the response does not match, resend the command */
				SIM800L_send_at_not_wait_response(at_command);
				HAL_Delay(200); /* Wait before retrying */
			}
		} else {
			/* If not enough time has passed, resend the command */
			SIM800L_send_at_not_wait_response(at_command);
			HAL_Delay(200); /* Wait before retrying */
		}
	}
	/* Return 0 if timeout occurs */
	return HAL_ERROR;
}

uint8_t SIM800L_init() {
	/* Enable UART reception interrupt */
	if (HAL_UART_Receive_IT(&huart2, &SIM800L_data_buff, 1) != HAL_OK) {
		return HAL_ERROR; /* Error enabling UART interrupt */
	}

	/* Disable echo and check for response */
	if (!SIM800L_send_at_command((uint8_t*)"ATE0\r\n", 6, 2000, (uint8_t*)"\r\nOK\r\n", 6, 1)) {
		return HAL_ERROR; /* Failed to disable echo */
	}

	/* Check module presence */
	if (!SIM800L_send_at_command((uint8_t*)"AT\r\n", 4, 2000, (uint8_t*)"\r\nOK\r\n", 6, 1)) {
		return HAL_ERROR; /* Module not responding */
	}

	/* Check SIM card status */
	while (!SIM800L_send_at_command((uint8_t*)"AT+CPIN?\r\n", 10, 500, (uint8_t*)"+CPIN: READY", 11,
			1)) {
		HAL_Delay(100); /* Until SIM is ready*/
	}

	/* Set SMS text mode */
	if (!SIM800L_send_at_command((uint8_t*)"AT+CMGF=1\r\n", 11, 2000, (uint8_t*)"\r\nOK\r\n", 6,
				1)) {
		return HAL_ERROR; /* Failed to set SMS mode */
	}

	return HAL_OK;
}
