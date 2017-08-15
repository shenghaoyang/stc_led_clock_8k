/*
 * timer.h
 *
 *  Created on: 24 Jul 2017
 *      Author: shenghao
 */

#ifndef TIMER_H_
#define TIMER_H_
#include <stdint.h>
#include <stc15w408as.h>

extern volatile uint16_t ticks_10ms;

volatile uint16_t centiseconds();

inline void delay_centiseconds(uint16_t cs) __reentrant{
	uint16_t ticks_now;
	INT_IE_ET0 = 0; //Disable timer interrupt
	ticks_now = ticks_10ms;
	INT_IE_ET0 = 1; //Enable timer interrupt
	while((ticks_10ms - ticks_now) < cs); //Wait
}

inline void timer_tick_setup() {
	TMR_TMOD = 0x00; //Set Timer 0 as 16-bit auto reload TC
	TMR_T0 = 0xb800; //Set Initial value for Timer 0 auto reload
	TMR_TCON = 0x00; //Reset timer TCON
	AUXR &= 0b01111111; //Set Timer 0 to count up once every 12 ticks
	INT_IE_ET0 = 1;  //Enable timer 0 interrupt
	TMR_TCON_TR0 = 1;//Run timer 0 and start 100Hz ticks
}




#endif /* TIMER_H_ */
