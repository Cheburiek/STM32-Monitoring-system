# STM32-Monitoring-system
The project "STM32-based IoT device for indoor climate monitoring" aims to create a system that monitors microclimate parameters such as humidity, temperature, CO2 level, atmospheric pressure, and illumination.
The STM32F407VET6 microcontroller was chosen to implement this system, as it has sufficient power and pins to connect all the necessary peripherals. The system uses the following sensors:

- Temperature and humidity sensor to monitor the level of these indicators in the room. (AHT10)
- CO2 sensor for monitoring air quality. (CCS811)
- Barometer for measuring atmospheric pressure. (BMP280)
- A photoelectric sensor for measuring illumination. (GL5516)


The following tools are used to communicate with the user:
- TFT ST7735 display allows you to see the measurement results at all times.
- RGB LED for CO2 level indication
