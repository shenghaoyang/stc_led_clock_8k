/*
 * uart.c
 *
 *  Created on: 23 Jul 2017
 *      Author: shenghao
 */
#include <stdint.h>
#include <stc15w408as.h>

void putchar(uint8_t c) {
	UART_SBUF = c;	 // Latch data into UART transmission buffer
	while(!UART_TI); // Wait for transmission to complete
	UART_TI = 0;	 // Clear transmit flag
}
