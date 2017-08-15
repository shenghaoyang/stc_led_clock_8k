;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9959 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _fsm_home_fn
	.globl _button_read_and_clear_select
	.globl _button_read_and_clear_menu
	.globl _ds1302_power_loss_reset
	.globl _ds1302_check_SRAM
	.globl _ds1302_read_SRAM
	.globl _ds1302_reset
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
	.globl _alarms
	.globl _fsm_home_auto
	.globl _BUTTON_DATA_SELECT_HELD_DOWN
	.globl _BUTTON_DATA_SELECT_RELEASED_LONGP
	.globl _BUTTON_DATA_SELECT_RELEASED_NORMAL
	.globl _BUTTON_DATA_SELECT_PRESSED
	.globl _BUTTON_DATA_MENU_HELD_DOWN
	.globl _BUTTON_DATA_MENU_RELEASED_LONGP
	.globl _BUTTON_DATA_MENU_RELEASED_NORMAL
	.globl _BUTTON_DATA_MENU_PRESSED
	.globl _display_autobrightness
	.globl _DS1302_DATA_7
	.globl _DS1302_DATA_6
	.globl _DS1302_DATA_5
	.globl _DS1302_DATA_4
	.globl _DS1302_DATA_3
	.globl _DS1302_DATA_2
	.globl _DS1302_DATA_1
	.globl _DS1302_DATA_0
	.globl _BUTTON_DATA
	.globl _DS1302_DATA
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
_BUTTON_DATA	=	0x0022
_main_fsm_runstate_1_170:
	.ds 1
_main_ticks_now_4_199:
	.ds 2
_main_ticks_now_5_205:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_BUTTON_DATA_MENU_PRESSED	=	0x0010
_BUTTON_DATA_MENU_RELEASED_NORMAL	=	0x0011
_BUTTON_DATA_MENU_RELEASED_LONGP	=	0x0012
_BUTTON_DATA_MENU_HELD_DOWN	=	0x0013
_BUTTON_DATA_SELECT_PRESSED	=	0x0014
_BUTTON_DATA_SELECT_RELEASED_NORMAL	=	0x0015
_BUTTON_DATA_SELECT_RELEASED_LONGP	=	0x0016
_BUTTON_DATA_SELECT_HELD_DOWN	=	0x0017
_fsm_home_auto	=	0x001e
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_alarms	=	0x0004
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_ISR_T0
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_ADC
	.ds	5
	reti
	.ds	7
	ljmp	_ISR_PCA
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_T2
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;fsm_curstate              Allocated to registers r7 
;fsm_fp                    Allocated to registers r5 r6 
;fsm_runstate              Allocated with name '_main_fsm_runstate_1_170'
;__00020024                Allocated to registers 
;index                     Allocated to registers 
;__00020042                Allocated to registers 
;cs                        Allocated to registers 
;ticks_now                 Allocated with name '_main_ticks_now_4_199'
;__00030045                Allocated to registers 
;cs                        Allocated to registers 
;ticks_now                 Allocated with name '_main_ticks_now_5_205'
;------------------------------------------------------------
;	../main.c:15: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	../main.c:18: enum fsm_states_highlevel fsm_curstate = fsm_home;
	mov	r7,#0x00
;	../main.c:19: enum fsm_return (*fsm_fp)(void) = fsm_home_fn;
	mov	r5,#_fsm_home_fn
	mov	r6,#(_fsm_home_fn >> 8)
;	/home/shenghao/workspace/TESTMCS51/alarm.h:167: INT_IE2 &= 0xfb;	//TMR2 Interrupt disabled
	anl	_INT_IE2,#0xfb
;	/home/shenghao/workspace/TESTMCS51/alarm.h:168: AUXR &= 0xe2;		//TMR2: 12T, STOP, TIMER, NOT BAUD GENERATOR
	anl	_AUXR,#0xe2
;	/home/shenghao/workspace/TESTMCS51/alarm.h:169: TMR_T2 = 0x102a;	//TMR2 Starts from 0x0fd7, overflow rate at 12T is ~30Hz
	mov	((_TMR_T2 >> 0) & 0xFF),#0x2a
	mov	((_TMR_T2 >> 8) & 0xFF),#0x10
