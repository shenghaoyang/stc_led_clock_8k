/*!
 * \file fsm.h
 *
 * \brief Declarations for the Finite State Machine that is executed as the
 * clock runs.
 *
 * \note Functions are not declared inline as they will be referenced more than
 * once.
 */

#ifndef FSM_H_
#define FSM_H_
#include <stdint.h>
#include <stc15w408as.h>
#include <ds1302.h>
#include <eeprom.h>
#include <display.h>
#include <ledfonts.h>
#include <uart.h>
#include <button.h>
#include <adc.h>
#include <alarm.h>
#include <timer.h>

/*!
 * \brief Time (in centiseconds) before the display returns to the HH:MM display
 * state when in any other fsm_home state except the alarm state
 *
 * \warning Cannot exceed 0xff00
 */
#define FSM_HOME_RESET_TICKS 0x03e8

/*!
 * \brief Time (in centiseconds) before the display automatically scrolls to
 * the next home screen in the automatic mode
 *
 * \warning Cannot exceed 0xff00
 */
#define FSM_HOME_AUTO_SCROLL_TICKS 0xc8

/*!
 * \brief Time (in centiseconds) spent in the time display screen before the
 * display starts automatic home screen scroll mode.
 *
 * \warning Cannot exceed 0xff00
 */
#define FSM_HOME_AUTO_ENABLE_TICKS 0x03e8

/*!
 * \brief Indicates whether the display automatically scrolls through the
 * home screens in the home state
 */
__bit __at(0x1e) fsm_home_auto;

/*!
 * \brief FSM return states
 */
enum fsm_return {
	fsm_ok = 0,			///< Proceed to next state
	fsm_repeat = 1,		///< Repeat state
	fsm_fail = 2,		///< Fail, proceed to another predefined state
};
/*!
 * \brief High level clock state machine states
 */
enum fsm_states_highlevel {
	fsm_home = 0,		///< Home state, main clock display
	fsm_set = 1,		///< Set state, set main clock
	fsm_alarm = 2, 		///< Alarm state, set main alarm
	fsm_config = 3,		///< Config state, configure alarm settings
	fsm_reset = 4,		///< Reset state, propagate new changes
};

/*!
 * \brief Low level state machine states for the home state
 */
enum fsm_states_home {
	fsm_home_start = 0,	///< FSM home state machine repetitive start location
	fsm_home_time = 0,	///< Home state displaying time (hour, minutes)
	fsm_home_mmss = 1,	///< Home state displaying time (minutes, seconds)
	fsm_home_temp = 2,	///< Home state displaying temperature
	fsm_home_dow  = 3,	///< Home state displaying day of week
	fsm_home_date = 4,	///< Home state displaying short date
	fsm_home_yyyy = 5,	///< Home state displaying year
	fsm_home_end,		///< FSM home state machine repetitive end location
	fsm_home_alarm,		///< Home state displaying alarm notification
};

/*!
 * \brief Low level state machine states for the set state
 */
enum fsm_states_set {
	fsm_set_label = 0, 	///< Set state label display
	fsm_set_start = 1,	///< FSM set state machine repetitive start location
	fsm_set_hh = 1,		///< Set state setting hh
	fsm_set_mm = 2,		///< Set state setting mm
	fsm_set_dd = 3,		///< Set state setting dd
	fsm_set_month = 4,	///< Set state setting month
	fsm_set_yyyy = 5,	///< Set state setting yyyy
	fsm_set_dow = 6,	///< Set state setting dow
	fsm_set_end,		///< FSM set state machine repetitive end location
};

/*!
 * \brief Low level state machine states for the alarm state
 */
enum fsm_states_alarm {
	fsm_alarm_label = 0,		 ///< Alarm state label display
	fsm_alarm_start = 1,		 ///< FSM alarm state machine repetitive start location
	fsm_alarm_global_toggle = 1, ///< Alarm state global disable / enable
	fsm_alarm_end,				 ///< FSM alarm state machine repetitive end location
};

