/*
 * alarm.h
 *
 *  Created on: 28 Jul 2017
 *      Author: shenghao
 */

#ifndef ALARM_H_
#define ALARM_H_
#include <stdint.h>
#include <stc15w408as.h>
#include <ds1302.h>
#include <board_config.h>

/*!
 *  \brief Number of alarms to implement
 *  \warning Due to limited BBSRAM space in the DS1302, the maximum number of
 *  alarms that can be safely instantiated is 7. At the minimum, one alarm
 *  must be instantiated.
 */
#define NUM_ALARMS 7
/*!
 * \brief Maximum length of time the alarm will sound if not cancelled,
 * in units of (1/30) seconds.
 * \warning Must not exceed 0xff00, as the counter counting the alarm sounding
 * time is only 16 bits in width.
 */
#define ALARM_MAX_TIME 9000

/*!
 * \brief Counter used by the alarm interrupt to count the amount of time
 * the alarm buzzer has remained active.
 */
extern volatile uint16_t alarm_counter;

/*!
 * \brief Structure representing the configuration of one alarm
 */
struct {
	uint8_t hour;			///< Hour alarm is set for in BCD   (24-hour format)
 	uint8_t minute;			///< Minute alarm is set for in BCD (24-hour format)
 	 /*!
 	  * Alarm day-of-week and enable flags.
 	  * Bit 0 represents the enable flag.
 	  * Bits 1 through 7 represents whether the alarm will sound on Monday,
 	  * Tuesday, Wednesday, Thursday, Friday, Saturday, and Sunday, respectively.
 	  *
 	  * If the alarm enable flag is set, the alarm will sound on the days of
 	  * the week it was set for, provided the global alarm enable flag is
 	  * set.
 	  *
 	  * If the alarm enable flag is not set, or, the global alarm enable flag
 	  * is not set, then the alarm will never sound.
 	  */
	uint8_t dow_and_enable;
} typedef alarm;

/*!
 * \brief Array of alarm configuration structures, one representing the
 * configuration of one alarm.
 *
 * \note This array overlays the memory area used to cache the DS1302
 * BBSRAM contents in memory, as the alarm configuration data is stored
 * in the DS1302 BBSRAM as well. Changes that are made to the alarm
 * configuration must be committed following the usual DS1302 BBSRAM write
 * procedure, in order to avoid undefined behavior. A change in the DS1302
 * BBSRAM memory map will necessitate a change in the address this array
 * starts at, as well.
 */
__xdata alarm __at(0x04) alarms[NUM_ALARMS];

/*!
 * \brief Returns the state of the global alarm enable flag
 * @retval zero alarms are disabled globally
 * @retval non-zero alarms are enabled globally
 * \note This function returns the state of the 0th bit in the second status
 * and configuration flag area. This bit is used to indicate whether
 * the alarms are enabled or disabled globally. If the bit is not set,
 * all alarms will not sound. If the bit is set, alarms that are enabled that
 * are also configured to trigger on the same day that they are polled will then
 * trigger.
 */
inline uint8_t alarm_global_state() {
	return (ds1302_sram_data[3] & 0x01);
}

/*!
 * \brief Toggles the state of the global alarm enable flag
 * \note This function toggles the state of the 0th bit in the second status and
 * configuration flag area. This bit is used to indicate whether the alarms are
 * enabled or disabled globally.
 */
inline void alarm_global_toggle() {
	ds1302_sram_data[3] ^= 0x01;
}

/*!
 * \brief Returns whether the alarm is set for a specific day of the week
 * @param[in] index index of the alarm, in the domain [0, NUM_ALARMS]
 * @param[in] dow day of the week to check, in the domain [1, 7], where 1
 * represents Monday and 7 represents Sunday.
 * @retval zero alarm is not set for that specific day of the week
 * @retval non-zero alarm is set for that specific day of the week
 */
inline uint8_t alarm_dow_state(uint8_t index,uint8_t dow){
	return ((alarms[index].dow_and_enable >> dow) & 0x01);
}

/*!
 * \brief Toggles whether the alarm is set for a specific day of the week
 * @param[in] index index of the alarm, in the domain [0, NUM_ALARMS]
 * @param[in] dow day of the week to toggle the alarm's set state for, in the
 * domain [1, 7], where 1 represents Monday and 7 represents Sunday.
 */
inline void alarm_dow_toggle(uint8_t index,uint8_t dow){
	alarms[index].dow_and_enable ^= (0x01 << dow);
}

/*!
 * \brief Turns the alarm buzzer on.
 * \pre The alarm buzzer must have been setup by calling the
 * \ref alarm_buzzer_setup() function.
 *
 * \note Internally, the alarm buzzer is implemented using a background
 * interrupt on Timer 2, using the timer interrupt to toggle the buzzer on
 * and off to generate the tone sequence for the alarm buzzer. This function
 * simply resets the buzzer counter and enables the Timer 2 interrupt.
 */
inline void alarm_buzzer_on() {
	INT_IE2 &= 0xfb;
	alarm_counter = 0x00;
	INT_IE2 |= 0x04;
}

/*!
 * \brief Turns the alarm buzzer off
 *
 * \note Internally, the alarm buzzer is implemented using a background
 * interrupt on Timer 2, using the timer interrupt to toggle the buzzer on
 * and off to generate the tone sequence for the alarm buzzer. This function
 * simply disables the Timer 2 interrupt.
 *
 * \note However, since the buzzer control pin may have been left in an
 * inconsistent state due to disabling the buzzer midway, the buzzer
 * control pin is forced to the state whereby the alarm buzzer is off, to
 * prevent prolonged activation of the buzzer.
 */
inline void alarm_buzzer_off() {
	INT_IE2 &= 0xfb;
	INT_IE_EA = 0;
	ALARM_BUZZER_DRIVE_INACTIVE();
	INT_IE_EA = 1;
}

/*!
 * \brief Sets up the alarm buzzer
 *
 * Internally, this function
 * - Disables the Timer 2 interrupt
 * - Stops Timer 2
 * - Sets Timer 2 to run at a rate of SYSCLK/12, as a Timer, and disables it
 * as a baud rate generator.
 * - Loads the Timer2 re-load registers with 0x0fd7, so it triggers at 30Hz.
 * - Starts Timer 2 again after all the configuration has been completed.
 */
inline void alarm_buzzer_setup() {
	INT_IE2 &= 0xfb;	//TMR2 Interrupt disabled
	AUXR &= 0xe2;		//TMR2: 12T, STOP, TIMER, NOT BAUD GENERATOR
	TMR_T2 = 0x102a;	//TMR2 Starts from 0x0fd7, overflow rate at 12T is ~30Hz
	AUXR |= 0x10;		//TMR2: RUN
}



#endif /* ALARM_H_ */
