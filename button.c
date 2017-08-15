/*
 * button.c
 *
 *  Created on: 24 Jul 2017
 *      Author: shenghao
 */
#define BUTTON_C_
#include <button.h>
#undef BUTTON_C_

enum button_states button_read_and_clear_select() {
	enum button_states s;
	INT_IE_ET0 = 0; //Disable timer 0 interrupt so we don't get half bit sets
	if(!(BUTTON_DATA >> 0x05)){
		INT_IE_ET0 = 1;
		return BUTTON_NONE;
	}
	if(BUTTON_DATA_SELECT_HELD_DOWN){
		INT_IE_ET0 = 1;
		return BUTTON_HELD_DOWN;
	}
	if(BUTTON_DATA_SELECT_RELEASED_NORMAL){
		BUTTON_DATA_SELECT_RELEASED_NORMAL = 0;
		s = BUTTON_PRESSED;
	} else {
		BUTTON_DATA_SELECT_RELEASED_LONGP = 0;
		s = BUTTON_LONG_PRESSED;
	}
	INT_IE_ET0 = 1; //Enable timer 0 interrupt
	return s;
}

enum button_states button_read_and_clear_menu() {
	enum button_states s;
	INT_IE_ET0 = 0; //Disable timer 0 interrupt so we don't get half bit sets
	if(!(BUTTON_DATA & 0x0e)){
		INT_IE_ET0 = 1;
		return BUTTON_NONE;
	}
	if(BUTTON_DATA_MENU_HELD_DOWN){
		INT_IE_ET0 = 1;
		return BUTTON_HELD_DOWN;
	}
	if(BUTTON_DATA_MENU_RELEASED_NORMAL){
		BUTTON_DATA_MENU_RELEASED_NORMAL = 0;
		s = BUTTON_PRESSED;
	} else {
		BUTTON_DATA_MENU_RELEASED_LONGP = 0;
		s = BUTTON_LONG_PRESSED;
	}
	INT_IE_ET0 = 1; //Enable timer 0 interrupt
	return s;
}
