/*
 * fsm.c
 *
 *  Created on: 27 Jul 2017
 *      Author: shenghao
 */
#define FSM_C_
#include <fsm.h>
#undef FSM_C_

uint8_t alarm_lastpoll = 0;					  ///< Time alarm was last polled (minutes)
uint16_t transition_ticks = 0;				  ///< 10ms timer ticks at last transition

enum fsm_return fsm_home_fn() __reentrant {
	static enum fsm_states_home curstate = fsm_home_start;
	uint8_t alarm_index = 0;
	uint16_t temp_cache;
	/* Populate button state cache */
	enum button_states menu_state;
	enum button_states select_state;
	menu_state = button_read_and_clear_menu();
	select_state = button_read_and_clear_select();

	if(curstate != fsm_home_alarm){
		if((menu_state == BUTTON_LONG_PRESSED) && (select_state == BUTTON_LONG_PRESSED)){
			/* Detect entering configuration mode */
			curstate = fsm_home_start; //Reset state back to default
			return fsm_ok; //Return OK to transition to configuration mode
		}

		/* Not entering configuration mode, act on button presses */
		if(menu_state == BUTTON_PRESSED){
			/* Menu button pressed, increment display */
			transition_ticks = centiseconds();
			fsm_home_auto = 0;
			if(++curstate == fsm_home_end)
				curstate = fsm_home_start;
		}

		if(menu_state == BUTTON_LONG_PRESSED){
			/* Menu button long pressed, return back to the main home screen */
			transition_ticks = centiseconds();
			fsm_home_auto = 0;
			curstate = fsm_home_start;
		}

		if(select_state == BUTTON_PRESSED){
			if(display_autobrightness){
				display_autobrightness = 0;
				INT_IE_EA = 0;
				display_counts = DISPLAY_COUNTS_MAX;
				INT_IE_EA = 1;
			} else {
				display_autobrightness = 1;
			}
		}

		if(curstate != fsm_home_start) {
			if(fsm_home_auto){
				/* Automatic scroll timeout */
				if((centiseconds() - transition_ticks) > FSM_HOME_AUTO_SCROLL_TICKS){
					/* Perform automatic scrolling */
					find_auto_target:
					while(++curstate != fsm_home_end){
						if((ds1302_sram_data[0x03] >> curstate) & 0x01){
							/* Automatic display is enabled - jump to next state */
							transition_ticks = centiseconds();
							return fsm_repeat;
						}
					}
					/* No other autoscroll targets found, break */
					transition_ticks = centiseconds();
					fsm_home_auto = 0;
					curstate = fsm_home_start;
				}
			} else {
				/* Manual display timeout */
				if(((centiseconds() - transition_ticks) > FSM_HOME_RESET_TICKS)) {
					/* Reset state back to start screen */
					transition_ticks = centiseconds();
					curstate = fsm_home_start;
				}
			}
		} else {
			/* Check the amount of time that elapsed in the home state, to put
			 * the display in the automatic mode.
			 */
			if((centiseconds() - transition_ticks) > FSM_HOME_AUTO_ENABLE_TICKS) {
				/* Enable automatic mode */
				fsm_home_auto = 1;
				goto find_auto_target;
			}
		}
	}


	/* Perform state related actions - obtain the current time */
	ds1302_get_time(); //Update time cache

	if((alarm_lastpoll != ds1302.minutes) && alarm_global_state()){
		/* Poll alarms if global alarm is set */
		for(;alarm_index < NUM_ALARMS;alarm_index++){
			if(alarm_dow_state(alarm_index,ds1302.day) && (
					alarms[alarm_index].dow_and_enable & 0x01)){
				if((alarms[alarm_index].hour == ds1302.hour) &&
						(alarms[alarm_index].minute == ds1302.minutes)){
					alarm_buzzer_on();
					display_autobrightness = 0;
					INT_IE_EA = 0;
					display_counts = DISPLAY_COUNTS_MAX;
					INT_IE_EA = 1;
					curstate = fsm_home_alarm;
				}
			}
		}
		alarm_lastpoll = ds1302.minutes;
	}