;	/home/shenghao/workspace/TESTMCS51/alarm.h:170: AUXR |= 0x10;		//TMR2: RUN
	orl	_AUXR,#0x10
;	../main.c:25: ALARM_BUZZER = 0;
;	assignBit
	clr	_PORT_P1_5
;	/home/shenghao/workspace/TESTMCS51/adc.h:44: | (0x01 << ADC_THERMISTOR_PIN));		//Set both thermistor and LDR input pins as High-Z
	orl	_PORT_P1M1,#0xc0
;	/home/shenghao/workspace/TESTMCS51/adc.h:46: | (0x01 << ADC_THERMISTOR_PIN));		//Set both thermistor and LDR input pins as ADC input pins, block digital functions
	orl	_ADC_P1ASF,#0xc0
;	/home/shenghao/workspace/TESTMCS51/adc.h:47: ADC_CONTR = 0x80;		//Turn on the ADC power and set the ADC speed to min
	mov	_ADC_CONTR,#0x80
;	/home/shenghao/workspace/TESTMCS51/adc.h:48: PCON2	  |= 0x20;		//Sets up the ADC to return a right justified result
	orl	_PCON2,#0x20
;	/home/shenghao/workspace/TESTMCS51/adc.h:49: ADC_RES = 0x0000;		//Clear the ADC result
	clr	a
	mov	((_ADC_RES >> 0) & 0xFF),a
	mov	((_ADC_RES >> 8) & 0xFF),a
;	/home/shenghao/workspace/TESTMCS51/adc.h:50: INT_IE_EADC = 1;		//Enable ADC interrupt
;	assignBit
	setb	_INT_IE_EADC
;	/home/shenghao/workspace/TESTMCS51/adc.h:60: __endasm; 					 //Wait for ADC power on
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/adc.h:61: ADC_CONTR = ADC_SETUP_LDR;   //Write initial trigger source so that timer interrupt triggers another ADC conversion
	mov	_ADC_CONTR,#0xe6
;	/home/shenghao/workspace/TESTMCS51/timer.h:26: TMR_TMOD = 0x00; //Set Timer 0 as 16-bit auto reload TC
	mov	_TMR_TMOD,#0x00
;	/home/shenghao/workspace/TESTMCS51/timer.h:27: TMR_T0 = 0xb800; //Set Initial value for Timer 0 auto reload
	mov	((_TMR_T0 >> 0) & 0xFF),#0x00
	mov	((_TMR_T0 >> 8) & 0xFF),#0xb8
;	/home/shenghao/workspace/TESTMCS51/timer.h:28: TMR_TCON = 0x00; //Reset timer TCON
	mov	_TMR_TCON,#0x00
;	/home/shenghao/workspace/TESTMCS51/timer.h:29: AUXR &= 0b01111111; //Set Timer 0 to count up once every 12 ticks
	anl	_AUXR,#0x7f
;	/home/shenghao/workspace/TESTMCS51/timer.h:30: INT_IE_ET0 = 1;  //Enable timer 0 interrupt
;	assignBit
	setb	_INT_IE_ET0
;	/home/shenghao/workspace/TESTMCS51/timer.h:31: TMR_TCON_TR0 = 1;//Run timer 0 and start 100Hz ticks
;	assignBit
	setb	_TMR_TCON_TR0
;	/home/shenghao/workspace/TESTMCS51/board_config.h:65: PORT_P2M1 = 0xff; //Configure display port for open-drain operation mode
	mov	_PORT_P2M1,#0xff
;	/home/shenghao/workspace/TESTMCS51/board_config.h:66: PORT_P2M0 = 0xff; //Set the mode register 0 first to transition through high-z mode instead of push-pull mode
	mov	_PORT_P2M0,#0xff
;	/home/shenghao/workspace/TESTMCS51/display.h:78: PCA_CMOD = 0x09; //Run at SysClk, enable overflow interrupt.
	mov	_PCA_CMOD,#0x09
