/*
 * display.h
 *
 *  Created on: 22 Jul 2017
 *      Author: shenghao
 */

#ifndef DISPLAY_H_
#define DISPLAY_H_
#include <stdint.h>
#include <stdio.h>
#include <stc15w408as.h>
#include <ledfonts.h>
#include <ds1302.h>
#include <board_config.h>

#define DISPLAY_COUNTS_MAX 0xea00	///< Maximum number of timer ticks a digit can stay on
#define DISPLAY_COUNTS_MIN 0x012c	///< Minimum number of timer ticks a digit can stay on
#define DISPLAY_COUNTS_RANGE (DISPLAY_COUNTS_MAX - DISPLAY_COUNTS_MIN) ///< Range of digit tick adjustment (MAX - MIN)

/*!
 * \note Display buffer for the LED display.
 * Digit 0 is the leftmost digit of the display.
 * Bit 0 is segment a of the display.
 * Display operates in inverse logic. Setting bit 0 will blank segment a.
 */
extern volatile uint8_t display_buffer[4];
/*!
 * \note Stores the next digit to be shown.
 * Display is scanned from digit 3 to digit 0 as this allows a comparison
 * with zero.
 */
extern volatile uint8_t display_index;
/*!
 * \brief Stores the number of timer ticks a digit is to be shown for.
 * Determines the duty cycle of a digit.
 *
 * \note Must be in the domain [\ref DISPLAY_COUNTS_MIN,\ref DISPLAY_COUNTS_MAX]
 * in order to compensate for interrupt handling time.
 */
extern volatile uint16_t display_counts;

/*!
 * \brief Indicates which digit of the display will flash at around a 5Hz rate
 * LSB represents digit zero, bit 3 represents digit 3
 * If the bit representing the digit is set, the digit will flash.
 * If the bit representing the digit is not set, the digit will not flash.
 */
extern volatile uint8_t display_flash;

/*!
 * \brief Indicates whether the display automatic brightness adjustment is
 * enabled. If disabled, the \ref display_counts variable can be
 * freely adjusted by user software.
 */
volatile __bit __at(0x1f) display_autobrightness;

/*!
 * \brief Sets up the CCP module of the uC to drive the LED display
 *
 * - The CCP module is setup to run at SYSclk
 * - The CCP module's interrupt flags are all cleared
 * - The PCA is reset to 0x0000
 * - The CCP module 0's compare register is updated with \ref display_counts
 * - The CCP module 0 is setup to run as a software timer, interrupting
 * 	 when its compare register matches the PCA.
 * - The PCA is started
 * - The PCA interrupt is set to the maximum priority so the display driving
 *   would be smooth
 * - Global interrupts are enabled
 * - The initial digit of the display is driven with data stored in the
 * \ref display_buffer.
 *
 * \warning Global interrupts are enabled by this function
 */
inline void display_setup_counter(void) {
	/* Setup the PCA for display driving */
	PCA_CMOD = 0x09; //Run at SysClk, enable overflow interrupt.
	PCA_CCON = 0x00; //Reset the interrupt bits for the PCA
	PCA_C = 0x0000;  //Reset PCA
	PCA_CCAP0 = display_counts; //Set module 0 compare register
	PCA_CCAPM0 = 0x49;  //Set module 0 compare mode - software timer
	PCA_CR = 1;		 //Run PCA
	INT_IP_PPCA = 1; //Set PCA interrupt to be high priority
	INT_IE_EA = 1;	 //Enable global interrupts
	/* Drive initial display segment */
	PORT_P2 = display_buffer[3];
	display_drive_common(3);
}

/*!
 * \brief Set up the LED display, by calling the two setup functions
 *
 * \sa display_setup_counter()
 * \sa display_setup_port()
 * \bug display_autobrightness doesn't seem to activate automatic brightness
 * adjustment, the bit is cleared somewhere during the initialization sequence.
 */
inline void display_setup() {
	display_setup_port();		//Setup display output pins
	display_setup_counter();	//Setup display multiplexing counter
	display_autobrightness = 1; //Enable display automatic brightness adjust
}

/*!
 * \brief Turns on the colon in the middle of the 4 digits of the LED display
 * \pre The display has been setup using the \ref display_setup() function.
 * \warning Read-modify-write operations are used in this function. Ensure
 * no modification is made to \ref display_buffer while this function is
 * executing.
 * \note Should be called as an "overlay' on a output written to the
 * \ref display_buffer after using \ref display_puts() or \ref display_putbcd(),
 * as calling these functions afterwards will override the colon display.
 */
inline void display_colonon(void) {
	display_buffer[1] &= 0x7f;
	display_buffer[2] &= 0x7f;
}

/*!
 * \brief Turns off the colon in the middle of the 4 digits of the LED display
 * \pre The display has been setup using the \ref display_setup() function.
 * \warning Read-modify-write operations are used in this function. Ensure
 * no modification is made to \ref display_buffer while this function is
 * executing.
 * \note Should be called as an "overlay' on a output written to the
 * \ref display_buffer after using \ref display_puts() or \ref display_putbcd(),
 * as calling these functions afterwards will override the colon display.
 */
inline void display_colonoff(void) {
	display_buffer[1] |= 0x80;
	display_buffer[2] |= 0x80;
}

/*!
 * \brief Turns on the period in the middle of the 4 digits of the LED display
 * \pre The display has been setup using the \ref display_setup() function.
 * \warning Read-modify-write operations are used in this function. Ensure
 * no modification is made to \ref display_buffer while this function is
 * executing.
 * \note Should be called as an "overlay' on a output written to the
 * \ref display_buffer after using \ref display_puts() or \ref display_putbcd(),
 * as calling these functions afterwards will override the colon display.
 */
inline void display_periodon(void) {
	display_buffer[1] &= 0x7f;
}

