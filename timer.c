/*
 * timer.c
 *
 *  Created on: 24 Jul 2017
 *      Author: shenghao
 */

#include <stdint.h>
#include <stc15w408as.h>
#include <button.h>
#include <adc.h>

/*!
 * \brief Number of centiseconds that have passed since the clock was started
 * \warning This is incremented from the timer 0 ISR. If the user application
 * wishes to read both bytes of this value, it is recommended that the read
 * be guarded through disabling and re-enabling the timer 0 ISR.
 * \warning Rolls over after approximately 109 minutes.
 */
volatile uint16_t ticks_10ms = 0x0000;

void ISR_T0(void) __interrupt(INT_T0) __using(2) {
	/*
	 * The interrupt flag is automatically cleared by hardware
	 * and there is no need to clear manually
	 * clear it manually.
	 */
	/*
	 * Handle timebase
	 */
	ticks_10ms++;	  //Increment 10ms tick count




	/*
	 * Trigger ADC
	 */
	if(ADC_CONTR == ADC_SETUP_THERMISTOR) //If we have triggered the thermistor last time
		adc_trigger_ldr();				  //Trigger the LDR now
	if(ADC_CONTR == ADC_SETUP_LDR)		  //If we have triggered the LDR last time
		adc_trigger_thermistor();		  //Trigger the thermistor now
	/* A if-else structure is not used because we want the ADC interrupt flag
	 * to be cleared first before triggering another conversion. We don't want
	 * a lost conversion or a inconsistent conversion readout because the
	 * ADC interrupt was disabled - we perform a new reading - but the
	 * ADC register has already been half read - then the user's reading is
	 * then wrong.
	 */




	/*
	 * Perform button debounce functions
	 */
	BUTTON_MENU_STATE = ((BUTTON_MENU_STATE << 1) | BUTTON_MENU);		//Write new menu button state
	BUTTON_SELECT_STATE = ((BUTTON_SELECT_STATE << 1) | BUTTON_SELECT); //Write new select button state

	/* Detect new button presses */
	if((BUTTON_MENU_STATE & BUTTON_DEBOUNCE_MASK) == BUTTON_DEBOUNCE_PATTERN_PRESSED){
		BUTTON_DATA_MENU_PRESSED = 0x01;			//Set new state
		BUTTON_DATA &= 0xf1;						//Clear other bits
		BUTTON_MENU_CNT = 0x00;						//Reset counter
		BUTTON_MENU_STATE = 0x00;
	}
	if((BUTTON_SELECT_STATE & BUTTON_DEBOUNCE_MASK) == BUTTON_DEBOUNCE_PATTERN_PRESSED){
		BUTTON_DATA_SELECT_PRESSED = 0x01;			//Set new state
		BUTTON_DATA &= 0x1f;						//Clear other bits
		BUTTON_SELECT_CNT = 0x00;					//Reset counter
		BUTTON_SELECT_STATE = 0x00;
	}


	/* Detect button releases */
	if((BUTTON_MENU_STATE & BUTTON_DEBOUNCE_MASK) == BUTTON_DEBOUNCE_PATTERN_RELEASED){
		if(BUTTON_DATA_MENU_HELD_DOWN) {
			BUTTON_DATA_MENU_HELD_DOWN = 0;
		} else {
			if(BUTTON_MENU_CNT > BUTTON_LONG_PRESS_COUNT){
				BUTTON_DATA_MENU_RELEASED_LONGP = 1;
			} else {
				BUTTON_DATA_MENU_RELEASED_NORMAL = 1;
			}
		}
		BUTTON_DATA_MENU_PRESSED = 0;
		BUTTON_MENU_CNT = 0;
		BUTTON_MENU_STATE = 0xff;
	}
	if((BUTTON_SELECT_STATE & BUTTON_DEBOUNCE_MASK) == BUTTON_DEBOUNCE_PATTERN_RELEASED){
		if(BUTTON_DATA_SELECT_HELD_DOWN) {
			BUTTON_DATA_SELECT_HELD_DOWN = 0;
		} else {
			if(BUTTON_SELECT_CNT > BUTTON_LONG_PRESS_COUNT){
				BUTTON_DATA_SELECT_RELEASED_LONGP = 1;
			} else {
				BUTTON_DATA_SELECT_RELEASED_NORMAL = 1;
			}
		}
		BUTTON_DATA_SELECT_PRESSED = 0;
		BUTTON_SELECT_CNT = 0;
		BUTTON_SELECT_STATE = 0xff;
	}

	/* Increment button press counter */
	if(BUTTON_DATA_MENU_PRESSED)
		if(++BUTTON_MENU_CNT == BUTTON_HELD_DOWN_COUNT)				//Detect held down button
			BUTTON_DATA_MENU_HELD_DOWN = 1;
	if(BUTTON_DATA_SELECT_PRESSED)
		if(++BUTTON_SELECT_CNT == BUTTON_HELD_DOWN_COUNT)				//Detect held down button
			BUTTON_DATA_SELECT_HELD_DOWN = 1;
}

volatile uint16_t centiseconds() {
	uint16_t ticks_now;
	INT_IE_ET0 = 0;
	ticks_now = ticks_10ms;
	INT_IE_ET0 = 1;
	return ticks_now;
}