	switch(curstate) {
	case fsm_home_alarm:
	case fsm_home_time:
		/* Display time */
		if(curstate == fsm_home_alarm){
			display_flash = 0x0f;
			if((menu_state == BUTTON_LONG_PRESSED) && (select_state == BUTTON_LONG_PRESSED)){
				display_flash = 0x00;
				alarm_buzzer_off();
				display_autobrightness = 1;
				curstate = fsm_home_start; //Reset state back to default
			}
		}
		display_puttime(ds1302.hour,ds1302.minutes);
		if(ds1302.seconds % 2)
			display_colonon();
		break;
	case fsm_home_mmss:
		/* Display mmss time */
		display_putbcd(ds1302.minutes,ds1302.seconds);
		if(ds1302.seconds % 2)
			display_colonon();
		break;
	case fsm_home_temp:
		temp_cache = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
		temp_cache = bcd_add_16(temp_cache,(ds1302_sram_data[DS1302_BBSRAM_SIZE-2] |
				(ds1302_sram_data[DS1302_BBSRAM_SIZE-1] << 0x08)));
		if(temp_cache > 0x0999)
			temp_cache = 0x0999;
		display_puttemp(temp_cache);
		display_periodon();
		break;
	case fsm_home_dow:
		display_puts(ledstrings[ds1302.day-1]);
		break;
	case fsm_home_date:
		display_putdate();
		break;
	case fsm_home_yyyy:
		/* Display yyyy time */
		display_putbcd(0x20,ds1302.year);
		break;
	}

	return fsm_repeat;	//Return repeat so we come back to this state.
}

enum fsm_return fsm_set_fn() __reentrant {
	static enum fsm_states_set curstate = fsm_set_label; //Default display hhmm
	uint8_t fsm_set_temp;						 		 //Set time FSM temporary variable
	/* Populate button state cache */
	enum button_states menu_state;
	enum button_states select_state;
	menu_state = button_read_and_clear_menu();
	select_state = button_read_and_clear_select();

	if(curstate != fsm_set_label){
		if(menu_state == BUTTON_LONG_PRESSED){
			/* Menu long pressed when setting date and time values, commit */
			display_flash = 0x00;
			ds1302_set_time();		  //Set new time
			alarm_lastpoll = 0x60;	  //Reset last poll time, force compare
			curstate = fsm_set_label; //Set state back to default
			return fsm_ok;
		}
		if(menu_state == BUTTON_PRESSED){
			/* Menu short pressed when setting date and time values, advance state */
			if(++curstate == fsm_set_end)
				curstate = fsm_set_start;
		}
	}

	fsm_set_temp = 0;
	if((select_state == BUTTON_PRESSED) || (select_state == BUTTON_HELD_DOWN))
		fsm_set_temp = 1;


	switch(curstate) {
	case fsm_set_label:
		if(select_state == BUTTON_PRESSED)
			curstate++;
		if(menu_state == BUTTON_PRESSED)
			return fsm_fail;
		display_puts(ledstrings[ledstrings_setc]);
		break;
	case fsm_set_hh:
	case fsm_set_mm:
		if(curstate == fsm_set_hh){
			ds1302.hour = bcd_add(ds1302.hour,fsm_set_temp);
			if(ds1302.hour > 0x23)
				ds1302.hour = 0x00;
			display_flash = 0x03;
		}
		if(curstate == fsm_set_mm){
			ds1302.minutes = bcd_add(ds1302.minutes,fsm_set_temp);
			if(ds1302.minutes > 0x59)
				ds1302.minutes = 0;
			display_flash = 0x0c;
		}
		display_puttime(ds1302.hour,ds1302.minutes);
		display_colonon();
		break;
	case fsm_set_dd:
	case fsm_set_month:
		if(curstate == fsm_set_dd){
			ds1302.date = bcd_add(ds1302.date,fsm_set_temp);
			if(ds1302.date > 0x31)
				// \todo check odd date configs
				ds1302.date = 0x00;
			if(DATE_DISPLAY_MMDD)
				display_flash = 0x0c;
			else
				display_flash = 0x03;
		}
		if(curstate == fsm_set_month){
			ds1302.month = bcd_add(ds1302.month,fsm_set_temp);
			if(ds1302.month > 0x12)
				ds1302.month = 0x00;
			if(DATE_DISPLAY_MMDD)
				display_flash = 0x03;
			else
				display_flash = 0x0c;
		}
		display_putdate();
		break;
	case fsm_set_yyyy:
		ds1302.year = bcd_add(ds1302.year,fsm_set_temp);
		if(ds1302.year > 0x99)
			ds1302.year = 0x00;
		display_flash = 0x0f;
		display_putbcd(0x20,ds1302.year);
		break;
	case fsm_set_dow:
		ds1302.day = bcd_add(ds1302.day,fsm_set_temp);
		if(ds1302.day > 0x07)
			ds1302.day = 0x01; //DOW register only from 0x01 - 0x07
		display_flash = 0x0f;
		display_puts(ledstrings[ds1302.day-1]);
		break;
	}

	return fsm_repeat;
}
enum fsm_return fsm_alarm_fn() __reentrant {
	static enum fsm_states_alarm curstate = fsm_alarm_label;
	static enum fsm_substates_alarm sub_curstate = fsm_alarm_substate_toggle;
	uint8_t alarm_temp;

	/* Populate button state cache */
	enum button_states menu_state;
	enum button_states select_state;
	menu_state = button_read_and_clear_menu();
	select_state = button_read_and_clear_select();