;	/home/shenghao/workspace/TESTMCS51/display.h:79: PCA_CCON = 0x00; //Reset the interrupt bits for the PCA
;	/home/shenghao/workspace/TESTMCS51/display.h:80: PCA_C = 0x0000;  //Reset PCA
	clr	a
	mov	_PCA_CCON,a
	mov	((_PCA_C >> 0) & 0xFF),a
	mov	((_PCA_C >> 8) & 0xFF),a
;	/home/shenghao/workspace/TESTMCS51/display.h:81: PCA_CCAP0 = display_counts; //Set module 0 compare register
	mov	((_PCA_CCAP0 >> 0) & 0xFF),_display_counts
	mov	((_PCA_CCAP0 >> 8) & 0xFF),(_display_counts + 1)
;	/home/shenghao/workspace/TESTMCS51/display.h:82: PCA_CCAPM0 = 0x49;  //Set module 0 compare mode - software timer
	mov	_PCA_CCAPM0,#0x49
;	/home/shenghao/workspace/TESTMCS51/display.h:83: PCA_CR = 1;		 //Run PCA
;	assignBit
	setb	_PCA_CR
;	/home/shenghao/workspace/TESTMCS51/display.h:84: INT_IP_PPCA = 1; //Set PCA interrupt to be high priority
;	assignBit
	setb	_INT_IP_PPCA
;	/home/shenghao/workspace/TESTMCS51/display.h:85: INT_IE_EA = 1;	 //Enable global interrupts
;	assignBit
	setb	_INT_IE_EA
;	/home/shenghao/workspace/TESTMCS51/display.h:87: PORT_P2 = display_buffer[3];
	mov	_PORT_P2,(_display_buffer + 0x0003)
;	/home/shenghao/workspace/TESTMCS51/board_config.h:46: PORT_P3 &= ~(0x04 << index);
	anl	_PORT_P3,#0xdf
;	/home/shenghao/workspace/TESTMCS51/display.h:102: display_autobrightness = 1; //Enable display automatic brightness adjust
;	assignBit
	setb	_display_autobrightness
;	/home/shenghao/workspace/TESTMCS51/button.h:58: BUTTON_MENU_STATE = 0x00;	//Reset menu button state tracker
	mov	_BUTTON_MENU_STATE,#0x00
;	/home/shenghao/workspace/TESTMCS51/button.h:59: BUTTON_SELECT_STATE = 0x00; //Reset select button state tracker
	mov	_BUTTON_SELECT_STATE,#0x00
;	/home/shenghao/workspace/TESTMCS51/button.h:60: BUTTON_DATA = 0x00;			//Reset button data state
	mov	_BUTTON_DATA,#0x00
;	/home/shenghao/workspace/TESTMCS51/button.h:61: BUTTON_MENU_CNT = 0x00;		//Reset menu counter
	mov	_BUTTON_MENU_CNT,#0x00
;	/home/shenghao/workspace/TESTMCS51/button.h:62: BUTTON_SELECT_CNT = 0x00;	//Reset select counter
	mov	_BUTTON_SELECT_CNT,#0x00
;	/home/shenghao/workspace/TESTMCS51/timer.h:19: INT_IE_ET0 = 0; //Disable timer interrupt
;	assignBit
	clr	_INT_IE_ET0
;	/home/shenghao/workspace/TESTMCS51/timer.h:20: ticks_now = ticks_10ms;
	mov	_main_ticks_now_4_199,_ticks_10ms
	mov	(_main_ticks_now_4_199 + 1),(_ticks_10ms + 1)
;	/home/shenghao/workspace/TESTMCS51/timer.h:21: INT_IE_ET0 = 1; //Enable timer interrupt
;	assignBit
	setb	_INT_IE_ET0
;	/home/shenghao/workspace/TESTMCS51/timer.h:22: while((ticks_10ms - ticks_now) < cs); //Wait
00116$:
	mov	a,_ticks_10ms
	clr	c
	subb	a,_main_ticks_now_4_199
	mov	r2,a
	mov	a,(_ticks_10ms + 1)
	subb	a,(_main_ticks_now_4_199 + 1)
	mov	r4,a
	clr	c
	mov	a,r2
	subb	a,#0xc8
	mov	a,r4
	subb	a,#0x00
	jc	00116$
