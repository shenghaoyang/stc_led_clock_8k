/*
 * uart.h
 *
 *  Created on: 23 Jul 2017
 *      Author: shenghao
 */

#ifndef UART_H_
#define UART_H_

#include <stdint.h>
#include <stc15w408as.h>

inline void uart_setup() {
	UART_SCON = 0b01010000;	//UART1 operating in Async mode, 8 bit data, rx enabled
	PCON &= 0b00111111;		//UART1 operating at normal baud rate, no doubling
	AUXR |= 0x05;			//UART1 operating off Timer 2 as baud rate generator, Timer 2 at 1T mode, Timer 2 as Timer
	TMR_T2 = 0xffd0;		//Set timer 2 to overflow once every 1/(115200*4) seconds for a baud rate of 115200.
	AUXR |= 0x10;			//Run timer 2, and enable the UART to function
}


#endif /* UART_H_ */