	alarm_temp = 0;
	if(select_state == BUTTON_PRESSED || select_state == BUTTON_HELD_DOWN)
		alarm_temp = 1;

	switch(curstate) {
	case fsm_alarm_label:
		if(menu_state == BUTTON_PRESSED)
			/* Menu pressed when label is shown, exit */
			return fsm_fail;
		if(select_state == BUTTON_PRESSED){
			/* Button pressed, enter alarm config menu */
			curstate++;
			return fsm_repeat;
		}
		display_puts(ledstrings[ledstrings_seta]);
		break;
	case fsm_alarm_global_toggle:
		if(menu_state == BUTTON_LONG_PRESSED){
			curstate = fsm_alarm_label;
			ds1302_calculate_CRC();
			ds1302_write_SRAM();	  //Save data
			alarm_lastpoll = 0x60;	  //Reset last poll time, force compare
			return fsm_ok;
		}
		if(select_state == BUTTON_PRESSED)
			alarm_global_toggle();
		if(alarm_global_state())
			display_puts(ledstrings[ledstrings_alon]);
		else
			display_puts(ledstrings[ledstrings_alof]);
		display_colonon();

		if(menu_state == BUTTON_PRESSED){
			++curstate;
		}
		break;
	default:
		switch(sub_curstate){
		case fsm_alarm_substate_toggle:
			if(menu_state == BUTTON_PRESSED){
				if(++curstate == (fsm_alarm_end + NUM_ALARMS))
					curstate = fsm_alarm_start;
				break;
			}
			if(select_state == BUTTON_PRESSED){
				alarms[(curstate - fsm_alarm_end)].dow_and_enable ^= 1;
			}
			if(select_state == BUTTON_LONG_PRESSED){
				sub_curstate++;
				break;
			}
			if(menu_state == BUTTON_LONG_PRESSED){
				sub_curstate = fsm_alarm_substate_toggle;
				curstate = fsm_alarm_label;
				return fsm_ok;
			}
			display_buffer[0] = ledfonts_numeric_normal['A'];
			display_buffer[1] = ledfonts_numeric_normal[(curstate - fsm_alarm_end)];
			display_putbool(alarms[(curstate - fsm_alarm_end)].dow_and_enable & 0x01);
			display_colonon();
			break;
		case fsm_alarm_substate_hh:
		case fsm_alarm_substate_mm:
			if(menu_state == BUTTON_PRESSED){
				sub_curstate++;
				display_flash = 0x00;
				break;
			}
			if(menu_state == BUTTON_LONG_PRESSED){
				sub_curstate = fsm_alarm_substate_toggle;
				display_flash = 0x00;
				break;
			}
			if(sub_curstate == fsm_alarm_substate_hh){
				alarms[(curstate - fsm_alarm_end)].hour = bcd_add(alarms[(curstate - fsm_alarm_end)].hour,alarm_temp);
				if(alarms[(curstate - fsm_alarm_end)].hour > 0x23)
					alarms[(curstate - fsm_alarm_end)].hour = 0x00;
				display_flash = 0x03;
			}
			if(sub_curstate == fsm_alarm_substate_mm){
				alarms[(curstate - fsm_alarm_end)].minute = bcd_add(alarms[(curstate - fsm_alarm_end)].minute,alarm_temp);
				if(alarms[(curstate - fsm_alarm_end)].minute > 0x59)
					alarms[(curstate - fsm_alarm_end)].minute = 0x00;
				display_flash = 0x0c;
			}
			display_puttime(alarms[(curstate - fsm_alarm_end)].hour,alarms[(curstate - fsm_alarm_end)].minute);
			display_colonon();
			break;
		case fsm_alarm_substate_dow_mon:
		case fsm_alarm_substate_dow_tue:
		case fsm_alarm_substate_dow_wed:
		case fsm_alarm_substate_dow_thu:
		case fsm_alarm_substate_dow_fri:
		case fsm_alarm_substate_dow_sat:
		case fsm_alarm_substate_dow_sun:
			display_puts(ledstrings[sub_curstate - fsm_alarm_substate_mm -1]);
			if(alarm_dow_state(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm)){
				display_ampmon();
			} else {
				display_ampmoff();
			}
			if(alarm_temp)
				alarm_dow_toggle(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm);
			if(menu_state == BUTTON_PRESSED){
				if(++sub_curstate == fsm_alarm_substate_end){
					sub_curstate = fsm_alarm_substate_start;
				}
				break;
			}
			if(menu_state == BUTTON_LONG_PRESSED){
				sub_curstate = fsm_alarm_substate_toggle;
				break;
			}
			break;
		}

		break;
	}

	return fsm_repeat;
}


