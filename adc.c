/*
 * adc.c
 *
 *  Created on: 25 Jul 2017
 *      Author: shenghao
 */

#define ADC_C_
#include <adc.h>
#undef ADC_C_


void adc_calibrate_LDR(uint16_t ldr_min,uint16_t ldr_max) {
	float gradient = (((float)(DISPLAY_COUNTS_RANGE))/((-1.00f)*(float)(ldr_max - ldr_min)));
	float intercept = ((float)DISPLAY_COUNTS_MAX - gradient*((float)ldr_min));
	uint16_t i;

	eeprom_start();
	eeprom_erase(0x00);	//Erase EEPROM sectors holding LDR lookup table
	eeprom_erase(0x02);	//Erase EEPROM sectors holding LDR lookup table
	eeprom_erase(0x04);	//Erase EEPROM sectors holding LDR lookup table
	eeprom_erase(0x08);	//Erase EEPROM sectors holding LDR lookup table
	for(i=0;i<1024;i++){
		if((i >= ldr_min) && (i <= ldr_max)){
			eeprom_write(2*i,((uint16_t)((gradient*(float)(i)) + intercept)) & 0x00ff);
			eeprom_write((2*i)+1,((uint16_t)((gradient*(float)(i)) + intercept)) >> 8);
			continue;
		}
		if(i < ldr_min){
			eeprom_write((2*i),DISPLAY_COUNTS_MAX & 0x00ff);
			eeprom_write((2*i)+1,DISPLAY_COUNTS_MAX >> 8);
			continue;
		}
		eeprom_write((2*i),DISPLAY_COUNTS_MIN & 0x00ff);
		eeprom_write((2*i)+1,DISPLAY_COUNTS_MIN >> 8);
	}
	eeprom_end();
}

/*!
 * \brief ADC ISR
 *
 * The ADC ISR handles the update of the two global variables, each storing
 * the reading from the thermistor, and the reading from the ldr, respectively.esult(
 * It also handles the automatic brightness adjustment.
 *
 * Note that the ADC ISR is not responsible for the triggering of the ADC, the
 * main 10ms timebase performs that function. However, the ADC ISR reads the
 * ADC_CONTR register to determine what channel the ADC was triggered on, and
 * updates the global variables.
 *
 * \warning The ADC ISR uses non-reentrant floating point operations. If
 * floating point operations are to be used in the main program, disable the ADC
 * ISR or disable display auto-brightness to prevent re-entrancy issues.
 *
 */
void ISR_ADC(void) __interrupt(INT_ADC) __using(3) {
	uint16_t display_counts_buffer;
	ADC_CONTR ^= 0x10; //Clear the ADC flag
	/* Determine interrupt source and update globals */
	if(ADC_CONTR == ADC_SETUP_THERMISTOR){
		adc_thermistor_reading = ADC_RES;
	} else {
		adc_ldr_reading = ADC_RES;
		if(display_autobrightness) {
			/* Perform brightness adjustment if the automatic adjustment is enabled */
			display_counts_buffer = (((float)EEPROM_PWM_FROM_LDR_TABLE[adc_ldr_reading]/100.0) + ((99.00) *((float)display_counts/100.0)));
			INT_IP_PPCA = 0; //Block PCA interrupt from stacking on top of ADC ISR
			display_counts = display_counts_buffer;
			INT_IP_PPCA = 1; //Re-enable PCA interrupt high priority
		}
	}
}
