;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9959 (Linux)
;--------------------------------------------------------
	.module fsm
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fsm_transition_table_s
	.globl _fsm_transition_table_fp
	.globl _centiseconds
	.globl _adc_calibrate_LDR
	.globl _button_read_and_clear_select
	.globl _button_read_and_clear_menu
	.globl _display_puttemp
	.globl _display_putbool
	.globl _display_putdate
	.globl _display_puttime
	.globl _display_putbcd
	.globl _display_puts
	.globl _ds1302_calculate_CRC
	.globl _bcd_add_16
	.globl _bcd_add
	.globl _ds1302_write_SRAM
	.globl _ds1302_set_time
	.globl _ds1302_start
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
	.globl _transition_ticks
	.globl _alarm_lastpoll
	.globl _BUTTON_DATA
	.globl _DS1302_DATA
	.globl _fsm_home_fn
	.globl _fsm_set_fn
	.globl _fsm_alarm_fn
	.globl _fsm_config_fn
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
_alarm_lastpoll::
	.ds 1
_transition_ticks::
	.ds 2
_fsm_home_fn_curstate_1_169:
	.ds 1
_fsm_set_fn_curstate_1_245:
	.ds 1
_fsm_alarm_fn_curstate_1_257:
	.ds 1
_fsm_alarm_fn_sub_curstate_1_257:
	.ds 1
_fsm_config_fn_curstate_1_303:
	.ds 1
_fsm_config_fn_config_tmp_1_303:
	.ds 2
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'fsm_home_fn'
;------------------------------------------------------------
;__00010038                Allocated to registers 
;alarm_index               Allocated to registers r5 
;temp_cache                Allocated to registers r6 r7 
;menu_state                Allocated to registers r7 
;select_state              Allocated to registers r6 
;__00010021                Allocated to registers r4 
;__00010019                Allocated to registers r4 
;__00010017                Allocated to registers r4 
;__00010015                Allocated to registers r4 
;__00010013                Allocated to registers r4 
;__00010011                Allocated to registers r5 
;__00010009                Allocated to registers r5 
;__00040040                Allocated to registers 
;__00050041                Allocated to registers 
;__00050042                Allocated with name '(_ds1302 + 0x0005)'
;index                     Allocated to registers 
;dow                       Allocated to registers 
;__00020048                Allocated to registers 
;tmp                       Allocated to registers r6 r7 
;curstate                  Allocated with name '_fsm_home_fn_curstate_1_169'
;------------------------------------------------------------
;	../fsm.c:15: static enum fsm_states_home curstate = fsm_home_start;
	mov	_fsm_home_fn_curstate_1_169,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'fsm_set_fn'
;------------------------------------------------------------
;fsm_set_temp              Allocated to registers r5 
;menu_state                Allocated to registers r7 
;select_state              Allocated to registers r6 
;curstate                  Allocated with name '_fsm_set_fn_curstate_1_245'
;------------------------------------------------------------
;	../fsm.c:167: static enum fsm_states_set curstate = fsm_set_label; //Default display hhmm
	mov	_fsm_set_fn_curstate_1_245,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'fsm_alarm_fn'
;------------------------------------------------------------
;alarm_temp                Allocated to registers r5 
;menu_state                Allocated to registers r7 
;select_state              Allocated to registers r6 
;__00020053                Allocated to registers 
;__00030058                Allocated to registers 
;__00040059                Allocated to registers r4 
;__00040060                Allocated to registers r6 
;index                     Allocated to registers 
;dow                       Allocated to registers 
;__00040064                Allocated to registers r5 
;__00040065                Allocated to registers r6 
;index                     Allocated to registers 
;dow                       Allocated to registers 
;curstate                  Allocated with name '_fsm_alarm_fn_curstate_1_257'
;sub_curstate              Allocated with name '_fsm_alarm_fn_sub_curstate_1_257'
;------------------------------------------------------------
;	../fsm.c:263: static enum fsm_states_alarm curstate = fsm_alarm_label;
	mov	_fsm_alarm_fn_curstate_1_257,#0x00
;	../fsm.c:264: static enum fsm_substates_alarm sub_curstate = fsm_alarm_substate_toggle;
	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'fsm_config_fn'
;------------------------------------------------------------
;config_tmp2               Allocated to registers r4 r5 
;menu_state                Allocated to registers r7 
;select_state              Allocated to registers r6 
;__00020071                Allocated to registers 
;__00040067                Allocated to registers 
;tmp                       Allocated to registers r4 r5 
;__00040069                Allocated to registers 
;tmp                       Allocated to registers r4 r5 
;tmp                       Allocated to registers r4 r5 
;curstate                  Allocated with name '_fsm_config_fn_curstate_1_303'
;config_tmp                Allocated with name '_fsm_config_fn_config_tmp_1_303'
;------------------------------------------------------------
;	../fsm.c:397: static enum fsm_states_config curstate = fsm_config_label;
	mov	_fsm_config_fn_curstate_1_303,#0x00
;	../fsm.c:11: uint8_t alarm_lastpoll = 0;					  ///< Time alarm was last polled (minutes)
	mov	_alarm_lastpoll,#0x00
