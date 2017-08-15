;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9959 (Linux)
;--------------------------------------------------------
	.module ds1302
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bcd_add_16_PARM_2
	.globl _bcd_add_PARM_2
	.globl _ds1302_sram_init
	.globl _ds1302_init
	.globl _ds1302_struct_addr
	.globl _crcSlow
	.globl _memcpy
	.globl _UART_SM0
	.globl _UART_SM1
	.globl _UART_SM2
	.globl _UART_REN
	.globl _UART_TB8
	.globl _UART_RB8
	.globl _UART_TI
	.globl _UART_RI
	.globl _PCA_CF
	.globl _PCA_CR
	.globl _PCA_CCF2
	.globl _PCA_CCF1
	.globl _PCA_CCF0
	.globl _TMR_TCON_TF1
	.globl _TMR_TCON_TR1
	.globl _TMR_TCON_TF0
	.globl _TMR_TCON_TR0
	.globl _TMR_TCON_IE1
	.globl _TMR_TCON_IT1
	.globl _TMR_TCON_IE0
	.globl _TMR_TCON_IT0
	.globl _INT_IP_PPCA
	.globl _INT_IP_PLVD
	.globl _INT_IP_PADC
	.globl _INT_IP_PS
	.globl _INT_IP_PT1
	.globl _INT_IP_PX1
	.globl _INT_IP_PT0
	.globl _INT_IP_PX0
	.globl _INT_IE_EA
	.globl _INT_IE_ELVD
	.globl _INT_IE_EADC
	.globl _INT_IE_ES
	.globl _INT_IE_ET1
	.globl _INT_IE_EX1
	.globl _INT_IE_ET0
	.globl _INT_IE_EX0
	.globl _PORT_P5_7
	.globl _PORT_P5_6
	.globl _PORT_P5_5
	.globl _PORT_P5_4
	.globl _PORT_P5_3
	.globl _PORT_P5_2
	.globl _PORT_P5_1
	.globl _PORT_P5_0
	.globl _PORT_P4_7
	.globl _PORT_P4_6
	.globl _PORT_P4_5
	.globl _PORT_P4_4
	.globl _PORT_P4_3
	.globl _PORT_P4_2
	.globl _PORT_P4_1
	.globl _PORT_P4_0
	.globl _PORT_P3_7
	.globl _PORT_P3_6
	.globl _PORT_P3_5
	.globl _PORT_P3_4
	.globl _PORT_P3_3
	.globl _PORT_P3_2
	.globl _PORT_P3_1
	.globl _PORT_P3_0
	.globl _PORT_P2_7
	.globl _PORT_P2_6
	.globl _PORT_P2_5
	.globl _PORT_P2_4
	.globl _PORT_P2_3
	.globl _PORT_P2_2
	.globl _PORT_P2_1
	.globl _PORT_P2_0
	.globl _PORT_P1_7
	.globl _PORT_P1_6
	.globl _PORT_P1_5
	.globl _PORT_P1_4
	.globl _PORT_P1_3
	.globl _PORT_P1_2
	.globl _PORT_P1_1
	.globl _PORT_P1_0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDR
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _UART_SADEN
	.globl _UART_SADDR
	.globl _UART_SBUF
	.globl _UART_SCON
	.globl _PCA_CMOD
	.globl _PCA_CCON
	.globl _PCA_PWM2
	.globl _PCA_PWM1
	.globl _PCA_PWM0
	.globl _PCA_C
	.globl _PCA_CCAP2_L
	.globl _PCA_CCAP2_H
	.globl _PCA_CCAP1_L
	.globl _PCA_CCAP1_H
	.globl _PCA_CCAP0_L
	.globl _PCA_CCAP0_H
	.globl _PCA_CCAP2
	.globl _PCA_CCAP1
	.globl _PCA_CCAP0
	.globl _PCA_CCAPM2
	.globl _PCA_CCAPM1
	.globl _PCA_CCAPM0
	.globl _CMP_CR2
	.globl _CMP_CR1
	.globl _ADC_RESL
	.globl _ADC_RESH
	.globl _ADC_RES
	.globl _ADC_CONTR
	.globl _ADC_P1ASF
	.globl _EEPROM_CONTR
	.globl _EEPROM_TRIG
	.globl _EEPROM_CMD
	.globl _EEPROM_ADDR
	.globl _EEPROM_DATA
	.globl _TMR_T2
	.globl _TMR_T0
	.globl _TMR_TMOD
	.globl _TMR_TCON
	.globl _INT_IP2
	.globl _INT_IP
	.globl _INT_IE2
	.globl _INT_IE
	.globl _PORT_P5M0
	.globl _PORT_P5M1
	.globl _PORT_P4M0
	.globl _PORT_P4M1
	.globl _PORT_P3M0
	.globl _PORT_P3M1
	.globl _PORT_P2M0
	.globl _PORT_P2M1
	.globl _PORT_P1M0
	.globl _PORT_P1M1
	.globl _PORT_P5
	.globl _PORT_P4
	.globl _PORT_P3
	.globl _PORT_P2
	.globl _PORT_P1
	.globl _PSW
	.globl _PCON2
	.globl _AUXR2
	.globl _AUXR1
	.globl _AUXR
	.globl _PCON
	.globl _DPTR
	.globl _SP
	.globl _ds1302_sram_data
	.globl _DS1302_DATA_7
	.globl _DS1302_DATA_6
	.globl _DS1302_DATA_5
	.globl _DS1302_DATA_4
	.globl _DS1302_DATA_3
	.globl _DS1302_DATA_2
	.globl _DS1302_DATA_1
	.globl _DS1302_DATA_0
	.globl _ds1302
	.globl _DS1302_DATA
	.globl _ds1302_reset
	.globl _ds1302_start
	.globl _ds1302_read_byte_slow
	.globl _ds1302_write_byte_slow
	.globl _ds1302_set_time
	.globl _ds1302_read_SRAM
	.globl _ds1302_write_SRAM
	.globl _ds1302_check_SRAM
	.globl _ds1302_calculate_CRC
	.globl _ds1302_power_loss_reset
	.globl _convert_24h_to_12h
	.globl _bcd_add
	.globl _bcd_add_16
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SP	=	0x0081
_DPTR	=	0x8382
_PCON	=	0x0087
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_AUXR2	=	0x008f
_PCON2	=	0x0097
_PSW	=	0x00d0
_PORT_P1	=	0x0090
_PORT_P2	=	0x00a0
_PORT_P3	=	0x00b0
_PORT_P4	=	0x00c0
_PORT_P5	=	0x00c8
_PORT_P1M1	=	0x0091
_PORT_P1M0	=	0x0092
_PORT_P2M1	=	0x0095
_PORT_P2M0	=	0x0096
_PORT_P3M1	=	0x00b1
_PORT_P3M0	=	0x00b2
_PORT_P4M1	=	0x00b3
_PORT_P4M0	=	0x00b4
_PORT_P5M1	=	0x00c9
_PORT_P5M0	=	0x00ca
_INT_IE	=	0x00a8
_INT_IE2	=	0x00af
_INT_IP	=	0x00b8
_INT_IP2	=	0x00b5
_TMR_TCON	=	0x0088
_TMR_TMOD	=	0x0089
_TMR_T0	=	0x8c8a
_TMR_T2	=	0xd6d7
_EEPROM_DATA	=	0x00c2
_EEPROM_ADDR	=	0xc3c4
_EEPROM_CMD	=	0x00c5
_EEPROM_TRIG	=	0x00c6
_EEPROM_CONTR	=	0x00c7
_ADC_P1ASF	=	0x009d
_ADC_CONTR	=	0x00bc
_ADC_RES	=	0xbdbe
_ADC_RESH	=	0x00bd
_ADC_RESL	=	0x00be
_CMP_CR1	=	0x00e6
_CMP_CR2	=	0x00e7
_PCA_CCAPM0	=	0x00da
_PCA_CCAPM1	=	0x00db
_PCA_CCAPM2	=	0x00dc
_PCA_CCAP0	=	0xfaea
_PCA_CCAP1	=	0xfbeb
_PCA_CCAP2	=	0xfcec
_PCA_CCAP0_H	=	0x00fa
_PCA_CCAP0_L	=	0x00ea
_PCA_CCAP1_H	=	0x00fb
_PCA_CCAP1_L	=	0x00eb
_PCA_CCAP2_H	=	0x00fc
_PCA_CCAP2_L	=	0x00ec
_PCA_C	=	0xf9e9
_PCA_PWM0	=	0x00f2
_PCA_PWM1	=	0x00f3
_PCA_PWM2	=	0x00f4
_PCA_CCON	=	0x00d8
_PCA_CMOD	=	0x00d9
_UART_SCON	=	0x0098
_UART_SBUF	=	0x0099
_UART_SADDR	=	0x00a9
_UART_SADEN	=	0x00b9
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_ADDR	=	0xc3c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_PORT_P1_0	=	0x0090
_PORT_P1_1	=	0x0091
_PORT_P1_2	=	0x0092
_PORT_P1_3	=	0x0093
_PORT_P1_4	=	0x0094
_PORT_P1_5	=	0x0095
_PORT_P1_6	=	0x0096
_PORT_P1_7	=	0x0097
_PORT_P2_0	=	0x00a0
_PORT_P2_1	=	0x00a1
_PORT_P2_2	=	0x00a2
_PORT_P2_3	=	0x00a3
_PORT_P2_4	=	0x00a4
_PORT_P2_5	=	0x00a5
_PORT_P2_6	=	0x00a6
_PORT_P2_7	=	0x00a7
_PORT_P3_0	=	0x00b0
_PORT_P3_1	=	0x00b1
_PORT_P3_2	=	0x00b2
_PORT_P3_3	=	0x00b3
_PORT_P3_4	=	0x00b4
_PORT_P3_5	=	0x00b5
_PORT_P3_6	=	0x00b6
_PORT_P3_7	=	0x00b7
_PORT_P4_0	=	0x00c0
_PORT_P4_1	=	0x00c1
_PORT_P4_2	=	0x00c2
_PORT_P4_3	=	0x00c3
_PORT_P4_4	=	0x00c4
_PORT_P4_5	=	0x00c5
_PORT_P4_6	=	0x00c6
_PORT_P4_7	=	0x00c7
_PORT_P5_0	=	0x00c8
_PORT_P5_1	=	0x00c9
_PORT_P5_2	=	0x00ca
_PORT_P5_3	=	0x00cb
_PORT_P5_4	=	0x00cc
_PORT_P5_5	=	0x00cd
_PORT_P5_6	=	0x00ce
_PORT_P5_7	=	0x00cd
_INT_IE_EX0	=	0x00a8
_INT_IE_ET0	=	0x00a9
_INT_IE_EX1	=	0x00aa
_INT_IE_ET1	=	0x00ab
_INT_IE_ES	=	0x00ac
_INT_IE_EADC	=	0x00ad
_INT_IE_ELVD	=	0x00ae
_INT_IE_EA	=	0x00af
_INT_IP_PX0	=	0x00b8
_INT_IP_PT0	=	0x00b9
_INT_IP_PX1	=	0x00ba
_INT_IP_PT1	=	0x00bb
_INT_IP_PS	=	0x00bc
_INT_IP_PADC	=	0x00bd
_INT_IP_PLVD	=	0x00be
_INT_IP_PPCA	=	0x00bf
_TMR_TCON_IT0	=	0x0088
_TMR_TCON_IE0	=	0x0089
_TMR_TCON_IT1	=	0x008a
_TMR_TCON_IE1	=	0x008b
_TMR_TCON_TR0	=	0x008c
_TMR_TCON_TF0	=	0x008d
_TMR_TCON_TR1	=	0x008e
_TMR_TCON_TF1	=	0x008f
_PCA_CCF0	=	0x00d8
_PCA_CCF1	=	0x00d9
_PCA_CCF2	=	0x00da
_PCA_CR	=	0x00de
_PCA_CF	=	0x00df
_UART_RI	=	0x0098
_UART_TI	=	0x0099
_UART_RB8	=	0x009a
_UART_TB8	=	0x009b
_UART_REN	=	0x009c
_UART_SM2	=	0x009d
_UART_SM1	=	0x009e
_UART_SM0	=	0x009e
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_DS1302_DATA	=	0x0021
_ds1302::
	.ds 8
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_bcd_add_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_bcd_add_16_PARM_2:
	.ds 2
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_DS1302_DATA_0	=	0x0008
_DS1302_DATA_1	=	0x0009
_DS1302_DATA_2	=	0x000a
_DS1302_DATA_3	=	0x000b
_DS1302_DATA_4	=	0x000c
_DS1302_DATA_5	=	0x000d
_DS1302_DATA_6	=	0x000e
_DS1302_DATA_7	=	0x000f
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_ds1302_sram_data	=	0x0000
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_reset'
;------------------------------------------------------------
;	../ds1302.c:55: void ds1302_reset() {
;	-----------------------------------------
;	 function ds1302_reset
;	-----------------------------------------
_ds1302_reset:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../ds1302.c:56: DS1302_IO = 0;
;	assignBit
	clr	_PORT_P1_1
;	../ds1302.c:57: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:58: DS1302_CE = 0;
;	assignBit
	clr	_PORT_P1_0
;	../ds1302.c:80: __endasm;
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_start'
;------------------------------------------------------------
;command                   Allocated to registers 
;------------------------------------------------------------
;	../ds1302.c:83: void ds1302_start(uint8_t command) {
;	-----------------------------------------
;	 function ds1302_start
;	-----------------------------------------
_ds1302_start:
	mov	_DS1302_DATA,dpl
;	../ds1302.c:86: DS1302_IO = DS1302_DATA_0;				 //Write first data bit
;	assignBit
	mov	c,_DS1302_DATA_0
	mov	_PORT_P1_1,c
;	../ds1302.c:87: DS1302_CE = 1;							 //Raise CE
;	assignBit
	setb	_PORT_P1_0
;	../ds1302.c:111: __endasm;								 //Wait tCC
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
;	../ds1302.c:112: DS1302_CLK = 1;					     	 //Raise CLK
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:118: __endasm;						 		//Extend tCH
	nop
	nop
	nop
	nop
;	../ds1302.c:119: DS1302_CLK = 0;							 //Drop CLK
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:120: DS1302_IO = DS1302_DATA_1;				 //Write bit
;	assignBit
	mov	c,_DS1302_DATA_1
	mov	_PORT_P1_1,c
;	../ds1302.c:121: DS1302_CLK = 1;						     //Raise CLK
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:127: __endasm;						 		//Extend tCH
	nop
	nop
	nop
	nop
;	../ds1302.c:128: DS1302_CLK = 0;							 //Drop CLK
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:129: DS1302_IO = DS1302_DATA_2;				 //Write bit
;	assignBit
	mov	c,_DS1302_DATA_2
	mov	_PORT_P1_1,c
;	../ds1302.c:130: DS1302_CLK = 1;						     //Raise CLK
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:136: __endasm;						 		//Extend tCH
	nop
	nop
	nop
	nop
;	../ds1302.c:137: DS1302_CLK = 0;							 //Drop CLK
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:138: DS1302_IO = DS1302_DATA_3;				 //Write bit
;	assignBit
	mov	c,_DS1302_DATA_3
	mov	_PORT_P1_1,c
;	../ds1302.c:139: DS1302_CLK = 1;						     //Raise CLK
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:145: __endasm;						 		//Extend tCH
	nop
	nop
	nop
	nop
;	../ds1302.c:146: DS1302_CLK = 0;							 //Drop CLK
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:147: DS1302_IO = DS1302_DATA_4;				 //Write bit
;	assignBit
	mov	c,_DS1302_DATA_4
	mov	_PORT_P1_1,c
;	../ds1302.c:148: DS1302_CLK = 1;						     //Raise CLK
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:154: __endasm;						 		//Extend tCH
	nop
	nop
	nop
	nop
;	../ds1302.c:155: DS1302_CLK = 0;							 //Drop CLK
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:156: DS1302_IO = DS1302_DATA_5;				 //Write bit
;	assignBit
	mov	c,_DS1302_DATA_5
	mov	_PORT_P1_1,c
;	../ds1302.c:157: DS1302_CLK = 1;						     //Raise CLK
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:163: __endasm;						 		//Extend tCH
	nop
	nop
	nop
	nop
;	../ds1302.c:164: DS1302_CLK = 0;							 //Drop CLK
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:165: DS1302_IO = DS1302_DATA_6;				 //Write bit
;	assignBit
	mov	c,_DS1302_DATA_6
	mov	_PORT_P1_1,c
;	../ds1302.c:166: DS1302_CLK = 1;						     //Raise CLK
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:172: __endasm;						 		//Extend tCH
	nop
	nop
	nop
	nop
;	../ds1302.c:173: DS1302_CLK = 0;							 //Drop CLK
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:174: DS1302_IO = DS1302_DATA_7;				 //Write bit
;	assignBit
	mov	c,_DS1302_DATA_7
	mov	_PORT_P1_1,c
;	../ds1302.c:175: DS1302_CLK = 1;						     //Raise CLK
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:181: __endasm;						 		//Extend tCH
	nop
	nop
	nop
	nop
;	../ds1302.c:182: DS1302_CLK = 0;							 //Drop CLK
;	assignBit
	clr	_PORT_P1_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_read_byte_slow'
;------------------------------------------------------------
;	../ds1302.c:185: uint8_t ds1302_read_byte_slow() {
;	-----------------------------------------
;	 function ds1302_read_byte_slow
;	-----------------------------------------
_ds1302_read_byte_slow:
;	../ds1302.c:186: DS1302_IO = 1;		//Stop driving I/O line
;	assignBit
	setb	_PORT_P1_1
;	../ds1302.c:193: __endasm;
	nop
	nop
	nop
;	../ds1302.c:194: DS1302_DATA_0 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_0,c
;	../ds1302.c:196: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:202: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:203: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:208: __endasm;
	nop
	nop
	nop
;	../ds1302.c:209: DS1302_DATA_1 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_1,c
;	../ds1302.c:211: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:217: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:218: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:223: __endasm;
	nop
	nop
	nop
;	../ds1302.c:224: DS1302_DATA_2 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_2,c
;	../ds1302.c:226: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:232: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:233: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:238: __endasm;
	nop
	nop
	nop
;	../ds1302.c:239: DS1302_DATA_3 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_3,c
;	../ds1302.c:241: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:247: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:248: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:253: __endasm;
	nop
	nop
	nop
;	../ds1302.c:254: DS1302_DATA_4 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_4,c
;	../ds1302.c:256: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:262: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:263: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:268: __endasm;
	nop
	nop
	nop
;	../ds1302.c:269: DS1302_DATA_5 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_5,c
;	../ds1302.c:271: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:277: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:278: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:283: __endasm;
	nop
	nop
	nop
;	../ds1302.c:284: DS1302_DATA_6 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_6,c
;	../ds1302.c:286: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:292: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:293: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:298: __endasm;
	nop
	nop
	nop
;	../ds1302.c:299: DS1302_DATA_7 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_7,c
;	../ds1302.c:300: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:306: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:307: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:309: return DS1302_DATA;
	mov	dpl,_DS1302_DATA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_write_byte_slow'
;------------------------------------------------------------
;byte                      Allocated to registers 
;------------------------------------------------------------
;	../ds1302.c:312: void ds1302_write_byte_slow(uint8_t byte) {
;	-----------------------------------------
;	 function ds1302_write_byte_slow
;	-----------------------------------------
_ds1302_write_byte_slow:
	mov	_DS1302_DATA,dpl
;	../ds1302.c:315: DS1302_IO = DS1302_DATA_0;
;	assignBit
	mov	c,_DS1302_DATA_0
	mov	_PORT_P1_1,c
;	../ds1302.c:316: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:322: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:323: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:325: DS1302_IO = DS1302_DATA_1;
;	assignBit
	mov	c,_DS1302_DATA_1
	mov	_PORT_P1_1,c
;	../ds1302.c:326: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:332: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:333: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:336: DS1302_IO = DS1302_DATA_2;
;	assignBit
	mov	c,_DS1302_DATA_2
	mov	_PORT_P1_1,c
;	../ds1302.c:337: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:343: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:344: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:346: DS1302_IO = DS1302_DATA_3;
;	assignBit
	mov	c,_DS1302_DATA_3
	mov	_PORT_P1_1,c
;	../ds1302.c:347: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:353: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:354: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:356: DS1302_IO = DS1302_DATA_4;
;	assignBit
	mov	c,_DS1302_DATA_4
	mov	_PORT_P1_1,c
;	../ds1302.c:357: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:363: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:364: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:366: DS1302_IO = DS1302_DATA_5;
;	assignBit
	mov	c,_DS1302_DATA_5
	mov	_PORT_P1_1,c
;	../ds1302.c:367: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:373: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:374: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:375: DS1302_IO = DS1302_DATA_6;
;	assignBit
	mov	c,_DS1302_DATA_6
	mov	_PORT_P1_1,c
;	../ds1302.c:377: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:383: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:384: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	../ds1302.c:386: DS1302_IO = DS1302_DATA_7;
;	assignBit
	mov	c,_DS1302_DATA_7
	mov	_PORT_P1_1,c
;	../ds1302.c:387: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	../ds1302.c:393: __endasm;
	nop
	nop
	nop
	nop
;	../ds1302.c:394: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_set_time'
;------------------------------------------------------------
;index                     Allocated to registers r7 
;------------------------------------------------------------
;	../ds1302.c:398: void ds1302_set_time() {
;	-----------------------------------------
;	 function ds1302_set_time
;	-----------------------------------------
_ds1302_set_time:
;	../ds1302.c:400: ds1302_start(0x8e); 	//Start single byte write to control register
	mov	dpl,#0x8e
	lcall	_ds1302_start
;	../ds1302.c:401: ds1302_write_byte_slow(0x00);//Write 0x00 to control register, disable WP
	mov	dpl,#0x00
	lcall	_ds1302_write_byte_slow
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:322: DS1302_CE = 0; //Drop CE to end communication.
;	assignBit
	clr	_PORT_P1_0
;	../ds1302.c:404: ds1302_reset(); 		//Reset DS1302 because we're doing a fast second op.
	lcall	_ds1302_reset
;	../ds1302.c:406: ds1302_start(0xbe);		//Start clock burst write
	mov	dpl,#0xbe
	lcall	_ds1302_start
;	../ds1302.c:408: for(index=0;index!=0x08;index++){
	mov	r7,#0x00
00104$:
;	../ds1302.c:409: ds1302_write_byte_slow(ds1302_struct_addr[index]);
	mov	dptr,#_ds1302_struct_addr
	clr	a
	movc	a,@a+dptr
	add	a,r7
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	lcall	_ds1302_write_byte_slow
	pop	ar7
;	../ds1302.c:408: for(index=0;index!=0x08;index++){
	inc	r7
	cjne	r7,#0x08,00104$
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:322: DS1302_CE = 0; //Drop CE to end communication.
;	assignBit
	clr	_PORT_P1_0
;	../ds1302.c:411: ds1302_end();
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_read_SRAM'
;------------------------------------------------------------
;index                     Allocated to registers r7 
;------------------------------------------------------------
;	../ds1302.c:414: void ds1302_read_SRAM() {
;	-----------------------------------------
;	 function ds1302_read_SRAM
;	-----------------------------------------
_ds1302_read_SRAM:
;	../ds1302.c:416: ds1302_start(0xff);		//Start burst read from SRAM
	mov	dpl,#0xff
	lcall	_ds1302_start
;	../ds1302.c:417: for(index = 0;index!=0x1f;index++){
	mov	r7,#0x00
00103$:
;	../ds1302.c:418: ds1302_sram_data[index] = ds1302_read_byte_slow(); //Read bytes from DS1302
	mov	ar5,r7
	mov	r6,#(_ds1302_sram_data >> 8)
	push	ar7
	push	ar6
	push	ar5
	lcall	_ds1302_read_byte_slow
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	a,r4
	movx	@dptr,a
;	../ds1302.c:417: for(index = 0;index!=0x1f;index++){
	inc	r7
	cjne	r7,#0x1f,00103$
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:322: DS1302_CE = 0; //Drop CE to end communication.
;	assignBit
	clr	_PORT_P1_0
;	../ds1302.c:420: ds1302_end();			//Terminate burst read
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_write_SRAM'
;------------------------------------------------------------
;index                     Allocated to registers r7 
;------------------------------------------------------------
;	../ds1302.c:423: void ds1302_write_SRAM() {
;	-----------------------------------------
;	 function ds1302_write_SRAM
;	-----------------------------------------
_ds1302_write_SRAM:
;	../ds1302.c:425: ds1302_start(0xfe);		//Start burst write to SRAM
	mov	dpl,#0xfe
	lcall	_ds1302_start
;	../ds1302.c:426: for(index = 0;index!=0x1f;index++){
	mov	r7,#0x00
00103$:
;	../ds1302.c:427: ds1302_write_byte_slow(ds1302_sram_data[index]);	  //Write bytes to DS1302
	mov	dpl,r7
	mov	dph,#(_ds1302_sram_data >> 8)
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_ds1302_write_byte_slow
	pop	ar7
;	../ds1302.c:426: for(index = 0;index!=0x1f;index++){
	inc	r7
	cjne	r7,#0x1f,00103$
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:322: DS1302_CE = 0; //Drop CE to end communication.
;	assignBit
	clr	_PORT_P1_0
;	../ds1302.c:429: ds1302_end();			//Terminate burst write
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_check_SRAM'
;------------------------------------------------------------
;val                       Allocated to registers r6 r5 
;------------------------------------------------------------
;	../ds1302.c:432: uint8_t ds1302_check_SRAM() __reentrant {
;	-----------------------------------------
;	 function ds1302_check_SRAM
;	-----------------------------------------
_ds1302_check_SRAM:
;	../ds1302.c:433: uint16_t val = ((ds1302_sram_data[0]) | (ds1302_sram_data[1] << 8));
	mov	dptr,#_ds1302_sram_data
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_ds1302_sram_data + 0x0001)
	movx	a,@dptr
	mov	r5,a
	clr	a
	mov	r6,a
	mov	r4,a
	mov	a,r7
	orl	ar6,a
	mov	a,r4
	orl	ar5,a
;	../ds1302.c:434: if(crcSlow(ds1302_sram_data + DS1302_CRC_SIZE,DS1302_BBSRAM_SIZE - DS1302_CRC_SIZE) == val)
	mov	_crcSlow_PARM_2,#0x1d
	mov	dptr,#(_ds1302_sram_data + 0x0002)
	mov	b,#0x00
	push	ar6
	push	ar5
	lcall	_crcSlow
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,r4
	cjne	a,ar6,00102$
	mov	a,r7
	cjne	a,ar5,00102$
;	../ds1302.c:435: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	../ds1302.c:437: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_calculate_CRC'
;------------------------------------------------------------
;crcval                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	../ds1302.c:440: void ds1302_calculate_CRC() __reentrant {
;	-----------------------------------------
;	 function ds1302_calculate_CRC
;	-----------------------------------------
_ds1302_calculate_CRC:
;	../ds1302.c:441: uint16_t crcval = crcSlow(ds1302_sram_data + DS1302_CRC_SIZE,DS1302_BBSRAM_SIZE - DS1302_CRC_SIZE);
	mov	_crcSlow_PARM_2,#0x1d
	mov	dptr,#(_ds1302_sram_data + 0x0002)
	mov	b,#0x00
	lcall	_crcSlow
	mov	r6,dpl
	mov	r7,dph
;	../ds1302.c:442: CRC_LSB = ((uint8_t)(crcval & 0x00ff));
	mov	ar5,r6
	mov	dptr,#_ds1302_sram_data
	mov	a,r5
	movx	@dptr,a
;	../ds1302.c:443: CRC_MSB = ((uint8_t)(crcval >> 8));
	mov	ar6,r7
	mov	dptr,#(_ds1302_sram_data + 0x0001)
	mov	a,r6
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_power_loss_reset'
;------------------------------------------------------------
;	../ds1302.c:446: void ds1302_power_loss_reset() {
;	-----------------------------------------
;	 function ds1302_power_loss_reset
;	-----------------------------------------
_ds1302_power_loss_reset:
;	../ds1302.c:447: memcpy(&ds1302,&ds1302_init,sizeof(ds1302_data));
	mov	_memcpy_PARM_2,#_ds1302_init
	mov	(_memcpy_PARM_2 + 1),#(_ds1302_init >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x80
	mov	_memcpy_PARM_3,#0x08
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#_ds1302
	mov	b,#0x40
	lcall	_memcpy
;	../ds1302.c:448: memcpy(&ds1302_sram_data,&ds1302_sram_init,sizeof(ds1302_sram_init));
	mov	_memcpy_PARM_2,#_ds1302_sram_init
	mov	(_memcpy_PARM_2 + 1),#(_ds1302_sram_init >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x80
	mov	_memcpy_PARM_3,#0x1f
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#_ds1302_sram_data
	mov	b,#0x00
	lcall	_memcpy
;	../ds1302.c:449: ds1302_calculate_CRC();
	lcall	_ds1302_calculate_CRC
;	../ds1302.c:450: ds1302_set_time();
	lcall	_ds1302_set_time
;	../ds1302.c:451: ds1302_reset();
	lcall	_ds1302_reset
;	../ds1302.c:452: ds1302_set_time();
	lcall	_ds1302_set_time
;	../ds1302.c:453: ds1302_reset();
	lcall	_ds1302_reset
;	../ds1302.c:454: ds1302_write_SRAM();
	ljmp	_ds1302_write_SRAM
;------------------------------------------------------------
;Allocation info for local variables in function 'convert_24h_to_12h'
;------------------------------------------------------------
;h_24                      Allocated to registers r7 
;------------------------------------------------------------
;	../ds1302.c:457: uint8_t convert_24h_to_12h(uint8_t h_24) {
;	-----------------------------------------
;	 function convert_24h_to_12h
;	-----------------------------------------
_convert_24h_to_12h:
;	../ds1302.c:496: return lut_24h_to_12h[h_24];
	mov	a,dpl
	mov	dptr,#_convert_24h_to_12h_lut_24h_to_12h_1_101
	movc	a,@a+dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bcd_add'
;------------------------------------------------------------
;v2                        Allocated with name '_bcd_add_PARM_2'
;v1                        Allocated to registers 
;------------------------------------------------------------
;	../ds1302.c:500: uint8_t bcd_add(uint8_t v1,uint8_t v2) __naked {
;	-----------------------------------------
;	 function bcd_add
;	-----------------------------------------
_bcd_add:
;	naked function: no prologue.
;	../ds1302.c:511: __endasm;
	push	a
	push	psw
	mov	a,dpl
	add	a,_bcd_add_PARM_2
	da	a
	mov	dpl,a
	pop	psw
	pop	a
	ret
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'bcd_add_16'
;------------------------------------------------------------
;op2                       Allocated with name '_bcd_add_16_PARM_2'
;op1                       Allocated to registers 
;------------------------------------------------------------
;	../ds1302.c:514: uint16_t bcd_add_16(uint16_t op1,uint16_t op2) __naked {
;	-----------------------------------------
;	 function bcd_add_16
;	-----------------------------------------
_bcd_add_16:
;	naked function: no prologue.
;	../ds1302.c:530: __endasm;
	push	a
	push	psw
	clr	_CY ;clear carry
	mov	a,dpl ;perform addition of lsb
	add	a,(_bcd_add_16_PARM_2)
	da	a ;decimal adjust
	mov	dpl,a ;move result lsb
	mov	a,dph ;add carry bit
	addc	a,(_bcd_add_16_PARM_2+1) ;add msb
	da	a ;decimal adjust
	mov	dph,a
	pop	psw
	pop	a
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ds1302_struct_addr:
	.db _ds1302
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
	.org 0x3200
_ds1302_init:
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x10	; 16
	.db #0x29	; 41
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x17	; 23
	.db #0x00	; 0
	.org 0x3208
_ds1302_sram_init:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.org 0x3227
_convert_24h_to_12h_lut_24h_to_12h_1_101:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x10	; 16
	.db #0x11	; 17