/*!
 * \brief Turns off the period in the middle of the 4 digits of the LED display
 * \pre The display has been setup using the \ref display_setup() function.
 * \warning Read-modify-write operations are used in this function. Ensure
 * no modification is made to \ref display_buffer while this function is
 * executing.
 * \note Should be called as an "overlay' on a output written to the
 * \ref display_buffer after using \ref display_puts() or \ref display_putbcd(),
 * as calling these functions afterwards will override the colon display.
 */
inline void display_periodoff(void) {
	display_buffer[1] |= 0x80;
}

/*!
 * \brief Turns on the AM/PM indicator located at the bottom right of the LED
 * display.
 * \pre The display has been setup using the \ref display_setup() function.
 * \warning Read-modify-write operations are used in this function. Ensure
 * no modification is made to \ref display_buffer while this function is
 * executing.
 * \note Should be called as an "overlay' on a output written to the
 * \ref display_buffer after using \ref display_puts() or \ref display_putbcd(),
 * as calling these functions afterwards will override the colon display.
 */
inline void display_ampmon(void) {
	display_buffer[3] &= 0x7f;
}

/*!
 * \brief Turns off the AM/PM indicator located at the bottom right of the LED
 * display.
 * \pre The display has been setup using the \ref display_setup() function.
 * \warning Read-modify-write operations are used in this function. Ensure
 * no modification is made to \ref display_buffer while this function is
 * executing.
 * \note Should be called as an "overlay' on a output written to the
 * \ref display_buffer after using \ref display_puts() or \ref display_putbcd(),
 * as calling these functions afterwards will override the colon display.
 */
inline void display_ampmoff(void) {
	display_buffer[3] |= 0x80;
}

/*!
 * \brief Prints a string stored in the 8051 program space to the display
 * \param[in] s pointer to the character array to display
 * \warning Some characters are unprintable on the display, and may need to
 * be substituted with other characters to form a recognizable word. See
 * the SevSeg repo on GitHub for details on unprintable characters, as the font
 * set used here is derived from fonts in that repo.
 * \warning All other enabled segments through \ref display_ampmon(),
 * \ref display_periodon(), \ref display_colonon() and friends will be cleared.
 * \note Only 4 characters will be displayed. The DP segments are also not used.
 * It is recommended that this function should be called the display overlay
 * functions.
 */
void display_puts(__code const char* s);

/*!
 * \brief Prints 2 packed BCD numbers, each encoded one byte, onto the display.
 * @param[in] v1 number to print on the leftmost two digits of the display.
 * @param[in] v2 number to print on the rightmost two digits of the display.
 * \warning All other enabled segments through \ref display_ampmon(),
 * \ref display_periodon(), \ref display_colonon() and friends will be cleared.
 * \note Only 4 characters will be displayed. The DP segments are also not used.
 * It is recommended that this function should be called the display overlay
 * functions.
 */
void display_putbcd(uint8_t v1, uint8_t v2);

/*!
 * \brief Prints the current time to the display, respecting the selected
 * time format. Does not print the time separator (colon) onto the display.
 * @param[in] hour the hour segment of the time to print, encoded in packed BCD,
 * in the 24-hour format.
 * @param[in] minute the minute segment of the time to print, encoded in packed
 * BCD.
 * \warning All other enabled segments through \ref display_ampmon(),
 * \ref display_periodon(), \ref display_colonon() and friends will be cleared.
 * \note Only 4 characters will be displayed. The DP segments are also not used.
 * It is recommended that this function should be called before calling the
 * display overlay functions.
 */
void display_puttime(uint8_t hour,uint8_t minute);

/*!
 * \brief Prints the current date to the display, respecting the selected
 * date format, and also inserting the date separator (period).
 * \warning All other enabled segments through \ref display_ampmon(),
 * \ref display_periodon(), \ref display_colonon() and friends will be cleared.
 * \note Only 4 characters will be displayed. The DP segments are also not used.
 * It is recommended that this function should be called before calling the
 * display overlay functions
 */
void display_putdate(void);

/*!
 * \brief Prints the state of a boolean variable to the display, using the last
 * two digits of the display exclusively.
 *
 * - If the input value is non-zero, "ON" is printed to the last two digits of
 * the display.
 * - If the input value is zero, "OF" is printed to the last two digits of the
 * display.
 *
 * @param[in] v the boolean variable to print to the display.
 *
 * \warning All other enabled segments through \ref display_ampmon(),
 * \ref display_periodon(), \ref display_colonon() and friends will be cleared
 * in the last two digits. It is recommended that this function be called before
 * calling the display overlay functions. This function does not change the state
 * of the segments in the first two digits of the display.
 */
void display_putbool(uint8_t v);

/*!
 * \brief Prints a temperature value (in centigrade) to the display, using all
 * 4 digits of the display simultaneously.
 *
 * - The first digit of the display displays the 10ths place of the temperature
 * value.
 * - The second digit of the display displays the 1s place of the temperature
 * value.
 * - The third digit of the display displays the 1/10ths place of the
 * temperature value.
 * - The fourth digit of the display displays the 'C' unit desigator.
 * - The decimal separator is turned on as well, between the 1s place and
 * the 1/10ths place digit.
 *
 * \param[in] temp temperature value to display on the display, which should be
 * a temperature value in packed BCD format, consisting of 4 digits, the most
 * significant which is ignored, and with the least significant digit representing
 * the 1/10ths place for temperature.
 *
 * \warning All other enabled segments through \ref display_ampmon(),
 * \ref display_periodon(), \ref display_colonon() and friends will be cleared
 * in the last two digits. It is recommended that this function be called before
 * calling the display overlay functions.
 *
 */
void display_puttemp(uint16_t v);
#endif /* DISPLAY_H_ */
