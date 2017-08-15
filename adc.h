/*
 * adc.h
 *
 *  Created on: 25 Jul 2017
 *      Author: shenghao
 */
/*!
 * \file adc.h
 * \brief ADC access functions
 */
#ifndef ADC_H_
#define ADC_H_
#include <stdint.h>
#include <stc15w408as.h>
#include <eeprom.h>
#include <display.h>
#include <board_config.h>

#define ADC_SETUP_THERMISTOR (0xe0 | ADC_THERMISTOR_PIN)
#define ADC_TRIGGER_THERMISTOR (0xe8 | ADC_THERMISTOR_PIN)
#define ADC_SETUP_LDR (0xe0 | ADC_LDR_PIN)
#define ADC_TRIGGER_LDR (0xe8 | ADC_LDR_PIN)

#ifndef ADC_C_
extern volatile uint16_t adc_ldr_reading;
extern volatile uint16_t adc_thermistor_reading;
#else
volatile uint16_t adc_ldr_reading;
volatile uint16_t adc_thermistor_reading;
#endif



/*!
 * \brief Sets up the device for ADC access
 *
 * - Configures the PORT pins for ADC mode
 * - Turns on the ADC and waits for it to be ready
 * - Sets up the ADC to sample at the lowest possible rate
 * - Sets up the ADC to return a right justified result
 */
inline void adc_setup() {
	PORT_P1M1 |= ((0x01 << ADC_LDR_PIN)
			| (0x01 << ADC_THERMISTOR_PIN));		//Set both thermistor and LDR input pins as High-Z
	ADC_P1ASF |= ((0x01 << ADC_LDR_PIN)
			| (0x01 << ADC_THERMISTOR_PIN));		//Set both thermistor and LDR input pins as ADC input pins, block digital functions
	ADC_CONTR = 0x80;		//Turn on the ADC power and set the ADC speed to min
	PCON2	  |= 0x20;		//Sets up the ADC to return a right justified result
	ADC_RES = 0x0000;		//Clear the ADC result
	INT_IE_EADC = 1;		//Enable ADC interrupt
	__asm
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	__endasm; 					 //Wait for ADC power on
	ADC_CONTR = ADC_SETUP_LDR;   //Write initial trigger source so that timer interrupt triggers another ADC conversion
}

/*!
 * \brief Triggers an ADC conversion of the LDR reading
 */
inline void adc_trigger_ldr() {
	ADC_RES = 0x0000;				//Clear the ADC result
	ADC_CONTR = ADC_SETUP_LDR;		//Must set source bits first before triggering
	ADC_CONTR = ADC_TRIGGER_LDR;
}

/*!
 * \brief Triggers an ADC conversion of the NTC reading
 */
inline void adc_trigger_thermistor() {
	ADC_RES = 0x0000;				//Clear the ADC result
	ADC_CONTR = ADC_SETUP_THERMISTOR;	//Must set source bits first before triggering
	ADC_CONTR = ADC_TRIGGER_THERMISTOR;
}

/*!
 * \brief Waits until an ADC conversion is complete
 */
inline void adc_wait_conversion() {
	while(!(ADC_CONTR & 0x10));
	ADC_CONTR ^= 0x10;			//Clear the ADC flag
}

/*!
 * \brief Obtains the result from the ADC
 * @return ADC result in the range [0,1023]
 */
inline uint16_t adc_get_result() {
	return (ADC_RES);
}

/*!
 * \brief Triggers an ADC conversion of the LDR reading, and waits for
 * it to complete, before returning the result
 * @return ADC result in the range [0,1023]
 * \warning This function should only be used when the ADC is not running in
 * interrupt mode. The ADC interrupt enable bit must have been cleared!
 */
inline uint16_t adc_read_ldr() {
	adc_trigger_ldr();
	adc_wait_conversion();
	return adc_get_result();
}

/*!
 * \brief Triggers an ADC conversion of the thermistor reading, and waits for
 * it to complete, before returning the result
 * @return ADC result in the range [0,1023]
 * \warning This function should only be used when the ADC is not running in
 * interrupt mode. The ADC interrupt enable bit must have been cleared!
 */
inline uint16_t adc_read_thermistor() {
	adc_trigger_ldr();
	adc_wait_conversion();
	return adc_get_result();
}

/*!
 * \brief Obtains the most recently converted LDR reading
 * \return ADC reading for the LDR in the range of [0,1023]
 * \note For use when the LDR reading needs to be accessed outside of the
 * ADC ISR. Temporarily blocks the ADC ISR from operating, accesses the value,
 * and allows the ADC ISR to operate again.
 */
inline uint16_t adc_get_ldr() {
	uint16_t tmp;
	INT_IE_EADC = 0;				//Disable ADC interrupt
	tmp = adc_ldr_reading;	   		//Store temporary result
	INT_IE_EADC = 1;				//Enable ADC interrupt
	return tmp;						//Return temporary
}
/*!
 * \brief Obtains the most recently converted thermistor reading
 * @return ADC reading for the thermistor in the range of [0,1023]
 * \note For use the thermistor reading needs to be accessed outside of the
 * ADC ISR. Temporarily blocks the ADC ISR from operating, accesses the value,
 * and allows the ADC ISR to operate again.
 */
inline uint16_t adc_get_thermistor() {
	uint16_t tmp;
	INT_IE_EADC = 0;				//Disable ADC interrupt
	tmp = adc_thermistor_reading;	//Store temporary result
	INT_IE_EADC = 1;				//Enable ADC interrupt
	return tmp;						//Return temporary
}

void adc_calibrate_LDR(uint16_t ldr_min,uint16_t ldr_max);


#endif /* ADC_H_ */