/*!
 * \brief Even lower level state machine states for the alarm state
 */
enum fsm_substates_alarm {
	fsm_alarm_substate_toggle = 0,  ///< Alarm toggle
	fsm_alarm_substate_start = 1,   ///< FSM alarm sub-state machine start location
	fsm_alarm_substate_hh 	 = 1,   ///< Alarm set hour
	fsm_alarm_substate_mm 	 = 2,   ///< Alarm set minute
	fsm_alarm_substate_dow_mon = 3, ///< Alarm set monday
	fsm_alarm_substate_dow_tue = 4, ///< Alarm set tuesday
	fsm_alarm_substate_dow_wed = 5, ///< Alarm set wednesday
	fsm_alarm_substate_dow_thu = 6, ///< Alarm set thursday
	fsm_alarm_substate_dow_fri = 7,	///< Alarm set friday
	fsm_alarm_substate_dow_sat = 8, ///< Alarm set saturday
	fsm_alarm_substate_dow_sun = 9,	///< Alarm set sunday
	fsm_alarm_substate_end, 		///< FSM alarm sub-state machine end location
};

/*!
 * \brief Low level state machine states for the config state
 */
enum fsm_states_config {
	fsm_config_label = 0,					///< Configuration state label display
	fsm_config_start = 1,					///< FSM configuration sub-state machine start location
	fsm_config_ldr_calib_label = 1, 		///< Configuration: Brightness calibration label
	fsm_config_ldr_calib_low = 2,			///< Configuration: calibrate LDR lowest brightness (max LDR ADC input readout)
	fsm_config_ldr_calib_high = 3, 			///< Configuration: calibrate LDR highest brightness (minimum LDR ADC input readout)
	fsm_config_thermistor_calib_label = 4,	///< Configuration: Thermistor calibration label
	fsm_config_thermistor_calib = 5,		///< Configuration: Calibrate thermistor
	fsm_config_display_label = 6, 			///< Configuration: Display configuration label
	fsm_config_auto_mmss = 7,				///< Configure automatic display of mmss
	fsm_config_auto_temp = 8,				///< Configure automatic display of temperature
	fsm_config_auto_dow = 9,				///< Configure automatic display of day-of-week
	fsm_config_auto_date = 10,				///< Configure automatic display of date
	fsm_config_auto_year = 11,				///< Configure automatic display of year
	fsm_config_display_12h = 12, 			///< Configure time display format (12h or 24h)
	fsm_config_display_mmdd = 13, 			///< Configure date display format (mmdd or ddmm)
	fsm_config_display_remove_lzeroes = 14, ///< Configure whether to remove leading zeroes from display
	fsm_config_end,							///< FSM configuration sub-state machine end location
};

/* FSM states */

enum fsm_return fsm_home_fn();

enum fsm_return fsm_set_fn();

enum fsm_return fsm_alarm_fn();

enum fsm_return fsm_config_fn();

enum fsm_return fsm_reset_fn();

/*!
 * \brief FSM state transition table
 */

typedef enum fsm_return (*fsm_function)(void);

#ifndef FSM_C_
extern const fsm_function fsm_transition_table_fp[][3];
extern const uint8_t fsm_transition_table_s[][3];
#else
__code __at(0x3300) const fsm_function fsm_transition_table_fp[][3] = {
		{fsm_set_fn,fsm_home_fn,fsm_home_fn},
		{fsm_home_fn,fsm_set_fn,fsm_alarm_fn},
		{fsm_home_fn,fsm_alarm_fn,fsm_config_fn},
		{fsm_home_fn,fsm_config_fn,fsm_home_fn},
};
__code __at(0x3300 + sizeof(fsm_transition_table_fp))
		const uint8_t fsm_transition_table_s[][3] = {
		{fsm_set,fsm_home,fsm_home},
		{fsm_home,fsm_set,fsm_alarm},
		{fsm_home,fsm_alarm,fsm_config},
		{fsm_home,fsm_config,fsm_home},
};
#endif

#endif /* FSM_H_ */