;	../fsm.c:12: uint16_t transition_ticks = 0;				  ///< 10ms timer ticks at last transition
	clr	a
	mov	_transition_ticks,a
	mov	(_transition_ticks + 1),a
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
;Allocation info for local variables in function 'fsm_home_fn'
;------------------------------------------------------------
;__00010038                Allocated to registers 
;alarm_index               Allocated to registers r5 
;temp_cache                Allocated to registers r6 r7 
;menu_state                Allocated to registers r7 
;select_state              Allocated to registers r6 
;__00010021                Allocated to registers r4 
;__00010019                Allocated to registers r4 
;__00010017                Allocated to registers r4 
;__00010015                Allocated to registers r4 
;__00010013                Allocated to registers r4 
;__00010011                Allocated to registers r5 
;__00010009                Allocated to registers r5 
;__00040040                Allocated to registers 
;__00050041                Allocated to registers 
;__00050042                Allocated with name '(_ds1302 + 0x0005)'
;index                     Allocated to registers 
;dow                       Allocated to registers 
;__00020048                Allocated to registers 
;tmp                       Allocated to registers r6 r7 
;curstate                  Allocated with name '_fsm_home_fn_curstate_1_169'
;------------------------------------------------------------
;	../fsm.c:14: enum fsm_return fsm_home_fn() __reentrant {
;	-----------------------------------------
;	 function fsm_home_fn
;	-----------------------------------------
_fsm_home_fn:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../fsm.c:21: menu_state = button_read_and_clear_menu();
	lcall	_button_read_and_clear_menu
	mov	r7,dpl
;	../fsm.c:22: select_state = button_read_and_clear_select();
	push	ar7
	lcall	_button_read_and_clear_select
	mov	r6,dpl
	pop	ar7
;	../fsm.c:24: if(curstate != fsm_home_alarm){
	mov	a,#0x07
	cjne	a,_fsm_home_fn_curstate_1_169,00276$
	ljmp	00134$
00276$:
;	../fsm.c:25: if((menu_state == BUTTON_LONG_PRESSED) && (select_state == BUTTON_LONG_PRESSED)){
	cjne	r7,#0x01,00277$
	mov	a,r7
	sjmp	00278$
00277$:
	clr	a
00278$:
	mov	r5,a
	jz	00102$
	cjne	r6,#0x01,00102$
;	../fsm.c:27: curstate = fsm_home_start; //Reset state back to default
	mov	_fsm_home_fn_curstate_1_169,#0x00
;	../fsm.c:28: return fsm_ok; //Return OK to transition to configuration mode
	mov	dpl,#0x00
	ret
00102$:
;	../fsm.c:32: if(menu_state == BUTTON_PRESSED){
	mov	a,r7
	jnz	00107$
;	../fsm.c:34: transition_ticks = centiseconds();
	push	ar7
	push	ar6
	push	ar5
	lcall	_centiseconds
	mov	_transition_ticks,dpl
	mov	(_transition_ticks + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
;	../fsm.c:35: fsm_home_auto = 0;
;	assignBit
	clr	_fsm_home_auto
;	../fsm.c:36: if(++curstate == fsm_home_end)
	inc	_fsm_home_fn_curstate_1_169
	mov	a,#0x06
	cjne	a,_fsm_home_fn_curstate_1_169,00107$
;	../fsm.c:37: curstate = fsm_home_start;
	mov	_fsm_home_fn_curstate_1_169,#0x00
00107$:
;	../fsm.c:40: if(menu_state == BUTTON_LONG_PRESSED){
	mov	a,r5
	jz	00109$
;	../fsm.c:42: transition_ticks = centiseconds();
	push	ar7
	push	ar6
	lcall	_centiseconds
	mov	_transition_ticks,dpl
	mov	(_transition_ticks + 1),dph
	pop	ar6
	pop	ar7
;	../fsm.c:43: fsm_home_auto = 0;
;	assignBit
	clr	_fsm_home_auto
;	../fsm.c:44: curstate = fsm_home_start;
	mov	_fsm_home_fn_curstate_1_169,#0x00
00109$:
;	../fsm.c:47: if(select_state == BUTTON_PRESSED){
	mov	a,r6
	jnz	00114$
;	../fsm.c:48: if(display_autobrightness){
;	../fsm.c:49: display_autobrightness = 0;
;	assignBit
	jbc	_display_autobrightness,00287$
	sjmp	00111$
00287$:
;	../fsm.c:50: INT_IE_EA = 0;
;	assignBit
	clr	_INT_IE_EA
;	../fsm.c:51: display_counts = DISPLAY_COUNTS_MAX;
	mov	_display_counts,#0x00
	mov	(_display_counts + 1),#0xea
;	../fsm.c:52: INT_IE_EA = 1;
;	assignBit
	setb	_INT_IE_EA
	sjmp	00114$
00111$:
;	../fsm.c:54: display_autobrightness = 1;
;	assignBit
	setb	_display_autobrightness
00114$:
;	../fsm.c:58: if(curstate != fsm_home_start) {
	mov	a,_fsm_home_fn_curstate_1_169
	jnz	00288$
	ljmp	00131$
00288$:
;	../fsm.c:59: if(fsm_home_auto){
	jnb	_fsm_home_auto,00126$
;	../fsm.c:61: if((centiseconds() - transition_ticks) > FSM_HOME_AUTO_SCROLL_TICKS){
	push	ar7
	push	ar6
	lcall	_centiseconds
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	clr	c
	subb	a,_transition_ticks
	mov	r4,a
	mov	a,b
	subb	a,(_transition_ticks + 1)
	mov	r5,a
	clr	c
	mov	a,#0xc8
	subb	a,r4
	clr	a
	subb	a,r5
	jc	00290$
	ljmp	00134$
00290$:
;	../fsm.c:64: while(++curstate != fsm_home_end){
00118$:
	inc	_fsm_home_fn_curstate_1_169
	mov	a,#0x06
	cjne	a,_fsm_home_fn_curstate_1_169,00291$
	sjmp	00120$
00291$:
;	../fsm.c:65: if((ds1302_sram_data[0x03] >> curstate) & 0x01){
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	mov	r5,a
	mov	b,_fsm_home_fn_curstate_1_169
	inc	b
	mov	a,r5
	sjmp	00293$
00292$:
	clr	c
	rrc	a
00293$:
	djnz	b,00292$
	jnb	acc.0,00118$
;	../fsm.c:67: transition_ticks = centiseconds();
	lcall	_centiseconds
	mov	_transition_ticks,dpl
	mov	(_transition_ticks + 1),dph
;	../fsm.c:68: return fsm_repeat;
	mov	dpl,#0x01
	ret
00120$:
;	../fsm.c:72: transition_ticks = centiseconds();
	push	ar7
	push	ar6
	lcall	_centiseconds
	mov	_transition_ticks,dpl
	mov	(_transition_ticks + 1),dph
	pop	ar6
	pop	ar7
;	../fsm.c:73: fsm_home_auto = 0;
;	assignBit
	clr	_fsm_home_auto
;	../fsm.c:74: curstate = fsm_home_start;
	mov	_fsm_home_fn_curstate_1_169,#0x00
	sjmp	00134$
00126$:
;	../fsm.c:78: if(((centiseconds() - transition_ticks) > FSM_HOME_RESET_TICKS)) {
	push	ar7
	push	ar6
	lcall	_centiseconds
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	clr	c
	subb	a,_transition_ticks
	mov	r4,a
	mov	a,b
	subb	a,(_transition_ticks + 1)
	mov	r5,a
	clr	c
	mov	a,#0xe8
	subb	a,r4
	mov	a,#0x03
	subb	a,r5
	jnc	00134$
;	../fsm.c:80: transition_ticks = centiseconds();
	push	ar7
	push	ar6
	lcall	_centiseconds
	mov	_transition_ticks,dpl
	mov	(_transition_ticks + 1),dph
	pop	ar6
	pop	ar7
;	../fsm.c:81: curstate = fsm_home_start;
	mov	_fsm_home_fn_curstate_1_169,#0x00
	sjmp	00134$
00131$:
;	../fsm.c:88: if((centiseconds() - transition_ticks) > FSM_HOME_AUTO_ENABLE_TICKS) {
	push	ar7
	push	ar6
	lcall	_centiseconds
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	clr	c
	subb	a,_transition_ticks
	mov	r4,a
	mov	a,b
	subb	a,(_transition_ticks + 1)
	mov	r5,a
	clr	c
	mov	a,#0xe8
	subb	a,r4
	mov	a,#0x03
	subb	a,r5
	jnc	00134$
;	../fsm.c:90: fsm_home_auto = 1;
;	assignBit
	setb	_fsm_home_auto
;	../fsm.c:91: goto find_auto_target;
	ljmp	00118$
00134$:
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:352: ds1302_start(0xbf); //Start clock burst read
	mov	dpl,#0xbf
	push	ar7
	push	ar6
	lcall	_ds1302_start
	pop	ar6
	pop	ar7
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:353: ds1302.seconds = ds1302_read_byte(); //Read in seconds register
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
;	assignBit
	setb	_PORT_P1_1
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_0,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_1,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_2,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_3,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_4,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_5,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_6,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_7,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
	mov	r5,_DS1302_DATA
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:353: ds1302.seconds = ds1302_read_byte(); //Read in seconds register
	mov	_ds1302,r5
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:354: ds1302.minutes = ds1302_read_byte(); //Read in minutes register
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
;	assignBit
	setb	_PORT_P1_1
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_0,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_1,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_2,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_3,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_4,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_5,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_6,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_7,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
	mov	r5,_DS1302_DATA
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:354: ds1302.minutes = ds1302_read_byte(); //Read in minutes register
	mov	(_ds1302 + 0x0001),r5
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:355: ds1302.hour    = ds1302_read_byte(); //Read in hours register
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
;	assignBit
	setb	_PORT_P1_1
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_0,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_1,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_2,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_3,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_4,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_5,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_6,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_7,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
	mov	r4,_DS1302_DATA
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:355: ds1302.hour    = ds1302_read_byte(); //Read in hours register
	mov	(_ds1302 + 0x0002),r4
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:356: ds1302.date    = ds1302_read_byte(); //Read in date register
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
;	assignBit
	setb	_PORT_P1_1
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_0,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_1,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_2,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_3,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_4,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_5,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_6,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_7,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
	mov	r4,_DS1302_DATA
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:356: ds1302.date    = ds1302_read_byte(); //Read in date register
	mov	(_ds1302 + 0x0003),r4
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:357: ds1302.month   = ds1302_read_byte(); //Read in month register
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
;	assignBit
	setb	_PORT_P1_1
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_0,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_1,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_2,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_3,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_4,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_5,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_6,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_7,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
	mov	r4,_DS1302_DATA
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:357: ds1302.month   = ds1302_read_byte(); //Read in month register
	mov	(_ds1302 + 0x0004),r4
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:358: ds1302.day 	   = ds1302_read_byte(); //Read in day of week register
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
;	assignBit
	setb	_PORT_P1_1
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_0,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_1,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_2,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_3,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_4,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_5,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_6,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_7,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
	mov	r4,_DS1302_DATA
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:358: ds1302.day 	   = ds1302_read_byte(); //Read in day of week register
	mov	(_ds1302 + 0x0005),r4
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:359: ds1302.year    = ds1302_read_byte(); //Read in year register
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
;	assignBit
	setb	_PORT_P1_1
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_0,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_1,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_2,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_3,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_4,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_5,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_6,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
;	assignBit
	mov	c,_PORT_P1_1
	mov	_DS1302_DATA_7,c
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
;	assignBit
	setb	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
	nop
	nop
	nop
	nop
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
;	assignBit
	clr	_PORT_P1_2
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
	mov	r4,_DS1302_DATA
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:359: ds1302.year    = ds1302_read_byte(); //Read in year register
	mov	(_ds1302 + 0x0006),r4
;	/home/shenghao/workspace/TESTMCS51/ds1302.h:322: DS1302_CE = 0; //Drop CE to end communication.
;	assignBit
	clr	_PORT_P1_0
;	../fsm.c:100: if((alarm_lastpoll != ds1302.minutes) && alarm_global_state()){
	mov	a,r5
	cjne	a,_alarm_lastpoll,00297$
	ljmp	00143$
00297$:
;	/home/shenghao/workspace/TESTMCS51/alarm.h:84: return (ds1302_sram_data[3] & 0x01);
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	mov	r5,a
	jb	acc.0,00298$
	ljmp	00143$
00298$:
;	../fsm.c:100: if((alarm_lastpoll != ds1302.minutes) && alarm_global_state()){
;	../fsm.c:116: alarm_lastpoll = ds1302.minutes;
	mov	r5,#0x00
00182$:
;	../fsm.c:102: for(;alarm_index < NUM_ALARMS;alarm_index++){
	cjne	r5,#0x07,00299$
00299$:
	jc	00300$
	ljmp	00141$
00300$:
;	../fsm.c:103: if(alarm_dow_state(alarm_index,ds1302.day) && (
	push	ar6
;	/home/shenghao/workspace/TESTMCS51/alarm.h:106: return ((alarms[index].dow_and_enable >> dow) & 0x01);
	mov	a,r5
	mov	b,#0x03
	mul	ab
	mov	r3,a
	mov	r4,b
	add	a,#_alarms
	mov	r2,a
	mov	a,r4
	addc	a,#(_alarms >> 8)
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	b,(_ds1302 + 0x0005)
	inc	b
	mov	a,r6
	sjmp	00302$
00301$:
	clr	c
	rrc	a
00302$:
	djnz	b,00301$
	pop	ar6
	jnb	acc.0,00183$
;	../fsm.c:103: if(alarm_dow_state(alarm_index,ds1302.day) && (
;	../fsm.c:104: alarms[alarm_index].dow_and_enable & 0x01)){
	push	ar6
	mov	a,r3
	add	a,#_alarms
	mov	r2,a
	mov	a,r4
	addc	a,#(_alarms >> 8)
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	pop	ar6
	jnb	acc.0,00183$
;	../fsm.c:105: if((alarms[alarm_index].hour == ds1302.hour) &&
	mov	a,r3
	add	a,#_alarms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_alarms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	a,(_ds1302 + 0x0002),00183$
;	../fsm.c:106: (alarms[alarm_index].minute == ds1302.minutes)){
	mov	a,r3
	add	a,#_alarms
	mov	r3,a
	mov	a,r4
	addc	a,#(_alarms >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	a,(_ds1302 + 0x0001),00183$
;	/home/shenghao/workspace/TESTMCS51/alarm.h:130: INT_IE2 &= 0xfb;
	anl	_INT_IE2,#0xfb
;	/home/shenghao/workspace/TESTMCS51/alarm.h:131: alarm_counter = 0x00;
	clr	a
	mov	_alarm_counter,a
	mov	(_alarm_counter + 1),a
;	/home/shenghao/workspace/TESTMCS51/alarm.h:132: INT_IE2 |= 0x04;
	orl	_INT_IE2,#0x04
;	../fsm.c:108: display_autobrightness = 0;
;	assignBit
	clr	_display_autobrightness
;	../fsm.c:109: INT_IE_EA = 0;
;	assignBit
	clr	_INT_IE_EA
;	../fsm.c:110: display_counts = DISPLAY_COUNTS_MAX;
	mov	_display_counts,#0x00
	mov	(_display_counts + 1),#0xea
;	../fsm.c:111: INT_IE_EA = 1;
;	assignBit
	setb	_INT_IE_EA
;	../fsm.c:112: curstate = fsm_home_alarm;
	mov	_fsm_home_fn_curstate_1_169,#0x07
00183$:
;	../fsm.c:102: for(;alarm_index < NUM_ALARMS;alarm_index++){
	inc	r5
	ljmp	00182$
00141$:
;	../fsm.c:116: alarm_lastpoll = ds1302.minutes;
	mov	_alarm_lastpoll,(_ds1302 + 0x0001)
00143$:
;	../fsm.c:119: switch(curstate) {
	mov	a,_fsm_home_fn_curstate_1_169
	add	a,#0xff - 0x07
	jnc	00309$
	ljmp	00163$
00309$:
	mov	a,_fsm_home_fn_curstate_1_169
	add	a,#(00310$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_fsm_home_fn_curstate_1_169
	add	a,#(00311$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00310$:
	.db	00146$
	.db	00154$
	.db	00157$
	.db	00160$
	.db	00161$
	.db	00162$
	.db	00163$
	.db	00146$
00311$:
	.db	00146$>>8
	.db	00154$>>8
	.db	00157$>>8
	.db	00160$>>8
	.db	00161$>>8
	.db	00162$>>8
	.db	00163$>>8
	.db	00146$>>8
;	../fsm.c:121: case fsm_home_time:
00146$:
;	../fsm.c:123: if(curstate == fsm_home_alarm){
	mov	a,#0x07
	cjne	a,_fsm_home_fn_curstate_1_169,00151$
;	../fsm.c:124: display_flash = 0x0f;
	mov	_display_flash,#0x0f
;	../fsm.c:125: if((menu_state == BUTTON_LONG_PRESSED) && (select_state == BUTTON_LONG_PRESSED)){
	cjne	r7,#0x01,00151$
	cjne	r6,#0x01,00151$
;	../fsm.c:126: display_flash = 0x00;
	mov	_display_flash,#0x00
;	/home/shenghao/workspace/TESTMCS51/alarm.h:149: INT_IE2 &= 0xfb;
	anl	_INT_IE2,#0xfb
;	/home/shenghao/workspace/TESTMCS51/alarm.h:150: INT_IE_EA = 0;
;	assignBit
	clr	_INT_IE_EA
;	/home/shenghao/workspace/TESTMCS51/alarm.h:151: ALARM_BUZZER_DRIVE_INACTIVE();
;	assignBit
	setb	_PORT_P1_5
;	/home/shenghao/workspace/TESTMCS51/alarm.h:152: INT_IE_EA = 1;
;	assignBit
	setb	_INT_IE_EA
;	../fsm.c:128: display_autobrightness = 1;
;	assignBit
	setb	_display_autobrightness
;	../fsm.c:129: curstate = fsm_home_start; //Reset state back to default
	mov	_fsm_home_fn_curstate_1_169,#0x00
00151$:
;	../fsm.c:132: display_puttime(ds1302.hour,ds1302.minutes);
	mov	dpl,(_ds1302 + 0x0002)
	mov	_display_puttime_PARM_2,(_ds1302 + 0x0001)
	lcall	_display_puttime
;	../fsm.c:133: if(ds1302.seconds % 2)
	mov	a,_ds1302
	jb	acc.0,00318$
	ljmp	00163$
00318$:
;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0002)
	mov	(_display_buffer + 0x0002),a
;	../fsm.c:135: break;
	ljmp	00163$
;	../fsm.c:136: case fsm_home_mmss:
00154$:
;	../fsm.c:138: display_putbcd(ds1302.minutes,ds1302.seconds);
	mov	dpl,(_ds1302 + 0x0001)
	mov	_display_putbcd_PARM_2,_ds1302
	lcall	_display_putbcd
;	../fsm.c:139: if(ds1302.seconds % 2)
	mov	a,_ds1302
	jb	acc.0,00319$
	ljmp	00163$
00319$:
;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0002)
	mov	(_display_buffer + 0x0002),a
;	../fsm.c:141: break;
	ljmp	00163$
;	../fsm.c:142: case fsm_home_temp:
00157$:
;	../fsm.c:143: temp_cache = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
;	/home/shenghao/workspace/TESTMCS51/adc.h:147: INT_IE_EADC = 0;				//Disable ADC interrupt
;	assignBit
	clr	_INT_IE_EADC
;	/home/shenghao/workspace/TESTMCS51/adc.h:148: tmp = adc_thermistor_reading;	//Store temporary result
	mov	r6,_adc_thermistor_reading
	mov	r7,(_adc_thermistor_reading + 1)
;	/home/shenghao/workspace/TESTMCS51/adc.h:149: INT_IE_EADC = 1;				//Enable ADC interrupt
;	assignBit
	setb	_INT_IE_EADC
;	../fsm.c:143: temp_cache = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	dpl,r6
	mov	a,#(_EEPROM_TEMP_FROM_THERMISTOR_TABLE >> 8)
	add	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	../fsm.c:144: temp_cache = bcd_add_16(temp_cache,(ds1302_sram_data[DS1302_BBSRAM_SIZE-2] |
	mov	dptr,#(_ds1302_sram_data + 0x001d)
	movx	a,@dptr
	mov	r5,a
;	../fsm.c:145: (ds1302_sram_data[DS1302_BBSRAM_SIZE-1] << 0x08)));
	mov	dptr,#(_ds1302_sram_data + 0x001e)
	movx	a,@dptr
	mov	r3,a
	clr	a
	mov	r2,a
	orl	a,r5
	mov	_bcd_add_16_PARM_2,a
	mov	a,r3
	orl	a,r2
	mov	(_bcd_add_16_PARM_2 + 1),a
	mov	dpl,r6
	mov	dph,r7
	lcall	_bcd_add_16
	mov	r4,dpl
	mov	r5,dph
	mov	ar6,r4
	mov	ar7,r5
;	../fsm.c:146: if(temp_cache > 0x0999)
	clr	c
	mov	a,#0x99
	subb	a,r6
	mov	a,#0x09
	subb	a,r7
	jnc	00159$
;	../fsm.c:147: temp_cache = 0x0999;
	mov	r6,#0x99
	mov	r7,#0x09
00159$:
;	../fsm.c:148: display_puttemp(temp_cache);
	mov	dpl,r6
	mov	dph,r7
	lcall	_display_puttemp
;	/home/shenghao/workspace/TESTMCS51/display.h:146: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	../fsm.c:150: break;
;	../fsm.c:151: case fsm_home_dow:
	sjmp	00163$
00160$:
;	../fsm.c:152: display_puts(ledstrings[ds1302.day-1]);
	mov	r6,(_ds1302 + 0x0005)
	mov	r7,#0x00
	mov	a,r6
	add	a,#0xff
	mov	__mulint_PARM_2,a
	mov	a,r7
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_ledstrings
	mov	dpl,a
	mov	a,r7
	addc	a,#(_ledstrings >> 8)
	mov	dph,a
	lcall	_display_puts
;	../fsm.c:153: break;
;	../fsm.c:154: case fsm_home_date:
	sjmp	00163$
00161$:
;	../fsm.c:155: display_putdate();
	lcall	_display_putdate
;	../fsm.c:156: break;
;	../fsm.c:157: case fsm_home_yyyy:
	sjmp	00163$
00162$:
;	../fsm.c:159: display_putbcd(0x20,ds1302.year);
	mov	_display_putbcd_PARM_2,(_ds1302 + 0x0006)
	mov	dpl,#0x20
	lcall	_display_putbcd
;	../fsm.c:161: }
00163$:
;	../fsm.c:163: return fsm_repeat;	//Return repeat so we come back to this state.
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fsm_set_fn'
;------------------------------------------------------------
;fsm_set_temp              Allocated to registers r5 
;menu_state                Allocated to registers r7 
;select_state              Allocated to registers r6 
;curstate                  Allocated with name '_fsm_set_fn_curstate_1_245'
;------------------------------------------------------------
;	../fsm.c:166: enum fsm_return fsm_set_fn() __reentrant {
;	-----------------------------------------
;	 function fsm_set_fn
;	-----------------------------------------
_fsm_set_fn:
;	../fsm.c:172: menu_state = button_read_and_clear_menu();
	lcall	_button_read_and_clear_menu
	mov	r7,dpl
;	../fsm.c:173: select_state = button_read_and_clear_select();
	push	ar7
	lcall	_button_read_and_clear_select
	mov	r6,dpl
	pop	ar7
;	../fsm.c:175: if(curstate != fsm_set_label){
	mov	a,_fsm_set_fn_curstate_1_245
	jz	00108$
;	../fsm.c:176: if(menu_state == BUTTON_LONG_PRESSED){
	cjne	r7,#0x01,00102$
;	../fsm.c:178: display_flash = 0x00;
	mov	_display_flash,#0x00
;	../fsm.c:179: ds1302_set_time();		  //Set new time
	lcall	_ds1302_set_time
;	../fsm.c:180: alarm_lastpoll = 0x60;	  //Reset last poll time, force compare
	mov	_alarm_lastpoll,#0x60
;	../fsm.c:181: curstate = fsm_set_label; //Set state back to default
	mov	_fsm_set_fn_curstate_1_245,#0x00
;	../fsm.c:182: return fsm_ok;
	mov	dpl,#0x00
	ret
00102$:
;	../fsm.c:184: if(menu_state == BUTTON_PRESSED){
	mov	a,r7
	jnz	00108$
;	../fsm.c:186: if(++curstate == fsm_set_end)
	inc	_fsm_set_fn_curstate_1_245
	mov	a,#0x07
	cjne	a,_fsm_set_fn_curstate_1_245,00108$
;	../fsm.c:187: curstate = fsm_set_start;
	mov	_fsm_set_fn_curstate_1_245,#0x01
00108$:
;	../fsm.c:191: fsm_set_temp = 0;
	mov	r5,#0x00
;	../fsm.c:192: if((select_state == BUTTON_PRESSED) || (select_state == BUTTON_HELD_DOWN))
	mov	a,r6
	jz	00109$
	cjne	r6,#0x02,00110$
00109$:
;	../fsm.c:193: fsm_set_temp = 1;
	mov	r5,#0x01
00110$:
;	../fsm.c:196: switch(curstate) {
	mov	a,_fsm_set_fn_curstate_1_245
	add	a,#0xff - 0x06
	jnc	00222$
	ljmp	00149$
00222$:
	mov	a,_fsm_set_fn_curstate_1_245
	mov	b,#0x03
	mul	ab
	mov	dptr,#00223$
	jmp	@a+dptr
00223$:
	ljmp	00112$
	ljmp	00118$
	ljmp	00118$
	ljmp	00128$
	ljmp	00128$
	ljmp	00143$
	ljmp	00146$
;	../fsm.c:197: case fsm_set_label:
00112$:
;	../fsm.c:198: if(select_state == BUTTON_PRESSED)
	mov	a,r6
	jnz	00114$
;	../fsm.c:199: curstate++;
	inc	_fsm_set_fn_curstate_1_245
00114$:
;	../fsm.c:200: if(menu_state == BUTTON_PRESSED)
	mov	a,r7
	jnz	00116$
;	../fsm.c:201: return fsm_fail;
	mov	dpl,#0x02
	ret
00116$:
;	../fsm.c:202: display_puts(ledstrings[ledstrings_setc]);
	mov	dptr,#(_ledstrings + 0x0023)
	lcall	_display_puts
;	../fsm.c:203: break;
	ljmp	00149$
;	../fsm.c:205: case fsm_set_mm:
00118$:
;	../fsm.c:206: if(curstate == fsm_set_hh){
	mov	a,#0x01
	cjne	a,_fsm_set_fn_curstate_1_245,00122$
;	../fsm.c:207: ds1302.hour = bcd_add(ds1302.hour,fsm_set_temp);
	mov	_bcd_add_PARM_2,r5
	mov	dpl,(_ds1302 + 0x0002)
	push	ar5
	lcall	_bcd_add
	mov	r7,dpl
	pop	ar5
;	../fsm.c:208: if(ds1302.hour > 0x23)
	mov	a,r7
	mov	(_ds1302 + 0x0002),a
	add	a,#0xff - 0x23
	jnc	00120$
;	../fsm.c:209: ds1302.hour = 0x00;
	mov	(_ds1302 + 0x0002),#0x00
00120$:
;	../fsm.c:210: display_flash = 0x03;
	mov	_display_flash,#0x03
00122$:
;	../fsm.c:212: if(curstate == fsm_set_mm){
	mov	a,#0x02
	cjne	a,_fsm_set_fn_curstate_1_245,00126$
;	../fsm.c:213: ds1302.minutes = bcd_add(ds1302.minutes,fsm_set_temp);
	mov	_bcd_add_PARM_2,r5
	mov	dpl,(_ds1302 + 0x0001)
	lcall	_bcd_add
;	../fsm.c:214: if(ds1302.minutes > 0x59)
	mov	a,dpl
	mov	r7,a
	mov	(_ds1302 + 0x0001),a
	add	a,#0xff - 0x59
	jnc	00124$
;	../fsm.c:215: ds1302.minutes = 0;
	mov	(_ds1302 + 0x0001),#0x00
00124$:
;	../fsm.c:216: display_flash = 0x0c;
	mov	_display_flash,#0x0c
00126$:
;	../fsm.c:218: display_puttime(ds1302.hour,ds1302.minutes);
	mov	dpl,(_ds1302 + 0x0002)
	mov	_display_puttime_PARM_2,(_ds1302 + 0x0001)
	lcall	_display_puttime
;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0002)
	mov	(_display_buffer + 0x0002),a
;	../fsm.c:220: break;
	ljmp	00149$
;	../fsm.c:222: case fsm_set_month:
00128$:
;	../fsm.c:223: if(curstate == fsm_set_dd){
	mov	a,#0x03
	cjne	a,_fsm_set_fn_curstate_1_245,00135$
;	../fsm.c:224: ds1302.date = bcd_add(ds1302.date,fsm_set_temp);
	mov	_bcd_add_PARM_2,r5
	mov	dpl,(_ds1302 + 0x0003)
	push	ar5
	lcall	_bcd_add
	mov	r7,dpl
	pop	ar5
;	../fsm.c:225: if(ds1302.date > 0x31)
	mov	a,r7
	mov	(_ds1302 + 0x0003),a
	add	a,#0xff - 0x31
	jnc	00130$
;	../fsm.c:227: ds1302.date = 0x00;
	mov	(_ds1302 + 0x0003),#0x00
00130$:
;	../fsm.c:228: if(DATE_DISPLAY_MMDD)
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov	r7,a
	jz	00132$
;	../fsm.c:229: display_flash = 0x0c;
	mov	_display_flash,#0x0c
	sjmp	00135$
00132$:
;	../fsm.c:231: display_flash = 0x03;
	mov	_display_flash,#0x03
00135$:
;	../fsm.c:233: if(curstate == fsm_set_month){
	mov	a,#0x04
	cjne	a,_fsm_set_fn_curstate_1_245,00142$
;	../fsm.c:234: ds1302.month = bcd_add(ds1302.month,fsm_set_temp);
	mov	_bcd_add_PARM_2,r5
	mov	dpl,(_ds1302 + 0x0004)
	lcall	_bcd_add
;	../fsm.c:235: if(ds1302.month > 0x12)
	mov	a,dpl
	mov	r7,a
	mov	(_ds1302 + 0x0004),a
	add	a,#0xff - 0x12
	jnc	00137$
;	../fsm.c:236: ds1302.month = 0x00;
	mov	(_ds1302 + 0x0004),#0x00
00137$:
;	../fsm.c:237: if(DATE_DISPLAY_MMDD)
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov	r7,a
	jz	00139$
;	../fsm.c:238: display_flash = 0x03;
	mov	_display_flash,#0x03
	sjmp	00142$
00139$:
;	../fsm.c:240: display_flash = 0x0c;
	mov	_display_flash,#0x0c
00142$:
;	../fsm.c:242: display_putdate();
	lcall	_display_putdate
;	../fsm.c:243: break;
;	../fsm.c:244: case fsm_set_yyyy:
	sjmp	00149$
00143$:
;	../fsm.c:245: ds1302.year = bcd_add(ds1302.year,fsm_set_temp);
	mov	_bcd_add_PARM_2,r5
	mov	dpl,(_ds1302 + 0x0006)
	lcall	_bcd_add
;	../fsm.c:246: if(ds1302.year > 0x99)
	mov	a,dpl
	mov	r7,a
	mov	(_ds1302 + 0x0006),a
	add	a,#0xff - 0x99
	jnc	00145$
;	../fsm.c:247: ds1302.year = 0x00;
	mov	(_ds1302 + 0x0006),#0x00
00145$:
;	../fsm.c:248: display_flash = 0x0f;
	mov	_display_flash,#0x0f
;	../fsm.c:249: display_putbcd(0x20,ds1302.year);
	mov	_display_putbcd_PARM_2,(_ds1302 + 0x0006)
	mov	dpl,#0x20
	lcall	_display_putbcd
;	../fsm.c:250: break;
;	../fsm.c:251: case fsm_set_dow:
	sjmp	00149$
00146$:
;	../fsm.c:252: ds1302.day = bcd_add(ds1302.day,fsm_set_temp);
	mov	_bcd_add_PARM_2,r5
	mov	dpl,(_ds1302 + 0x0005)
	lcall	_bcd_add
;	../fsm.c:253: if(ds1302.day > 0x07)
	mov	a,dpl
	mov	r7,a
	mov	(_ds1302 + 0x0005),a
	add	a,#0xff - 0x07
	jnc	00148$
;	../fsm.c:254: ds1302.day = 0x01; //DOW register only from 0x01 - 0x07
	mov	(_ds1302 + 0x0005),#0x01
00148$:
;	../fsm.c:255: display_flash = 0x0f;
	mov	_display_flash,#0x0f
;	../fsm.c:256: display_puts(ledstrings[ds1302.day-1]);
	mov	r6,(_ds1302 + 0x0005)
	mov	r7,#0x00
	mov	a,r6
	add	a,#0xff
	mov	__mulint_PARM_2,a
	mov	a,r7
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_ledstrings
	mov	dpl,a
	mov	a,r7
	addc	a,#(_ledstrings >> 8)
	mov	dph,a
	lcall	_display_puts
;	../fsm.c:258: }
00149$:
;	../fsm.c:260: return fsm_repeat;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fsm_alarm_fn'
;------------------------------------------------------------
;alarm_temp                Allocated to registers r5 
;menu_state                Allocated to registers r7 
;select_state              Allocated to registers r6 
;__00020053                Allocated to registers 
;__00030058                Allocated to registers 
;__00040059                Allocated to registers r4 
;__00040060                Allocated to registers r6 
;index                     Allocated to registers 
;dow                       Allocated to registers 
;__00040064                Allocated to registers r5 
;__00040065                Allocated to registers r6 
;index                     Allocated to registers 
;dow                       Allocated to registers 
;curstate                  Allocated with name '_fsm_alarm_fn_curstate_1_257'
;sub_curstate              Allocated with name '_fsm_alarm_fn_sub_curstate_1_257'
;------------------------------------------------------------
;	../fsm.c:262: enum fsm_return fsm_alarm_fn() __reentrant {
;	-----------------------------------------
;	 function fsm_alarm_fn
;	-----------------------------------------
_fsm_alarm_fn:
;	../fsm.c:270: menu_state = button_read_and_clear_menu();
	lcall	_button_read_and_clear_menu
	mov	r7,dpl
;	../fsm.c:271: select_state = button_read_and_clear_select();
	push	ar7
	lcall	_button_read_and_clear_select
	mov	r6,dpl
	pop	ar7
;	../fsm.c:273: alarm_temp = 0;
	mov	r5,#0x00
;	../fsm.c:274: if(select_state == BUTTON_PRESSED || select_state == BUTTON_HELD_DOWN)
	mov	a,r6
	jz	00101$
	cjne	r6,#0x02,00102$
00101$:
;	../fsm.c:275: alarm_temp = 1;
	mov	r5,#0x01
00102$:
;	../fsm.c:277: switch(curstate) {
	clr	a
	cjne	a,_fsm_alarm_fn_curstate_1_257,00257$
	sjmp	00104$
00257$:
	mov	a,#0x01
;	../fsm.c:278: case fsm_alarm_label:
	cjne	a,_fsm_alarm_fn_curstate_1_257,00119$
	sjmp	00109$
00104$:
;	../fsm.c:279: if(menu_state == BUTTON_PRESSED)
	mov	a,r7
	jnz	00106$
;	../fsm.c:281: return fsm_fail;
	mov	dpl,#0x02
	ret
00106$:
;	../fsm.c:282: if(select_state == BUTTON_PRESSED){
	mov	a,r6
	jnz	00108$
;	../fsm.c:284: curstate++;
	inc	_fsm_alarm_fn_curstate_1_257
;	../fsm.c:285: return fsm_repeat;
	mov	dpl,#0x01
	ret
00108$:
;	../fsm.c:287: display_puts(ledstrings[ledstrings_seta]);
	mov	dptr,#(_ledstrings + 0x0028)
	lcall	_display_puts
;	../fsm.c:288: break;
	ljmp	00164$
;	../fsm.c:289: case fsm_alarm_global_toggle:
00109$:
;	../fsm.c:290: if(menu_state == BUTTON_LONG_PRESSED){
	cjne	r7,#0x01,00111$
;	../fsm.c:291: curstate = fsm_alarm_label;
	mov	_fsm_alarm_fn_curstate_1_257,#0x00
;	../fsm.c:292: ds1302_calculate_CRC();
	lcall	_ds1302_calculate_CRC
;	../fsm.c:293: ds1302_write_SRAM();	  //Save data
	lcall	_ds1302_write_SRAM
;	../fsm.c:294: alarm_lastpoll = 0x60;	  //Reset last poll time, force compare
	mov	_alarm_lastpoll,#0x60
;	../fsm.c:295: return fsm_ok;
	mov	dpl,#0x00
	ret
00111$:
;	../fsm.c:297: if(select_state == BUTTON_PRESSED)
	mov	a,r6
	jnz	00113$
;	/home/shenghao/workspace/TESTMCS51/alarm.h:94: ds1302_sram_data[3] ^= 0x01;
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	xrl	a,#0x01
	mov	r4,a
	movx	@dptr,a
;	../fsm.c:298: alarm_global_toggle();
00113$:
;	/home/shenghao/workspace/TESTMCS51/alarm.h:84: return (ds1302_sram_data[3] & 0x01);
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	mov	r4,a
	jnb	acc.0,00115$
;	../fsm.c:299: if(alarm_global_state())
;	../fsm.c:300: display_puts(ledstrings[ledstrings_alon]);
	mov	dptr,#(_ledstrings + 0x002d)
	push	ar7
	lcall	_display_puts
	pop	ar7
	sjmp	00116$
00115$:
;	../fsm.c:302: display_puts(ledstrings[ledstrings_alof]);
	mov	dptr,#(_ledstrings + 0x0032)
	push	ar7
	lcall	_display_puts
	pop	ar7
00116$:
;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0002)
	mov	(_display_buffer + 0x0002),a
;	../fsm.c:305: if(menu_state == BUTTON_PRESSED){
	mov	a,r7
	jz	00265$
	ljmp	00164$
00265$:
;	../fsm.c:306: ++curstate;
	inc	_fsm_alarm_fn_curstate_1_257
;	../fsm.c:308: break;
	ljmp	00164$
;	../fsm.c:309: default:
00119$:
;	../fsm.c:310: switch(sub_curstate){
	mov	a,_fsm_alarm_fn_sub_curstate_1_257
	add	a,#0xff - 0x09
	jnc	00266$
	ljmp	00164$
00266$:
	mov	a,_fsm_alarm_fn_sub_curstate_1_257
	add	a,#(00267$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_fsm_alarm_fn_sub_curstate_1_257
	add	a,#(00268$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00267$:
	.db	00120$
	.db	00132$
	.db	00132$
	.db	00151$
	.db	00151$
	.db	00151$
	.db	00151$
	.db	00151$
	.db	00151$
	.db	00151$
00268$:
	.db	00120$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00151$>>8
	.db	00151$>>8
	.db	00151$>>8
	.db	00151$>>8
	.db	00151$>>8
	.db	00151$>>8
	.db	00151$>>8
;	../fsm.c:311: case fsm_alarm_substate_toggle:
00120$:
;	../fsm.c:312: if(menu_state == BUTTON_PRESSED){
	mov	a,r7
	jnz	00124$
;	../fsm.c:313: if(++curstate == (fsm_alarm_end + NUM_ALARMS))
	inc	_fsm_alarm_fn_curstate_1_257
	mov	a,#0x09
	cjne	a,_fsm_alarm_fn_curstate_1_257,00270$
	sjmp	00271$
00270$:
	ljmp	00164$
00271$:
;	../fsm.c:314: curstate = fsm_alarm_start;
	mov	_fsm_alarm_fn_curstate_1_257,#0x01
;	../fsm.c:315: break;
	ljmp	00164$
00124$:
;	../fsm.c:317: if(select_state == BUTTON_PRESSED){
	mov	a,r6
	jnz	00126$
;	../fsm.c:318: alarms[(curstate - fsm_alarm_end)].dow_and_enable ^= 1;
	push	ar6
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	b,#0x03
	mul	ab
	mov	r3,a
	mov	r4,b
	add	a,#_alarms
	mov	r2,a
	mov	a,r4
	addc	a,#(_alarms >> 8)
	mov	r6,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r3
	add	a,#_alarms
	mov	r3,a
	mov	a,r4
	addc	a,#(_alarms >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	xrl	ar4,#0x01
	mov	dpl,r2
	mov	dph,r6
	mov	a,r4
	movx	@dptr,a
;	../fsm.c:392: return fsm_repeat;
	pop	ar6
;	../fsm.c:318: alarms[(curstate - fsm_alarm_end)].dow_and_enable ^= 1;
00126$:
;	../fsm.c:320: if(select_state == BUTTON_LONG_PRESSED){
	cjne	r6,#0x01,00128$
;	../fsm.c:321: sub_curstate++;
	inc	_fsm_alarm_fn_sub_curstate_1_257
;	../fsm.c:322: break;
	ljmp	00164$
00128$:
;	../fsm.c:324: if(menu_state == BUTTON_LONG_PRESSED){
	cjne	r7,#0x01,00130$
;	../fsm.c:325: sub_curstate = fsm_alarm_substate_toggle;
	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x00
;	../fsm.c:326: curstate = fsm_alarm_label;
	mov	_fsm_alarm_fn_curstate_1_257,#0x00
;	../fsm.c:327: return fsm_ok;
	mov	dpl,#0x00
	ret
00130$:
;	../fsm.c:329: display_buffer[0] = ledfonts_numeric_normal['A'];
	mov	dptr,#(_ledfonts_numeric_normal + 0x0041)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	_display_buffer,r6
;	../fsm.c:330: display_buffer[1] = ledfonts_numeric_normal[(curstate - fsm_alarm_end)];
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	dptr,#_ledfonts_numeric_normal
	movc	a,@a+dptr
	mov	r6,a
	mov	(_display_buffer + 0x0001),r6
;	../fsm.c:331: display_putbool(alarms[(curstate - fsm_alarm_end)].dow_and_enable & 0x01);
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	b,#0x03
	mul	ab
	add	a,#_alarms
	mov	r4,a
	mov	a,#(_alarms >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x01
	anl	a,r6
	mov	dpl,a
	lcall	_display_putbool
;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0002)
	mov	(_display_buffer + 0x0002),a
;	../fsm.c:333: break;
	ljmp	00164$
;	../fsm.c:335: case fsm_alarm_substate_mm:
00132$:
;	../fsm.c:336: if(menu_state == BUTTON_PRESSED){
	mov	a,r7
	jnz	00134$
;	../fsm.c:337: sub_curstate++;
	inc	_fsm_alarm_fn_sub_curstate_1_257
;	../fsm.c:338: display_flash = 0x00;
	mov	_display_flash,#0x00
;	../fsm.c:339: break;
	ljmp	00164$
00134$:
;	../fsm.c:341: if(menu_state == BUTTON_LONG_PRESSED){
	cjne	r7,#0x01,00136$
;	../fsm.c:342: sub_curstate = fsm_alarm_substate_toggle;
	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x00
;	../fsm.c:343: display_flash = 0x00;
	mov	_display_flash,#0x00
;	../fsm.c:344: break;
	ljmp	00164$
00136$:
;	../fsm.c:346: if(sub_curstate == fsm_alarm_substate_hh){
	mov	a,#0x01
	cjne	a,_fsm_alarm_fn_sub_curstate_1_257,00140$
;	../fsm.c:347: alarms[(curstate - fsm_alarm_end)].hour = bcd_add(alarms[(curstate - fsm_alarm_end)].hour,alarm_temp);
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	b,#0x03
	mul	ab
	mov	r4,a
	mov	r6,b
	add	a,#_alarms
	mov	r2,a
	mov	a,r6
	addc	a,#(_alarms >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_alarms
	mov	dpl,a
	mov	a,r6
	addc	a,#(_alarms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	_bcd_add_PARM_2,r5
	mov	dpl,r6
	push	ar5
	push	ar3
	push	ar2
	lcall	_bcd_add
	mov	r6,dpl
	pop	ar2
	pop	ar3
	pop	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	a,r6
	movx	@dptr,a
;	../fsm.c:348: if(alarms[(curstate - fsm_alarm_end)].hour > 0x23)
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	b,#0x03
	mul	ab
	add	a,#_alarms
	mov	dpl,a
	mov	a,#(_alarms >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x23
	jnc	00138$
;	../fsm.c:349: alarms[(curstate - fsm_alarm_end)].hour = 0x00;
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	b,#0x03
	mul	ab
	add	a,#_alarms
	mov	dpl,a
	mov	a,#(_alarms >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
00138$:
;	../fsm.c:350: display_flash = 0x03;
	mov	_display_flash,#0x03
00140$:
;	../fsm.c:352: if(sub_curstate == fsm_alarm_substate_mm){
	mov	a,#0x02
	cjne	a,_fsm_alarm_fn_sub_curstate_1_257,00144$
;	../fsm.c:353: alarms[(curstate - fsm_alarm_end)].minute = bcd_add(alarms[(curstate - fsm_alarm_end)].minute,alarm_temp);
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	b,#0x03
	mul	ab
	mov	r4,a
	mov	r6,b
	add	a,#_alarms
	mov	r2,a
	mov	a,r6
	addc	a,#(_alarms >> 8)
	mov	r3,a
	inc	r2
	cjne	r2,#0x00,00285$
	inc	r3
00285$:
	mov	a,r4
	add	a,#_alarms
	mov	r4,a
	mov	a,r6
	addc	a,#(_alarms >> 8)
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_bcd_add_PARM_2,r5
	mov	dpl,r6
	push	ar3
	push	ar2
	lcall	_bcd_add
	mov	r6,dpl
	pop	ar2
	pop	ar3
	mov	dpl,r2
	mov	dph,r3
	mov	a,r6
	movx	@dptr,a
;	../fsm.c:354: if(alarms[(curstate - fsm_alarm_end)].minute > 0x59)
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	b,#0x03
	mul	ab
	add	a,#_alarms
	mov	r4,a
	mov	a,#(_alarms >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x59
	jnc	00142$
;	../fsm.c:355: alarms[(curstate - fsm_alarm_end)].minute = 0x00;
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	b,#0x03
	mul	ab
	add	a,#_alarms
	mov	r4,a
	mov	a,#(_alarms >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	inc	dptr
	clr	a
	movx	@dptr,a
00142$:
;	../fsm.c:356: display_flash = 0x0c;
	mov	_display_flash,#0x0c
00144$:
;	../fsm.c:358: display_puttime(alarms[(curstate - fsm_alarm_end)].hour,alarms[(curstate - fsm_alarm_end)].minute);
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
	mov	b,#0x03
	mul	ab
	mov	r4,a
	mov	r6,b
	add	a,#_alarms
	mov	dpl,a
	mov	a,r6
	addc	a,#(_alarms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,#_alarms
	mov	r4,a
	mov	a,r6
	addc	a,#(_alarms >> 8)
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	_display_puttime_PARM_2,a
	mov	dpl,r3
	lcall	_display_puttime
;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0002)
	mov	(_display_buffer + 0x0002),a
;	../fsm.c:360: break;
	ljmp	00164$
;	../fsm.c:367: case fsm_alarm_substate_dow_sun:
00151$:
;	../fsm.c:368: display_puts(ledstrings[sub_curstate - fsm_alarm_substate_mm -1]);
	mov	r4,_fsm_alarm_fn_sub_curstate_1_257
	mov	r6,#0x00
	mov	a,r4
	add	a,#0xfd
	mov	__mulint_PARM_2,a
	mov	a,r6
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0005
	push	ar7
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r6,dph
	mov	a,r4
	add	a,#_ledstrings
	mov	dpl,a
	mov	a,r6
	addc	a,#(_ledstrings >> 8)
	mov	dph,a
	lcall	_display_puts
	pop	ar5
	pop	ar7
;	../fsm.c:369: if(alarm_dow_state(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm)){
	mov	a,_fsm_alarm_fn_sub_curstate_1_257
	add	a,#0xfe
	mov	r6,a
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
;	/home/shenghao/workspace/TESTMCS51/alarm.h:106: return ((alarms[index].dow_and_enable >> dow) & 0x01);
	mov	b,#0x03
	mul	ab
	add	a,#_alarms
	mov	r3,a
	mov	a,#(_alarms >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	b,r6
	inc	b
	mov	a,r4
	sjmp	00288$
00287$:
	clr	c
	rrc	a
00288$:
	djnz	b,00287$
	mov	r6,a
	jnb	acc.0,00153$
;	../fsm.c:369: if(alarm_dow_state(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm)){
;	/home/shenghao/workspace/TESTMCS51/display.h:175: display_buffer[3] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0003)
	mov	(_display_buffer + 0x0003),a
;	../fsm.c:370: display_ampmon();
	sjmp	00154$
00153$:
;	/home/shenghao/workspace/TESTMCS51/display.h:190: display_buffer[3] |= 0x80;
	mov	a,#0x80
	orl	a,(_display_buffer + 0x0003)
	mov	(_display_buffer + 0x0003),a
;	../fsm.c:372: display_ampmoff();
00154$:
;	../fsm.c:374: if(alarm_temp)
	mov	a,r5
	jz	00156$
;	../fsm.c:375: alarm_dow_toggle(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm);
	mov	a,_fsm_alarm_fn_sub_curstate_1_257
	add	a,#0xfe
	mov	r6,a
	mov	a,_fsm_alarm_fn_curstate_1_257
	add	a,#0xfe
;	/home/shenghao/workspace/TESTMCS51/alarm.h:116: alarms[index].dow_and_enable ^= (0x01 << dow);
	mov	b,#0x03
	mul	ab
	mov	r5,a
	mov	r4,b
	add	a,#_alarms
	mov	r2,a
	mov	a,r4
	addc	a,#(_alarms >> 8)
	mov	r3,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r5
	add	a,#_alarms
	mov	r5,a
	mov	a,r4
	addc	a,#(_alarms >> 8)
	mov	r4,a
	mov	dpl,r5
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00293$
00291$:
	add	a,acc
00293$:
	djnz	b,00291$
	mov	r6,a
	xrl	ar5,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r5
	movx	@dptr,a
;	../fsm.c:375: alarm_dow_toggle(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm);
00156$:
;	../fsm.c:376: if(menu_state == BUTTON_PRESSED){
	mov	a,r7
	jnz	00160$
;	../fsm.c:377: if(++sub_curstate == fsm_alarm_substate_end){
	inc	_fsm_alarm_fn_sub_curstate_1_257
	mov	a,#0x0a
	cjne	a,_fsm_alarm_fn_sub_curstate_1_257,00164$
;	../fsm.c:378: sub_curstate = fsm_alarm_substate_start;
	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x01
;	../fsm.c:380: break;
	sjmp	00164$
00160$:
;	../fsm.c:382: if(menu_state == BUTTON_LONG_PRESSED){
	cjne	r7,#0x01,00164$
;	../fsm.c:383: sub_curstate = fsm_alarm_substate_toggle;
	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x00
;	../fsm.c:390: }
00164$:
;	../fsm.c:392: return fsm_repeat;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fsm_config_fn'
;------------------------------------------------------------
;config_tmp2               Allocated to registers r4 r5 
;menu_state                Allocated to registers r7 
;select_state              Allocated to registers r6 
;__00020071                Allocated to registers 
;__00040067                Allocated to registers 
;tmp                       Allocated to registers r4 r5 
;__00040069                Allocated to registers 
;tmp                       Allocated to registers r4 r5 
;tmp                       Allocated to registers r4 r5 
;curstate                  Allocated with name '_fsm_config_fn_curstate_1_303'
;config_tmp                Allocated with name '_fsm_config_fn_config_tmp_1_303'
;------------------------------------------------------------
;	../fsm.c:396: enum fsm_return fsm_config_fn() __reentrant {
;	-----------------------------------------
;	 function fsm_config_fn
;	-----------------------------------------
_fsm_config_fn:
;	../fsm.c:403: menu_state = button_read_and_clear_menu();
	lcall	_button_read_and_clear_menu
	mov	r7,dpl
;	../fsm.c:404: select_state = button_read_and_clear_select();
	push	ar7
	lcall	_button_read_and_clear_select
	mov	r6,dpl
	pop	ar7
;	../fsm.c:406: switch(curstate) {
	mov	a,_fsm_config_fn_curstate_1_303
	add	a,#0xff - 0x0e
	jnc	00240$
	ljmp	00164$
00240$:
	mov	a,_fsm_config_fn_curstate_1_303
	add	a,#(00241$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_fsm_config_fn_curstate_1_303
	add	a,#(00242$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00241$:
	.db	00101$
	.db	00106$
	.db	00112$
	.db	00112$
	.db	00123$
	.db	00128$
	.db	00138$
	.db	00150$
	.db	00150$
	.db	00150$
	.db	00150$
	.db	00150$
	.db	00150$
	.db	00150$
	.db	00150$
00242$:
	.db	00101$>>8
	.db	00106$>>8
	.db	00112$>>8
	.db	00112$>>8
	.db	00123$>>8
	.db	00128$>>8
	.db	00138$>>8
	.db	00150$>>8
	.db	00150$>>8
	.db	00150$>>8
	.db	00150$>>8
	.db	00150$>>8
	.db	00150$>>8
	.db	00150$>>8
	.db	00150$>>8
;	../fsm.c:407: case fsm_config_label:
00101$:
;	../fsm.c:408: if(menu_state == BUTTON_PRESSED){
	mov	a,r7
	jnz	00103$
;	../fsm.c:414: ds1302_calculate_CRC();
	lcall	_ds1302_calculate_CRC
;	../fsm.c:415: ds1302_write_SRAM();
	lcall	_ds1302_write_SRAM
;	../fsm.c:416: transition_ticks = centiseconds();
	lcall	_centiseconds
	mov	_transition_ticks,dpl
	mov	(_transition_ticks + 1),dph
;	../fsm.c:417: return fsm_fail;
	mov	dpl,#0x02
	ret
00103$:
;	../fsm.c:419: if(select_state == BUTTON_PRESSED)
	mov	a,r6
	jnz	00105$
;	../fsm.c:420: curstate++;
	inc	_fsm_config_fn_curstate_1_303
00105$:
;	../fsm.c:421: display_puts(ledstrings[ledstrings_conf]);
	mov	dptr,#(_ledstrings + 0x0037)
	lcall	_display_puts
;	../fsm.c:422: break;
	ljmp	00164$
;	../fsm.c:423: case fsm_config_ldr_calib_label:
00106$:
;	../fsm.c:424: if(menu_state == BUTTON_PRESSED)
	mov	a,r7
	jnz	00108$
;	../fsm.c:425: curstate = fsm_config_thermistor_calib_label;
	mov	_fsm_config_fn_curstate_1_303,#0x04
00108$:
;	../fsm.c:426: if(select_state == BUTTON_PRESSED)
	mov	a,r6
	jnz	00110$
;	../fsm.c:427: curstate = fsm_config_ldr_calib_low;
	mov	_fsm_config_fn_curstate_1_303,#0x02
00110$:
;	../fsm.c:428: display_puts(ledstrings[ledstrings_lcal]);
	mov	dptr,#(_ledstrings + 0x003c)
	lcall	_display_puts
;	../fsm.c:429: break;
	ljmp	00164$
;	../fsm.c:431: case fsm_config_ldr_calib_high:
00112$:
;	../fsm.c:432: display_autobrightness = 0;
;	assignBit
	clr	_display_autobrightness
;	../fsm.c:434: if(menu_state == BUTTON_LONG_PRESSED)
	cjne	r7,#0x01,00114$
;	../fsm.c:435: curstate = fsm_config_ldr_calib_label;
	mov	_fsm_config_fn_curstate_1_303,#0x01
00114$:
;	../fsm.c:436: if(select_state == BUTTON_PRESSED){
	mov	a,r6
	jnz	00119$
;	../fsm.c:437: if(curstate == fsm_config_ldr_calib_low) {
	mov	a,#0x02
	cjne	a,_fsm_config_fn_curstate_1_303,00116$
;	/home/shenghao/workspace/TESTMCS51/adc.h:133: INT_IE_EADC = 0;				//Disable ADC interrupt
;	assignBit
	clr	_INT_IE_EADC
;	/home/shenghao/workspace/TESTMCS51/adc.h:134: tmp = adc_ldr_reading;	   		//Store temporary result
	mov	r4,_adc_ldr_reading
	mov	r5,(_adc_ldr_reading + 1)
;	/home/shenghao/workspace/TESTMCS51/adc.h:135: INT_IE_EADC = 1;				//Enable ADC interrupt
;	assignBit
	setb	_INT_IE_EADC
;	../fsm.c:438: config_tmp = adc_get_ldr();
	mov	_fsm_config_fn_config_tmp_1_303,r4
	mov	(_fsm_config_fn_config_tmp_1_303 + 1),r5
;	../fsm.c:439: curstate++;
	inc	_fsm_config_fn_curstate_1_303
	sjmp	00119$
00116$:
;	/home/shenghao/workspace/TESTMCS51/adc.h:133: INT_IE_EADC = 0;				//Disable ADC interrupt
;	assignBit
	clr	_INT_IE_EADC
;	/home/shenghao/workspace/TESTMCS51/adc.h:134: tmp = adc_ldr_reading;	   		//Store temporary result
	mov	r4,_adc_ldr_reading
	mov	r5,(_adc_ldr_reading + 1)
;	/home/shenghao/workspace/TESTMCS51/adc.h:135: INT_IE_EADC = 1;				//Enable ADC interrupt
;	assignBit
	setb	_INT_IE_EADC
;	../fsm.c:441: adc_calibrate_LDR(adc_get_ldr(),config_tmp);
	mov	_adc_calibrate_LDR_PARM_2,_fsm_config_fn_config_tmp_1_303
	mov	(_adc_calibrate_LDR_PARM_2 + 1),(_fsm_config_fn_config_tmp_1_303 + 1)
	mov	dpl,r4
	mov	dph,r5
	lcall	_adc_calibrate_LDR
;	../fsm.c:442: curstate = fsm_config_ldr_calib_label;
	mov	_fsm_config_fn_curstate_1_303,#0x01
;	../fsm.c:443: display_autobrightness = 1;
;	assignBit
	setb	_display_autobrightness
00119$:
;	../fsm.c:446: if(curstate == fsm_config_ldr_calib_low) {
	mov	a,#0x02
	cjne	a,_fsm_config_fn_curstate_1_303,00121$
;	../fsm.c:447: display_puts(ledstrings[ledstrings_cllo]);
	mov	dptr,#(_ledstrings + 0x0046)
	lcall	_display_puts
;	../fsm.c:448: INT_IE_EA = 0;
;	assignBit
	clr	_INT_IE_EA
;	../fsm.c:449: display_counts = DISPLAY_COUNTS_MIN;
	mov	_display_counts,#0x2c
	mov	(_display_counts + 1),#0x01
;	../fsm.c:450: INT_IE_EA = 1;
;	assignBit
	setb	_INT_IE_EA
	ljmp	00164$
00121$:
;	../fsm.c:452: display_puts(ledstrings[ledstrings_clhi]);
	mov	dptr,#(_ledstrings + 0x004b)
	lcall	_display_puts
;	../fsm.c:453: INT_IE_EA = 0;
;	assignBit
	clr	_INT_IE_EA
;	../fsm.c:454: display_counts = DISPLAY_COUNTS_MAX;
	mov	_display_counts,#0x00
	mov	(_display_counts + 1),#0xea
;	../fsm.c:455: INT_IE_EA = 1;
;	assignBit
	setb	_INT_IE_EA
;	../fsm.c:457: break;
	ljmp	00164$
;	../fsm.c:458: case fsm_config_thermistor_calib_label:
00123$:
;	../fsm.c:459: if(menu_state == BUTTON_PRESSED)
	mov	a,r7
	jnz	00125$
;	../fsm.c:460: curstate = fsm_config_display_label;
	mov	_fsm_config_fn_curstate_1_303,#0x06
00125$:
;	../fsm.c:461: if(select_state == BUTTON_PRESSED) {
	mov	a,r6
	jnz	00127$
;	../fsm.c:462: curstate = fsm_config_thermistor_calib;
	mov	_fsm_config_fn_curstate_1_303,#0x05
;	../fsm.c:463: config_tmp = (TEMP_OFFSET_LSB | (TEMP_OFFSET_MSB << 0x08));
	mov	dptr,#(_ds1302_sram_data + 0x001d)
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_ds1302_sram_data + 0x001e)
	movx	a,@dptr
	mov	r3,a
	clr	a
	mov	r4,a
	mov	r2,a
	orl	a,r5
	mov	_fsm_config_fn_config_tmp_1_303,a
	mov	a,r3
	orl	a,r2
	mov	(_fsm_config_fn_config_tmp_1_303 + 1),a
00127$:
;	../fsm.c:465: display_puts(ledstrings[ledstrings_tcal]);
	mov	dptr,#(_ledstrings + 0x0050)
	lcall	_display_puts
;	../fsm.c:466: break;
	ljmp	00164$
;	../fsm.c:467: case fsm_config_thermistor_calib:
00128$:
;	../fsm.c:468: if(menu_state == BUTTON_LONG_PRESSED) {
	cjne	r7,#0x01,00130$
;	../fsm.c:469: curstate = fsm_config_thermistor_calib_label;
	mov	_fsm_config_fn_curstate_1_303,#0x04
;	../fsm.c:470: TEMP_OFFSET_LSB = (config_tmp & 0x00ff);
	mov	r5,_fsm_config_fn_config_tmp_1_303
	mov	dptr,#(_ds1302_sram_data + 0x001d)
	mov	a,r5
	movx	@dptr,a
;	../fsm.c:471: TEMP_OFFSET_MSB = (config_tmp >> 0x08);
	mov	r5,(_fsm_config_fn_config_tmp_1_303 + 1)
	mov	dptr,#(_ds1302_sram_data + 0x001e)
	mov	a,r5
	movx	@dptr,a
00130$:
;	../fsm.c:473: if((select_state == BUTTON_PRESSED) || (select_state == BUTTON_HELD_DOWN))
	mov	a,r6
	jz	00131$
	cjne	r6,#0x02,00132$
00131$:
;	../fsm.c:474: config_tmp = bcd_add_16(config_tmp,0x0001);
	mov	_bcd_add_16_PARM_2,#0x01
	mov	(_bcd_add_16_PARM_2 + 1),#0x00
	mov	dpl,_fsm_config_fn_config_tmp_1_303
	mov	dph,(_fsm_config_fn_config_tmp_1_303 + 1)
	lcall	_bcd_add_16
	mov	_fsm_config_fn_config_tmp_1_303,dpl
	mov	(_fsm_config_fn_config_tmp_1_303 + 1),dph
00132$:
;	../fsm.c:476: if(config_tmp > 0x0140)
	clr	c
	mov	a,#0x40
	subb	a,_fsm_config_fn_config_tmp_1_303
	mov	a,#0x01
	subb	a,(_fsm_config_fn_config_tmp_1_303 + 1)
	jnc	00135$
;	../fsm.c:477: config_tmp = 0x0000;
	clr	a
	mov	_fsm_config_fn_config_tmp_1_303,a
	mov	(_fsm_config_fn_config_tmp_1_303 + 1),a
00135$:
;	../fsm.c:479: config_tmp2 = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
;	/home/shenghao/workspace/TESTMCS51/adc.h:147: INT_IE_EADC = 0;				//Disable ADC interrupt
;	assignBit
	clr	_INT_IE_EADC
;	/home/shenghao/workspace/TESTMCS51/adc.h:148: tmp = adc_thermistor_reading;	//Store temporary result
	mov	r4,_adc_thermistor_reading
	mov	r5,(_adc_thermistor_reading + 1)
;	/home/shenghao/workspace/TESTMCS51/adc.h:149: INT_IE_EADC = 1;				//Enable ADC interrupt
;	assignBit
	setb	_INT_IE_EADC
;	../fsm.c:479: config_tmp2 = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dpl,r4
	mov	a,#(_EEPROM_TEMP_FROM_THERMISTOR_TABLE >> 8)
	add	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	../fsm.c:480: config_tmp2 = bcd_add_16(config_tmp2,config_tmp);
	mov	_bcd_add_16_PARM_2,_fsm_config_fn_config_tmp_1_303
	mov	(_bcd_add_16_PARM_2 + 1),(_fsm_config_fn_config_tmp_1_303 + 1)
	mov	dpl,r4
	mov	dph,r5
	lcall	_bcd_add_16
	mov	r2,dpl
	mov	r3,dph
	mov	ar4,r2
	mov	ar5,r3
;	../fsm.c:481: if(config_tmp2 > 0x0999)
	clr	c
	mov	a,#0x99
	subb	a,r4
	mov	a,#0x09
	subb	a,r5
	jnc	00137$
;	../fsm.c:482: config_tmp2 = 0x0999;
	mov	r4,#0x99
	mov	r5,#0x09
00137$:
;	../fsm.c:483: display_puttemp(config_tmp2);
	mov	dpl,r4
	mov	dph,r5
	lcall	_display_puttemp
;	../fsm.c:484: break;
	ljmp	00164$
;	../fsm.c:485: case fsm_config_display_label:
00138$:
;	../fsm.c:486: if(select_state == BUTTON_PRESSED)
	mov	a,r6
	jnz	00140$
;	../fsm.c:487: curstate = fsm_config_auto_mmss;
	mov	_fsm_config_fn_curstate_1_303,#0x07
00140$:
;	../fsm.c:488: if(menu_state == BUTTON_PRESSED)
	mov	a,r7
;	../fsm.c:489: curstate = fsm_config_label;
	jnz	00142$
	mov	_fsm_config_fn_curstate_1_303,a
00142$:
;	../fsm.c:490: display_puts(ledstrings[ledstrings_disp]);
	mov	dptr,#(_ledstrings + 0x0055)
	lcall	_display_puts
;	../fsm.c:491: break;
	ljmp	00164$
;	../fsm.c:499: case fsm_config_display_remove_lzeroes:
00150$:
;	../fsm.c:500: display_puts(ledstrings[curstate + 0x0b]);
	mov	r4,_fsm_config_fn_curstate_1_303
	mov	r5,#0x00
	mov	a,#0x0b
	add	a,r4
	mov	__mulint_PARM_2,a
	clr	a
	addc	a,r5
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_ledstrings
	mov	dpl,a
	mov	a,r5
	addc	a,#(_ledstrings >> 8)
	mov	dph,a
	lcall	_display_puts
	pop	ar6
	pop	ar7
;	../fsm.c:501: if(curstate != fsm_config_display_remove_lzeroes) {
	mov	a,#0x0e
	cjne	a,_fsm_config_fn_curstate_1_303,00265$
	sjmp	00156$
00265$:
;	../fsm.c:502: display_putbool((SC_1 >> (curstate - 0x06)) & 0x01);
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	mov	r5,a
	mov	a,_fsm_config_fn_curstate_1_303
	add	a,#0xfa
	mov	b,a
	inc	b
	mov	a,r5
	sjmp	00267$
00266$:
	clr	c
	rrc	a
00267$:
	djnz	b,00266$
	anl	a,#0x01
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_display_putbool
	pop	ar6
	pop	ar7
;	../fsm.c:503: if(select_state == BUTTON_PRESSED)
	mov	a,r6
	jnz	00157$
;	../fsm.c:504: SC_1 ^= (0x01 << (curstate - 0x06));
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	movx	a,@dptr
	mov	r5,a
	mov	a,_fsm_config_fn_curstate_1_303
	add	a,#0xfa
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00271$
00269$:
	add	a,acc
00271$:
	djnz	b,00269$
	mov	r4,a
	xrl	ar5,a
	mov	dptr,#(_ds1302_sram_data + 0x0003)
	mov	a,r5
	movx	@dptr,a
	sjmp	00157$
00156$:
;	../fsm.c:506: display_putbool(DISPLAY_REMOVE_LEADING_ZEROES);
	mov	dptr,#(_ds1302_sram_data + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x01
	anl	a,r5
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_display_putbool
	pop	ar6
	pop	ar7
;	../fsm.c:507: if(select_state == BUTTON_PRESSED)
	mov	a,r6
	jnz	00157$
;	../fsm.c:508: SC_0 ^= 0x01;
	mov	dptr,#(_ds1302_sram_data + 0x0002)
	movx	a,@dptr
	xrl	a,#0x01
	mov	r6,a
	movx	@dptr,a
00157$:
;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0001)
	mov	(_display_buffer + 0x0001),a
;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
	mov	a,#0x7f
	anl	a,(_display_buffer + 0x0002)
	mov	(_display_buffer + 0x0002),a
;	../fsm.c:512: if(menu_state == BUTTON_PRESSED)
	mov	a,r7
	jnz	00161$
;	../fsm.c:513: if(++curstate == fsm_config_end)
	inc	_fsm_config_fn_curstate_1_303
	mov	a,#0x0f
	cjne	a,_fsm_config_fn_curstate_1_303,00161$
;	../fsm.c:514: curstate = fsm_config_auto_mmss;
	mov	_fsm_config_fn_curstate_1_303,#0x07
00161$:
;	../fsm.c:515: if(menu_state == BUTTON_LONG_PRESSED)
	cjne	r7,#0x01,00164$
;	../fsm.c:516: curstate = fsm_config_display_label;
	mov	_fsm_config_fn_curstate_1_303,#0x06
;	../fsm.c:518: }
00164$:
;	../fsm.c:520: return fsm_repeat;
	mov	dpl,#0x01
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
	.org 0x3300
_fsm_transition_table_fp:
	.byte _fsm_set_fn, (_fsm_set_fn >> 8)
	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
	.byte _fsm_set_fn, (_fsm_set_fn >> 8)
	.byte _fsm_alarm_fn, (_fsm_alarm_fn >> 8)
	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
	.byte _fsm_alarm_fn, (_fsm_alarm_fn >> 8)
	.byte _fsm_config_fn, (_fsm_config_fn >> 8)
	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
	.byte _fsm_config_fn, (_fsm_config_fn >> 8)
	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
	.org 0x3318
_fsm_transition_table_s:
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
