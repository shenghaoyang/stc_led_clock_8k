#include <stc15w408as.h>
#include <stdint.h>
#include <ledfonts.h>
#include <display.h>
#include <uart.h>
#include <ds1302.h>
#include <timer.h>
#include <button.h>
#include <eeprom.h>
#include <stdio.h>
#include <adc.h>
#include <alarm.h>
#include <fsm.h>

void main(void)
{
	/* FSM variables */
	enum fsm_states_highlevel fsm_curstate = fsm_home;
	enum fsm_return (*fsm_fp)(void) = fsm_home_fn;
	enum fsm_return fsm_runstate;

	/* Perform initialization sequence */
	/* Setup the alarm */
	alarm_buzzer_setup();
	ALARM_BUZZER = 0;
	/* Initialize the ADC */
	adc_setup();
	/* Start the timer ticking */
	timer_tick_setup();
	/* Setup and run the display - global interrupts enabled here */
	display_setup();
	/* Initialize the button subsystem */
	button_setup();
	delay_centiseconds(200);
	ALARM_BUZZER = 1;
	/* Setup and enable the DS1302 */
	ds1302_setup();
	ds1302_reset();
	ds1302_read_SRAM();
	if(!ds1302_check_SRAM() ||
			((button_read_and_clear_menu() == BUTTON_HELD_DOWN)
					&& (button_read_and_clear_select() == BUTTON_HELD_DOWN)))
		ds1302_power_loss_reset();
	/* Perform miscellaneous setup tasks */
	display_autobrightness = 1;
	fsm_home_auto = 0;
	/* Run main state machine */
	while(1){
		fsm_runstate = fsm_fp();
		fsm_fp = fsm_transition_table_fp[fsm_curstate][fsm_runstate];
		fsm_curstate = fsm_transition_table_s[fsm_curstate][fsm_runstate];
		delay_centiseconds(10); 			//Delay 100ms, update state machine @ 10Hz
	}
}
/*
 * Timer 2 overflow ISR prototype. Required by SDCC to be included in file
 * containing main().
 *
 * The Timer 2 overflow interrupt is used to generate the driving waveform for
 * the alarm buzzer. The piezo buzzer used is an indicator, so a driving
 * waveform is not needed to generate the tone produced by the indicator. This
 * driving waveform is used only to generate a 2Hz square wave fed to the
 * indicator, such that we get a beeping piezo indicator, that is more likely
 * to wake up the user.
 */
void ISR_T2(void) __interrupt(INT_T2) __using(0);

/*
 * ADC ISR prototype. Required by SDCC to be included in file
 * containing main().
 *
 * The ADC ISR is used to update the variables containing the ADC reading for
 * the thermistor and the LDR, when a measurement completes for the thermistor,
 * or the LDR, respectively.
 */
void ISR_ADC(void) __interrupt(INT_ADC) __using(3);
/*
 * Timer 0 overflow ISR prototype. Required by SDCC to be included in file
 * containing main().
 *
 * The Timer 0 overflow interrupt is used to generate the 10ms timebase,
 * run the debounce logic, and trigger the ADC to scan through both the
 * thermistor input channel and the LDR input channel.
 */
void ISR_T0(void) __interrupt(INT_T0) __using(2);

/*
 * PCA Interrupt prototype. Required by SDCC to be included in file containing
 * main().
 *
 * The PCA interrupt is used to generate the driving waveform for the LED
 * display, including managing the waveform generation for flashing the LEDs.
 */
void ISR_PCA(void) __interrupt(INT_PCA) __using(1);
