/*
 * ds1302.c
 *
 *  Created on: 23 Jul 2017
 *      Author: shenghao
 */
#define DS1302_C_
#include <ds1302.h>
#undef DS1302_C_

__code __at(0x3200) const ds1302_data ds1302_init = {
		0x00,		//Initial seconds
		0x11,		//Initial minutes
		0x10,		//Initial hour
		0x29,		//Initial date
		0x07,		//Initial month
		0x06,		//Initial day
		0x17,		//Initial year
		0x00,		//Initial write-protect setting (off)
};
__code __at(0x3200 + sizeof(ds1302_init)) const uint8_t ds1302_sram_init[DS1302_BBSRAM_SIZE] = {
		0x00,		//Initial checksum LSB	(CRC-CCITT)		0x00
		0x00,		//Initial checksum MSB	(CRC-CCITT)		0x01
		0x00,		//Status and configuration register 0	0x02
		0x00,		//Status and configuration register 1	0x03
		0x00,		//Alarm 0 hour							0x04
		0x00,		//Alarm 0 minutes						0x05
		0x00,		//Alarm 0 dow and enable				0x06
		0x00,		//Alarm 1 hour							0x07
		0x00,		//Alarm 1 minutes						0x08
		0x00,		//Alarm 1 dow and enable				0x09
		0x00,		//Alarm 2 hour							0x0a
		0x00,		//Alarm 2 minutes						0x0b
		0x00,		//Alarm 2 dow and enable				0x0c
		0x00,		//Alarm 3 hour							0x0d
		0x00,		//Alarm 3 minutes						0x0e
		0x00,		//Alarm 3 dow and enable				0x0f
		0x00,		//Alarm 4 hour							0x10
		0x00,		//Alarm 4 minutes						0x11
		0x00,		//Alarm 4 dow and enable				0x12
		0x00,		//Alarm 5 hour							0x13
		0x00,		//Alarm 5 minutes						0x14
		0x00,		//Alarm 5 dow and enable				0x15
		0x00,		//Alarm 6 hour							0x16
		0x00,		//Alarm 6 minutes						0x17
		0x00,		//Alarm 6 dow and enable				0x18
		0x00,		//Reserved								0x19
		0x00,		//Reserved								0x1a
		0x00,		//Reserved								0x1b
		0x00,		//Reserved								0x1c
		0x70,		//Temperature calibration LSB			0x1d
		0x00,		//Temperature calibration MSB			0x1e
};

void ds1302_reset() {
	DS1302_IO = 0;
	DS1302_CLK = 0;
	DS1302_CE = 0;
	__asm
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	__endasm;
}

void ds1302_start(uint8_t command) {
	DS1302_DATA = command;

	DS1302_IO = DS1302_DATA_0;				 //Write first data bit
	DS1302_CE = 1;							 //Raise CE
	__asm
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	__endasm;								 //Wait tCC
	DS1302_CLK = 1;					     	 //Raise CLK
	__asm
	nop
	nop
	nop
	nop
	__endasm;						 		//Extend tCH
	DS1302_CLK = 0;							 //Drop CLK
	DS1302_IO = DS1302_DATA_1;				 //Write bit
	DS1302_CLK = 1;						     //Raise CLK
	__asm
	nop
	nop
	nop
	nop
	__endasm;						 		//Extend tCH
	DS1302_CLK = 0;							 //Drop CLK
	DS1302_IO = DS1302_DATA_2;				 //Write bit
	DS1302_CLK = 1;						     //Raise CLK
	__asm
	nop
	nop
	nop
	nop
	__endasm;						 		//Extend tCH
	DS1302_CLK = 0;							 //Drop CLK
	DS1302_IO = DS1302_DATA_3;				 //Write bit
	DS1302_CLK = 1;						     //Raise CLK
	__asm
	nop
	nop
	nop
	nop
	__endasm;						 		//Extend tCH
	DS1302_CLK = 0;							 //Drop CLK
	DS1302_IO = DS1302_DATA_4;				 //Write bit
	DS1302_CLK = 1;						     //Raise CLK
	__asm
	nop
	nop
	nop
	nop
	__endasm;						 		//Extend tCH
	DS1302_CLK = 0;							 //Drop CLK
	DS1302_IO = DS1302_DATA_5;				 //Write bit
	DS1302_CLK = 1;						     //Raise CLK
	__asm
	nop
	nop
	nop
	nop
	__endasm;						 		//Extend tCH
	DS1302_CLK = 0;							 //Drop CLK
	DS1302_IO = DS1302_DATA_6;				 //Write bit
	DS1302_CLK = 1;						     //Raise CLK
	__asm
	nop
	nop
	nop
	nop
	__endasm;						 		//Extend tCH
	DS1302_CLK = 0;							 //Drop CLK
	DS1302_IO = DS1302_DATA_7;				 //Write bit
	DS1302_CLK = 1;						     //Raise CLK
	__asm
	nop
	nop
	nop
	nop
	__endasm;						 		//Extend tCH
	DS1302_CLK = 0;							 //Drop CLK
}

