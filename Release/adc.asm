;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9959 (Linux)
;--------------------------------------------------------
	.module adc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ISR_ADC
	.globl _eeprom_end
	.globl _eeprom_write
	.globl _eeprom_erase
	.globl _eeprom_start
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
	.globl _display_autobrightness
	.globl _DS1302_DATA_7
	.globl _DS1302_DATA_6
	.globl _DS1302_DATA_5
	.globl _DS1302_DATA_4
	.globl _DS1302_DATA_3
	.globl _DS1302_DATA_2
	.globl _DS1302_DATA_1
	.globl _DS1302_DATA_0
	.globl _adc_calibrate_LDR_PARM_2
	.globl _adc_thermistor_reading
	.globl _adc_ldr_reading
	.globl _DS1302_DATA
	.globl _adc_calibrate_LDR
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
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_DS1302_DATA	=	0x0021
_adc_ldr_reading::
	.ds 2
_adc_thermistor_reading::
	.ds 2
_adc_calibrate_LDR_PARM_2:
	.ds 2
_adc_calibrate_LDR_ldr_min_1_154:
	.ds 2
_adc_calibrate_LDR_gradient_1_155:
	.ds 4
_adc_calibrate_LDR_intercept_1_155:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_display_autobrightness	=	0x001f
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
;Allocation info for local variables in function 'adc_calibrate_LDR'
;------------------------------------------------------------
;ldr_max                   Allocated with name '_adc_calibrate_LDR_PARM_2'
;ldr_min                   Allocated with name '_adc_calibrate_LDR_ldr_min_1_154'
;gradient                  Allocated with name '_adc_calibrate_LDR_gradient_1_155'
;intercept                 Allocated with name '_adc_calibrate_LDR_intercept_1_155'
;i                         Allocated to registers r0 r1 
;------------------------------------------------------------
;	../adc.c:13: void adc_calibrate_LDR(uint16_t ldr_min,uint16_t ldr_max) {
;	-----------------------------------------
;	 function adc_calibrate_LDR
;	-----------------------------------------
_adc_calibrate_LDR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_adc_calibrate_LDR_ldr_min_1_154,dpl
	mov	(_adc_calibrate_LDR_ldr_min_1_154 + 1),dph
;	../adc.c:14: float gradient = (((float)(DISPLAY_COUNTS_RANGE))/((-1.00f)*(float)(ldr_max - ldr_min)));
	mov	a,_adc_calibrate_LDR_PARM_2
	clr	c
	subb	a,_adc_calibrate_LDR_ldr_min_1_154
	mov	dpl,a
	mov	a,(_adc_calibrate_LDR_PARM_2 + 1)
	subb	a,(_adc_calibrate_LDR_ldr_min_1_154 + 1)
	mov	dph,a
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	cpl	acc.7
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xd400
	mov	b,#0x68
	mov	a,#0x47
	lcall	___fsdiv
	mov	_adc_calibrate_LDR_gradient_1_155,dpl
	mov	(_adc_calibrate_LDR_gradient_1_155 + 1),dph
	mov	(_adc_calibrate_LDR_gradient_1_155 + 2),b
	mov	(_adc_calibrate_LDR_gradient_1_155 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../adc.c:15: float intercept = ((float)DISPLAY_COUNTS_MAX - gradient*((float)ldr_min));
	mov	dpl,_adc_calibrate_LDR_ldr_min_1_154
	mov	dph,(_adc_calibrate_LDR_ldr_min_1_154 + 1)
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r4,b
	mov	r5,a
	push	ar0
	push	ar1
	push	ar4
	push	ar5
	mov	dpl,_adc_calibrate_LDR_gradient_1_155
	mov	dph,(_adc_calibrate_LDR_gradient_1_155 + 1)
	mov	b,(_adc_calibrate_LDR_gradient_1_155 + 2)
	mov	a,(_adc_calibrate_LDR_gradient_1_155 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x6a
	mov	a,#0x47
	lcall	___fssub
	mov	_adc_calibrate_LDR_intercept_1_155,dpl
	mov	(_adc_calibrate_LDR_intercept_1_155 + 1),dph
	mov	(_adc_calibrate_LDR_intercept_1_155 + 2),b
	mov	(_adc_calibrate_LDR_intercept_1_155 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../adc.c:18: eeprom_start();
	lcall	_eeprom_start
;	../adc.c:19: eeprom_erase(0x00);	//Erase EEPROM sectors holding LDR lookup table
	mov	dpl,#0x00
	lcall	_eeprom_erase
;	../adc.c:20: eeprom_erase(0x02);	//Erase EEPROM sectors holding LDR lookup table
	mov	dpl,#0x02
	lcall	_eeprom_erase
;	../adc.c:21: eeprom_erase(0x04);	//Erase EEPROM sectors holding LDR lookup table
	mov	dpl,#0x04
	lcall	_eeprom_erase
;	../adc.c:22: eeprom_erase(0x08);	//Erase EEPROM sectors holding LDR lookup table
	mov	dpl,#0x08
	lcall	_eeprom_erase
;	../adc.c:23: for(i=0;i<1024;i++){
	mov	r0,#0x00
	mov	r1,#0x00
00108$:
;	../adc.c:24: if((i >= ldr_min) && (i <= ldr_max)){
	clr	c
	mov	a,r0
	subb	a,_adc_calibrate_LDR_ldr_min_1_154
	mov	a,r1
	subb	a,(_adc_calibrate_LDR_ldr_min_1_154 + 1)
	jnc	00127$
	ljmp	00102$
00127$:
	clr	c
	mov	a,_adc_calibrate_LDR_PARM_2
	subb	a,r0
	mov	a,(_adc_calibrate_LDR_PARM_2 + 1)
	subb	a,r1
	jnc	00128$
	ljmp	00102$
00128$:
;	../adc.c:25: eeprom_write(2*i,((uint16_t)((gradient*(float)(i)) + intercept)) & 0x00ff);
	mov	a,r0
	add	a,r0
	mov	r4,a
	mov	a,r1
	rlc	a
	mov	r5,a
	mov	dpl,r0
	mov	dph,r1
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_adc_calibrate_LDR_gradient_1_155
	mov	dph,(_adc_calibrate_LDR_gradient_1_155 + 1)
	mov	b,(_adc_calibrate_LDR_gradient_1_155 + 2)
	mov	a,(_adc_calibrate_LDR_gradient_1_155 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_adc_calibrate_LDR_intercept_1_155
	push	(_adc_calibrate_LDR_intercept_1_155 + 1)
	push	(_adc_calibrate_LDR_intercept_1_155 + 2)
	push	(_adc_calibrate_LDR_intercept_1_155 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	___fs2uint
	mov	_eeprom_write_PARM_2,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_eeprom_write
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../adc.c:26: eeprom_write((2*i)+1,((uint16_t)((gradient*(float)(i)) + intercept)) >> 8);
	inc	r4
	cjne	r4,#0x00,00129$
	inc	r5
00129$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	___fs2uint
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	mov	_eeprom_write_PARM_2,r7
	mov	dpl,r4
	mov	dph,r5
	push	ar1
	push	ar0
	lcall	_eeprom_write
	pop	ar0
	pop	ar1
;	../adc.c:27: continue;
	sjmp	00106$
00102$:
;	../adc.c:29: if(i < ldr_min){
	clr	c
	mov	a,r0
	subb	a,_adc_calibrate_LDR_ldr_min_1_154
	mov	a,r1
	subb	a,(_adc_calibrate_LDR_ldr_min_1_154 + 1)
	jnc	00105$
;	../adc.c:30: eeprom_write((2*i),DISPLAY_COUNTS_MAX & 0x00ff);
	mov	a,r0
	add	a,r0
	mov	r6,a
	mov	a,r1
	rlc	a
	mov	r7,a
	mov	_eeprom_write_PARM_2,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar1
	push	ar0
	lcall	_eeprom_write
	pop	ar0
	pop	ar1
	pop	ar6
	pop	ar7
;	../adc.c:31: eeprom_write((2*i)+1,DISPLAY_COUNTS_MAX >> 8);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	_eeprom_write_PARM_2,#0xea
	push	ar1
	push	ar0
	lcall	_eeprom_write
	pop	ar0
	pop	ar1
;	../adc.c:32: continue;
	sjmp	00106$
00105$:
;	../adc.c:34: eeprom_write((2*i),DISPLAY_COUNTS_MIN & 0x00ff);
	mov	a,r0
	add	a,r0
	mov	r6,a
	mov	a,r1
	rlc	a
	mov	r7,a
	mov	_eeprom_write_PARM_2,#0x2c
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar1
	push	ar0
	lcall	_eeprom_write
	pop	ar0
	pop	ar1
	pop	ar6
	pop	ar7
;	../adc.c:35: eeprom_write((2*i)+1,DISPLAY_COUNTS_MIN >> 8);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	_eeprom_write_PARM_2,#0x01
	push	ar1
	push	ar0
	lcall	_eeprom_write
	pop	ar0
	pop	ar1
00106$:
;	../adc.c:23: for(i=0;i<1024;i++){
	inc	r0
	cjne	r0,#0x00,00131$
	inc	r1
00131$:
	mov	a,#0x100 - 0x04
	add	a,r1
	jc	00132$
	ljmp	00108$
00132$:
;	../adc.c:37: eeprom_end();
	ljmp	_eeprom_end
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_ADC'
;------------------------------------------------------------
;display_counts_buffer     Allocated to registers r6 r7 
;------------------------------------------------------------
;	../adc.c:57: void ISR_ADC(void) __interrupt(INT_ADC) __using(3) {
;	-----------------------------------------
;	 function ISR_ADC
;	-----------------------------------------
_ISR_ADC:
	ar7 = 0x1f
	ar6 = 0x1e
	ar5 = 0x1d
	ar4 = 0x1c
	ar3 = 0x1b
	ar2 = 0x1a
	ar1 = 0x19
	ar0 = 0x18
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x18
;	../adc.c:59: ADC_CONTR ^= 0x10; //Clear the ADC flag
	xrl	_ADC_CONTR,#0x10
;	../adc.c:61: if(ADC_CONTR == ADC_SETUP_THERMISTOR){
	mov	a,#0xe7
	cjne	a,_ADC_CONTR,00104$
;	../adc.c:62: adc_thermistor_reading = ADC_RES;
	mov	_adc_thermistor_reading,((_ADC_RES >> 0) & 0xFF)
	mov	(_adc_thermistor_reading + 1),((_ADC_RES >> 8) & 0xFF)
	ljmp	00106$
00104$:
;	../adc.c:64: adc_ldr_reading = ADC_RES;
	mov	_adc_ldr_reading,((_ADC_RES >> 0) & 0xFF)
	mov	(_adc_ldr_reading + 1),((_ADC_RES >> 8) & 0xFF)
;	../adc.c:65: if(display_autobrightness) {
	jb	_display_autobrightness,00116$
	ljmp	00106$
00116$:
;	../adc.c:67: display_counts_buffer = (((float)EEPROM_PWM_FROM_LDR_TABLE[adc_ldr_reading]/100.0) + ((99.00) *((float)display_counts/100.0)));
	mov	a,_adc_ldr_reading
	add	a,acc
	mov	r6,a
	mov	a,(_adc_ldr_reading + 1)
	rlc	a
	mov	r7,a
	mov	dpl,r6
	mov	a,#(_EEPROM_PWM_FROM_LDR_TABLE >> 8)
	add	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	psw,#0x00
	lcall	___uint2fs
	mov	psw,#0x18
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xc8
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	psw,#0x00
	lcall	___fsdiv
	mov	psw,#0x18
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_display_counts
	mov	dph,(_display_counts + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	___uint2fs
	mov	psw,#0x18
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xc8
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	mov	psw,#0x00
	lcall	___fsdiv
	mov	psw,#0x18
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x0000
	mov	b,#0xc6
	mov	a,#0x42
	mov	psw,#0x00
	lcall	___fsmul
	mov	psw,#0x18
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	psw,#0x00
	lcall	___fsadd
	mov	psw,#0x18
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	psw,#0x00
	lcall	___fs2uint
	mov	psw,#0x18
	mov	r6,dpl
	mov	r7,dph
;	../adc.c:68: INT_IP_PPCA = 0; //Block PCA interrupt from stacking on top of ADC ISR
;	assignBit
	clr	_INT_IP_PPCA
;	../adc.c:69: display_counts = display_counts_buffer;
	mov	_display_counts,r6
	mov	(_display_counts + 1),r7
;	../adc.c:70: INT_IP_PPCA = 1; //Re-enable PCA interrupt high priority
;	assignBit
	setb	_INT_IP_PPCA
00106$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
