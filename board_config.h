/*!
 * \file board_config.h
 * \brief The board configuration file contains board / clock specific
 * initialization code.
 *
 * Change the initialization code / defines in this file to allow the
 * program to function on your particular clock kit.
 *
 * \author Shenghao Yang
 */
#ifndef BOARD_CONFIG_H_
#define BOARD_CONFIG_H_
#include <stc15w408as.h>
/*
 * ADC pin connections
 * The digits represents the I/O line connected to each of the LDR / thermistor
 * sensors, on port 1 of the microcontroller.
 */

#define ADC_LDR_PIN 6			///< I/O line connected to the LDR
#define ADC_THERMISTOR_PIN 7	///< I/O line connected to the thermistor

/*
 * Display pin configuration, assuming a common anode display.
 * \todo Split up display driving into more individual functions to speed up
 * porting to a common cathode display.
 */
/*!
 * \brief Port to which all the segment control lines of the display are
 * connected to.
 * \warning It is assumed that the least significant bit of the port register
 * controlling the states of the I/O lines connected to the segment control
 * lines of the display controls segment a of the display.
 */
#define DISPLAY_SEGMENT_PORT PORT_P2
/*!
 * \brief Drives the common pin of one the LED display segments to their active state
 * @param index the index of the digit whose common to drive. The allocation of
 * digit indexes to actual physical digits can be found at \ref display_buffer.
 *
 * \note When a digit's common pin is driven to the active state,
 * it is expected that the segments that are also driven, to the active state,
 * for that particular display, are lit.
 */
inline void display_drive_common(uint8_t index){
	PORT_P3 &= ~(0x04 << index);
}
/*!
 * \brief Drives the common pin of all the LED display segments to their
 * inactive state.
 *
 * \note When all common pins of all LED display segments are in their inactive
 * states, it is expected that they are all not lit, irrespective of the states
 * of the segment pins.
 */
inline void display_disable_commons(void) {
	PORT_P3 |= (0x3c);
}

/*!
 * \brief Sets up the I/O ports of the uC to drive the
 * LED display.
 */
inline void display_setup_port(void) {
	PORT_P2M1 = 0xff; //Configure display port for open-drain operation mode
	PORT_P2M0 = 0xff; //Set the mode register 0 first to transition through high-z mode instead of push-pull mode
}

/*
 * Piezo buzzer configuration
 */
#define ALARM_BUZZER PORT_P1_5 ///< Pin that the piezo buzzer is connected to

/*!
 * \brief Drives the piezo buzzer on.
 */
#define ALARM_BUZZER_DRIVE_ACTIVE() (ALARM_BUZZER = 0)

/*!
 * \brief Drives the piezo buzzer off.
 */
#define ALARM_BUZZER_DRIVE_INACTIVE() (ALARM_BUZZER = 1)

/*
 * Button configuration
 */
#define BUTTON_MENU PORT_P3_1		///< Pin that the menu button is connected to
#define BUTTON_SELECT PORT_P3_0		///< Pin that the select button is connected to


#endif /* BOARD_CONFIG_H_ */
