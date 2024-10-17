#include "SIM800L.h"

#include <stdint.h>
#include "obit_string.h"

uint8_t Sim800_UartBuffer[SIM800_UART_BUFFER_MAX_SIZE];
uint16_t Sim800_UartRxIndex;
uint32_t Sim800_UartLastTime;
uint8_t Sim800_DataBuff;

void SIM800L_uart_callback()
{
		Sim800_UartLastTime = HAL_GetTick();
		if(Sim800_UartRxIndex < SIM800_UART_BUFFER_MAX_SIZE - 1)
		{
			Sim800_UartRxIndex++;
		}
		Sim800_UartBuffer[Sim800_UartRxIndex] = 0; // clear 
		Sim800_UartBuffer[Sim800_UartRxIndex] = Sim800_DataBuff;
		HAL_UART_Receive_IT(&huart2,&Sim800_DataBuff,1);
}

void SIM800L_send_sms(uint8_t *SMS, uint8_t SMS_len, uint8_t *PhoneNumber, uint8_t PhoneNumLen)
{
	char AT_SMS[60];
	uint8_t ctrl_z =26;
	sprintf(AT_SMS,"AT+CMGS=\"%s\"\r\n",PhoneNumber);
	Sim800_SendAtNotWaitResponse(AT_SMS);
	HAL_Delay(200);
	Sim800_SendAtNotWaitResponse((char*)SMS);
	HAL_UART_Transmit(&SIM800_UART,&ctrl_z,1,100);// CTRL_Z
 
}


void Sim800_SendAtNotWaitResponse(char* str) {
	HAL_UART_Transmit(&SIM800_UART, (uint8_t*)str, strlen(str), 100);
}

uint8_t Sim800_SendAtCommand(uint8_t* AtCommand, uint8_t AtLength, uint32_t Time_out,
		uint8_t* answer, uint8_t AnsLength, uint8_t clear_buffer) {
	// clear_buffer = 1 ==> xoa buffer khi nhan duoc chuoi chinh xac
	uint8_t str1;
	uint16_t SizeUartBuffer;
	uint32_t SendCommandStartTime = HAL_GetTick();
	uint32_t TimeCommandWait;
	//Sim800_SendAtNotWaitResponse(AtCommand);
	while (HAL_GetTick() - SendCommandStartTime < Time_out) {
		TimeCommandWait = HAL_GetTick() - Sim800_UartLastTime;
		if ((TimeCommandWait > 50) && (Sim800_UartRxIndex > AnsLength - 1)) {
			SizeUartBuffer = Sim800_UartRxIndex;
			str1 = obit_strcmp(answer, AnsLength, Sim800_UartBuffer, SizeUartBuffer);
			//str1 = obit_strcmp("\r\nOK\r\n",6,"\r\n\r\nss\r\nOK\r\n",12);
			if (str1 == 1) {
				if (clear_buffer) {
					Sim800_UartRxIndex = 0;
					memset((char*)Sim800_UartBuffer, 0, SIM800_UART_BUFFER_MAX_SIZE);
				}
				return 1;
			} else {
				Sim800_SendAtNotWaitResponse(AtCommand);
				HAL_Delay(200);
			}
		}

		else {
			Sim800_SendAtNotWaitResponse(AtCommand);
			HAL_Delay(200);
		}
	}
	return 0;
}

void SIM800L_init() {
	HAL_UART_Receive_IT(&huart2, &Sim800_DataBuff, 1);
	Sim800_SendAtCommand((uint8_t*)"ATE0\r\n", 6, 2000, (uint8_t*)"\r\nOK\r\n", 6, 1);
	Sim800_SendAtCommand((uint8_t*)"AT\r\n", 4, 2000, (uint8_t*)"\r\nOK\r\n", 6, 1);
	while (Sim800_SendAtCommand((uint8_t*)"AT+CPIN?\r\n", 10, 500, (uint8_t*)"+CPIN: READY", 11,
				   1) != 1) {
		HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
		HAL_Delay(100);
	}
	Sim800_SendAtCommand((uint8_t*)"AT+CMGF=1\r\n", 11, 2000, (uint8_t*)"\r\nOK\r\n", 6, 1);
}