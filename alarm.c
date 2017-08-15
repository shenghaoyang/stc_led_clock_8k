/*
 * alarm.c
 *
 *  Created on: 30 Jul 2017
 *      Author: shenghao
 */
#include <alarm.h>

volatile uint16_t alarm_counter;

void ISR_T2() __interrupt(INT_T2) __using(0) {
	static uint8_t cnt = 15;
	INT_IE_EA = 0;	//Guard against display interrupt modifying state
	if(cnt > 7 && (alarm_counter < ALARM_MAX_TIME))
		ALARM_BUZZER_DRIVE_ACTIVE();
	else
		ALARM_BUZZER_DRIVE_INACTIVE();
	INT_IE_EA = 1;
	if((--cnt) == 0)
		cnt = 15;
	if(alarm_counter < ALARM_MAX_TIME)
		alarm_counter++;
}

