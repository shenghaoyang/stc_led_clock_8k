/*
 * display.c
 *
 *  Created on: 22 Jul 2017
 *      Author: shenghao
 */
#include <stdint.h>
#include <stc15w408as.h>
#include <display.h>
#include <ledfonts.h>

volatile uint8_t display_buffer[4] = {0x00,0x00,0x00,0x00};
volatile uint8_t display_index = 0x03;
volatile uint8_t display_flash = 0x00;
volatile uint16_t display_counts = 0xff00;

void display_puts(__code const char* s) {
	display_buffer[0] = ledfonts_numeric_normal[*s];
	display_buffer[1] = ledfonts_numeric_normal[*(s+1)];
	display_buffer[2] = ledfonts_numeric_flipped[*(s+2)];
	display_buffer[3] = ledfonts_numeric_normal[*(s+3)];
}

void display_putbcd(uint8_t v1, uint8_t v2) {
	display_buffer[0] = ledfonts_numeric_normal[(v1 >> 0x04)];
	display_buffer[1] = ledfonts_numeric_normal[(v1 & 0x0f)];
	display_buffer[2] = ledfonts_numeric_flipped[(v2 >> 0x04)];
	display_buffer[3] = ledfonts_numeric_normal[(v2 & 0x0f)];
}

void display_puttime(uint8_t hour, uint8_t minute) {
	if(TIME_DISPLAY_12) {
		display_putbcd(convert_24h_to_12h(hour),minute);
		if(hour > 0x11)
			display_ampmon();
	} else {
		display_putbcd(hour,minute);
	}

	if(DISPLAY_REMOVE_LEADING_ZEROES &&
			(display_buffer[0] == ledfonts_numeric_normal['0']))
		display_buffer[0] = ledfonts_numeric_normal[' '];
}

void display_putdate(void) {
	if(DATE_DISPLAY_MMDD)
		display_putbcd(ds1302.month,ds1302.date);
	else
		display_putbcd(ds1302.date,ds1302.month);
	display_periodon();

	if(DISPLAY_REMOVE_LEADING_ZEROES){
		if(display_buffer[0] == ledfonts_numeric_normal['0'])
			display_buffer[0] = ledfonts_numeric_normal[' '];
		if(display_buffer[2] == ledfonts_numeric_flipped['0'])
			display_buffer[2] = ledfonts_numeric_flipped[' '];
	}
}

void display_putbool(uint8_t v) {
	if(v) {
		display_buffer[2] = ledfonts_numeric_flipped['O'];
		display_buffer[3] = ledfonts_numeric_normal['N'];
	} else {
		display_buffer[2] = ledfonts_numeric_flipped['O'];
		display_buffer[3] = ledfonts_numeric_normal['F'];
	}
}

void display_puttemp(uint16_t v) {
	display_buffer[0] = ledfonts_numeric_normal[(v >> 0x08) & 0x0f];
	display_buffer[1] = ledfonts_numeric_normal[(v >> 0x04) & 0x0f];
	display_buffer[2] = ledfonts_numeric_flipped[v & 0x0f];
	display_buffer[3] = ledfonts_numeric_normal['C'];
	display_periodon();
}

void ISR_PCA(void) __interrupt(INT_PCA) __using(1)
{
	static uint8_t flash_prescaler = 0x10;
	if(PCA_CF) {
		/*
		 * Interrupt flag for PCA overflow set
		 * This section of the ISR must be fast as we
		 * don't have much clock cycles here to use - at most 200
		 */
		PCA_CF = 0;										//Disable interrupt flag
		PCA_CCAP0_L = (display_counts & 0x0f); 			//Setup new compare value - Note that the low register MUST be written first to stop the comparison operation!
		PCA_CCAP0_H = (display_counts >> 8);			//Setup new compare value
		PORT_P2 = display_buffer[display_index];		//Write segment buffer

		//Drive digit anode
		if((flash_prescaler < 0x08) && ((display_flash >> display_index) & 0x01))
			;
		else
			display_drive_common(display_index);

		return;
	}

	if(PCA_CCF0) {
		/*
		 * Interrupt flag for compare module 0 set - we can spend up to
		 * a thousand cycles here, more if required.
		 */
		PCA_CCF0 = 0;				//Disable interrupt flag
		display_disable_commons();	//Disable drive of all common drain / source lines
		if(!display_index){
			/* One display cycle has completed */
			if(!(flash_prescaler--))
				flash_prescaler = 0x10;
			display_index = 0x04;
		}
		display_index--;			//Decrement display index

		return;
	}
}
