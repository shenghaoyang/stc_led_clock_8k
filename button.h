/*
 * button.h
 *
 *  Created on: 24 Jul 2017
 *      Author: shenghao
 */

#ifndef BUTTON_H_
#define BUTTON_H_
#include <stdint.h>
#include <stc15w408as.h>
#include <board_config.h>

#define BUTTON_DEBOUNCE_PATTERN_PRESSED 0x80
#define BUTTON_DEBOUNCE_PATTERN_RELEASED 0x07
#define BUTTON_DEBOUNCE_MASK	0x87
#define BUTTON_LONG_PRESS_COUNT 0x20
#define BUTTON_HELD_DOWN_COUNT  0x96

enum button_states {
	BUTTON_PRESSED,
	BUTTON_LONG_PRESSED,
	BUTTON_HELD_DOWN,
	BUTTON_NONE
};

#ifndef BUTTON_C_
extern volatile uint8_t BUTTON_MENU_STATE;
extern volatile uint8_t BUTTON_SELECT_STATE;
extern volatile uint8_t BUTTON_MENU_CNT;
extern volatile uint8_t BUTTON_SELECT_CNT;
#else
volatile uint8_t BUTTON_MENU_STATE;
volatile uint8_t BUTTON_SELECT_STATE;
volatile uint8_t BUTTON_MENU_CNT;
volatile uint8_t BUTTON_SELECT_CNT;
#endif


volatile uint8_t __at(0x22) BUTTON_DATA;			///< Bit addressable data byte used by the button functions
volatile __bit __at(0x10)   BUTTON_DATA_MENU_PRESSED;		///< Bit indicating menu button was pressed
volatile __bit __at(0x11)   BUTTON_DATA_MENU_RELEASED_NORMAL;///< Bit indicating menu button was released
volatile __bit __at(0x12)   BUTTON_DATA_MENU_RELEASED_LONGP;	///< Reserved
volatile __bit __at(0x13)   BUTTON_DATA_MENU_HELD_DOWN;		///< Reserved
volatile __bit __at(0x14)   BUTTON_DATA_SELECT_PRESSED;		///< Bit indicating select button was pressed
volatile __bit __at(0x15)   BUTTON_DATA_SELECT_RELEASED_NORMAL;	///< Bit indicating select button was released
volatile __bit __at(0x16)   BUTTON_DATA_SELECT_RELEASED_LONGP;	///< Reserved
volatile __bit __at(0x17)   BUTTON_DATA_SELECT_HELD_DOWN;	///< Reserved

/*!
 * \brief Called on POR to reset the button subsystem.
 * \pre
 * - The MCU has started execution from POR
 * - The timebase hasn't been initialized yet
 * \warning The timer MUST NOT be initialized before the button subsystem is!
 */
inline void button_setup() {
	BUTTON_MENU_STATE = 0x00;	//Reset menu button state tracker
	BUTTON_SELECT_STATE = 0x00; //Reset select button state tracker
	BUTTON_DATA = 0x00;			//Reset button data state
	BUTTON_MENU_CNT = 0x00;		//Reset menu counter
	BUTTON_SELECT_CNT = 0x00;	//Reset select counter
}

enum button_states button_read_and_clear_menu();
enum button_states button_read_and_clear_select();

#endif /* BUTTON_H_ */