enum fsm_return fsm_config_fn() __reentrant {
	static enum fsm_states_config curstate = fsm_config_label;
	static uint16_t config_tmp;
	uint16_t config_tmp2;
	/* Populate button state cache */
	enum button_states menu_state;
	enum button_states select_state;
	menu_state = button_read_and_clear_menu();
	select_state = button_read_and_clear_select();

	switch(curstate) {
	case fsm_config_label:
		if(menu_state == BUTTON_PRESSED){
			/*
			 * Since this is the state returned to after all the other config
			 * options have been exited by the user, we save the DS1302 SRAM
			 * data here to avoid multiple calls.
			 */
			ds1302_calculate_CRC();
			ds1302_write_SRAM();
			transition_ticks = centiseconds();
			return fsm_fail;
		}
		if(select_state == BUTTON_PRESSED)
			curstate++;
		display_puts(ledstrings[ledstrings_conf]);
		break;
	case fsm_config_ldr_calib_label:
		if(menu_state == BUTTON_PRESSED)
			curstate = fsm_config_thermistor_calib_label;
		if(select_state == BUTTON_PRESSED)
			curstate = fsm_config_ldr_calib_low;
		display_puts(ledstrings[ledstrings_lcal]);
		break;
	case fsm_config_ldr_calib_low:
	case fsm_config_ldr_calib_high:
		display_autobrightness = 0;

		if(menu_state == BUTTON_LONG_PRESSED)
			curstate = fsm_config_ldr_calib_label;
		if(select_state == BUTTON_PRESSED){
			if(curstate == fsm_config_ldr_calib_low) {
				config_tmp = adc_get_ldr();
				curstate++;
			} else {
				adc_calibrate_LDR(adc_get_ldr(),config_tmp);
				curstate = fsm_config_ldr_calib_label;
				display_autobrightness = 1;
			}
		}
		if(curstate == fsm_config_ldr_calib_low) {
			display_puts(ledstrings[ledstrings_cllo]);
			INT_IE_EA = 0;
			display_counts = DISPLAY_COUNTS_MIN;
			INT_IE_EA = 1;
		} else {
			display_puts(ledstrings[ledstrings_clhi]);
			INT_IE_EA = 0;
			display_counts = DISPLAY_COUNTS_MAX;
			INT_IE_EA = 1;
		}
		break;
	case fsm_config_thermistor_calib_label:
		if(menu_state == BUTTON_PRESSED)
			curstate = fsm_config_display_label;
		if(select_state == BUTTON_PRESSED) {
			curstate = fsm_config_thermistor_calib;
			config_tmp = (TEMP_OFFSET_LSB | (TEMP_OFFSET_MSB << 0x08));
		}
		display_puts(ledstrings[ledstrings_tcal]);
		break;
	case fsm_config_thermistor_calib:
		if(menu_state == BUTTON_LONG_PRESSED) {
			curstate = fsm_config_thermistor_calib_label;
			TEMP_OFFSET_LSB = (config_tmp & 0x00ff);
			TEMP_OFFSET_MSB = (config_tmp >> 0x08);
		}
		if((select_state == BUTTON_PRESSED) || (select_state == BUTTON_HELD_DOWN))
			config_tmp = bcd_add_16(config_tmp,0x0001);

		if(config_tmp > 0x0140)
			config_tmp = 0x0000;

		config_tmp2 = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
		config_tmp2 = bcd_add_16(config_tmp2,config_tmp);
		if(config_tmp2 > 0x0999)
			config_tmp2 = 0x0999;
		display_puttemp(config_tmp2);
		break;
	case fsm_config_display_label:
		if(select_state == BUTTON_PRESSED)
			curstate = fsm_config_auto_mmss;
		if(menu_state == BUTTON_PRESSED)
			curstate = fsm_config_label;
		display_puts(ledstrings[ledstrings_disp]);
		break;
	case fsm_config_auto_mmss:
	case fsm_config_auto_temp:
	case fsm_config_auto_dow:
	case fsm_config_auto_date:
	case fsm_config_auto_year:
	case fsm_config_display_12h:
	case fsm_config_display_mmdd:
	case fsm_config_display_remove_lzeroes:
		display_puts(ledstrings[curstate + 0x0b]);
		if(curstate != fsm_config_display_remove_lzeroes) {
			display_putbool((SC_1 >> (curstate - 0x06)) & 0x01);
			if(select_state == BUTTON_PRESSED)
				SC_1 ^= (0x01 << (curstate - 0x06));
		} else {
			display_putbool(DISPLAY_REMOVE_LEADING_ZEROES);
			if(select_state == BUTTON_PRESSED)
				SC_0 ^= 0x01;
		}
		display_colonon();

		if(menu_state == BUTTON_PRESSED)
			if(++curstate == fsm_config_end)
				curstate = fsm_config_auto_mmss;
		if(menu_state == BUTTON_LONG_PRESSED)
			curstate = fsm_config_display_label;
		break;
	}

	return fsm_repeat;
}
