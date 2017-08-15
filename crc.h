/**********************************************************************
 *
 * Filename:    crc.h
 * 
 * Description: A header file describing the various CRC standards.
 *
 * Notes:       
 *
 * 
 * Copyright (c) 2000 by Michael Barr.  This software is placed into
 * the public domain and may be used for any purpose.  However, this
 * notice must not be changed or removed and no warranty is either
 * expressed or implied by its publication or distribution.
 **********************************************************************/
/*
 * Further modifications to improve portability and limit inputs to particular
 * values by Shenghao Yang, 2017
 */
#ifndef _crc_h
#define _crc_h

#include <stdint.h>

#define FALSE	0
#define TRUE	!FALSE

/* Use only the CRC_CCITT standard */

typedef uint16_t  crc;

#define CRC_NAME			"CRC-CCITT"
#define POLYNOMIAL			0x1021
#define INITIAL_REMAINDER	0xFFFF
#define FINAL_XOR_VALUE		0x0000
#define CHECK_VALUE			0x29B1

crc   crcSlow(const uint8_t message[], uint8_t nBytes);
#endif /* _crc_h */