;	../main.c:35: ALARM_BUZZER = 1;
;	assignBit
	setb	_PORT_P1_5
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:76: PORT_P1   &= 0xf8;
	anl	_PORT_P1,#0xf8
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:78: PORT_P1M1 |= 0x02;	//Set high-z first before set to open drain
	orl	_PORT_P1M1,#0x02
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:79: PORT_P1M0 |= 0x07;
	orl	_PORT_P1M0,#0x07
;	../main.c:38: ds1302_reset();
	push	ar7
	push	ar6
	push	ar5
	lcall	_ds1302_reset
;	../main.c:39: ds1302_read_SRAM();
	lcall	_ds1302_read_SRAM
;	../main.c:40: if(!ds1302_check_SRAM() ||
	lcall	_ds1302_check_SRAM
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00101$
;	../main.c:41: ((button_read_and_clear_menu() == BUTTON_HELD_DOWN)
	push	ar7
	push	ar6
	push	ar5
	lcall	_button_read_and_clear_menu
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r4,#0x02,00102$
;	../main.c:42: && (button_read_and_clear_select() == BUTTON_HELD_DOWN)))
	push	ar7
	push	ar6
	push	ar5
	lcall	_button_read_and_clear_select
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r4,#0x02,00102$
00101$:
;	../main.c:43: ds1302_power_loss_reset();
	push	ar7
	push	ar6
	push	ar5
	lcall	_ds1302_power_loss_reset
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	../main.c:45: display_autobrightness = 1;
;	assignBit
	setb	_display_autobrightness
;	../main.c:46: fsm_home_auto = 0;
;	assignBit
	clr	_fsm_home_auto
;	../main.c:48: while(1){
00106$:
;	../main.c:49: fsm_runstate = fsm_fp();
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	mov	_main_fsm_runstate_1_170,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	../main.c:50: fsm_fp = fsm_transition_table_fp[fsm_curstate][fsm_runstate];
	mov	a,r7
	mov	b,#0x06
	mul	ab
	add	a,#_fsm_transition_table_fp
	mov	r2,a
	mov	a,#(_fsm_transition_table_fp >> 8)
	addc	a,b
	mov	r3,a
	mov	a,_main_fsm_runstate_1_170
	add	a,_main_fsm_runstate_1_170
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
;	../main.c:51: fsm_curstate = fsm_transition_table_s[fsm_curstate][fsm_runstate];
	mov	a,r7
	mov	b,#0x03
	mul	ab
	add	a,#_fsm_transition_table_s
	mov	r3,a
	mov	a,#(_fsm_transition_table_s >> 8)
	addc	a,b
	mov	r4,a
	mov	a,_main_fsm_runstate_1_170
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	/home/shenghao/workspace/TESTMCS51/timer.h:19: INT_IE_ET0 = 0; //Disable timer interrupt
;	assignBit
	clr	_INT_IE_ET0
;	/home/shenghao/workspace/TESTMCS51/timer.h:20: ticks_now = ticks_10ms;
	mov	_main_ticks_now_5_205,_ticks_10ms
	mov	(_main_ticks_now_5_205 + 1),(_ticks_10ms + 1)
;	/home/shenghao/workspace/TESTMCS51/timer.h:21: INT_IE_ET0 = 1; //Enable timer interrupt
;	assignBit
	setb	_INT_IE_ET0
;	/home/shenghao/workspace/TESTMCS51/timer.h:22: while((ticks_10ms - ticks_now) < cs); //Wait
00121$:
	mov	a,_ticks_10ms
	clr	c
	subb	a,_main_ticks_now_5_205
	mov	r2,a
	mov	a,(_ticks_10ms + 1)
	subb	a,(_main_ticks_now_5_205 + 1)
	mov	r4,a
	clr	c
	mov	a,r2
	subb	a,#0x0a
	mov	a,r4
	subb	a,#0x00
	jc	00121$
;	../main.c:52: delay_centiseconds(10); 			//Delay 100ms, update state machine @ 10Hz
	sjmp	00106$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
