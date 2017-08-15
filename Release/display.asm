;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9959 (Linux)
;--------------------------------------------------------
	.module display
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _display_putbcd_PARM_2
	.globl _ISR_PCA
	.globl _convert_24h_to_12h
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
	.globl _display_puttime_PARM_2
	.globl _display_counts
	.globl _display_flash
	.globl _display_index
	.globl _display_buffer
	.globl _DS1302_DATA
	.globl _display_puts
	.globl _display_putbcd
	.globl _display_puttime
	.globl _display_putdate
	.globl _display_putbool
	.globl _display_puttemp
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
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_DS1302_DATA	=	0x0021
_display_buffer::
	.ds 4
_display_index::
	.ds 1
_display_flash::
	.ds 1
_display_counts::
	.ds 2
_display_puttime_PARM_2:
	.ds 1
_ISR_PCA_flash_prescaler_1_149:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_display_putbcd_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_PCA'
;------------------------------------------------------------
;flash_prescaler           Allocated with name '_ISR_PCA_flash_prescaler_1_149'
;__00030031                Allocated to registers r7 
;index                     Allocated to registers 
;------------------------------------------------------------
;	../display.c:80: static uint8_t flash_prescaler = 0x10;
	mov	_ISR_PCA_flash_prescaler_1_149,#0x10
;	../display.c:12: volatile uint8_t display_buffer[4] = {0x00,0x00,0x00,0x00};
	mov	_display_buffer,#0x00
	mov	(_display_buffer + 0x0001),#0x00
	mov	(_display_buffer + 0x0002),#0x00
	mov	(_display_buffer + 0x0003),#0x00
;	../display.c:13: volatile uint8_t display_index = 0x03;
	mov	_display_index,#0x03
;	../display.c:14: volatile uint8_t display_flash = 0x00;
	mov	_display_flash,#0x00
