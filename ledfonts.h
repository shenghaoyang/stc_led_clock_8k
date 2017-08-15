/*
 * ledfonts.h
 *
 *  Created on: 22 Jul 2017
 *      Author: shenghao
 */

#ifndef LEDFONTS_H_
#define LEDFONTS_H_

#include <stdint.h>

extern const uint8_t ledfonts_numeric_normal[127];
extern const uint8_t ledfonts_numeric_flipped[127];
extern const char ledstrings[][5];

enum ledstrings_key {
	ledstrings_setc = 7,
	ledstrings_seta,
	ledstrings_alon,
	ledstrings_alof,
	ledstrings_conf,
	ledstrings_lcal,
	ledstrings_cldn,
	ledstrings_cllo,
	ledstrings_clhi,
	ledstrings_tcal,
	ledstrings_disp,
};

#endif /* LEDFONTS_H_ */