uint8_t ds1302_read_byte_slow() {
	DS1302_IO = 1;		//Stop driving I/O line

	/* Start data reception */
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_0 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_1 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_2 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_3 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_4 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_5 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_6 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_7 = DS1302_IO;
	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;

	return DS1302_DATA;
}

void ds1302_write_byte_slow(uint8_t byte) {
	DS1302_DATA = byte;

	DS1302_IO = DS1302_DATA_0;
	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_1;
	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;


	DS1302_IO = DS1302_DATA_2;
	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_3;
	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_4;
	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_5;
	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	DS1302_IO = DS1302_DATA_6;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_7;
	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
}


void ds1302_set_time() {
	uint8_t index;
	ds1302_start(0x8e); 	//Start single byte write to control register
	ds1302_write_byte_slow(0x00);//Write 0x00 to control register, disable WP
	ds1302_end();			//Terminate single byte write

	ds1302_reset(); 		//Reset DS1302 because we're doing a fast second op.

	ds1302_start(0xbe);		//Start clock burst write

	for(index=0;index!=0x08;index++){
		ds1302_write_byte_slow(ds1302_struct_addr[index]);
	}
	ds1302_end();
}

void ds1302_read_SRAM() {
	uint8_t index;
	ds1302_start(0xff);		//Start burst read from SRAM
	for(index = 0;index!=0x1f;index++){
		ds1302_sram_data[index] = ds1302_read_byte_slow(); //Read bytes from DS1302
	}
	ds1302_end();			//Terminate burst read
}

void ds1302_write_SRAM() {
	uint8_t index;
	ds1302_start(0xfe);		//Start burst write to SRAM
	for(index = 0;index!=0x1f;index++){
		ds1302_write_byte_slow(ds1302_sram_data[index]);	  //Write bytes to DS1302
	}
	ds1302_end();			//Terminate burst write
}

uint8_t ds1302_check_SRAM() __reentrant {
	uint16_t val = ((ds1302_sram_data[0]) | (ds1302_sram_data[1] << 8));
	if(crcSlow(ds1302_sram_data + DS1302_CRC_SIZE,DS1302_BBSRAM_SIZE - DS1302_CRC_SIZE) == val)
		return 1;
	else
		return 0;
}

void ds1302_calculate_CRC() __reentrant {
	uint16_t crcval = crcSlow(ds1302_sram_data + DS1302_CRC_SIZE,DS1302_BBSRAM_SIZE - DS1302_CRC_SIZE);
	CRC_LSB = ((uint8_t)(crcval & 0x00ff));
	CRC_MSB = ((uint8_t)(crcval >> 8));
}

void ds1302_power_loss_reset() {
	memcpy(&ds1302,&ds1302_init,sizeof(ds1302_data));
	memcpy(&ds1302_sram_data,&ds1302_sram_init,sizeof(ds1302_sram_init));
	ds1302_calculate_CRC();
	ds1302_set_time();
	ds1302_reset();
	ds1302_set_time();
	ds1302_reset();
	ds1302_write_SRAM();
}

uint8_t convert_24h_to_12h(uint8_t h_24) {
	static __code __at(0x1227 + 0x2000) const uint8_t lut_24h_to_12h[0x24] = {
			0x00,	//0x00
			0x01,	//0x01
			0x02,	//0x02
			0x03,	//0x03
			0x04,	//0x04
			0x05,	//0x05
			0x06,	//0x06
			0x07,	//0x07
			0x08,	//0x08
			0x09,	//0x09
			0x00,	//0x0a
			0x00,	//0x0b
			0x00,	//0x0c
			0x00,	//0x0d
			0x00,	//0x0e
			0x00,	//0x0f
			0x10,	//0x10
			0x11,	//0x11
			0x12,	//0x12
			0x01,	//0x13
			0x02,	//0x14
			0x03,	//0x15
			0x04,	//0x16
			0x05,	//0x17
			0x06,	//0x18
			0x07,	//0x19
			0x00,	//0x1a
			0x00,	//0x1b
			0x00,	//0x1c
			0x00,	//0x1d
			0x00,	//0x1e
			0x00,	//0x1f
			0x08,	//0x20
			0x09,	//0x21
			0x10,	//0x22
			0x11,	//0x23
	};
	return lut_24h_to_12h[h_24];
}


uint8_t bcd_add(uint8_t v1,uint8_t v2) __naked {
	__asm
	push a
	push psw
	mov a,dpl
	add a,_bcd_add_PARM_2
	da a
	mov dpl,a
	pop psw
	pop a
	ret
	__endasm;
}

uint16_t bcd_add_16(uint16_t op1,uint16_t op2) __naked {
	__asm
	push a
	push psw
	clr _CY				;clear carry
	mov a,dpl			;perform addition of lsb
	add a,(_bcd_add_16_PARM_2)
	da a				;decimal adjust
	mov dpl,a			;move result lsb
	mov a,dph			;add carry bit
	addc a,(_bcd_add_16_PARM_2+1) ;add msb
	da a				;decimal adjust
	mov dph,a
	pop psw
	pop a
	ret
	__endasm;
}