;	../display.c:15: volatile uint16_t display_counts = 0xff00;
	mov	_display_counts,#0x00
	mov	(_display_counts + 1),#0xff
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
;Allocation info for local variables in function 'display_puts'
;------------------------------------------------------------
;s                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../display.c:17: void display_puts(__code const char* s) {
;	-----------------------------------------
;	 function display_puts
;	-----------------------------------------
_display_puts:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../display.c:18: display_buffer[0] = ledfonts_numeric_normal[*s];
	mov	r6,dpl
	mov  r7,dph
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_ledfonts_numeric_normal
	movc	a,@a+dptr
	mov	r5,a
	mov	_display_buffer,r5
;	../display.c:19: display_buffer[1] = ledfonts_numeric_normal[*(s+1)];
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_ledfonts_numeric_normal
	movc	a,@a+dptr
	mov	r5,a
	mov	(_display_buffer + 0x0001),r5
;	../display.c:20: display_buffer[2] = ledfonts_numeric_flipped[*(s+2)];
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_ledfonts_numeric_flipped
	movc	a,@a+dptr
	mov	r5,a
	mov	(_display_buffer + 0x0002),r5
;	../display.c:21: display_buffer[3] = ledfonts_numeric_normal[*(s+3)];
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_ledfonts_numeric_normal
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0003),r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_putbcd'
;------------------------------------------------------------
;v2                        Allocated with name '_display_putbcd_PARM_2'
;v1                        Allocated to registers r7 
;------------------------------------------------------------
;	../display.c:24: void display_putbcd(uint8_t v1, uint8_t v2) {
;	-----------------------------------------
;	 function display_putbcd
;	-----------------------------------------
_display_putbcd:
;	../display.c:25: display_buffer[0] = ledfonts_numeric_normal[(v1 >> 0x04)];
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	dptr,#_ledfonts_numeric_normal
	movc	a,@a+dptr
	mov	r6,a
	mov	_display_buffer,r6
;	../display.c:26: display_buffer[1] = ledfonts_numeric_normal[(v1 & 0x0f)];
	mov	a,#0x0f
	anl	a,r7
	mov	dptr,#_ledfonts_numeric_normal
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0001),r7
;	../display.c:27: display_buffer[2] = ledfonts_numeric_flipped[(v2 >> 0x04)];
	mov	a,_display_putbcd_PARM_2
	swap	a
	anl	a,#0x0f
	mov	dptr,#_ledfonts_numeric_flipped
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0002),r7
;	../display.c:28: display_buffer[3] = ledfonts_numeric_normal[(v2 & 0x0f)];
	mov	a,#0x0f
	anl	a,_display_putbcd_PARM_2
	mov	dptr,#_ledfonts_numeric_normal
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0003),r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_puttime'
;------------------------------------------------------------
;minute                    Allocated with name '_display_puttime_PARM_2'
;hour                      Allocated to registers r7 
;------------------------------------------------------------
;	../display.c:31: void display_puttime(uint8_t hour, uint8_t minute) {
;	-----------------------------------------
;	 function display_puttime
;	-----------------------------------------
_display_puttime:
	mov	r7,dpl
;	../display.c:32: if(TIME_DISPLAY_12) {
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	rl	a
	rl	a
	anl	a,#0x01
	mov	r6,a
	jz	00104$
;	../display.c:33: display_putbcd(convert_24h_to_12h(hour),minute);
	mov	dpl,r7
	push	ar7
	lcall	_convert_24h_to_12h
	pop	ar7
	mov	_display_putbcd_PARM_2,_display_puttime_PARM_2
	push	ar7
	lcall	_display_putbcd
	pop	ar7
;	../display.c:34: if(hour > 0x11)
	mov	a,r7
	add	a,#0xff - 0x11
	jnc	00105$
;	/home/shenghao/workspace/TESTMCS51/display.h:175: display_buffer[3] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0003)
	mov	(_display_buffer + 0x0003),a
;	../display.c:35: display_ampmon();
	sjmp	00105$
00104$:
;	../display.c:37: display_putbcd(hour,minute);
	mov	_display_putbcd_PARM_2,_display_puttime_PARM_2
	mov	dpl,r7
	lcall	_display_putbcd
00105$:
;	../display.c:40: if(DISPLAY_REMOVE_LEADING_ZEROES &&
	mov	dptr,#(_ds1302_sram_data + 0x0002)
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,00110$
;	../display.c:41: (display_buffer[0] == ledfonts_numeric_normal['0']))
	mov	dptr,#(_ledfonts_numeric_normal + 0x0030)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	a,_display_buffer,00110$
;	../display.c:42: display_buffer[0] = ledfonts_numeric_normal[' '];
	mov	dptr,#(_ledfonts_numeric_normal + 0x0020)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_display_buffer,r7
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_putdate'
;------------------------------------------------------------
;	../display.c:45: void display_putdate(void) {
;	-----------------------------------------
;	 function display_putdate
;	-----------------------------------------
_display_putdate:
;	../display.c:46: if(DATE_DISPLAY_MMDD)
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov	r7,a
	jz	00102$
;	../display.c:47: display_putbcd(ds1302.month,ds1302.date);
	mov	dpl,(_ds1302 + 0x0004)
	mov	_display_putbcd_PARM_2,(_ds1302 + 0x0003)
	lcall	_display_putbcd
	sjmp	00103$
00102$:
;	../display.c:49: display_putbcd(ds1302.date,ds1302.month);
	mov	dpl,(_ds1302 + 0x0003)
	mov	_display_putbcd_PARM_2,(_ds1302 + 0x0004)
	lcall	_display_putbcd
00103$:
;	/home/shenghao/workspace/TESTMCS51/display.h:146: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	../display.c:52: if(DISPLAY_REMOVE_LEADING_ZEROES){
	mov	dptr,#(_ds1302_sram_data + 0x0002)
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,00111$
;	../display.c:53: if(display_buffer[0] == ledfonts_numeric_normal['0'])
	mov	dptr,#(_ledfonts_numeric_normal + 0x0030)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	a,_display_buffer,00105$
;	../display.c:54: display_buffer[0] = ledfonts_numeric_normal[' '];
	mov	dptr,#(_ledfonts_numeric_normal + 0x0020)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_display_buffer,r7
00105$:
;	../display.c:55: if(display_buffer[2] == ledfonts_numeric_flipped['0'])
	mov	dptr,#(_ledfonts_numeric_flipped + 0x0030)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	a,(_display_buffer + 0x0002),00111$
;	../display.c:56: display_buffer[2] = ledfonts_numeric_flipped[' '];
	mov	dptr,#(_ledfonts_numeric_flipped + 0x0020)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0002),r7
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_putbool'
;------------------------------------------------------------
;v                         Allocated to registers r7 
;------------------------------------------------------------
;	../display.c:60: void display_putbool(uint8_t v) {
;	-----------------------------------------
;	 function display_putbool
;	-----------------------------------------
_display_putbool:
;	../display.c:61: if(v) {
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	../display.c:62: display_buffer[2] = ledfonts_numeric_flipped['O'];
	mov	dptr,#(_ledfonts_numeric_flipped + 0x004f)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0002),r7
;	../display.c:63: display_buffer[3] = ledfonts_numeric_normal['N'];
	mov	dptr,#(_ledfonts_numeric_normal + 0x004e)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0003),r7
	ret
00102$:
;	../display.c:65: display_buffer[2] = ledfonts_numeric_flipped['O'];
	mov	dptr,#(_ledfonts_numeric_flipped + 0x004f)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0002),r7
;	../display.c:66: display_buffer[3] = ledfonts_numeric_normal['F'];
	mov	dptr,#(_ledfonts_numeric_normal + 0x0046)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0003),r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_puttemp'
;------------------------------------------------------------
;v                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../display.c:70: void display_puttemp(uint16_t v) {
;	-----------------------------------------
;	 function display_puttemp
;	-----------------------------------------
_display_puttemp:
	mov	r6,dpl
	mov	r7,dph
;	../display.c:71: display_buffer[0] = ledfonts_numeric_normal[(v >> 0x08) & 0x0f];
	mov	ar5,r7
	mov	a,#0x0f
	anl	a,r5
	mov	dptr,#_ledfonts_numeric_normal
	movc	a,@a+dptr
	mov	r5,a
	mov	_display_buffer,r5
;	../display.c:72: display_buffer[1] = ledfonts_numeric_normal[(v >> 0x04) & 0x0f];
	mov	ar4,r6
	mov	a,r7
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	ar4,#0x0f
	mov	r5,#0x00
	mov	a,r4
	add	a,#_ledfonts_numeric_normal
	mov	dpl,a
	mov	a,r5
	addc	a,#(_ledfonts_numeric_normal >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_display_buffer + 0x0001),r5
;	../display.c:73: display_buffer[2] = ledfonts_numeric_flipped[v & 0x0f];
	anl	ar6,#0x0f
	mov	r7,#0x00
	mov	a,r6
	add	a,#_ledfonts_numeric_flipped
	mov	dpl,a
	mov	a,r7
	addc	a,#(_ledfonts_numeric_flipped >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0002),r7
;	../display.c:74: display_buffer[3] = ledfonts_numeric_normal['C'];
	mov	dptr,#(_ledfonts_numeric_normal + 0x0043)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_display_buffer + 0x0003),r7
;	/home/shenghao/workspace/TESTMCS51/display.h:146: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	../display.c:75: display_periodon();
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_PCA'
;------------------------------------------------------------
;flash_prescaler           Allocated with name '_ISR_PCA_flash_prescaler_1_149'
;__00030031                Allocated to registers r7 
;index                     Allocated to registers 
;------------------------------------------------------------
;	../display.c:78: void ISR_PCA(void) __interrupt(INT_PCA) __using(1)
;	-----------------------------------------
;	 function ISR_PCA
;	-----------------------------------------
_ISR_PCA:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	b
	push	psw
	mov	psw,#0x08
;	../display.c:81: if(PCA_CF) {
;	../display.c:87: PCA_CF = 0;										//Disable interrupt flag
;	assignBit
	jbc	_PCA_CF,00132$
	sjmp	00106$
00132$:
;	../display.c:88: PCA_CCAP0_L = (display_counts & 0x0f); 			//Setup new compare value - Note that the low register MUST be written first to stop the comparison operation!
	mov	r7,_display_counts
	mov	a,#0x0f
	anl	a,r7
	mov	_PCA_CCAP0_L,a
;	../display.c:89: PCA_CCAP0_H = (display_counts >> 8);			//Setup new compare value
	mov	_PCA_CCAP0_H,(_display_counts + 1)
;	../display.c:90: PORT_P2 = display_buffer[display_index];		//Write segment buffer
	mov	a,_display_index
	add	a,#_display_buffer
	mov	r1,a
	mov	_PORT_P2,@r1
;	../display.c:93: if((flash_prescaler < 0x08) && ((display_flash >> display_index) & 0x01))
	mov	a,#0x100 - 0x08
	add	a,_ISR_PCA_flash_prescaler_1_149
	jc	00102$
	mov	b,_display_index
	inc	b
	mov	a,_display_flash
	sjmp	00135$
00134$:
	clr	c
	rrc	a
00135$:
	djnz	b,00134$
	jb	acc.0,00115$
00102$:
;	../display.c:96: display_drive_common(display_index);
	mov	r7,_display_index
;	/home/shenghao/workspace/TESTMCS51/board_config.h:46: PORT_P3 &= ~(0x04 << index);
	mov	b,r7
	inc	b
	mov	a,#0x04
	sjmp	00139$
00137$:
	add	a,acc
00139$:
	djnz	b,00137$
	cpl	a
	mov	r7,a
	anl	_PORT_P3,a
;	../display.c:96: display_drive_common(display_index);
;	../display.c:98: return;
	sjmp	00115$
00106$:
;	../display.c:101: if(PCA_CCF0) {
;	../display.c:106: PCA_CCF0 = 0;				//Disable interrupt flag
;	assignBit
	jbc	_PCA_CCF0,00140$
	sjmp	00115$
00140$:
;	/home/shenghao/workspace/TESTMCS51/board_config.h:57: PORT_P3 |= (0x3c);
	orl	_PORT_P3,#0x3c
;	../display.c:108: if(!display_index){
	mov	a,_display_index
	jnz	00110$
;	../display.c:110: if(!(flash_prescaler--))
	mov	r7,_ISR_PCA_flash_prescaler_1_149
	dec	_ISR_PCA_flash_prescaler_1_149
	mov	a,r7
	jnz	00108$
;	../display.c:111: flash_prescaler = 0x10;
	mov	_ISR_PCA_flash_prescaler_1_149,#0x10
00108$:
;	../display.c:112: display_index = 0x04;
	mov	_display_index,#0x04
00110$:
;	../display.c:114: display_index--;			//Decrement display index
	dec	_display_index
;	../display.c:116: return;
00115$:
	pop	psw
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
