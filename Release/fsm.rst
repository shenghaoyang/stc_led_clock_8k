                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #9959 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module fsm
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _fsm_transition_table_s
                                     12 	.globl _fsm_transition_table_fp
                                     13 	.globl _centiseconds
                                     14 	.globl _adc_calibrate_LDR
                                     15 	.globl _button_read_and_clear_select
                                     16 	.globl _button_read_and_clear_menu
                                     17 	.globl _display_puttemp
                                     18 	.globl _display_putbool
                                     19 	.globl _display_putdate
                                     20 	.globl _display_puttime
                                     21 	.globl _display_putbcd
                                     22 	.globl _display_puts
                                     23 	.globl _ds1302_calculate_CRC
                                     24 	.globl _bcd_add_16
                                     25 	.globl _bcd_add
                                     26 	.globl _ds1302_write_SRAM
                                     27 	.globl _ds1302_set_time
                                     28 	.globl _ds1302_start
                                     29 	.globl _UART_SM0
                                     30 	.globl _UART_SM1
                                     31 	.globl _UART_SM2
                                     32 	.globl _UART_REN
                                     33 	.globl _UART_TB8
                                     34 	.globl _UART_RB8
                                     35 	.globl _UART_TI
                                     36 	.globl _UART_RI
                                     37 	.globl _PCA_CF
                                     38 	.globl _PCA_CR
                                     39 	.globl _PCA_CCF2
                                     40 	.globl _PCA_CCF1
                                     41 	.globl _PCA_CCF0
                                     42 	.globl _TMR_TCON_TF1
                                     43 	.globl _TMR_TCON_TR1
                                     44 	.globl _TMR_TCON_TF0
                                     45 	.globl _TMR_TCON_TR0
                                     46 	.globl _TMR_TCON_IE1
                                     47 	.globl _TMR_TCON_IT1
                                     48 	.globl _TMR_TCON_IE0
                                     49 	.globl _TMR_TCON_IT0
                                     50 	.globl _INT_IP_PPCA
                                     51 	.globl _INT_IP_PLVD
                                     52 	.globl _INT_IP_PADC
                                     53 	.globl _INT_IP_PS
                                     54 	.globl _INT_IP_PT1
                                     55 	.globl _INT_IP_PX1
                                     56 	.globl _INT_IP_PT0
                                     57 	.globl _INT_IP_PX0
                                     58 	.globl _INT_IE_EA
                                     59 	.globl _INT_IE_ELVD
                                     60 	.globl _INT_IE_EADC
                                     61 	.globl _INT_IE_ES
                                     62 	.globl _INT_IE_ET1
                                     63 	.globl _INT_IE_EX1
                                     64 	.globl _INT_IE_ET0
                                     65 	.globl _INT_IE_EX0
                                     66 	.globl _PORT_P5_7
                                     67 	.globl _PORT_P5_6
                                     68 	.globl _PORT_P5_5
                                     69 	.globl _PORT_P5_4
                                     70 	.globl _PORT_P5_3
                                     71 	.globl _PORT_P5_2
                                     72 	.globl _PORT_P5_1
                                     73 	.globl _PORT_P5_0
                                     74 	.globl _PORT_P4_7
                                     75 	.globl _PORT_P4_6
                                     76 	.globl _PORT_P4_5
                                     77 	.globl _PORT_P4_4
                                     78 	.globl _PORT_P4_3
                                     79 	.globl _PORT_P4_2
                                     80 	.globl _PORT_P4_1
                                     81 	.globl _PORT_P4_0
                                     82 	.globl _PORT_P3_7
                                     83 	.globl _PORT_P3_6
                                     84 	.globl _PORT_P3_5
                                     85 	.globl _PORT_P3_4
                                     86 	.globl _PORT_P3_3
                                     87 	.globl _PORT_P3_2
                                     88 	.globl _PORT_P3_1
                                     89 	.globl _PORT_P3_0
                                     90 	.globl _PORT_P2_7
                                     91 	.globl _PORT_P2_6
                                     92 	.globl _PORT_P2_5
                                     93 	.globl _PORT_P2_4
                                     94 	.globl _PORT_P2_3
                                     95 	.globl _PORT_P2_2
                                     96 	.globl _PORT_P2_1
                                     97 	.globl _PORT_P2_0
                                     98 	.globl _PORT_P1_7
                                     99 	.globl _PORT_P1_6
                                    100 	.globl _PORT_P1_5
                                    101 	.globl _PORT_P1_4
                                    102 	.globl _PORT_P1_3
                                    103 	.globl _PORT_P1_2
                                    104 	.globl _PORT_P1_1
                                    105 	.globl _PORT_P1_0
                                    106 	.globl _CY
                                    107 	.globl _AC
                                    108 	.globl _F0
                                    109 	.globl _RS1
                                    110 	.globl _RS0
                                    111 	.globl _OV
                                    112 	.globl _F1
                                    113 	.globl _P
                                    114 	.globl _IAP_CONTR
                                    115 	.globl _IAP_TRIG
                                    116 	.globl _IAP_CMD
                                    117 	.globl _IAP_ADDR
                                    118 	.globl _IAP_ADDRL
                                    119 	.globl _IAP_ADDRH
                                    120 	.globl _IAP_DATA
                                    121 	.globl _UART_SADEN
                                    122 	.globl _UART_SADDR
                                    123 	.globl _UART_SBUF
                                    124 	.globl _UART_SCON
                                    125 	.globl _PCA_CMOD
                                    126 	.globl _PCA_CCON
                                    127 	.globl _PCA_PWM2
                                    128 	.globl _PCA_PWM1
                                    129 	.globl _PCA_PWM0
                                    130 	.globl _PCA_C
                                    131 	.globl _PCA_CCAP2_L
                                    132 	.globl _PCA_CCAP2_H
                                    133 	.globl _PCA_CCAP1_L
                                    134 	.globl _PCA_CCAP1_H
                                    135 	.globl _PCA_CCAP0_L
                                    136 	.globl _PCA_CCAP0_H
                                    137 	.globl _PCA_CCAP2
                                    138 	.globl _PCA_CCAP1
                                    139 	.globl _PCA_CCAP0
                                    140 	.globl _PCA_CCAPM2
                                    141 	.globl _PCA_CCAPM1
                                    142 	.globl _PCA_CCAPM0
                                    143 	.globl _CMP_CR2
                                    144 	.globl _CMP_CR1
                                    145 	.globl _ADC_RESL
                                    146 	.globl _ADC_RESH
                                    147 	.globl _ADC_RES
                                    148 	.globl _ADC_CONTR
                                    149 	.globl _ADC_P1ASF
                                    150 	.globl _EEPROM_CONTR
                                    151 	.globl _EEPROM_TRIG
                                    152 	.globl _EEPROM_CMD
                                    153 	.globl _EEPROM_ADDR
                                    154 	.globl _EEPROM_DATA
                                    155 	.globl _TMR_T2
                                    156 	.globl _TMR_T0
                                    157 	.globl _TMR_TMOD
                                    158 	.globl _TMR_TCON
                                    159 	.globl _INT_IP2
                                    160 	.globl _INT_IP
                                    161 	.globl _INT_IE2
                                    162 	.globl _INT_IE
                                    163 	.globl _PORT_P5M0
                                    164 	.globl _PORT_P5M1
                                    165 	.globl _PORT_P4M0
                                    166 	.globl _PORT_P4M1
                                    167 	.globl _PORT_P3M0
                                    168 	.globl _PORT_P3M1
                                    169 	.globl _PORT_P2M0
                                    170 	.globl _PORT_P2M1
                                    171 	.globl _PORT_P1M0
                                    172 	.globl _PORT_P1M1
                                    173 	.globl _PORT_P5
                                    174 	.globl _PORT_P4
                                    175 	.globl _PORT_P3
                                    176 	.globl _PORT_P2
                                    177 	.globl _PORT_P1
                                    178 	.globl _PSW
                                    179 	.globl _PCON2
                                    180 	.globl _AUXR2
                                    181 	.globl _AUXR1
                                    182 	.globl _AUXR
                                    183 	.globl _PCON
                                    184 	.globl _DPTR
                                    185 	.globl _SP
                                    186 	.globl _alarms
                                    187 	.globl _fsm_home_auto
                                    188 	.globl _BUTTON_DATA_SELECT_HELD_DOWN
                                    189 	.globl _BUTTON_DATA_SELECT_RELEASED_LONGP
                                    190 	.globl _BUTTON_DATA_SELECT_RELEASED_NORMAL
                                    191 	.globl _BUTTON_DATA_SELECT_PRESSED
                                    192 	.globl _BUTTON_DATA_MENU_HELD_DOWN
                                    193 	.globl _BUTTON_DATA_MENU_RELEASED_LONGP
                                    194 	.globl _BUTTON_DATA_MENU_RELEASED_NORMAL
                                    195 	.globl _BUTTON_DATA_MENU_PRESSED
                                    196 	.globl _display_autobrightness
                                    197 	.globl _DS1302_DATA_7
                                    198 	.globl _DS1302_DATA_6
                                    199 	.globl _DS1302_DATA_5
                                    200 	.globl _DS1302_DATA_4
                                    201 	.globl _DS1302_DATA_3
                                    202 	.globl _DS1302_DATA_2
                                    203 	.globl _DS1302_DATA_1
                                    204 	.globl _DS1302_DATA_0
                                    205 	.globl _transition_ticks
                                    206 	.globl _alarm_lastpoll
                                    207 	.globl _BUTTON_DATA
                                    208 	.globl _DS1302_DATA
                                    209 	.globl _fsm_home_fn
                                    210 	.globl _fsm_set_fn
                                    211 	.globl _fsm_alarm_fn
                                    212 	.globl _fsm_config_fn
                                    213 ;--------------------------------------------------------
                                    214 ; special function registers
                                    215 ;--------------------------------------------------------
                                    216 	.area RSEG    (ABS,DATA)
      000000                        217 	.org 0x0000
                           000081   218 _SP	=	0x0081
                           008382   219 _DPTR	=	0x8382
                           000087   220 _PCON	=	0x0087
                           00008E   221 _AUXR	=	0x008e
                           0000A2   222 _AUXR1	=	0x00a2
                           00008F   223 _AUXR2	=	0x008f
                           000097   224 _PCON2	=	0x0097
                           0000D0   225 _PSW	=	0x00d0
                           000090   226 _PORT_P1	=	0x0090
                           0000A0   227 _PORT_P2	=	0x00a0
                           0000B0   228 _PORT_P3	=	0x00b0
                           0000C0   229 _PORT_P4	=	0x00c0
                           0000C8   230 _PORT_P5	=	0x00c8
                           000091   231 _PORT_P1M1	=	0x0091
                           000092   232 _PORT_P1M0	=	0x0092
                           000095   233 _PORT_P2M1	=	0x0095
                           000096   234 _PORT_P2M0	=	0x0096
                           0000B1   235 _PORT_P3M1	=	0x00b1
                           0000B2   236 _PORT_P3M0	=	0x00b2
                           0000B3   237 _PORT_P4M1	=	0x00b3
                           0000B4   238 _PORT_P4M0	=	0x00b4
                           0000C9   239 _PORT_P5M1	=	0x00c9
                           0000CA   240 _PORT_P5M0	=	0x00ca
                           0000A8   241 _INT_IE	=	0x00a8
                           0000AF   242 _INT_IE2	=	0x00af
                           0000B8   243 _INT_IP	=	0x00b8
                           0000B5   244 _INT_IP2	=	0x00b5
                           000088   245 _TMR_TCON	=	0x0088
                           000089   246 _TMR_TMOD	=	0x0089
                           008C8A   247 _TMR_T0	=	0x8c8a
                           00D6D7   248 _TMR_T2	=	0xd6d7
                           0000C2   249 _EEPROM_DATA	=	0x00c2
                           00C3C4   250 _EEPROM_ADDR	=	0xc3c4
                           0000C5   251 _EEPROM_CMD	=	0x00c5
                           0000C6   252 _EEPROM_TRIG	=	0x00c6
                           0000C7   253 _EEPROM_CONTR	=	0x00c7
                           00009D   254 _ADC_P1ASF	=	0x009d
                           0000BC   255 _ADC_CONTR	=	0x00bc
                           00BDBE   256 _ADC_RES	=	0xbdbe
                           0000BD   257 _ADC_RESH	=	0x00bd
                           0000BE   258 _ADC_RESL	=	0x00be
                           0000E6   259 _CMP_CR1	=	0x00e6
                           0000E7   260 _CMP_CR2	=	0x00e7
                           0000DA   261 _PCA_CCAPM0	=	0x00da
                           0000DB   262 _PCA_CCAPM1	=	0x00db
                           0000DC   263 _PCA_CCAPM2	=	0x00dc
                           00FAEA   264 _PCA_CCAP0	=	0xfaea
                           00FBEB   265 _PCA_CCAP1	=	0xfbeb
                           00FCEC   266 _PCA_CCAP2	=	0xfcec
                           0000FA   267 _PCA_CCAP0_H	=	0x00fa
                           0000EA   268 _PCA_CCAP0_L	=	0x00ea
                           0000FB   269 _PCA_CCAP1_H	=	0x00fb
                           0000EB   270 _PCA_CCAP1_L	=	0x00eb
                           0000FC   271 _PCA_CCAP2_H	=	0x00fc
                           0000EC   272 _PCA_CCAP2_L	=	0x00ec
                           00F9E9   273 _PCA_C	=	0xf9e9
                           0000F2   274 _PCA_PWM0	=	0x00f2
                           0000F3   275 _PCA_PWM1	=	0x00f3
                           0000F4   276 _PCA_PWM2	=	0x00f4
                           0000D8   277 _PCA_CCON	=	0x00d8
                           0000D9   278 _PCA_CMOD	=	0x00d9
                           000098   279 _UART_SCON	=	0x0098
                           000099   280 _UART_SBUF	=	0x0099
                           0000A9   281 _UART_SADDR	=	0x00a9
                           0000B9   282 _UART_SADEN	=	0x00b9
                           0000C2   283 _IAP_DATA	=	0x00c2
                           0000C3   284 _IAP_ADDRH	=	0x00c3
                           0000C4   285 _IAP_ADDRL	=	0x00c4
                           00C3C4   286 _IAP_ADDR	=	0xc3c4
                           0000C5   287 _IAP_CMD	=	0x00c5
                           0000C6   288 _IAP_TRIG	=	0x00c6
                           0000C7   289 _IAP_CONTR	=	0x00c7
                                    290 ;--------------------------------------------------------
                                    291 ; special function bits
                                    292 ;--------------------------------------------------------
                                    293 	.area RSEG    (ABS,DATA)
      000000                        294 	.org 0x0000
                           0000D0   295 _P	=	0x00d0
                           0000D1   296 _F1	=	0x00d1
                           0000D2   297 _OV	=	0x00d2
                           0000D3   298 _RS0	=	0x00d3
                           0000D4   299 _RS1	=	0x00d4
                           0000D5   300 _F0	=	0x00d5
                           0000D6   301 _AC	=	0x00d6
                           0000D7   302 _CY	=	0x00d7
                           000090   303 _PORT_P1_0	=	0x0090
                           000091   304 _PORT_P1_1	=	0x0091
                           000092   305 _PORT_P1_2	=	0x0092
                           000093   306 _PORT_P1_3	=	0x0093
                           000094   307 _PORT_P1_4	=	0x0094
                           000095   308 _PORT_P1_5	=	0x0095
                           000096   309 _PORT_P1_6	=	0x0096
                           000097   310 _PORT_P1_7	=	0x0097
                           0000A0   311 _PORT_P2_0	=	0x00a0
                           0000A1   312 _PORT_P2_1	=	0x00a1
                           0000A2   313 _PORT_P2_2	=	0x00a2
                           0000A3   314 _PORT_P2_3	=	0x00a3
                           0000A4   315 _PORT_P2_4	=	0x00a4
                           0000A5   316 _PORT_P2_5	=	0x00a5
                           0000A6   317 _PORT_P2_6	=	0x00a6
                           0000A7   318 _PORT_P2_7	=	0x00a7
                           0000B0   319 _PORT_P3_0	=	0x00b0
                           0000B1   320 _PORT_P3_1	=	0x00b1
                           0000B2   321 _PORT_P3_2	=	0x00b2
                           0000B3   322 _PORT_P3_3	=	0x00b3
                           0000B4   323 _PORT_P3_4	=	0x00b4
                           0000B5   324 _PORT_P3_5	=	0x00b5
                           0000B6   325 _PORT_P3_6	=	0x00b6
                           0000B7   326 _PORT_P3_7	=	0x00b7
                           0000C0   327 _PORT_P4_0	=	0x00c0
                           0000C1   328 _PORT_P4_1	=	0x00c1
                           0000C2   329 _PORT_P4_2	=	0x00c2
                           0000C3   330 _PORT_P4_3	=	0x00c3
                           0000C4   331 _PORT_P4_4	=	0x00c4
                           0000C5   332 _PORT_P4_5	=	0x00c5
                           0000C6   333 _PORT_P4_6	=	0x00c6
                           0000C7   334 _PORT_P4_7	=	0x00c7
                           0000C8   335 _PORT_P5_0	=	0x00c8
                           0000C9   336 _PORT_P5_1	=	0x00c9
                           0000CA   337 _PORT_P5_2	=	0x00ca
                           0000CB   338 _PORT_P5_3	=	0x00cb
                           0000CC   339 _PORT_P5_4	=	0x00cc
                           0000CD   340 _PORT_P5_5	=	0x00cd
                           0000CE   341 _PORT_P5_6	=	0x00ce
                           0000CD   342 _PORT_P5_7	=	0x00cd
                           0000A8   343 _INT_IE_EX0	=	0x00a8
                           0000A9   344 _INT_IE_ET0	=	0x00a9
                           0000AA   345 _INT_IE_EX1	=	0x00aa
                           0000AB   346 _INT_IE_ET1	=	0x00ab
                           0000AC   347 _INT_IE_ES	=	0x00ac
                           0000AD   348 _INT_IE_EADC	=	0x00ad
                           0000AE   349 _INT_IE_ELVD	=	0x00ae
                           0000AF   350 _INT_IE_EA	=	0x00af
                           0000B8   351 _INT_IP_PX0	=	0x00b8
                           0000B9   352 _INT_IP_PT0	=	0x00b9
                           0000BA   353 _INT_IP_PX1	=	0x00ba
                           0000BB   354 _INT_IP_PT1	=	0x00bb
                           0000BC   355 _INT_IP_PS	=	0x00bc
                           0000BD   356 _INT_IP_PADC	=	0x00bd
                           0000BE   357 _INT_IP_PLVD	=	0x00be
                           0000BF   358 _INT_IP_PPCA	=	0x00bf
                           000088   359 _TMR_TCON_IT0	=	0x0088
                           000089   360 _TMR_TCON_IE0	=	0x0089
                           00008A   361 _TMR_TCON_IT1	=	0x008a
                           00008B   362 _TMR_TCON_IE1	=	0x008b
                           00008C   363 _TMR_TCON_TR0	=	0x008c
                           00008D   364 _TMR_TCON_TF0	=	0x008d
                           00008E   365 _TMR_TCON_TR1	=	0x008e
                           00008F   366 _TMR_TCON_TF1	=	0x008f
                           0000D8   367 _PCA_CCF0	=	0x00d8
                           0000D9   368 _PCA_CCF1	=	0x00d9
                           0000DA   369 _PCA_CCF2	=	0x00da
                           0000DE   370 _PCA_CR	=	0x00de
                           0000DF   371 _PCA_CF	=	0x00df
                           000098   372 _UART_RI	=	0x0098
                           000099   373 _UART_TI	=	0x0099
                           00009A   374 _UART_RB8	=	0x009a
                           00009B   375 _UART_TB8	=	0x009b
                           00009C   376 _UART_REN	=	0x009c
                           00009D   377 _UART_SM2	=	0x009d
                           00009E   378 _UART_SM1	=	0x009e
                           00009E   379 _UART_SM0	=	0x009e
                                    380 ;--------------------------------------------------------
                                    381 ; overlayable register banks
                                    382 ;--------------------------------------------------------
                                    383 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        384 	.ds 8
                                    385 ;--------------------------------------------------------
                                    386 ; internal ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area DSEG    (DATA)
                           000021   389 _DS1302_DATA	=	0x0021
                           000022   390 _BUTTON_DATA	=	0x0022
      00004D                        391 _alarm_lastpoll::
      00004D                        392 	.ds 1
      00004E                        393 _transition_ticks::
      00004E                        394 	.ds 2
      000050                        395 _fsm_home_fn_curstate_1_169:
      000050                        396 	.ds 1
      000051                        397 _fsm_set_fn_curstate_1_245:
      000051                        398 	.ds 1
      000052                        399 _fsm_alarm_fn_curstate_1_257:
      000052                        400 	.ds 1
      000053                        401 _fsm_alarm_fn_sub_curstate_1_257:
      000053                        402 	.ds 1
      000054                        403 _fsm_config_fn_curstate_1_303:
      000054                        404 	.ds 1
      000055                        405 _fsm_config_fn_config_tmp_1_303:
      000055                        406 	.ds 2
                                    407 ;--------------------------------------------------------
                                    408 ; overlayable items in internal ram 
                                    409 ;--------------------------------------------------------
                                    410 ;--------------------------------------------------------
                                    411 ; indirectly addressable internal ram data
                                    412 ;--------------------------------------------------------
                                    413 	.area ISEG    (DATA)
                                    414 ;--------------------------------------------------------
                                    415 ; absolute internal ram data
                                    416 ;--------------------------------------------------------
                                    417 	.area IABS    (ABS,DATA)
                                    418 	.area IABS    (ABS,DATA)
                                    419 ;--------------------------------------------------------
                                    420 ; bit data
                                    421 ;--------------------------------------------------------
                                    422 	.area BSEG    (BIT)
                           000008   423 _DS1302_DATA_0	=	0x0008
                           000009   424 _DS1302_DATA_1	=	0x0009
                           00000A   425 _DS1302_DATA_2	=	0x000a
                           00000B   426 _DS1302_DATA_3	=	0x000b
                           00000C   427 _DS1302_DATA_4	=	0x000c
                           00000D   428 _DS1302_DATA_5	=	0x000d
                           00000E   429 _DS1302_DATA_6	=	0x000e
                           00000F   430 _DS1302_DATA_7	=	0x000f
                           00001F   431 _display_autobrightness	=	0x001f
                           000010   432 _BUTTON_DATA_MENU_PRESSED	=	0x0010
                           000011   433 _BUTTON_DATA_MENU_RELEASED_NORMAL	=	0x0011
                           000012   434 _BUTTON_DATA_MENU_RELEASED_LONGP	=	0x0012
                           000013   435 _BUTTON_DATA_MENU_HELD_DOWN	=	0x0013
                           000014   436 _BUTTON_DATA_SELECT_PRESSED	=	0x0014
                           000015   437 _BUTTON_DATA_SELECT_RELEASED_NORMAL	=	0x0015
                           000016   438 _BUTTON_DATA_SELECT_RELEASED_LONGP	=	0x0016
                           000017   439 _BUTTON_DATA_SELECT_HELD_DOWN	=	0x0017
                           00001E   440 _fsm_home_auto	=	0x001e
                                    441 ;--------------------------------------------------------
                                    442 ; paged external ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area PSEG    (PAG,XDATA)
                                    445 ;--------------------------------------------------------
                                    446 ; external ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area XSEG    (XDATA)
                           000004   449 _alarms	=	0x0004
                                    450 ;--------------------------------------------------------
                                    451 ; absolute external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area XABS    (ABS,XDATA)
                                    454 ;--------------------------------------------------------
                                    455 ; external initialized ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area XISEG   (XDATA)
                                    458 	.area HOME    (CODE)
                                    459 	.area GSINIT0 (CODE)
                                    460 	.area GSINIT1 (CODE)
                                    461 	.area GSINIT2 (CODE)
                                    462 	.area GSINIT3 (CODE)
                                    463 	.area GSINIT4 (CODE)
                                    464 	.area GSINIT5 (CODE)
                                    465 	.area GSINIT  (CODE)
                                    466 	.area GSFINAL (CODE)
                                    467 	.area CSEG    (CODE)
                                    468 ;--------------------------------------------------------
                                    469 ; global & static initialisations
                                    470 ;--------------------------------------------------------
                                    471 	.area HOME    (CODE)
                                    472 	.area GSINIT  (CODE)
                                    473 	.area GSFINAL (CODE)
                                    474 	.area GSINIT  (CODE)
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'fsm_home_fn'
                                    477 ;------------------------------------------------------------
                                    478 ;__00010038                Allocated to registers 
                                    479 ;alarm_index               Allocated to registers r5 
                                    480 ;temp_cache                Allocated to registers r6 r7 
                                    481 ;menu_state                Allocated to registers r7 
                                    482 ;select_state              Allocated to registers r6 
                                    483 ;__00010021                Allocated to registers r4 
                                    484 ;__00010019                Allocated to registers r4 
                                    485 ;__00010017                Allocated to registers r4 
                                    486 ;__00010015                Allocated to registers r4 
                                    487 ;__00010013                Allocated to registers r4 
                                    488 ;__00010011                Allocated to registers r5 
                                    489 ;__00010009                Allocated to registers r5 
                                    490 ;__00040040                Allocated to registers 
                                    491 ;__00050041                Allocated to registers 
                                    492 ;__00050042                Allocated with name '(_ds1302 + 0x0005)'
                                    493 ;index                     Allocated to registers 
                                    494 ;dow                       Allocated to registers 
                                    495 ;__00020048                Allocated to registers 
                                    496 ;tmp                       Allocated to registers r6 r7 
                                    497 ;curstate                  Allocated with name '_fsm_home_fn_curstate_1_169'
                                    498 ;------------------------------------------------------------
                                    499 ;	../fsm.c:15: static enum fsm_states_home curstate = fsm_home_start;
      0000E2 75 50 00         [24]  500 	mov	_fsm_home_fn_curstate_1_169,#0x00
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'fsm_set_fn'
                                    503 ;------------------------------------------------------------
                                    504 ;fsm_set_temp              Allocated to registers r5 
                                    505 ;menu_state                Allocated to registers r7 
                                    506 ;select_state              Allocated to registers r6 
                                    507 ;curstate                  Allocated with name '_fsm_set_fn_curstate_1_245'
                                    508 ;------------------------------------------------------------
                                    509 ;	../fsm.c:167: static enum fsm_states_set curstate = fsm_set_label; //Default display hhmm
      0000E5 75 51 00         [24]  510 	mov	_fsm_set_fn_curstate_1_245,#0x00
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'fsm_alarm_fn'
                                    513 ;------------------------------------------------------------
                                    514 ;alarm_temp                Allocated to registers r5 
                                    515 ;menu_state                Allocated to registers r7 
                                    516 ;select_state              Allocated to registers r6 
                                    517 ;__00020053                Allocated to registers 
                                    518 ;__00030058                Allocated to registers 
                                    519 ;__00040059                Allocated to registers r4 
                                    520 ;__00040060                Allocated to registers r6 
                                    521 ;index                     Allocated to registers 
                                    522 ;dow                       Allocated to registers 
                                    523 ;__00040064                Allocated to registers r5 
                                    524 ;__00040065                Allocated to registers r6 
                                    525 ;index                     Allocated to registers 
                                    526 ;dow                       Allocated to registers 
                                    527 ;curstate                  Allocated with name '_fsm_alarm_fn_curstate_1_257'
                                    528 ;sub_curstate              Allocated with name '_fsm_alarm_fn_sub_curstate_1_257'
                                    529 ;------------------------------------------------------------
                                    530 ;	../fsm.c:263: static enum fsm_states_alarm curstate = fsm_alarm_label;
      0000E8 75 52 00         [24]  531 	mov	_fsm_alarm_fn_curstate_1_257,#0x00
                                    532 ;	../fsm.c:264: static enum fsm_substates_alarm sub_curstate = fsm_alarm_substate_toggle;
      0000EB 75 53 00         [24]  533 	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x00
                                    534 ;------------------------------------------------------------
                                    535 ;Allocation info for local variables in function 'fsm_config_fn'
                                    536 ;------------------------------------------------------------
                                    537 ;config_tmp2               Allocated to registers r4 r5 
                                    538 ;menu_state                Allocated to registers r7 
                                    539 ;select_state              Allocated to registers r6 
                                    540 ;__00020071                Allocated to registers 
                                    541 ;__00040067                Allocated to registers 
                                    542 ;tmp                       Allocated to registers r4 r5 
                                    543 ;__00040069                Allocated to registers 
                                    544 ;tmp                       Allocated to registers r4 r5 
                                    545 ;tmp                       Allocated to registers r4 r5 
                                    546 ;curstate                  Allocated with name '_fsm_config_fn_curstate_1_303'
                                    547 ;config_tmp                Allocated with name '_fsm_config_fn_config_tmp_1_303'
                                    548 ;------------------------------------------------------------
                                    549 ;	../fsm.c:397: static enum fsm_states_config curstate = fsm_config_label;
      0000EE 75 54 00         [24]  550 	mov	_fsm_config_fn_curstate_1_303,#0x00
                                    551 ;	../fsm.c:11: uint8_t alarm_lastpoll = 0;					  ///< Time alarm was last polled (minutes)
      0000F1 75 4D 00         [24]  552 	mov	_alarm_lastpoll,#0x00
                                    553 ;	../fsm.c:12: uint16_t transition_ticks = 0;				  ///< 10ms timer ticks at last transition
      0000F4 E4               [12]  554 	clr	a
      0000F5 F5 4E            [12]  555 	mov	_transition_ticks,a
      0000F7 F5 4F            [12]  556 	mov	(_transition_ticks + 1),a
                                    557 ;--------------------------------------------------------
                                    558 ; Home
                                    559 ;--------------------------------------------------------
                                    560 	.area HOME    (CODE)
                                    561 	.area HOME    (CODE)
                                    562 ;--------------------------------------------------------
                                    563 ; code
                                    564 ;--------------------------------------------------------
                                    565 	.area CSEG    (CODE)
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'fsm_home_fn'
                                    568 ;------------------------------------------------------------
                                    569 ;__00010038                Allocated to registers 
                                    570 ;alarm_index               Allocated to registers r5 
                                    571 ;temp_cache                Allocated to registers r6 r7 
                                    572 ;menu_state                Allocated to registers r7 
                                    573 ;select_state              Allocated to registers r6 
                                    574 ;__00010021                Allocated to registers r4 
                                    575 ;__00010019                Allocated to registers r4 
                                    576 ;__00010017                Allocated to registers r4 
                                    577 ;__00010015                Allocated to registers r4 
                                    578 ;__00010013                Allocated to registers r4 
                                    579 ;__00010011                Allocated to registers r5 
                                    580 ;__00010009                Allocated to registers r5 
                                    581 ;__00040040                Allocated to registers 
                                    582 ;__00050041                Allocated to registers 
                                    583 ;__00050042                Allocated with name '(_ds1302 + 0x0005)'
                                    584 ;index                     Allocated to registers 
                                    585 ;dow                       Allocated to registers 
                                    586 ;__00020048                Allocated to registers 
                                    587 ;tmp                       Allocated to registers r6 r7 
                                    588 ;curstate                  Allocated with name '_fsm_home_fn_curstate_1_169'
                                    589 ;------------------------------------------------------------
                                    590 ;	../fsm.c:14: enum fsm_return fsm_home_fn() __reentrant {
                                    591 ;	-----------------------------------------
                                    592 ;	 function fsm_home_fn
                                    593 ;	-----------------------------------------
      000A83                        594 _fsm_home_fn:
                           000007   595 	ar7 = 0x07
                           000006   596 	ar6 = 0x06
                           000005   597 	ar5 = 0x05
                           000004   598 	ar4 = 0x04
                           000003   599 	ar3 = 0x03
                           000002   600 	ar2 = 0x02
                           000001   601 	ar1 = 0x01
                           000000   602 	ar0 = 0x00
                                    603 ;	../fsm.c:21: menu_state = button_read_and_clear_menu();
      000A83 12 05 0A         [24]  604 	lcall	_button_read_and_clear_menu
      000A86 AF 82            [24]  605 	mov	r7,dpl
                                    606 ;	../fsm.c:22: select_state = button_read_and_clear_select();
      000A88 C0 07            [24]  607 	push	ar7
      000A8A 12 04 DE         [24]  608 	lcall	_button_read_and_clear_select
      000A8D AE 82            [24]  609 	mov	r6,dpl
      000A8F D0 07            [24]  610 	pop	ar7
                                    611 ;	../fsm.c:24: if(curstate != fsm_home_alarm){
      000A91 74 07            [12]  612 	mov	a,#0x07
      000A93 B5 50 03         [24]  613 	cjne	a,_fsm_home_fn_curstate_1_169,00276$
      000A96 02 0B D0         [24]  614 	ljmp	00134$
      000A99                        615 00276$:
                                    616 ;	../fsm.c:25: if((menu_state == BUTTON_LONG_PRESSED) && (select_state == BUTTON_LONG_PRESSED)){
      000A99 BF 01 03         [24]  617 	cjne	r7,#0x01,00277$
      000A9C EF               [12]  618 	mov	a,r7
      000A9D 80 01            [24]  619 	sjmp	00278$
      000A9F                        620 00277$:
      000A9F E4               [12]  621 	clr	a
      000AA0                        622 00278$:
      000AA0 FD               [12]  623 	mov	r5,a
      000AA1 60 0A            [24]  624 	jz	00102$
      000AA3 BE 01 07         [24]  625 	cjne	r6,#0x01,00102$
                                    626 ;	../fsm.c:27: curstate = fsm_home_start; //Reset state back to default
      000AA6 75 50 00         [24]  627 	mov	_fsm_home_fn_curstate_1_169,#0x00
                                    628 ;	../fsm.c:28: return fsm_ok; //Return OK to transition to configuration mode
      000AA9 75 82 00         [24]  629 	mov	dpl,#0x00
      000AAC 22               [24]  630 	ret
      000AAD                        631 00102$:
                                    632 ;	../fsm.c:32: if(menu_state == BUTTON_PRESSED){
      000AAD EF               [12]  633 	mov	a,r7
      000AAE 70 21            [24]  634 	jnz	00107$
                                    635 ;	../fsm.c:34: transition_ticks = centiseconds();
      000AB0 C0 07            [24]  636 	push	ar7
      000AB2 C0 06            [24]  637 	push	ar6
      000AB4 C0 05            [24]  638 	push	ar5
      000AB6 12 1A 99         [24]  639 	lcall	_centiseconds
      000AB9 85 82 4E         [24]  640 	mov	_transition_ticks,dpl
      000ABC 85 83 4F         [24]  641 	mov	(_transition_ticks + 1),dph
      000ABF D0 05            [24]  642 	pop	ar5
      000AC1 D0 06            [24]  643 	pop	ar6
      000AC3 D0 07            [24]  644 	pop	ar7
                                    645 ;	../fsm.c:35: fsm_home_auto = 0;
                                    646 ;	assignBit
      000AC5 C2 1E            [12]  647 	clr	_fsm_home_auto
                                    648 ;	../fsm.c:36: if(++curstate == fsm_home_end)
      000AC7 05 50            [12]  649 	inc	_fsm_home_fn_curstate_1_169
      000AC9 74 06            [12]  650 	mov	a,#0x06
      000ACB B5 50 03         [24]  651 	cjne	a,_fsm_home_fn_curstate_1_169,00107$
                                    652 ;	../fsm.c:37: curstate = fsm_home_start;
      000ACE 75 50 00         [24]  653 	mov	_fsm_home_fn_curstate_1_169,#0x00
      000AD1                        654 00107$:
                                    655 ;	../fsm.c:40: if(menu_state == BUTTON_LONG_PRESSED){
      000AD1 ED               [12]  656 	mov	a,r5
      000AD2 60 16            [24]  657 	jz	00109$
                                    658 ;	../fsm.c:42: transition_ticks = centiseconds();
      000AD4 C0 07            [24]  659 	push	ar7
      000AD6 C0 06            [24]  660 	push	ar6
      000AD8 12 1A 99         [24]  661 	lcall	_centiseconds
      000ADB 85 82 4E         [24]  662 	mov	_transition_ticks,dpl
      000ADE 85 83 4F         [24]  663 	mov	(_transition_ticks + 1),dph
      000AE1 D0 06            [24]  664 	pop	ar6
      000AE3 D0 07            [24]  665 	pop	ar7
                                    666 ;	../fsm.c:43: fsm_home_auto = 0;
                                    667 ;	assignBit
      000AE5 C2 1E            [12]  668 	clr	_fsm_home_auto
                                    669 ;	../fsm.c:44: curstate = fsm_home_start;
      000AE7 75 50 00         [24]  670 	mov	_fsm_home_fn_curstate_1_169,#0x00
      000AEA                        671 00109$:
                                    672 ;	../fsm.c:47: if(select_state == BUTTON_PRESSED){
      000AEA EE               [12]  673 	mov	a,r6
      000AEB 70 13            [24]  674 	jnz	00114$
                                    675 ;	../fsm.c:48: if(display_autobrightness){
                                    676 ;	../fsm.c:49: display_autobrightness = 0;
                                    677 ;	assignBit
      000AED 10 1F 02         [24]  678 	jbc	_display_autobrightness,00287$
      000AF0 80 0C            [24]  679 	sjmp	00111$
      000AF2                        680 00287$:
                                    681 ;	../fsm.c:50: INT_IE_EA = 0;
                                    682 ;	assignBit
      000AF2 C2 AF            [12]  683 	clr	_INT_IE_EA
                                    684 ;	../fsm.c:51: display_counts = DISPLAY_COUNTS_MAX;
      000AF4 75 41 00         [24]  685 	mov	_display_counts,#0x00
      000AF7 75 42 EA         [24]  686 	mov	(_display_counts + 1),#0xea
                                    687 ;	../fsm.c:52: INT_IE_EA = 1;
                                    688 ;	assignBit
      000AFA D2 AF            [12]  689 	setb	_INT_IE_EA
      000AFC 80 02            [24]  690 	sjmp	00114$
      000AFE                        691 00111$:
                                    692 ;	../fsm.c:54: display_autobrightness = 1;
                                    693 ;	assignBit
      000AFE D2 1F            [12]  694 	setb	_display_autobrightness
      000B00                        695 00114$:
                                    696 ;	../fsm.c:58: if(curstate != fsm_home_start) {
      000B00 E5 50            [12]  697 	mov	a,_fsm_home_fn_curstate_1_169
      000B02 70 03            [24]  698 	jnz	00288$
      000B04 02 0B A9         [24]  699 	ljmp	00131$
      000B07                        700 00288$:
                                    701 ;	../fsm.c:59: if(fsm_home_auto){
      000B07 30 1E 67         [24]  702 	jnb	_fsm_home_auto,00126$
                                    703 ;	../fsm.c:61: if((centiseconds() - transition_ticks) > FSM_HOME_AUTO_SCROLL_TICKS){
      000B0A C0 07            [24]  704 	push	ar7
      000B0C C0 06            [24]  705 	push	ar6
      000B0E 12 1A 99         [24]  706 	lcall	_centiseconds
      000B11 E5 82            [12]  707 	mov	a,dpl
      000B13 85 83 F0         [24]  708 	mov	b,dph
      000B16 D0 06            [24]  709 	pop	ar6
      000B18 D0 07            [24]  710 	pop	ar7
      000B1A C3               [12]  711 	clr	c
      000B1B 95 4E            [12]  712 	subb	a,_transition_ticks
      000B1D FC               [12]  713 	mov	r4,a
      000B1E E5 F0            [12]  714 	mov	a,b
      000B20 95 4F            [12]  715 	subb	a,(_transition_ticks + 1)
      000B22 FD               [12]  716 	mov	r5,a
      000B23 C3               [12]  717 	clr	c
      000B24 74 C8            [12]  718 	mov	a,#0xc8
      000B26 9C               [12]  719 	subb	a,r4
      000B27 E4               [12]  720 	clr	a
      000B28 9D               [12]  721 	subb	a,r5
      000B29 40 03            [24]  722 	jc	00290$
      000B2B 02 0B D0         [24]  723 	ljmp	00134$
      000B2E                        724 00290$:
                                    725 ;	../fsm.c:64: while(++curstate != fsm_home_end){
      000B2E                        726 00118$:
      000B2E 05 50            [12]  727 	inc	_fsm_home_fn_curstate_1_169
      000B30 74 06            [12]  728 	mov	a,#0x06
      000B32 B5 50 02         [24]  729 	cjne	a,_fsm_home_fn_curstate_1_169,00291$
      000B35 80 22            [24]  730 	sjmp	00120$
      000B37                        731 00291$:
                                    732 ;	../fsm.c:65: if((ds1302_sram_data[0x03] >> curstate) & 0x01){
      000B37 90 00 03         [24]  733 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      000B3A E0               [24]  734 	movx	a,@dptr
      000B3B FD               [12]  735 	mov	r5,a
      000B3C 85 50 F0         [24]  736 	mov	b,_fsm_home_fn_curstate_1_169
      000B3F 05 F0            [12]  737 	inc	b
      000B41 ED               [12]  738 	mov	a,r5
      000B42 80 02            [24]  739 	sjmp	00293$
      000B44                        740 00292$:
      000B44 C3               [12]  741 	clr	c
      000B45 13               [12]  742 	rrc	a
      000B46                        743 00293$:
      000B46 D5 F0 FB         [24]  744 	djnz	b,00292$
      000B49 30 E0 E2         [24]  745 	jnb	acc.0,00118$
                                    746 ;	../fsm.c:67: transition_ticks = centiseconds();
      000B4C 12 1A 99         [24]  747 	lcall	_centiseconds
      000B4F 85 82 4E         [24]  748 	mov	_transition_ticks,dpl
      000B52 85 83 4F         [24]  749 	mov	(_transition_ticks + 1),dph
                                    750 ;	../fsm.c:68: return fsm_repeat;
      000B55 75 82 01         [24]  751 	mov	dpl,#0x01
      000B58 22               [24]  752 	ret
      000B59                        753 00120$:
                                    754 ;	../fsm.c:72: transition_ticks = centiseconds();
      000B59 C0 07            [24]  755 	push	ar7
      000B5B C0 06            [24]  756 	push	ar6
      000B5D 12 1A 99         [24]  757 	lcall	_centiseconds
      000B60 85 82 4E         [24]  758 	mov	_transition_ticks,dpl
      000B63 85 83 4F         [24]  759 	mov	(_transition_ticks + 1),dph
      000B66 D0 06            [24]  760 	pop	ar6
      000B68 D0 07            [24]  761 	pop	ar7
                                    762 ;	../fsm.c:73: fsm_home_auto = 0;
                                    763 ;	assignBit
      000B6A C2 1E            [12]  764 	clr	_fsm_home_auto
                                    765 ;	../fsm.c:74: curstate = fsm_home_start;
      000B6C 75 50 00         [24]  766 	mov	_fsm_home_fn_curstate_1_169,#0x00
      000B6F 80 5F            [24]  767 	sjmp	00134$
      000B71                        768 00126$:
                                    769 ;	../fsm.c:78: if(((centiseconds() - transition_ticks) > FSM_HOME_RESET_TICKS)) {
      000B71 C0 07            [24]  770 	push	ar7
      000B73 C0 06            [24]  771 	push	ar6
      000B75 12 1A 99         [24]  772 	lcall	_centiseconds
      000B78 E5 82            [12]  773 	mov	a,dpl
      000B7A 85 83 F0         [24]  774 	mov	b,dph
      000B7D D0 06            [24]  775 	pop	ar6
      000B7F D0 07            [24]  776 	pop	ar7
      000B81 C3               [12]  777 	clr	c
      000B82 95 4E            [12]  778 	subb	a,_transition_ticks
      000B84 FC               [12]  779 	mov	r4,a
      000B85 E5 F0            [12]  780 	mov	a,b
      000B87 95 4F            [12]  781 	subb	a,(_transition_ticks + 1)
      000B89 FD               [12]  782 	mov	r5,a
      000B8A C3               [12]  783 	clr	c
      000B8B 74 E8            [12]  784 	mov	a,#0xe8
      000B8D 9C               [12]  785 	subb	a,r4
      000B8E 74 03            [12]  786 	mov	a,#0x03
      000B90 9D               [12]  787 	subb	a,r5
      000B91 50 3D            [24]  788 	jnc	00134$
                                    789 ;	../fsm.c:80: transition_ticks = centiseconds();
      000B93 C0 07            [24]  790 	push	ar7
      000B95 C0 06            [24]  791 	push	ar6
      000B97 12 1A 99         [24]  792 	lcall	_centiseconds
      000B9A 85 82 4E         [24]  793 	mov	_transition_ticks,dpl
      000B9D 85 83 4F         [24]  794 	mov	(_transition_ticks + 1),dph
      000BA0 D0 06            [24]  795 	pop	ar6
      000BA2 D0 07            [24]  796 	pop	ar7
                                    797 ;	../fsm.c:81: curstate = fsm_home_start;
      000BA4 75 50 00         [24]  798 	mov	_fsm_home_fn_curstate_1_169,#0x00
      000BA7 80 27            [24]  799 	sjmp	00134$
      000BA9                        800 00131$:
                                    801 ;	../fsm.c:88: if((centiseconds() - transition_ticks) > FSM_HOME_AUTO_ENABLE_TICKS) {
      000BA9 C0 07            [24]  802 	push	ar7
      000BAB C0 06            [24]  803 	push	ar6
      000BAD 12 1A 99         [24]  804 	lcall	_centiseconds
      000BB0 E5 82            [12]  805 	mov	a,dpl
      000BB2 85 83 F0         [24]  806 	mov	b,dph
      000BB5 D0 06            [24]  807 	pop	ar6
      000BB7 D0 07            [24]  808 	pop	ar7
      000BB9 C3               [12]  809 	clr	c
      000BBA 95 4E            [12]  810 	subb	a,_transition_ticks
      000BBC FC               [12]  811 	mov	r4,a
      000BBD E5 F0            [12]  812 	mov	a,b
      000BBF 95 4F            [12]  813 	subb	a,(_transition_ticks + 1)
      000BC1 FD               [12]  814 	mov	r5,a
      000BC2 C3               [12]  815 	clr	c
      000BC3 74 E8            [12]  816 	mov	a,#0xe8
      000BC5 9C               [12]  817 	subb	a,r4
      000BC6 74 03            [12]  818 	mov	a,#0x03
      000BC8 9D               [12]  819 	subb	a,r5
      000BC9 50 05            [24]  820 	jnc	00134$
                                    821 ;	../fsm.c:90: fsm_home_auto = 1;
                                    822 ;	assignBit
      000BCB D2 1E            [12]  823 	setb	_fsm_home_auto
                                    824 ;	../fsm.c:91: goto find_auto_target;
      000BCD 02 0B 2E         [24]  825 	ljmp	00118$
      000BD0                        826 00134$:
                                    827 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:352: ds1302_start(0xbf); //Start clock burst read
      000BD0 75 82 BF         [24]  828 	mov	dpl,#0xbf
      000BD3 C0 07            [24]  829 	push	ar7
      000BD5 C0 06            [24]  830 	push	ar6
      000BD7 12 07 9C         [24]  831 	lcall	_ds1302_start
      000BDA D0 06            [24]  832 	pop	ar6
      000BDC D0 07            [24]  833 	pop	ar7
                                    834 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:353: ds1302.seconds = ds1302_read_byte(); //Read in seconds register
                                    835 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
                                    836 ;	assignBit
      000BDE D2 91            [12]  837 	setb	_PORT_P1_1
                                    838 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
      000BE0 00               [12]  839 	nop
      000BE1 00               [12]  840 	nop
      000BE2 00               [12]  841 	nop
                                    842 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
                                    843 ;	assignBit
      000BE3 A2 91            [12]  844 	mov	c,_PORT_P1_1
      000BE5 92 08            [24]  845 	mov	_DS1302_DATA_0,c
                                    846 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
                                    847 ;	assignBit
      000BE7 D2 92            [12]  848 	setb	_PORT_P1_2
                                    849 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
      000BE9 00               [12]  850 	nop
      000BEA 00               [12]  851 	nop
      000BEB 00               [12]  852 	nop
      000BEC 00               [12]  853 	nop
                                    854 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
                                    855 ;	assignBit
      000BED C2 92            [12]  856 	clr	_PORT_P1_2
                                    857 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
      000BEF 00               [12]  858 	nop
      000BF0 00               [12]  859 	nop
      000BF1 00               [12]  860 	nop
                                    861 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
                                    862 ;	assignBit
      000BF2 A2 91            [12]  863 	mov	c,_PORT_P1_1
      000BF4 92 09            [24]  864 	mov	_DS1302_DATA_1,c
                                    865 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
                                    866 ;	assignBit
      000BF6 D2 92            [12]  867 	setb	_PORT_P1_2
                                    868 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
      000BF8 00               [12]  869 	nop
      000BF9 00               [12]  870 	nop
      000BFA 00               [12]  871 	nop
      000BFB 00               [12]  872 	nop
                                    873 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
                                    874 ;	assignBit
      000BFC C2 92            [12]  875 	clr	_PORT_P1_2
                                    876 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
      000BFE 00               [12]  877 	nop
      000BFF 00               [12]  878 	nop
      000C00 00               [12]  879 	nop
                                    880 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
                                    881 ;	assignBit
      000C01 A2 91            [12]  882 	mov	c,_PORT_P1_1
      000C03 92 0A            [24]  883 	mov	_DS1302_DATA_2,c
                                    884 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
                                    885 ;	assignBit
      000C05 D2 92            [12]  886 	setb	_PORT_P1_2
                                    887 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
      000C07 00               [12]  888 	nop
      000C08 00               [12]  889 	nop
      000C09 00               [12]  890 	nop
      000C0A 00               [12]  891 	nop
                                    892 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
                                    893 ;	assignBit
      000C0B C2 92            [12]  894 	clr	_PORT_P1_2
                                    895 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
      000C0D 00               [12]  896 	nop
      000C0E 00               [12]  897 	nop
      000C0F 00               [12]  898 	nop
                                    899 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
                                    900 ;	assignBit
      000C10 A2 91            [12]  901 	mov	c,_PORT_P1_1
      000C12 92 0B            [24]  902 	mov	_DS1302_DATA_3,c
                                    903 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
                                    904 ;	assignBit
      000C14 D2 92            [12]  905 	setb	_PORT_P1_2
                                    906 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
      000C16 00               [12]  907 	nop
      000C17 00               [12]  908 	nop
      000C18 00               [12]  909 	nop
      000C19 00               [12]  910 	nop
                                    911 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
                                    912 ;	assignBit
      000C1A C2 92            [12]  913 	clr	_PORT_P1_2
                                    914 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
      000C1C 00               [12]  915 	nop
      000C1D 00               [12]  916 	nop
      000C1E 00               [12]  917 	nop
                                    918 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
                                    919 ;	assignBit
      000C1F A2 91            [12]  920 	mov	c,_PORT_P1_1
      000C21 92 0C            [24]  921 	mov	_DS1302_DATA_4,c
                                    922 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
                                    923 ;	assignBit
      000C23 D2 92            [12]  924 	setb	_PORT_P1_2
                                    925 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
      000C25 00               [12]  926 	nop
      000C26 00               [12]  927 	nop
      000C27 00               [12]  928 	nop
      000C28 00               [12]  929 	nop
                                    930 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
                                    931 ;	assignBit
      000C29 C2 92            [12]  932 	clr	_PORT_P1_2
                                    933 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
      000C2B 00               [12]  934 	nop
      000C2C 00               [12]  935 	nop
      000C2D 00               [12]  936 	nop
                                    937 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
                                    938 ;	assignBit
      000C2E A2 91            [12]  939 	mov	c,_PORT_P1_1
      000C30 92 0D            [24]  940 	mov	_DS1302_DATA_5,c
                                    941 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
                                    942 ;	assignBit
      000C32 D2 92            [12]  943 	setb	_PORT_P1_2
                                    944 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
      000C34 00               [12]  945 	nop
      000C35 00               [12]  946 	nop
      000C36 00               [12]  947 	nop
      000C37 00               [12]  948 	nop
                                    949 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
                                    950 ;	assignBit
      000C38 C2 92            [12]  951 	clr	_PORT_P1_2
                                    952 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
      000C3A 00               [12]  953 	nop
      000C3B 00               [12]  954 	nop
      000C3C 00               [12]  955 	nop
                                    956 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
                                    957 ;	assignBit
      000C3D A2 91            [12]  958 	mov	c,_PORT_P1_1
      000C3F 92 0E            [24]  959 	mov	_DS1302_DATA_6,c
                                    960 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
                                    961 ;	assignBit
      000C41 D2 92            [12]  962 	setb	_PORT_P1_2
                                    963 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
      000C43 00               [12]  964 	nop
      000C44 00               [12]  965 	nop
      000C45 00               [12]  966 	nop
      000C46 00               [12]  967 	nop
                                    968 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
                                    969 ;	assignBit
      000C47 C2 92            [12]  970 	clr	_PORT_P1_2
                                    971 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
      000C49 00               [12]  972 	nop
      000C4A 00               [12]  973 	nop
      000C4B 00               [12]  974 	nop
                                    975 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
                                    976 ;	assignBit
      000C4C A2 91            [12]  977 	mov	c,_PORT_P1_1
      000C4E 92 0F            [24]  978 	mov	_DS1302_DATA_7,c
                                    979 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
                                    980 ;	assignBit
      000C50 D2 92            [12]  981 	setb	_PORT_P1_2
                                    982 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
      000C52 00               [12]  983 	nop
      000C53 00               [12]  984 	nop
      000C54 00               [12]  985 	nop
      000C55 00               [12]  986 	nop
                                    987 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
                                    988 ;	assignBit
      000C56 C2 92            [12]  989 	clr	_PORT_P1_2
                                    990 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
      000C58 AD 21            [24]  991 	mov	r5,_DS1302_DATA
                                    992 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:353: ds1302.seconds = ds1302_read_byte(); //Read in seconds register
      000C5A 8D 45            [24]  993 	mov	_ds1302,r5
                                    994 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:354: ds1302.minutes = ds1302_read_byte(); //Read in minutes register
                                    995 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
                                    996 ;	assignBit
      000C5C D2 91            [12]  997 	setb	_PORT_P1_1
                                    998 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
      000C5E 00               [12]  999 	nop
      000C5F 00               [12] 1000 	nop
      000C60 00               [12] 1001 	nop
                                   1002 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
                                   1003 ;	assignBit
      000C61 A2 91            [12] 1004 	mov	c,_PORT_P1_1
      000C63 92 08            [24] 1005 	mov	_DS1302_DATA_0,c
                                   1006 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
                                   1007 ;	assignBit
      000C65 D2 92            [12] 1008 	setb	_PORT_P1_2
                                   1009 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
      000C67 00               [12] 1010 	nop
      000C68 00               [12] 1011 	nop
      000C69 00               [12] 1012 	nop
      000C6A 00               [12] 1013 	nop
                                   1014 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
                                   1015 ;	assignBit
      000C6B C2 92            [12] 1016 	clr	_PORT_P1_2
                                   1017 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
      000C6D 00               [12] 1018 	nop
      000C6E 00               [12] 1019 	nop
      000C6F 00               [12] 1020 	nop
                                   1021 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
                                   1022 ;	assignBit
      000C70 A2 91            [12] 1023 	mov	c,_PORT_P1_1
      000C72 92 09            [24] 1024 	mov	_DS1302_DATA_1,c
                                   1025 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
                                   1026 ;	assignBit
      000C74 D2 92            [12] 1027 	setb	_PORT_P1_2
                                   1028 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
      000C76 00               [12] 1029 	nop
      000C77 00               [12] 1030 	nop
      000C78 00               [12] 1031 	nop
      000C79 00               [12] 1032 	nop
                                   1033 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
                                   1034 ;	assignBit
      000C7A C2 92            [12] 1035 	clr	_PORT_P1_2
                                   1036 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
      000C7C 00               [12] 1037 	nop
      000C7D 00               [12] 1038 	nop
      000C7E 00               [12] 1039 	nop
                                   1040 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
                                   1041 ;	assignBit
      000C7F A2 91            [12] 1042 	mov	c,_PORT_P1_1
      000C81 92 0A            [24] 1043 	mov	_DS1302_DATA_2,c
                                   1044 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
                                   1045 ;	assignBit
      000C83 D2 92            [12] 1046 	setb	_PORT_P1_2
                                   1047 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
      000C85 00               [12] 1048 	nop
      000C86 00               [12] 1049 	nop
      000C87 00               [12] 1050 	nop
      000C88 00               [12] 1051 	nop
                                   1052 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
                                   1053 ;	assignBit
      000C89 C2 92            [12] 1054 	clr	_PORT_P1_2
                                   1055 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
      000C8B 00               [12] 1056 	nop
      000C8C 00               [12] 1057 	nop
      000C8D 00               [12] 1058 	nop
                                   1059 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
                                   1060 ;	assignBit
      000C8E A2 91            [12] 1061 	mov	c,_PORT_P1_1
      000C90 92 0B            [24] 1062 	mov	_DS1302_DATA_3,c
                                   1063 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
                                   1064 ;	assignBit
      000C92 D2 92            [12] 1065 	setb	_PORT_P1_2
                                   1066 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
      000C94 00               [12] 1067 	nop
      000C95 00               [12] 1068 	nop
      000C96 00               [12] 1069 	nop
      000C97 00               [12] 1070 	nop
                                   1071 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
                                   1072 ;	assignBit
      000C98 C2 92            [12] 1073 	clr	_PORT_P1_2
                                   1074 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
      000C9A 00               [12] 1075 	nop
      000C9B 00               [12] 1076 	nop
      000C9C 00               [12] 1077 	nop
                                   1078 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
                                   1079 ;	assignBit
      000C9D A2 91            [12] 1080 	mov	c,_PORT_P1_1
      000C9F 92 0C            [24] 1081 	mov	_DS1302_DATA_4,c
                                   1082 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
                                   1083 ;	assignBit
      000CA1 D2 92            [12] 1084 	setb	_PORT_P1_2
                                   1085 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
      000CA3 00               [12] 1086 	nop
      000CA4 00               [12] 1087 	nop
      000CA5 00               [12] 1088 	nop
      000CA6 00               [12] 1089 	nop
                                   1090 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
                                   1091 ;	assignBit
      000CA7 C2 92            [12] 1092 	clr	_PORT_P1_2
                                   1093 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
      000CA9 00               [12] 1094 	nop
      000CAA 00               [12] 1095 	nop
      000CAB 00               [12] 1096 	nop
                                   1097 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
                                   1098 ;	assignBit
      000CAC A2 91            [12] 1099 	mov	c,_PORT_P1_1
      000CAE 92 0D            [24] 1100 	mov	_DS1302_DATA_5,c
                                   1101 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
                                   1102 ;	assignBit
      000CB0 D2 92            [12] 1103 	setb	_PORT_P1_2
                                   1104 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
      000CB2 00               [12] 1105 	nop
      000CB3 00               [12] 1106 	nop
      000CB4 00               [12] 1107 	nop
      000CB5 00               [12] 1108 	nop
                                   1109 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
                                   1110 ;	assignBit
      000CB6 C2 92            [12] 1111 	clr	_PORT_P1_2
                                   1112 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
      000CB8 00               [12] 1113 	nop
      000CB9 00               [12] 1114 	nop
      000CBA 00               [12] 1115 	nop
                                   1116 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
                                   1117 ;	assignBit
      000CBB A2 91            [12] 1118 	mov	c,_PORT_P1_1
      000CBD 92 0E            [24] 1119 	mov	_DS1302_DATA_6,c
                                   1120 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
                                   1121 ;	assignBit
      000CBF D2 92            [12] 1122 	setb	_PORT_P1_2
                                   1123 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
      000CC1 00               [12] 1124 	nop
      000CC2 00               [12] 1125 	nop
      000CC3 00               [12] 1126 	nop
      000CC4 00               [12] 1127 	nop
                                   1128 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
                                   1129 ;	assignBit
      000CC5 C2 92            [12] 1130 	clr	_PORT_P1_2
                                   1131 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
      000CC7 00               [12] 1132 	nop
      000CC8 00               [12] 1133 	nop
      000CC9 00               [12] 1134 	nop
                                   1135 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
                                   1136 ;	assignBit
      000CCA A2 91            [12] 1137 	mov	c,_PORT_P1_1
      000CCC 92 0F            [24] 1138 	mov	_DS1302_DATA_7,c
                                   1139 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
                                   1140 ;	assignBit
      000CCE D2 92            [12] 1141 	setb	_PORT_P1_2
                                   1142 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
      000CD0 00               [12] 1143 	nop
      000CD1 00               [12] 1144 	nop
      000CD2 00               [12] 1145 	nop
      000CD3 00               [12] 1146 	nop
                                   1147 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
                                   1148 ;	assignBit
      000CD4 C2 92            [12] 1149 	clr	_PORT_P1_2
                                   1150 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
      000CD6 AD 21            [24] 1151 	mov	r5,_DS1302_DATA
                                   1152 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:354: ds1302.minutes = ds1302_read_byte(); //Read in minutes register
      000CD8 8D 46            [24] 1153 	mov	(_ds1302 + 0x0001),r5
                                   1154 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:355: ds1302.hour    = ds1302_read_byte(); //Read in hours register
                                   1155 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
                                   1156 ;	assignBit
      000CDA D2 91            [12] 1157 	setb	_PORT_P1_1
                                   1158 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
      000CDC 00               [12] 1159 	nop
      000CDD 00               [12] 1160 	nop
      000CDE 00               [12] 1161 	nop
                                   1162 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
                                   1163 ;	assignBit
      000CDF A2 91            [12] 1164 	mov	c,_PORT_P1_1
      000CE1 92 08            [24] 1165 	mov	_DS1302_DATA_0,c
                                   1166 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
                                   1167 ;	assignBit
      000CE3 D2 92            [12] 1168 	setb	_PORT_P1_2
                                   1169 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
      000CE5 00               [12] 1170 	nop
      000CE6 00               [12] 1171 	nop
      000CE7 00               [12] 1172 	nop
      000CE8 00               [12] 1173 	nop
                                   1174 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
                                   1175 ;	assignBit
      000CE9 C2 92            [12] 1176 	clr	_PORT_P1_2
                                   1177 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
      000CEB 00               [12] 1178 	nop
      000CEC 00               [12] 1179 	nop
      000CED 00               [12] 1180 	nop
                                   1181 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
                                   1182 ;	assignBit
      000CEE A2 91            [12] 1183 	mov	c,_PORT_P1_1
      000CF0 92 09            [24] 1184 	mov	_DS1302_DATA_1,c
                                   1185 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
                                   1186 ;	assignBit
      000CF2 D2 92            [12] 1187 	setb	_PORT_P1_2
                                   1188 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
      000CF4 00               [12] 1189 	nop
      000CF5 00               [12] 1190 	nop
      000CF6 00               [12] 1191 	nop
      000CF7 00               [12] 1192 	nop
                                   1193 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
                                   1194 ;	assignBit
      000CF8 C2 92            [12] 1195 	clr	_PORT_P1_2
                                   1196 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
      000CFA 00               [12] 1197 	nop
      000CFB 00               [12] 1198 	nop
      000CFC 00               [12] 1199 	nop
                                   1200 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
                                   1201 ;	assignBit
      000CFD A2 91            [12] 1202 	mov	c,_PORT_P1_1
      000CFF 92 0A            [24] 1203 	mov	_DS1302_DATA_2,c
                                   1204 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
                                   1205 ;	assignBit
      000D01 D2 92            [12] 1206 	setb	_PORT_P1_2
                                   1207 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
      000D03 00               [12] 1208 	nop
      000D04 00               [12] 1209 	nop
      000D05 00               [12] 1210 	nop
      000D06 00               [12] 1211 	nop
                                   1212 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
                                   1213 ;	assignBit
      000D07 C2 92            [12] 1214 	clr	_PORT_P1_2
                                   1215 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
      000D09 00               [12] 1216 	nop
      000D0A 00               [12] 1217 	nop
      000D0B 00               [12] 1218 	nop
                                   1219 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
                                   1220 ;	assignBit
      000D0C A2 91            [12] 1221 	mov	c,_PORT_P1_1
      000D0E 92 0B            [24] 1222 	mov	_DS1302_DATA_3,c
                                   1223 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
                                   1224 ;	assignBit
      000D10 D2 92            [12] 1225 	setb	_PORT_P1_2
                                   1226 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
      000D12 00               [12] 1227 	nop
      000D13 00               [12] 1228 	nop
      000D14 00               [12] 1229 	nop
      000D15 00               [12] 1230 	nop
                                   1231 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
                                   1232 ;	assignBit
      000D16 C2 92            [12] 1233 	clr	_PORT_P1_2
                                   1234 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
      000D18 00               [12] 1235 	nop
      000D19 00               [12] 1236 	nop
      000D1A 00               [12] 1237 	nop
                                   1238 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
                                   1239 ;	assignBit
      000D1B A2 91            [12] 1240 	mov	c,_PORT_P1_1
      000D1D 92 0C            [24] 1241 	mov	_DS1302_DATA_4,c
                                   1242 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
                                   1243 ;	assignBit
      000D1F D2 92            [12] 1244 	setb	_PORT_P1_2
                                   1245 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
      000D21 00               [12] 1246 	nop
      000D22 00               [12] 1247 	nop
      000D23 00               [12] 1248 	nop
      000D24 00               [12] 1249 	nop
                                   1250 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
                                   1251 ;	assignBit
      000D25 C2 92            [12] 1252 	clr	_PORT_P1_2
                                   1253 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
      000D27 00               [12] 1254 	nop
      000D28 00               [12] 1255 	nop
      000D29 00               [12] 1256 	nop
                                   1257 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
                                   1258 ;	assignBit
      000D2A A2 91            [12] 1259 	mov	c,_PORT_P1_1
      000D2C 92 0D            [24] 1260 	mov	_DS1302_DATA_5,c
                                   1261 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
                                   1262 ;	assignBit
      000D2E D2 92            [12] 1263 	setb	_PORT_P1_2
                                   1264 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
      000D30 00               [12] 1265 	nop
      000D31 00               [12] 1266 	nop
      000D32 00               [12] 1267 	nop
      000D33 00               [12] 1268 	nop
                                   1269 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
                                   1270 ;	assignBit
      000D34 C2 92            [12] 1271 	clr	_PORT_P1_2
                                   1272 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
      000D36 00               [12] 1273 	nop
      000D37 00               [12] 1274 	nop
      000D38 00               [12] 1275 	nop
                                   1276 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
                                   1277 ;	assignBit
      000D39 A2 91            [12] 1278 	mov	c,_PORT_P1_1
      000D3B 92 0E            [24] 1279 	mov	_DS1302_DATA_6,c
                                   1280 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
                                   1281 ;	assignBit
      000D3D D2 92            [12] 1282 	setb	_PORT_P1_2
                                   1283 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
      000D3F 00               [12] 1284 	nop
      000D40 00               [12] 1285 	nop
      000D41 00               [12] 1286 	nop
      000D42 00               [12] 1287 	nop
                                   1288 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
                                   1289 ;	assignBit
      000D43 C2 92            [12] 1290 	clr	_PORT_P1_2
                                   1291 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
      000D45 00               [12] 1292 	nop
      000D46 00               [12] 1293 	nop
      000D47 00               [12] 1294 	nop
                                   1295 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
                                   1296 ;	assignBit
      000D48 A2 91            [12] 1297 	mov	c,_PORT_P1_1
      000D4A 92 0F            [24] 1298 	mov	_DS1302_DATA_7,c
                                   1299 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
                                   1300 ;	assignBit
      000D4C D2 92            [12] 1301 	setb	_PORT_P1_2
                                   1302 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
      000D4E 00               [12] 1303 	nop
      000D4F 00               [12] 1304 	nop
      000D50 00               [12] 1305 	nop
      000D51 00               [12] 1306 	nop
                                   1307 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
                                   1308 ;	assignBit
      000D52 C2 92            [12] 1309 	clr	_PORT_P1_2
                                   1310 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
      000D54 AC 21            [24] 1311 	mov	r4,_DS1302_DATA
                                   1312 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:355: ds1302.hour    = ds1302_read_byte(); //Read in hours register
      000D56 8C 47            [24] 1313 	mov	(_ds1302 + 0x0002),r4
                                   1314 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:356: ds1302.date    = ds1302_read_byte(); //Read in date register
                                   1315 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
                                   1316 ;	assignBit
      000D58 D2 91            [12] 1317 	setb	_PORT_P1_1
                                   1318 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
      000D5A 00               [12] 1319 	nop
      000D5B 00               [12] 1320 	nop
      000D5C 00               [12] 1321 	nop
                                   1322 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
                                   1323 ;	assignBit
      000D5D A2 91            [12] 1324 	mov	c,_PORT_P1_1
      000D5F 92 08            [24] 1325 	mov	_DS1302_DATA_0,c
                                   1326 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
                                   1327 ;	assignBit
      000D61 D2 92            [12] 1328 	setb	_PORT_P1_2
                                   1329 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
      000D63 00               [12] 1330 	nop
      000D64 00               [12] 1331 	nop
      000D65 00               [12] 1332 	nop
      000D66 00               [12] 1333 	nop
                                   1334 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
                                   1335 ;	assignBit
      000D67 C2 92            [12] 1336 	clr	_PORT_P1_2
                                   1337 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
      000D69 00               [12] 1338 	nop
      000D6A 00               [12] 1339 	nop
      000D6B 00               [12] 1340 	nop
                                   1341 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
                                   1342 ;	assignBit
      000D6C A2 91            [12] 1343 	mov	c,_PORT_P1_1
      000D6E 92 09            [24] 1344 	mov	_DS1302_DATA_1,c
                                   1345 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
                                   1346 ;	assignBit
      000D70 D2 92            [12] 1347 	setb	_PORT_P1_2
                                   1348 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
      000D72 00               [12] 1349 	nop
      000D73 00               [12] 1350 	nop
      000D74 00               [12] 1351 	nop
      000D75 00               [12] 1352 	nop
                                   1353 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
                                   1354 ;	assignBit
      000D76 C2 92            [12] 1355 	clr	_PORT_P1_2
                                   1356 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
      000D78 00               [12] 1357 	nop
      000D79 00               [12] 1358 	nop
      000D7A 00               [12] 1359 	nop
                                   1360 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
                                   1361 ;	assignBit
      000D7B A2 91            [12] 1362 	mov	c,_PORT_P1_1
      000D7D 92 0A            [24] 1363 	mov	_DS1302_DATA_2,c
                                   1364 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
                                   1365 ;	assignBit
      000D7F D2 92            [12] 1366 	setb	_PORT_P1_2
                                   1367 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
      000D81 00               [12] 1368 	nop
      000D82 00               [12] 1369 	nop
      000D83 00               [12] 1370 	nop
      000D84 00               [12] 1371 	nop
                                   1372 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
                                   1373 ;	assignBit
      000D85 C2 92            [12] 1374 	clr	_PORT_P1_2
                                   1375 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
      000D87 00               [12] 1376 	nop
      000D88 00               [12] 1377 	nop
      000D89 00               [12] 1378 	nop
                                   1379 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
                                   1380 ;	assignBit
      000D8A A2 91            [12] 1381 	mov	c,_PORT_P1_1
      000D8C 92 0B            [24] 1382 	mov	_DS1302_DATA_3,c
                                   1383 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
                                   1384 ;	assignBit
      000D8E D2 92            [12] 1385 	setb	_PORT_P1_2
                                   1386 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
      000D90 00               [12] 1387 	nop
      000D91 00               [12] 1388 	nop
      000D92 00               [12] 1389 	nop
      000D93 00               [12] 1390 	nop
                                   1391 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
                                   1392 ;	assignBit
      000D94 C2 92            [12] 1393 	clr	_PORT_P1_2
                                   1394 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
      000D96 00               [12] 1395 	nop
      000D97 00               [12] 1396 	nop
      000D98 00               [12] 1397 	nop
                                   1398 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
                                   1399 ;	assignBit
      000D99 A2 91            [12] 1400 	mov	c,_PORT_P1_1
      000D9B 92 0C            [24] 1401 	mov	_DS1302_DATA_4,c
                                   1402 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
                                   1403 ;	assignBit
      000D9D D2 92            [12] 1404 	setb	_PORT_P1_2
                                   1405 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
      000D9F 00               [12] 1406 	nop
      000DA0 00               [12] 1407 	nop
      000DA1 00               [12] 1408 	nop
      000DA2 00               [12] 1409 	nop
                                   1410 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
                                   1411 ;	assignBit
      000DA3 C2 92            [12] 1412 	clr	_PORT_P1_2
                                   1413 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
      000DA5 00               [12] 1414 	nop
      000DA6 00               [12] 1415 	nop
      000DA7 00               [12] 1416 	nop
                                   1417 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
                                   1418 ;	assignBit
      000DA8 A2 91            [12] 1419 	mov	c,_PORT_P1_1
      000DAA 92 0D            [24] 1420 	mov	_DS1302_DATA_5,c
                                   1421 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
                                   1422 ;	assignBit
      000DAC D2 92            [12] 1423 	setb	_PORT_P1_2
                                   1424 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
      000DAE 00               [12] 1425 	nop
      000DAF 00               [12] 1426 	nop
      000DB0 00               [12] 1427 	nop
      000DB1 00               [12] 1428 	nop
                                   1429 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
                                   1430 ;	assignBit
      000DB2 C2 92            [12] 1431 	clr	_PORT_P1_2
                                   1432 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
      000DB4 00               [12] 1433 	nop
      000DB5 00               [12] 1434 	nop
      000DB6 00               [12] 1435 	nop
                                   1436 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
                                   1437 ;	assignBit
      000DB7 A2 91            [12] 1438 	mov	c,_PORT_P1_1
      000DB9 92 0E            [24] 1439 	mov	_DS1302_DATA_6,c
                                   1440 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
                                   1441 ;	assignBit
      000DBB D2 92            [12] 1442 	setb	_PORT_P1_2
                                   1443 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
      000DBD 00               [12] 1444 	nop
      000DBE 00               [12] 1445 	nop
      000DBF 00               [12] 1446 	nop
      000DC0 00               [12] 1447 	nop
                                   1448 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
                                   1449 ;	assignBit
      000DC1 C2 92            [12] 1450 	clr	_PORT_P1_2
                                   1451 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
      000DC3 00               [12] 1452 	nop
      000DC4 00               [12] 1453 	nop
      000DC5 00               [12] 1454 	nop
                                   1455 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
                                   1456 ;	assignBit
      000DC6 A2 91            [12] 1457 	mov	c,_PORT_P1_1
      000DC8 92 0F            [24] 1458 	mov	_DS1302_DATA_7,c
                                   1459 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
                                   1460 ;	assignBit
      000DCA D2 92            [12] 1461 	setb	_PORT_P1_2
                                   1462 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
      000DCC 00               [12] 1463 	nop
      000DCD 00               [12] 1464 	nop
      000DCE 00               [12] 1465 	nop
      000DCF 00               [12] 1466 	nop
                                   1467 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
                                   1468 ;	assignBit
      000DD0 C2 92            [12] 1469 	clr	_PORT_P1_2
                                   1470 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
      000DD2 AC 21            [24] 1471 	mov	r4,_DS1302_DATA
                                   1472 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:356: ds1302.date    = ds1302_read_byte(); //Read in date register
      000DD4 8C 48            [24] 1473 	mov	(_ds1302 + 0x0003),r4
                                   1474 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:357: ds1302.month   = ds1302_read_byte(); //Read in month register
                                   1475 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
                                   1476 ;	assignBit
      000DD6 D2 91            [12] 1477 	setb	_PORT_P1_1
                                   1478 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
      000DD8 00               [12] 1479 	nop
      000DD9 00               [12] 1480 	nop
      000DDA 00               [12] 1481 	nop
                                   1482 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
                                   1483 ;	assignBit
      000DDB A2 91            [12] 1484 	mov	c,_PORT_P1_1
      000DDD 92 08            [24] 1485 	mov	_DS1302_DATA_0,c
                                   1486 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
                                   1487 ;	assignBit
      000DDF D2 92            [12] 1488 	setb	_PORT_P1_2
                                   1489 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
      000DE1 00               [12] 1490 	nop
      000DE2 00               [12] 1491 	nop
      000DE3 00               [12] 1492 	nop
      000DE4 00               [12] 1493 	nop
                                   1494 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
                                   1495 ;	assignBit
      000DE5 C2 92            [12] 1496 	clr	_PORT_P1_2
                                   1497 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
      000DE7 00               [12] 1498 	nop
      000DE8 00               [12] 1499 	nop
      000DE9 00               [12] 1500 	nop
                                   1501 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
                                   1502 ;	assignBit
      000DEA A2 91            [12] 1503 	mov	c,_PORT_P1_1
      000DEC 92 09            [24] 1504 	mov	_DS1302_DATA_1,c
                                   1505 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
                                   1506 ;	assignBit
      000DEE D2 92            [12] 1507 	setb	_PORT_P1_2
                                   1508 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
      000DF0 00               [12] 1509 	nop
      000DF1 00               [12] 1510 	nop
      000DF2 00               [12] 1511 	nop
      000DF3 00               [12] 1512 	nop
                                   1513 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
                                   1514 ;	assignBit
      000DF4 C2 92            [12] 1515 	clr	_PORT_P1_2
                                   1516 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
      000DF6 00               [12] 1517 	nop
      000DF7 00               [12] 1518 	nop
      000DF8 00               [12] 1519 	nop
                                   1520 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
                                   1521 ;	assignBit
      000DF9 A2 91            [12] 1522 	mov	c,_PORT_P1_1
      000DFB 92 0A            [24] 1523 	mov	_DS1302_DATA_2,c
                                   1524 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
                                   1525 ;	assignBit
      000DFD D2 92            [12] 1526 	setb	_PORT_P1_2
                                   1527 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
      000DFF 00               [12] 1528 	nop
      000E00 00               [12] 1529 	nop
      000E01 00               [12] 1530 	nop
      000E02 00               [12] 1531 	nop
                                   1532 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
                                   1533 ;	assignBit
      000E03 C2 92            [12] 1534 	clr	_PORT_P1_2
                                   1535 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
      000E05 00               [12] 1536 	nop
      000E06 00               [12] 1537 	nop
      000E07 00               [12] 1538 	nop
                                   1539 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
                                   1540 ;	assignBit
      000E08 A2 91            [12] 1541 	mov	c,_PORT_P1_1
      000E0A 92 0B            [24] 1542 	mov	_DS1302_DATA_3,c
                                   1543 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
                                   1544 ;	assignBit
      000E0C D2 92            [12] 1545 	setb	_PORT_P1_2
                                   1546 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
      000E0E 00               [12] 1547 	nop
      000E0F 00               [12] 1548 	nop
      000E10 00               [12] 1549 	nop
      000E11 00               [12] 1550 	nop
                                   1551 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
                                   1552 ;	assignBit
      000E12 C2 92            [12] 1553 	clr	_PORT_P1_2
                                   1554 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
      000E14 00               [12] 1555 	nop
      000E15 00               [12] 1556 	nop
      000E16 00               [12] 1557 	nop
                                   1558 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
                                   1559 ;	assignBit
      000E17 A2 91            [12] 1560 	mov	c,_PORT_P1_1
      000E19 92 0C            [24] 1561 	mov	_DS1302_DATA_4,c
                                   1562 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
                                   1563 ;	assignBit
      000E1B D2 92            [12] 1564 	setb	_PORT_P1_2
                                   1565 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
      000E1D 00               [12] 1566 	nop
      000E1E 00               [12] 1567 	nop
      000E1F 00               [12] 1568 	nop
      000E20 00               [12] 1569 	nop
                                   1570 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
                                   1571 ;	assignBit
      000E21 C2 92            [12] 1572 	clr	_PORT_P1_2
                                   1573 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
      000E23 00               [12] 1574 	nop
      000E24 00               [12] 1575 	nop
      000E25 00               [12] 1576 	nop
                                   1577 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
                                   1578 ;	assignBit
      000E26 A2 91            [12] 1579 	mov	c,_PORT_P1_1
      000E28 92 0D            [24] 1580 	mov	_DS1302_DATA_5,c
                                   1581 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
                                   1582 ;	assignBit
      000E2A D2 92            [12] 1583 	setb	_PORT_P1_2
                                   1584 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
      000E2C 00               [12] 1585 	nop
      000E2D 00               [12] 1586 	nop
      000E2E 00               [12] 1587 	nop
      000E2F 00               [12] 1588 	nop
                                   1589 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
                                   1590 ;	assignBit
      000E30 C2 92            [12] 1591 	clr	_PORT_P1_2
                                   1592 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
      000E32 00               [12] 1593 	nop
      000E33 00               [12] 1594 	nop
      000E34 00               [12] 1595 	nop
                                   1596 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
                                   1597 ;	assignBit
      000E35 A2 91            [12] 1598 	mov	c,_PORT_P1_1
      000E37 92 0E            [24] 1599 	mov	_DS1302_DATA_6,c
                                   1600 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
                                   1601 ;	assignBit
      000E39 D2 92            [12] 1602 	setb	_PORT_P1_2
                                   1603 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
      000E3B 00               [12] 1604 	nop
      000E3C 00               [12] 1605 	nop
      000E3D 00               [12] 1606 	nop
      000E3E 00               [12] 1607 	nop
                                   1608 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
                                   1609 ;	assignBit
      000E3F C2 92            [12] 1610 	clr	_PORT_P1_2
                                   1611 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
      000E41 00               [12] 1612 	nop
      000E42 00               [12] 1613 	nop
      000E43 00               [12] 1614 	nop
                                   1615 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
                                   1616 ;	assignBit
      000E44 A2 91            [12] 1617 	mov	c,_PORT_P1_1
      000E46 92 0F            [24] 1618 	mov	_DS1302_DATA_7,c
                                   1619 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
                                   1620 ;	assignBit
      000E48 D2 92            [12] 1621 	setb	_PORT_P1_2
                                   1622 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
      000E4A 00               [12] 1623 	nop
      000E4B 00               [12] 1624 	nop
      000E4C 00               [12] 1625 	nop
      000E4D 00               [12] 1626 	nop
                                   1627 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
                                   1628 ;	assignBit
      000E4E C2 92            [12] 1629 	clr	_PORT_P1_2
                                   1630 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
      000E50 AC 21            [24] 1631 	mov	r4,_DS1302_DATA
                                   1632 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:357: ds1302.month   = ds1302_read_byte(); //Read in month register
      000E52 8C 49            [24] 1633 	mov	(_ds1302 + 0x0004),r4
                                   1634 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:358: ds1302.day 	   = ds1302_read_byte(); //Read in day of week register
                                   1635 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
                                   1636 ;	assignBit
      000E54 D2 91            [12] 1637 	setb	_PORT_P1_1
                                   1638 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
      000E56 00               [12] 1639 	nop
      000E57 00               [12] 1640 	nop
      000E58 00               [12] 1641 	nop
                                   1642 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
                                   1643 ;	assignBit
      000E59 A2 91            [12] 1644 	mov	c,_PORT_P1_1
      000E5B 92 08            [24] 1645 	mov	_DS1302_DATA_0,c
                                   1646 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
                                   1647 ;	assignBit
      000E5D D2 92            [12] 1648 	setb	_PORT_P1_2
                                   1649 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
      000E5F 00               [12] 1650 	nop
      000E60 00               [12] 1651 	nop
      000E61 00               [12] 1652 	nop
      000E62 00               [12] 1653 	nop
                                   1654 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
                                   1655 ;	assignBit
      000E63 C2 92            [12] 1656 	clr	_PORT_P1_2
                                   1657 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
      000E65 00               [12] 1658 	nop
      000E66 00               [12] 1659 	nop
      000E67 00               [12] 1660 	nop
                                   1661 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
                                   1662 ;	assignBit
      000E68 A2 91            [12] 1663 	mov	c,_PORT_P1_1
      000E6A 92 09            [24] 1664 	mov	_DS1302_DATA_1,c
                                   1665 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
                                   1666 ;	assignBit
      000E6C D2 92            [12] 1667 	setb	_PORT_P1_2
                                   1668 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
      000E6E 00               [12] 1669 	nop
      000E6F 00               [12] 1670 	nop
      000E70 00               [12] 1671 	nop
      000E71 00               [12] 1672 	nop
                                   1673 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
                                   1674 ;	assignBit
      000E72 C2 92            [12] 1675 	clr	_PORT_P1_2
                                   1676 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
      000E74 00               [12] 1677 	nop
      000E75 00               [12] 1678 	nop
      000E76 00               [12] 1679 	nop
                                   1680 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
                                   1681 ;	assignBit
      000E77 A2 91            [12] 1682 	mov	c,_PORT_P1_1
      000E79 92 0A            [24] 1683 	mov	_DS1302_DATA_2,c
                                   1684 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
                                   1685 ;	assignBit
      000E7B D2 92            [12] 1686 	setb	_PORT_P1_2
                                   1687 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
      000E7D 00               [12] 1688 	nop
      000E7E 00               [12] 1689 	nop
      000E7F 00               [12] 1690 	nop
      000E80 00               [12] 1691 	nop
                                   1692 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
                                   1693 ;	assignBit
      000E81 C2 92            [12] 1694 	clr	_PORT_P1_2
                                   1695 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
      000E83 00               [12] 1696 	nop
      000E84 00               [12] 1697 	nop
      000E85 00               [12] 1698 	nop
                                   1699 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
                                   1700 ;	assignBit
      000E86 A2 91            [12] 1701 	mov	c,_PORT_P1_1
      000E88 92 0B            [24] 1702 	mov	_DS1302_DATA_3,c
                                   1703 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
                                   1704 ;	assignBit
      000E8A D2 92            [12] 1705 	setb	_PORT_P1_2
                                   1706 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
      000E8C 00               [12] 1707 	nop
      000E8D 00               [12] 1708 	nop
      000E8E 00               [12] 1709 	nop
      000E8F 00               [12] 1710 	nop
                                   1711 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
                                   1712 ;	assignBit
      000E90 C2 92            [12] 1713 	clr	_PORT_P1_2
                                   1714 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
      000E92 00               [12] 1715 	nop
      000E93 00               [12] 1716 	nop
      000E94 00               [12] 1717 	nop
                                   1718 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
                                   1719 ;	assignBit
      000E95 A2 91            [12] 1720 	mov	c,_PORT_P1_1
      000E97 92 0C            [24] 1721 	mov	_DS1302_DATA_4,c
                                   1722 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
                                   1723 ;	assignBit
      000E99 D2 92            [12] 1724 	setb	_PORT_P1_2
                                   1725 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
      000E9B 00               [12] 1726 	nop
      000E9C 00               [12] 1727 	nop
      000E9D 00               [12] 1728 	nop
      000E9E 00               [12] 1729 	nop
                                   1730 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
                                   1731 ;	assignBit
      000E9F C2 92            [12] 1732 	clr	_PORT_P1_2
                                   1733 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
      000EA1 00               [12] 1734 	nop
      000EA2 00               [12] 1735 	nop
      000EA3 00               [12] 1736 	nop
                                   1737 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
                                   1738 ;	assignBit
      000EA4 A2 91            [12] 1739 	mov	c,_PORT_P1_1
      000EA6 92 0D            [24] 1740 	mov	_DS1302_DATA_5,c
                                   1741 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
                                   1742 ;	assignBit
      000EA8 D2 92            [12] 1743 	setb	_PORT_P1_2
                                   1744 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
      000EAA 00               [12] 1745 	nop
      000EAB 00               [12] 1746 	nop
      000EAC 00               [12] 1747 	nop
      000EAD 00               [12] 1748 	nop
                                   1749 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
                                   1750 ;	assignBit
      000EAE C2 92            [12] 1751 	clr	_PORT_P1_2
                                   1752 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
      000EB0 00               [12] 1753 	nop
      000EB1 00               [12] 1754 	nop
      000EB2 00               [12] 1755 	nop
                                   1756 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
                                   1757 ;	assignBit
      000EB3 A2 91            [12] 1758 	mov	c,_PORT_P1_1
      000EB5 92 0E            [24] 1759 	mov	_DS1302_DATA_6,c
                                   1760 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
                                   1761 ;	assignBit
      000EB7 D2 92            [12] 1762 	setb	_PORT_P1_2
                                   1763 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
      000EB9 00               [12] 1764 	nop
      000EBA 00               [12] 1765 	nop
      000EBB 00               [12] 1766 	nop
      000EBC 00               [12] 1767 	nop
                                   1768 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
                                   1769 ;	assignBit
      000EBD C2 92            [12] 1770 	clr	_PORT_P1_2
                                   1771 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
      000EBF 00               [12] 1772 	nop
      000EC0 00               [12] 1773 	nop
      000EC1 00               [12] 1774 	nop
                                   1775 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
                                   1776 ;	assignBit
      000EC2 A2 91            [12] 1777 	mov	c,_PORT_P1_1
      000EC4 92 0F            [24] 1778 	mov	_DS1302_DATA_7,c
                                   1779 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
                                   1780 ;	assignBit
      000EC6 D2 92            [12] 1781 	setb	_PORT_P1_2
                                   1782 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
      000EC8 00               [12] 1783 	nop
      000EC9 00               [12] 1784 	nop
      000ECA 00               [12] 1785 	nop
      000ECB 00               [12] 1786 	nop
                                   1787 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
                                   1788 ;	assignBit
      000ECC C2 92            [12] 1789 	clr	_PORT_P1_2
                                   1790 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
      000ECE AC 21            [24] 1791 	mov	r4,_DS1302_DATA
                                   1792 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:358: ds1302.day 	   = ds1302_read_byte(); //Read in day of week register
      000ED0 8C 4A            [24] 1793 	mov	(_ds1302 + 0x0005),r4
                                   1794 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:359: ds1302.year    = ds1302_read_byte(); //Read in year register
                                   1795 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:123: DS1302_IO = 1;		//Stop driving I/O line
                                   1796 ;	assignBit
      000ED2 D2 91            [12] 1797 	setb	_PORT_P1_1
                                   1798 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:130: __endasm;
      000ED4 00               [12] 1799 	nop
      000ED5 00               [12] 1800 	nop
      000ED6 00               [12] 1801 	nop
                                   1802 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:131: DS1302_DATA_0 = DS1302_IO;
                                   1803 ;	assignBit
      000ED7 A2 91            [12] 1804 	mov	c,_PORT_P1_1
      000ED9 92 08            [24] 1805 	mov	_DS1302_DATA_0,c
                                   1806 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:133: DS1302_CLK = 1;
                                   1807 ;	assignBit
      000EDB D2 92            [12] 1808 	setb	_PORT_P1_2
                                   1809 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:139: __endasm;
      000EDD 00               [12] 1810 	nop
      000EDE 00               [12] 1811 	nop
      000EDF 00               [12] 1812 	nop
      000EE0 00               [12] 1813 	nop
                                   1814 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:140: DS1302_CLK = 0;
                                   1815 ;	assignBit
      000EE1 C2 92            [12] 1816 	clr	_PORT_P1_2
                                   1817 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:145: __endasm;
      000EE3 00               [12] 1818 	nop
      000EE4 00               [12] 1819 	nop
      000EE5 00               [12] 1820 	nop
                                   1821 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:146: DS1302_DATA_1 = DS1302_IO;
                                   1822 ;	assignBit
      000EE6 A2 91            [12] 1823 	mov	c,_PORT_P1_1
      000EE8 92 09            [24] 1824 	mov	_DS1302_DATA_1,c
                                   1825 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:148: DS1302_CLK = 1;
                                   1826 ;	assignBit
      000EEA D2 92            [12] 1827 	setb	_PORT_P1_2
                                   1828 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:154: __endasm;
      000EEC 00               [12] 1829 	nop
      000EED 00               [12] 1830 	nop
      000EEE 00               [12] 1831 	nop
      000EEF 00               [12] 1832 	nop
                                   1833 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:155: DS1302_CLK = 0;
                                   1834 ;	assignBit
      000EF0 C2 92            [12] 1835 	clr	_PORT_P1_2
                                   1836 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:160: __endasm;
      000EF2 00               [12] 1837 	nop
      000EF3 00               [12] 1838 	nop
      000EF4 00               [12] 1839 	nop
                                   1840 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:161: DS1302_DATA_2 = DS1302_IO;
                                   1841 ;	assignBit
      000EF5 A2 91            [12] 1842 	mov	c,_PORT_P1_1
      000EF7 92 0A            [24] 1843 	mov	_DS1302_DATA_2,c
                                   1844 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:163: DS1302_CLK = 1;
                                   1845 ;	assignBit
      000EF9 D2 92            [12] 1846 	setb	_PORT_P1_2
                                   1847 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:169: __endasm;
      000EFB 00               [12] 1848 	nop
      000EFC 00               [12] 1849 	nop
      000EFD 00               [12] 1850 	nop
      000EFE 00               [12] 1851 	nop
                                   1852 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:170: DS1302_CLK = 0;
                                   1853 ;	assignBit
      000EFF C2 92            [12] 1854 	clr	_PORT_P1_2
                                   1855 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:175: __endasm;
      000F01 00               [12] 1856 	nop
      000F02 00               [12] 1857 	nop
      000F03 00               [12] 1858 	nop
                                   1859 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:176: DS1302_DATA_3 = DS1302_IO;
                                   1860 ;	assignBit
      000F04 A2 91            [12] 1861 	mov	c,_PORT_P1_1
      000F06 92 0B            [24] 1862 	mov	_DS1302_DATA_3,c
                                   1863 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:178: DS1302_CLK = 1;
                                   1864 ;	assignBit
      000F08 D2 92            [12] 1865 	setb	_PORT_P1_2
                                   1866 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:184: __endasm;
      000F0A 00               [12] 1867 	nop
      000F0B 00               [12] 1868 	nop
      000F0C 00               [12] 1869 	nop
      000F0D 00               [12] 1870 	nop
                                   1871 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:185: DS1302_CLK = 0;
                                   1872 ;	assignBit
      000F0E C2 92            [12] 1873 	clr	_PORT_P1_2
                                   1874 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:190: __endasm;
      000F10 00               [12] 1875 	nop
      000F11 00               [12] 1876 	nop
      000F12 00               [12] 1877 	nop
                                   1878 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:191: DS1302_DATA_4 = DS1302_IO;
                                   1879 ;	assignBit
      000F13 A2 91            [12] 1880 	mov	c,_PORT_P1_1
      000F15 92 0C            [24] 1881 	mov	_DS1302_DATA_4,c
                                   1882 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:193: DS1302_CLK = 1;
                                   1883 ;	assignBit
      000F17 D2 92            [12] 1884 	setb	_PORT_P1_2
                                   1885 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:199: __endasm;
      000F19 00               [12] 1886 	nop
      000F1A 00               [12] 1887 	nop
      000F1B 00               [12] 1888 	nop
      000F1C 00               [12] 1889 	nop
                                   1890 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:200: DS1302_CLK = 0;
                                   1891 ;	assignBit
      000F1D C2 92            [12] 1892 	clr	_PORT_P1_2
                                   1893 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:205: __endasm;
      000F1F 00               [12] 1894 	nop
      000F20 00               [12] 1895 	nop
      000F21 00               [12] 1896 	nop
                                   1897 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:206: DS1302_DATA_5 = DS1302_IO;
                                   1898 ;	assignBit
      000F22 A2 91            [12] 1899 	mov	c,_PORT_P1_1
      000F24 92 0D            [24] 1900 	mov	_DS1302_DATA_5,c
                                   1901 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:208: DS1302_CLK = 1;
                                   1902 ;	assignBit
      000F26 D2 92            [12] 1903 	setb	_PORT_P1_2
                                   1904 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:214: __endasm;
      000F28 00               [12] 1905 	nop
      000F29 00               [12] 1906 	nop
      000F2A 00               [12] 1907 	nop
      000F2B 00               [12] 1908 	nop
                                   1909 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:215: DS1302_CLK = 0;
                                   1910 ;	assignBit
      000F2C C2 92            [12] 1911 	clr	_PORT_P1_2
                                   1912 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:220: __endasm;
      000F2E 00               [12] 1913 	nop
      000F2F 00               [12] 1914 	nop
      000F30 00               [12] 1915 	nop
                                   1916 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:221: DS1302_DATA_6 = DS1302_IO;
                                   1917 ;	assignBit
      000F31 A2 91            [12] 1918 	mov	c,_PORT_P1_1
      000F33 92 0E            [24] 1919 	mov	_DS1302_DATA_6,c
                                   1920 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:223: DS1302_CLK = 1;
                                   1921 ;	assignBit
      000F35 D2 92            [12] 1922 	setb	_PORT_P1_2
                                   1923 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:229: __endasm;
      000F37 00               [12] 1924 	nop
      000F38 00               [12] 1925 	nop
      000F39 00               [12] 1926 	nop
      000F3A 00               [12] 1927 	nop
                                   1928 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:230: DS1302_CLK = 0;
                                   1929 ;	assignBit
      000F3B C2 92            [12] 1930 	clr	_PORT_P1_2
                                   1931 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:235: __endasm;
      000F3D 00               [12] 1932 	nop
      000F3E 00               [12] 1933 	nop
      000F3F 00               [12] 1934 	nop
                                   1935 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:236: DS1302_DATA_7 = DS1302_IO;
                                   1936 ;	assignBit
      000F40 A2 91            [12] 1937 	mov	c,_PORT_P1_1
      000F42 92 0F            [24] 1938 	mov	_DS1302_DATA_7,c
                                   1939 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:237: DS1302_CLK = 1;
                                   1940 ;	assignBit
      000F44 D2 92            [12] 1941 	setb	_PORT_P1_2
                                   1942 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:243: __endasm;
      000F46 00               [12] 1943 	nop
      000F47 00               [12] 1944 	nop
      000F48 00               [12] 1945 	nop
      000F49 00               [12] 1946 	nop
                                   1947 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:244: DS1302_CLK = 0;
                                   1948 ;	assignBit
      000F4A C2 92            [12] 1949 	clr	_PORT_P1_2
                                   1950 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:246: return DS1302_DATA;
      000F4C AC 21            [24] 1951 	mov	r4,_DS1302_DATA
                                   1952 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:359: ds1302.year    = ds1302_read_byte(); //Read in year register
      000F4E 8C 4B            [24] 1953 	mov	(_ds1302 + 0x0006),r4
                                   1954 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:322: DS1302_CE = 0; //Drop CE to end communication.
                                   1955 ;	assignBit
      000F50 C2 90            [12] 1956 	clr	_PORT_P1_0
                                   1957 ;	../fsm.c:100: if((alarm_lastpoll != ds1302.minutes) && alarm_global_state()){
      000F52 ED               [12] 1958 	mov	a,r5
      000F53 B5 4D 03         [24] 1959 	cjne	a,_alarm_lastpoll,00297$
      000F56 02 0F F1         [24] 1960 	ljmp	00143$
      000F59                       1961 00297$:
                                   1962 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:84: return (ds1302_sram_data[3] & 0x01);
      000F59 90 00 03         [24] 1963 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      000F5C E0               [24] 1964 	movx	a,@dptr
      000F5D FD               [12] 1965 	mov	r5,a
      000F5E 20 E0 03         [24] 1966 	jb	acc.0,00298$
      000F61 02 0F F1         [24] 1967 	ljmp	00143$
      000F64                       1968 00298$:
                                   1969 ;	../fsm.c:100: if((alarm_lastpoll != ds1302.minutes) && alarm_global_state()){
                                   1970 ;	../fsm.c:116: alarm_lastpoll = ds1302.minutes;
      000F64 7D 00            [12] 1971 	mov	r5,#0x00
      000F66                       1972 00182$:
                                   1973 ;	../fsm.c:102: for(;alarm_index < NUM_ALARMS;alarm_index++){
      000F66 BD 07 00         [24] 1974 	cjne	r5,#0x07,00299$
      000F69                       1975 00299$:
      000F69 40 03            [24] 1976 	jc	00300$
      000F6B 02 0F EE         [24] 1977 	ljmp	00141$
      000F6E                       1978 00300$:
                                   1979 ;	../fsm.c:103: if(alarm_dow_state(alarm_index,ds1302.day) && (
      000F6E C0 06            [24] 1980 	push	ar6
                                   1981 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:106: return ((alarms[index].dow_and_enable >> dow) & 0x01);
      000F70 ED               [12] 1982 	mov	a,r5
      000F71 75 F0 03         [24] 1983 	mov	b,#0x03
      000F74 A4               [48] 1984 	mul	ab
      000F75 FB               [12] 1985 	mov	r3,a
      000F76 AC F0            [24] 1986 	mov	r4,b
      000F78 24 04            [12] 1987 	add	a,#_alarms
      000F7A FA               [12] 1988 	mov	r2,a
      000F7B EC               [12] 1989 	mov	a,r4
      000F7C 34 00            [12] 1990 	addc	a,#(_alarms >> 8)
      000F7E FE               [12] 1991 	mov	r6,a
      000F7F 8A 82            [24] 1992 	mov	dpl,r2
      000F81 8E 83            [24] 1993 	mov	dph,r6
      000F83 A3               [24] 1994 	inc	dptr
      000F84 A3               [24] 1995 	inc	dptr
      000F85 E0               [24] 1996 	movx	a,@dptr
      000F86 FE               [12] 1997 	mov	r6,a
      000F87 85 4A F0         [24] 1998 	mov	b,(_ds1302 + 0x0005)
      000F8A 05 F0            [12] 1999 	inc	b
      000F8C EE               [12] 2000 	mov	a,r6
      000F8D 80 02            [24] 2001 	sjmp	00302$
      000F8F                       2002 00301$:
      000F8F C3               [12] 2003 	clr	c
      000F90 13               [12] 2004 	rrc	a
      000F91                       2005 00302$:
      000F91 D5 F0 FB         [24] 2006 	djnz	b,00301$
      000F94 D0 06            [24] 2007 	pop	ar6
      000F96 30 E0 51         [24] 2008 	jnb	acc.0,00183$
                                   2009 ;	../fsm.c:103: if(alarm_dow_state(alarm_index,ds1302.day) && (
                                   2010 ;	../fsm.c:104: alarms[alarm_index].dow_and_enable & 0x01)){
      000F99 C0 06            [24] 2011 	push	ar6
      000F9B EB               [12] 2012 	mov	a,r3
      000F9C 24 04            [12] 2013 	add	a,#_alarms
      000F9E FA               [12] 2014 	mov	r2,a
      000F9F EC               [12] 2015 	mov	a,r4
      000FA0 34 00            [12] 2016 	addc	a,#(_alarms >> 8)
      000FA2 FE               [12] 2017 	mov	r6,a
      000FA3 8A 82            [24] 2018 	mov	dpl,r2
      000FA5 8E 83            [24] 2019 	mov	dph,r6
      000FA7 A3               [24] 2020 	inc	dptr
      000FA8 A3               [24] 2021 	inc	dptr
      000FA9 E0               [24] 2022 	movx	a,@dptr
      000FAA D0 06            [24] 2023 	pop	ar6
      000FAC 30 E0 3B         [24] 2024 	jnb	acc.0,00183$
                                   2025 ;	../fsm.c:105: if((alarms[alarm_index].hour == ds1302.hour) &&
      000FAF EB               [12] 2026 	mov	a,r3
      000FB0 24 04            [12] 2027 	add	a,#_alarms
      000FB2 F5 82            [12] 2028 	mov	dpl,a
      000FB4 EC               [12] 2029 	mov	a,r4
      000FB5 34 00            [12] 2030 	addc	a,#(_alarms >> 8)
      000FB7 F5 83            [12] 2031 	mov	dph,a
      000FB9 E0               [24] 2032 	movx	a,@dptr
      000FBA FA               [12] 2033 	mov	r2,a
      000FBB B5 47 2C         [24] 2034 	cjne	a,(_ds1302 + 0x0002),00183$
                                   2035 ;	../fsm.c:106: (alarms[alarm_index].minute == ds1302.minutes)){
      000FBE EB               [12] 2036 	mov	a,r3
      000FBF 24 04            [12] 2037 	add	a,#_alarms
      000FC1 FB               [12] 2038 	mov	r3,a
      000FC2 EC               [12] 2039 	mov	a,r4
      000FC3 34 00            [12] 2040 	addc	a,#(_alarms >> 8)
      000FC5 FC               [12] 2041 	mov	r4,a
      000FC6 8B 82            [24] 2042 	mov	dpl,r3
      000FC8 8C 83            [24] 2043 	mov	dph,r4
      000FCA A3               [24] 2044 	inc	dptr
      000FCB E0               [24] 2045 	movx	a,@dptr
      000FCC FC               [12] 2046 	mov	r4,a
      000FCD B5 46 1A         [24] 2047 	cjne	a,(_ds1302 + 0x0001),00183$
                                   2048 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:130: INT_IE2 &= 0xfb;
      000FD0 53 AF FB         [24] 2049 	anl	_INT_IE2,#0xfb
                                   2050 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:131: alarm_counter = 0x00;
      000FD3 E4               [12] 2051 	clr	a
      000FD4 F5 34            [12] 2052 	mov	_alarm_counter,a
      000FD6 F5 35            [12] 2053 	mov	(_alarm_counter + 1),a
                                   2054 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:132: INT_IE2 |= 0x04;
      000FD8 43 AF 04         [24] 2055 	orl	_INT_IE2,#0x04
                                   2056 ;	../fsm.c:108: display_autobrightness = 0;
                                   2057 ;	assignBit
      000FDB C2 1F            [12] 2058 	clr	_display_autobrightness
                                   2059 ;	../fsm.c:109: INT_IE_EA = 0;
                                   2060 ;	assignBit
      000FDD C2 AF            [12] 2061 	clr	_INT_IE_EA
                                   2062 ;	../fsm.c:110: display_counts = DISPLAY_COUNTS_MAX;
      000FDF 75 41 00         [24] 2063 	mov	_display_counts,#0x00
      000FE2 75 42 EA         [24] 2064 	mov	(_display_counts + 1),#0xea
                                   2065 ;	../fsm.c:111: INT_IE_EA = 1;
                                   2066 ;	assignBit
      000FE5 D2 AF            [12] 2067 	setb	_INT_IE_EA
                                   2068 ;	../fsm.c:112: curstate = fsm_home_alarm;
      000FE7 75 50 07         [24] 2069 	mov	_fsm_home_fn_curstate_1_169,#0x07
      000FEA                       2070 00183$:
                                   2071 ;	../fsm.c:102: for(;alarm_index < NUM_ALARMS;alarm_index++){
      000FEA 0D               [12] 2072 	inc	r5
      000FEB 02 0F 66         [24] 2073 	ljmp	00182$
      000FEE                       2074 00141$:
                                   2075 ;	../fsm.c:116: alarm_lastpoll = ds1302.minutes;
      000FEE 85 46 4D         [24] 2076 	mov	_alarm_lastpoll,(_ds1302 + 0x0001)
      000FF1                       2077 00143$:
                                   2078 ;	../fsm.c:119: switch(curstate) {
      000FF1 E5 50            [12] 2079 	mov	a,_fsm_home_fn_curstate_1_169
      000FF3 24 F8            [12] 2080 	add	a,#0xff - 0x07
      000FF5 50 03            [24] 2081 	jnc	00309$
      000FF7 02 11 08         [24] 2082 	ljmp	00163$
      000FFA                       2083 00309$:
      000FFA E5 50            [12] 2084 	mov	a,_fsm_home_fn_curstate_1_169
      000FFC 24 0B            [12] 2085 	add	a,#(00310$-3-.)
      000FFE 83               [24] 2086 	movc	a,@a+pc
      000FFF F5 82            [12] 2087 	mov	dpl,a
      001001 E5 50            [12] 2088 	mov	a,_fsm_home_fn_curstate_1_169
      001003 24 0C            [12] 2089 	add	a,#(00311$-3-.)
      001005 83               [24] 2090 	movc	a,@a+pc
      001006 F5 83            [12] 2091 	mov	dph,a
      001008 E4               [12] 2092 	clr	a
      001009 73               [24] 2093 	jmp	@a+dptr
      00100A                       2094 00310$:
      00100A 1A                    2095 	.db	00146$
      00100B 59                    2096 	.db	00154$
      00100C 79                    2097 	.db	00157$
      00100D D3                    2098 	.db	00160$
      00100E FA                    2099 	.db	00161$
      00100F FF                    2100 	.db	00162$
      001010 08                    2101 	.db	00163$
      001011 1A                    2102 	.db	00146$
      001012                       2103 00311$:
      001012 10                    2104 	.db	00146$>>8
      001013 10                    2105 	.db	00154$>>8
      001014 10                    2106 	.db	00157$>>8
      001015 10                    2107 	.db	00160$>>8
      001016 10                    2108 	.db	00161$>>8
      001017 10                    2109 	.db	00162$>>8
      001018 11                    2110 	.db	00163$>>8
      001019 10                    2111 	.db	00146$>>8
                                   2112 ;	../fsm.c:121: case fsm_home_time:
      00101A                       2113 00146$:
                                   2114 ;	../fsm.c:123: if(curstate == fsm_home_alarm){
      00101A 74 07            [12] 2115 	mov	a,#0x07
      00101C B5 50 1A         [24] 2116 	cjne	a,_fsm_home_fn_curstate_1_169,00151$
                                   2117 ;	../fsm.c:124: display_flash = 0x0f;
      00101F 75 40 0F         [24] 2118 	mov	_display_flash,#0x0f
                                   2119 ;	../fsm.c:125: if((menu_state == BUTTON_LONG_PRESSED) && (select_state == BUTTON_LONG_PRESSED)){
      001022 BF 01 14         [24] 2120 	cjne	r7,#0x01,00151$
      001025 BE 01 11         [24] 2121 	cjne	r6,#0x01,00151$
                                   2122 ;	../fsm.c:126: display_flash = 0x00;
      001028 75 40 00         [24] 2123 	mov	_display_flash,#0x00
                                   2124 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:149: INT_IE2 &= 0xfb;
      00102B 53 AF FB         [24] 2125 	anl	_INT_IE2,#0xfb
                                   2126 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:150: INT_IE_EA = 0;
                                   2127 ;	assignBit
      00102E C2 AF            [12] 2128 	clr	_INT_IE_EA
                                   2129 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:151: ALARM_BUZZER_DRIVE_INACTIVE();
                                   2130 ;	assignBit
      001030 D2 95            [12] 2131 	setb	_PORT_P1_5
                                   2132 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:152: INT_IE_EA = 1;
                                   2133 ;	assignBit
      001032 D2 AF            [12] 2134 	setb	_INT_IE_EA
                                   2135 ;	../fsm.c:128: display_autobrightness = 1;
                                   2136 ;	assignBit
      001034 D2 1F            [12] 2137 	setb	_display_autobrightness
                                   2138 ;	../fsm.c:129: curstate = fsm_home_start; //Reset state back to default
      001036 75 50 00         [24] 2139 	mov	_fsm_home_fn_curstate_1_169,#0x00
      001039                       2140 00151$:
                                   2141 ;	../fsm.c:132: display_puttime(ds1302.hour,ds1302.minutes);
      001039 85 47 82         [24] 2142 	mov	dpl,(_ds1302 + 0x0002)
      00103C 85 46 43         [24] 2143 	mov	_display_puttime_PARM_2,(_ds1302 + 0x0001)
      00103F 12 05 F9         [24] 2144 	lcall	_display_puttime
                                   2145 ;	../fsm.c:133: if(ds1302.seconds % 2)
      001042 E5 45            [12] 2146 	mov	a,_ds1302
      001044 20 E0 03         [24] 2147 	jb	acc.0,00318$
      001047 02 11 08         [24] 2148 	ljmp	00163$
      00104A                       2149 00318$:
                                   2150 ;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
      00104A 74 7F            [12] 2151 	mov	a,#0x7f
      00104C 55 3C            [12] 2152 	anl	a,(_display_buffer + 0x0001)
      00104E F5 3C            [12] 2153 	mov	(_display_buffer + 0x0001),a
                                   2154 ;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
      001050 74 7F            [12] 2155 	mov	a,#0x7f
      001052 55 3D            [12] 2156 	anl	a,(_display_buffer + 0x0002)
      001054 F5 3D            [12] 2157 	mov	(_display_buffer + 0x0002),a
                                   2158 ;	../fsm.c:135: break;
      001056 02 11 08         [24] 2159 	ljmp	00163$
                                   2160 ;	../fsm.c:136: case fsm_home_mmss:
      001059                       2161 00154$:
                                   2162 ;	../fsm.c:138: display_putbcd(ds1302.minutes,ds1302.seconds);
      001059 85 46 82         [24] 2163 	mov	dpl,(_ds1302 + 0x0001)
      00105C 85 45 5E         [24] 2164 	mov	_display_putbcd_PARM_2,_ds1302
      00105F 12 05 CA         [24] 2165 	lcall	_display_putbcd
                                   2166 ;	../fsm.c:139: if(ds1302.seconds % 2)
      001062 E5 45            [12] 2167 	mov	a,_ds1302
      001064 20 E0 03         [24] 2168 	jb	acc.0,00319$
      001067 02 11 08         [24] 2169 	ljmp	00163$
      00106A                       2170 00319$:
                                   2171 ;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
      00106A 74 7F            [12] 2172 	mov	a,#0x7f
      00106C 55 3C            [12] 2173 	anl	a,(_display_buffer + 0x0001)
      00106E F5 3C            [12] 2174 	mov	(_display_buffer + 0x0001),a
                                   2175 ;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
      001070 74 7F            [12] 2176 	mov	a,#0x7f
      001072 55 3D            [12] 2177 	anl	a,(_display_buffer + 0x0002)
      001074 F5 3D            [12] 2178 	mov	(_display_buffer + 0x0002),a
                                   2179 ;	../fsm.c:141: break;
      001076 02 11 08         [24] 2180 	ljmp	00163$
                                   2181 ;	../fsm.c:142: case fsm_home_temp:
      001079                       2182 00157$:
                                   2183 ;	../fsm.c:143: temp_cache = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
                                   2184 ;	/home/shenghao/workspace/TESTMCS51/adc.h:147: INT_IE_EADC = 0;				//Disable ADC interrupt
                                   2185 ;	assignBit
      001079 C2 AD            [12] 2186 	clr	_INT_IE_EADC
                                   2187 ;	/home/shenghao/workspace/TESTMCS51/adc.h:148: tmp = adc_thermistor_reading;	//Store temporary result
      00107B AE 26            [24] 2188 	mov	r6,_adc_thermistor_reading
      00107D AF 27            [24] 2189 	mov	r7,(_adc_thermistor_reading + 1)
                                   2190 ;	/home/shenghao/workspace/TESTMCS51/adc.h:149: INT_IE_EADC = 1;				//Enable ADC interrupt
                                   2191 ;	assignBit
      00107F D2 AD            [12] 2192 	setb	_INT_IE_EADC
                                   2193 ;	../fsm.c:143: temp_cache = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
      001081 EE               [12] 2194 	mov	a,r6
      001082 2E               [12] 2195 	add	a,r6
      001083 FE               [12] 2196 	mov	r6,a
      001084 EF               [12] 2197 	mov	a,r7
      001085 33               [12] 2198 	rlc	a
      001086 FF               [12] 2199 	mov	r7,a
      001087 8E 82            [24] 2200 	mov	dpl,r6
      001089 74 28            [12] 2201 	mov	a,#(_EEPROM_TEMP_FROM_THERMISTOR_TABLE >> 8)
      00108B 2F               [12] 2202 	add	a,r7
      00108C F5 83            [12] 2203 	mov	dph,a
      00108E E4               [12] 2204 	clr	a
      00108F 93               [24] 2205 	movc	a,@a+dptr
      001090 FE               [12] 2206 	mov	r6,a
      001091 A3               [24] 2207 	inc	dptr
      001092 E4               [12] 2208 	clr	a
      001093 93               [24] 2209 	movc	a,@a+dptr
      001094 FF               [12] 2210 	mov	r7,a
                                   2211 ;	../fsm.c:144: temp_cache = bcd_add_16(temp_cache,(ds1302_sram_data[DS1302_BBSRAM_SIZE-2] |
      001095 90 00 1D         [24] 2212 	mov	dptr,#(_ds1302_sram_data + 0x001d)
      001098 E0               [24] 2213 	movx	a,@dptr
      001099 FD               [12] 2214 	mov	r5,a
                                   2215 ;	../fsm.c:145: (ds1302_sram_data[DS1302_BBSRAM_SIZE-1] << 0x08)));
      00109A 90 00 1E         [24] 2216 	mov	dptr,#(_ds1302_sram_data + 0x001e)
      00109D E0               [24] 2217 	movx	a,@dptr
      00109E FB               [12] 2218 	mov	r3,a
      00109F E4               [12] 2219 	clr	a
      0010A0 FA               [12] 2220 	mov	r2,a
      0010A1 4D               [12] 2221 	orl	a,r5
      0010A2 F5 5E            [12] 2222 	mov	_bcd_add_16_PARM_2,a
      0010A4 EB               [12] 2223 	mov	a,r3
      0010A5 4A               [12] 2224 	orl	a,r2
      0010A6 F5 5F            [12] 2225 	mov	(_bcd_add_16_PARM_2 + 1),a
      0010A8 8E 82            [24] 2226 	mov	dpl,r6
      0010AA 8F 83            [24] 2227 	mov	dph,r7
      0010AC 12 0A 27         [24] 2228 	lcall	_bcd_add_16
      0010AF AC 82            [24] 2229 	mov	r4,dpl
      0010B1 AD 83            [24] 2230 	mov	r5,dph
      0010B3 8C 06            [24] 2231 	mov	ar6,r4
      0010B5 8D 07            [24] 2232 	mov	ar7,r5
                                   2233 ;	../fsm.c:146: if(temp_cache > 0x0999)
      0010B7 C3               [12] 2234 	clr	c
      0010B8 74 99            [12] 2235 	mov	a,#0x99
      0010BA 9E               [12] 2236 	subb	a,r6
      0010BB 74 09            [12] 2237 	mov	a,#0x09
      0010BD 9F               [12] 2238 	subb	a,r7
      0010BE 50 04            [24] 2239 	jnc	00159$
                                   2240 ;	../fsm.c:147: temp_cache = 0x0999;
      0010C0 7E 99            [12] 2241 	mov	r6,#0x99
      0010C2 7F 09            [12] 2242 	mov	r7,#0x09
      0010C4                       2243 00159$:
                                   2244 ;	../fsm.c:148: display_puttemp(temp_cache);
      0010C4 8E 82            [24] 2245 	mov	dpl,r6
      0010C6 8F 83            [24] 2246 	mov	dph,r7
      0010C8 12 06 BE         [24] 2247 	lcall	_display_puttemp
                                   2248 ;	/home/shenghao/workspace/TESTMCS51/display.h:146: display_buffer[1] &= 0x7f;
      0010CB 74 7F            [12] 2249 	mov	a,#0x7f
      0010CD 55 3C            [12] 2250 	anl	a,(_display_buffer + 0x0001)
      0010CF F5 3C            [12] 2251 	mov	(_display_buffer + 0x0001),a
                                   2252 ;	../fsm.c:150: break;
                                   2253 ;	../fsm.c:151: case fsm_home_dow:
      0010D1 80 35            [24] 2254 	sjmp	00163$
      0010D3                       2255 00160$:
                                   2256 ;	../fsm.c:152: display_puts(ledstrings[ds1302.day-1]);
      0010D3 AE 4A            [24] 2257 	mov	r6,(_ds1302 + 0x0005)
      0010D5 7F 00            [12] 2258 	mov	r7,#0x00
      0010D7 EE               [12] 2259 	mov	a,r6
      0010D8 24 FF            [12] 2260 	add	a,#0xff
      0010DA F5 5E            [12] 2261 	mov	__mulint_PARM_2,a
      0010DC EF               [12] 2262 	mov	a,r7
      0010DD 34 FF            [12] 2263 	addc	a,#0xff
      0010DF F5 5F            [12] 2264 	mov	(__mulint_PARM_2 + 1),a
      0010E1 90 00 05         [24] 2265 	mov	dptr,#0x0005
      0010E4 12 1C 2C         [24] 2266 	lcall	__mulint
      0010E7 AE 82            [24] 2267 	mov	r6,dpl
      0010E9 AF 83            [24] 2268 	mov	r7,dph
      0010EB EE               [12] 2269 	mov	a,r6
      0010EC 24 00            [12] 2270 	add	a,#_ledstrings
      0010EE F5 82            [12] 2271 	mov	dpl,a
      0010F0 EF               [12] 2272 	mov	a,r7
      0010F1 34 31            [12] 2273 	addc	a,#(_ledstrings >> 8)
      0010F3 F5 83            [12] 2274 	mov	dph,a
      0010F5 12 05 8F         [24] 2275 	lcall	_display_puts
                                   2276 ;	../fsm.c:153: break;
                                   2277 ;	../fsm.c:154: case fsm_home_date:
      0010F8 80 0E            [24] 2278 	sjmp	00163$
      0010FA                       2279 00161$:
                                   2280 ;	../fsm.c:155: display_putdate();
      0010FA 12 06 48         [24] 2281 	lcall	_display_putdate
                                   2282 ;	../fsm.c:156: break;
                                   2283 ;	../fsm.c:157: case fsm_home_yyyy:
      0010FD 80 09            [24] 2284 	sjmp	00163$
      0010FF                       2285 00162$:
                                   2286 ;	../fsm.c:159: display_putbcd(0x20,ds1302.year);
      0010FF 85 4B 5E         [24] 2287 	mov	_display_putbcd_PARM_2,(_ds1302 + 0x0006)
      001102 75 82 20         [24] 2288 	mov	dpl,#0x20
      001105 12 05 CA         [24] 2289 	lcall	_display_putbcd
                                   2290 ;	../fsm.c:161: }
      001108                       2291 00163$:
                                   2292 ;	../fsm.c:163: return fsm_repeat;	//Return repeat so we come back to this state.
      001108 75 82 01         [24] 2293 	mov	dpl,#0x01
      00110B 22               [24] 2294 	ret
                                   2295 ;------------------------------------------------------------
                                   2296 ;Allocation info for local variables in function 'fsm_set_fn'
                                   2297 ;------------------------------------------------------------
                                   2298 ;fsm_set_temp              Allocated to registers r5 
                                   2299 ;menu_state                Allocated to registers r7 
                                   2300 ;select_state              Allocated to registers r6 
                                   2301 ;curstate                  Allocated with name '_fsm_set_fn_curstate_1_245'
                                   2302 ;------------------------------------------------------------
                                   2303 ;	../fsm.c:166: enum fsm_return fsm_set_fn() __reentrant {
                                   2304 ;	-----------------------------------------
                                   2305 ;	 function fsm_set_fn
                                   2306 ;	-----------------------------------------
      00110C                       2307 _fsm_set_fn:
                                   2308 ;	../fsm.c:172: menu_state = button_read_and_clear_menu();
      00110C 12 05 0A         [24] 2309 	lcall	_button_read_and_clear_menu
      00110F AF 82            [24] 2310 	mov	r7,dpl
                                   2311 ;	../fsm.c:173: select_state = button_read_and_clear_select();
      001111 C0 07            [24] 2312 	push	ar7
      001113 12 04 DE         [24] 2313 	lcall	_button_read_and_clear_select
      001116 AE 82            [24] 2314 	mov	r6,dpl
      001118 D0 07            [24] 2315 	pop	ar7
                                   2316 ;	../fsm.c:175: if(curstate != fsm_set_label){
      00111A E5 51            [12] 2317 	mov	a,_fsm_set_fn_curstate_1_245
      00111C 60 20            [24] 2318 	jz	00108$
                                   2319 ;	../fsm.c:176: if(menu_state == BUTTON_LONG_PRESSED){
      00111E BF 01 10         [24] 2320 	cjne	r7,#0x01,00102$
                                   2321 ;	../fsm.c:178: display_flash = 0x00;
      001121 75 40 00         [24] 2322 	mov	_display_flash,#0x00
                                   2323 ;	../fsm.c:179: ds1302_set_time();		  //Set new time
      001124 12 08 FA         [24] 2324 	lcall	_ds1302_set_time
                                   2325 ;	../fsm.c:180: alarm_lastpoll = 0x60;	  //Reset last poll time, force compare
      001127 75 4D 60         [24] 2326 	mov	_alarm_lastpoll,#0x60
                                   2327 ;	../fsm.c:181: curstate = fsm_set_label; //Set state back to default
      00112A 75 51 00         [24] 2328 	mov	_fsm_set_fn_curstate_1_245,#0x00
                                   2329 ;	../fsm.c:182: return fsm_ok;
      00112D 75 82 00         [24] 2330 	mov	dpl,#0x00
      001130 22               [24] 2331 	ret
      001131                       2332 00102$:
                                   2333 ;	../fsm.c:184: if(menu_state == BUTTON_PRESSED){
      001131 EF               [12] 2334 	mov	a,r7
      001132 70 0A            [24] 2335 	jnz	00108$
                                   2336 ;	../fsm.c:186: if(++curstate == fsm_set_end)
      001134 05 51            [12] 2337 	inc	_fsm_set_fn_curstate_1_245
      001136 74 07            [12] 2338 	mov	a,#0x07
      001138 B5 51 03         [24] 2339 	cjne	a,_fsm_set_fn_curstate_1_245,00108$
                                   2340 ;	../fsm.c:187: curstate = fsm_set_start;
      00113B 75 51 01         [24] 2341 	mov	_fsm_set_fn_curstate_1_245,#0x01
      00113E                       2342 00108$:
                                   2343 ;	../fsm.c:191: fsm_set_temp = 0;
      00113E 7D 00            [12] 2344 	mov	r5,#0x00
                                   2345 ;	../fsm.c:192: if((select_state == BUTTON_PRESSED) || (select_state == BUTTON_HELD_DOWN))
      001140 EE               [12] 2346 	mov	a,r6
      001141 60 03            [24] 2347 	jz	00109$
      001143 BE 02 02         [24] 2348 	cjne	r6,#0x02,00110$
      001146                       2349 00109$:
                                   2350 ;	../fsm.c:193: fsm_set_temp = 1;
      001146 7D 01            [12] 2351 	mov	r5,#0x01
      001148                       2352 00110$:
                                   2353 ;	../fsm.c:196: switch(curstate) {
      001148 E5 51            [12] 2354 	mov	a,_fsm_set_fn_curstate_1_245
      00114A 24 F9            [12] 2355 	add	a,#0xff - 0x06
      00114C 50 03            [24] 2356 	jnc	00222$
      00114E 02 12 96         [24] 2357 	ljmp	00149$
      001151                       2358 00222$:
      001151 E5 51            [12] 2359 	mov	a,_fsm_set_fn_curstate_1_245
      001153 75 F0 03         [24] 2360 	mov	b,#0x03
      001156 A4               [48] 2361 	mul	ab
      001157 90 11 5B         [24] 2362 	mov	dptr,#00223$
      00115A 73               [24] 2363 	jmp	@a+dptr
      00115B                       2364 00223$:
      00115B 02 11 70         [24] 2365 	ljmp	00112$
      00115E 02 11 85         [24] 2366 	ljmp	00118$
      001161 02 11 85         [24] 2367 	ljmp	00118$
      001164 02 11 D9         [24] 2368 	ljmp	00128$
      001167 02 11 D9         [24] 2369 	ljmp	00128$
      00116A 02 12 38         [24] 2370 	ljmp	00143$
      00116D 02 12 5A         [24] 2371 	ljmp	00146$
                                   2372 ;	../fsm.c:197: case fsm_set_label:
      001170                       2373 00112$:
                                   2374 ;	../fsm.c:198: if(select_state == BUTTON_PRESSED)
      001170 EE               [12] 2375 	mov	a,r6
      001171 70 02            [24] 2376 	jnz	00114$
                                   2377 ;	../fsm.c:199: curstate++;
      001173 05 51            [12] 2378 	inc	_fsm_set_fn_curstate_1_245
      001175                       2379 00114$:
                                   2380 ;	../fsm.c:200: if(menu_state == BUTTON_PRESSED)
      001175 EF               [12] 2381 	mov	a,r7
      001176 70 04            [24] 2382 	jnz	00116$
                                   2383 ;	../fsm.c:201: return fsm_fail;
      001178 75 82 02         [24] 2384 	mov	dpl,#0x02
      00117B 22               [24] 2385 	ret
      00117C                       2386 00116$:
                                   2387 ;	../fsm.c:202: display_puts(ledstrings[ledstrings_setc]);
      00117C 90 31 23         [24] 2388 	mov	dptr,#(_ledstrings + 0x0023)
      00117F 12 05 8F         [24] 2389 	lcall	_display_puts
                                   2390 ;	../fsm.c:203: break;
      001182 02 12 96         [24] 2391 	ljmp	00149$
                                   2392 ;	../fsm.c:205: case fsm_set_mm:
      001185                       2393 00118$:
                                   2394 ;	../fsm.c:206: if(curstate == fsm_set_hh){
      001185 74 01            [12] 2395 	mov	a,#0x01
      001187 B5 51 1B         [24] 2396 	cjne	a,_fsm_set_fn_curstate_1_245,00122$
                                   2397 ;	../fsm.c:207: ds1302.hour = bcd_add(ds1302.hour,fsm_set_temp);
      00118A 8D 5E            [24] 2398 	mov	_bcd_add_PARM_2,r5
      00118C 85 47 82         [24] 2399 	mov	dpl,(_ds1302 + 0x0002)
      00118F C0 05            [24] 2400 	push	ar5
      001191 12 0A 17         [24] 2401 	lcall	_bcd_add
      001194 AF 82            [24] 2402 	mov	r7,dpl
      001196 D0 05            [24] 2403 	pop	ar5
                                   2404 ;	../fsm.c:208: if(ds1302.hour > 0x23)
      001198 EF               [12] 2405 	mov	a,r7
      001199 F5 47            [12] 2406 	mov	(_ds1302 + 0x0002),a
      00119B 24 DC            [12] 2407 	add	a,#0xff - 0x23
      00119D 50 03            [24] 2408 	jnc	00120$
                                   2409 ;	../fsm.c:209: ds1302.hour = 0x00;
      00119F 75 47 00         [24] 2410 	mov	(_ds1302 + 0x0002),#0x00
      0011A2                       2411 00120$:
                                   2412 ;	../fsm.c:210: display_flash = 0x03;
      0011A2 75 40 03         [24] 2413 	mov	_display_flash,#0x03
      0011A5                       2414 00122$:
                                   2415 ;	../fsm.c:212: if(curstate == fsm_set_mm){
      0011A5 74 02            [12] 2416 	mov	a,#0x02
      0011A7 B5 51 17         [24] 2417 	cjne	a,_fsm_set_fn_curstate_1_245,00126$
                                   2418 ;	../fsm.c:213: ds1302.minutes = bcd_add(ds1302.minutes,fsm_set_temp);
      0011AA 8D 5E            [24] 2419 	mov	_bcd_add_PARM_2,r5
      0011AC 85 46 82         [24] 2420 	mov	dpl,(_ds1302 + 0x0001)
      0011AF 12 0A 17         [24] 2421 	lcall	_bcd_add
                                   2422 ;	../fsm.c:214: if(ds1302.minutes > 0x59)
      0011B2 E5 82            [12] 2423 	mov	a,dpl
      0011B4 FF               [12] 2424 	mov	r7,a
      0011B5 F5 46            [12] 2425 	mov	(_ds1302 + 0x0001),a
      0011B7 24 A6            [12] 2426 	add	a,#0xff - 0x59
      0011B9 50 03            [24] 2427 	jnc	00124$
                                   2428 ;	../fsm.c:215: ds1302.minutes = 0;
      0011BB 75 46 00         [24] 2429 	mov	(_ds1302 + 0x0001),#0x00
      0011BE                       2430 00124$:
                                   2431 ;	../fsm.c:216: display_flash = 0x0c;
      0011BE 75 40 0C         [24] 2432 	mov	_display_flash,#0x0c
      0011C1                       2433 00126$:
                                   2434 ;	../fsm.c:218: display_puttime(ds1302.hour,ds1302.minutes);
      0011C1 85 47 82         [24] 2435 	mov	dpl,(_ds1302 + 0x0002)
      0011C4 85 46 43         [24] 2436 	mov	_display_puttime_PARM_2,(_ds1302 + 0x0001)
      0011C7 12 05 F9         [24] 2437 	lcall	_display_puttime
                                   2438 ;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
      0011CA 74 7F            [12] 2439 	mov	a,#0x7f
      0011CC 55 3C            [12] 2440 	anl	a,(_display_buffer + 0x0001)
      0011CE F5 3C            [12] 2441 	mov	(_display_buffer + 0x0001),a
                                   2442 ;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
      0011D0 74 7F            [12] 2443 	mov	a,#0x7f
      0011D2 55 3D            [12] 2444 	anl	a,(_display_buffer + 0x0002)
      0011D4 F5 3D            [12] 2445 	mov	(_display_buffer + 0x0002),a
                                   2446 ;	../fsm.c:220: break;
      0011D6 02 12 96         [24] 2447 	ljmp	00149$
                                   2448 ;	../fsm.c:222: case fsm_set_month:
      0011D9                       2449 00128$:
                                   2450 ;	../fsm.c:223: if(curstate == fsm_set_dd){
      0011D9 74 03            [12] 2451 	mov	a,#0x03
      0011DB B5 51 2A         [24] 2452 	cjne	a,_fsm_set_fn_curstate_1_245,00135$
                                   2453 ;	../fsm.c:224: ds1302.date = bcd_add(ds1302.date,fsm_set_temp);
      0011DE 8D 5E            [24] 2454 	mov	_bcd_add_PARM_2,r5
      0011E0 85 48 82         [24] 2455 	mov	dpl,(_ds1302 + 0x0003)
      0011E3 C0 05            [24] 2456 	push	ar5
      0011E5 12 0A 17         [24] 2457 	lcall	_bcd_add
      0011E8 AF 82            [24] 2458 	mov	r7,dpl
      0011EA D0 05            [24] 2459 	pop	ar5
                                   2460 ;	../fsm.c:225: if(ds1302.date > 0x31)
      0011EC EF               [12] 2461 	mov	a,r7
      0011ED F5 48            [12] 2462 	mov	(_ds1302 + 0x0003),a
      0011EF 24 CE            [12] 2463 	add	a,#0xff - 0x31
      0011F1 50 03            [24] 2464 	jnc	00130$
                                   2465 ;	../fsm.c:227: ds1302.date = 0x00;
      0011F3 75 48 00         [24] 2466 	mov	(_ds1302 + 0x0003),#0x00
      0011F6                       2467 00130$:
                                   2468 ;	../fsm.c:228: if(DATE_DISPLAY_MMDD)
      0011F6 90 00 03         [24] 2469 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      0011F9 E0               [24] 2470 	movx	a,@dptr
      0011FA 23               [12] 2471 	rl	a
      0011FB 54 01            [12] 2472 	anl	a,#0x01
      0011FD FF               [12] 2473 	mov	r7,a
      0011FE 60 05            [24] 2474 	jz	00132$
                                   2475 ;	../fsm.c:229: display_flash = 0x0c;
      001200 75 40 0C         [24] 2476 	mov	_display_flash,#0x0c
      001203 80 03            [24] 2477 	sjmp	00135$
      001205                       2478 00132$:
                                   2479 ;	../fsm.c:231: display_flash = 0x03;
      001205 75 40 03         [24] 2480 	mov	_display_flash,#0x03
      001208                       2481 00135$:
                                   2482 ;	../fsm.c:233: if(curstate == fsm_set_month){
      001208 74 04            [12] 2483 	mov	a,#0x04
      00120A B5 51 26         [24] 2484 	cjne	a,_fsm_set_fn_curstate_1_245,00142$
                                   2485 ;	../fsm.c:234: ds1302.month = bcd_add(ds1302.month,fsm_set_temp);
      00120D 8D 5E            [24] 2486 	mov	_bcd_add_PARM_2,r5
      00120F 85 49 82         [24] 2487 	mov	dpl,(_ds1302 + 0x0004)
      001212 12 0A 17         [24] 2488 	lcall	_bcd_add
                                   2489 ;	../fsm.c:235: if(ds1302.month > 0x12)
      001215 E5 82            [12] 2490 	mov	a,dpl
      001217 FF               [12] 2491 	mov	r7,a
      001218 F5 49            [12] 2492 	mov	(_ds1302 + 0x0004),a
      00121A 24 ED            [12] 2493 	add	a,#0xff - 0x12
      00121C 50 03            [24] 2494 	jnc	00137$
                                   2495 ;	../fsm.c:236: ds1302.month = 0x00;
      00121E 75 49 00         [24] 2496 	mov	(_ds1302 + 0x0004),#0x00
      001221                       2497 00137$:
                                   2498 ;	../fsm.c:237: if(DATE_DISPLAY_MMDD)
      001221 90 00 03         [24] 2499 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      001224 E0               [24] 2500 	movx	a,@dptr
      001225 23               [12] 2501 	rl	a
      001226 54 01            [12] 2502 	anl	a,#0x01
      001228 FF               [12] 2503 	mov	r7,a
      001229 60 05            [24] 2504 	jz	00139$
                                   2505 ;	../fsm.c:238: display_flash = 0x03;
      00122B 75 40 03         [24] 2506 	mov	_display_flash,#0x03
      00122E 80 03            [24] 2507 	sjmp	00142$
      001230                       2508 00139$:
                                   2509 ;	../fsm.c:240: display_flash = 0x0c;
      001230 75 40 0C         [24] 2510 	mov	_display_flash,#0x0c
      001233                       2511 00142$:
                                   2512 ;	../fsm.c:242: display_putdate();
      001233 12 06 48         [24] 2513 	lcall	_display_putdate
                                   2514 ;	../fsm.c:243: break;
                                   2515 ;	../fsm.c:244: case fsm_set_yyyy:
      001236 80 5E            [24] 2516 	sjmp	00149$
      001238                       2517 00143$:
                                   2518 ;	../fsm.c:245: ds1302.year = bcd_add(ds1302.year,fsm_set_temp);
      001238 8D 5E            [24] 2519 	mov	_bcd_add_PARM_2,r5
      00123A 85 4B 82         [24] 2520 	mov	dpl,(_ds1302 + 0x0006)
      00123D 12 0A 17         [24] 2521 	lcall	_bcd_add
                                   2522 ;	../fsm.c:246: if(ds1302.year > 0x99)
      001240 E5 82            [12] 2523 	mov	a,dpl
      001242 FF               [12] 2524 	mov	r7,a
      001243 F5 4B            [12] 2525 	mov	(_ds1302 + 0x0006),a
      001245 24 66            [12] 2526 	add	a,#0xff - 0x99
      001247 50 03            [24] 2527 	jnc	00145$
                                   2528 ;	../fsm.c:247: ds1302.year = 0x00;
      001249 75 4B 00         [24] 2529 	mov	(_ds1302 + 0x0006),#0x00
      00124C                       2530 00145$:
                                   2531 ;	../fsm.c:248: display_flash = 0x0f;
      00124C 75 40 0F         [24] 2532 	mov	_display_flash,#0x0f
                                   2533 ;	../fsm.c:249: display_putbcd(0x20,ds1302.year);
      00124F 85 4B 5E         [24] 2534 	mov	_display_putbcd_PARM_2,(_ds1302 + 0x0006)
      001252 75 82 20         [24] 2535 	mov	dpl,#0x20
      001255 12 05 CA         [24] 2536 	lcall	_display_putbcd
                                   2537 ;	../fsm.c:250: break;
                                   2538 ;	../fsm.c:251: case fsm_set_dow:
      001258 80 3C            [24] 2539 	sjmp	00149$
      00125A                       2540 00146$:
                                   2541 ;	../fsm.c:252: ds1302.day = bcd_add(ds1302.day,fsm_set_temp);
      00125A 8D 5E            [24] 2542 	mov	_bcd_add_PARM_2,r5
      00125C 85 4A 82         [24] 2543 	mov	dpl,(_ds1302 + 0x0005)
      00125F 12 0A 17         [24] 2544 	lcall	_bcd_add
                                   2545 ;	../fsm.c:253: if(ds1302.day > 0x07)
      001262 E5 82            [12] 2546 	mov	a,dpl
      001264 FF               [12] 2547 	mov	r7,a
      001265 F5 4A            [12] 2548 	mov	(_ds1302 + 0x0005),a
      001267 24 F8            [12] 2549 	add	a,#0xff - 0x07
      001269 50 03            [24] 2550 	jnc	00148$
                                   2551 ;	../fsm.c:254: ds1302.day = 0x01; //DOW register only from 0x01 - 0x07
      00126B 75 4A 01         [24] 2552 	mov	(_ds1302 + 0x0005),#0x01
      00126E                       2553 00148$:
                                   2554 ;	../fsm.c:255: display_flash = 0x0f;
      00126E 75 40 0F         [24] 2555 	mov	_display_flash,#0x0f
                                   2556 ;	../fsm.c:256: display_puts(ledstrings[ds1302.day-1]);
      001271 AE 4A            [24] 2557 	mov	r6,(_ds1302 + 0x0005)
      001273 7F 00            [12] 2558 	mov	r7,#0x00
      001275 EE               [12] 2559 	mov	a,r6
      001276 24 FF            [12] 2560 	add	a,#0xff
      001278 F5 5E            [12] 2561 	mov	__mulint_PARM_2,a
      00127A EF               [12] 2562 	mov	a,r7
      00127B 34 FF            [12] 2563 	addc	a,#0xff
      00127D F5 5F            [12] 2564 	mov	(__mulint_PARM_2 + 1),a
      00127F 90 00 05         [24] 2565 	mov	dptr,#0x0005
      001282 12 1C 2C         [24] 2566 	lcall	__mulint
      001285 AE 82            [24] 2567 	mov	r6,dpl
      001287 AF 83            [24] 2568 	mov	r7,dph
      001289 EE               [12] 2569 	mov	a,r6
      00128A 24 00            [12] 2570 	add	a,#_ledstrings
      00128C F5 82            [12] 2571 	mov	dpl,a
      00128E EF               [12] 2572 	mov	a,r7
      00128F 34 31            [12] 2573 	addc	a,#(_ledstrings >> 8)
      001291 F5 83            [12] 2574 	mov	dph,a
      001293 12 05 8F         [24] 2575 	lcall	_display_puts
                                   2576 ;	../fsm.c:258: }
      001296                       2577 00149$:
                                   2578 ;	../fsm.c:260: return fsm_repeat;
      001296 75 82 01         [24] 2579 	mov	dpl,#0x01
      001299 22               [24] 2580 	ret
                                   2581 ;------------------------------------------------------------
                                   2582 ;Allocation info for local variables in function 'fsm_alarm_fn'
                                   2583 ;------------------------------------------------------------
                                   2584 ;alarm_temp                Allocated to registers r5 
                                   2585 ;menu_state                Allocated to registers r7 
                                   2586 ;select_state              Allocated to registers r6 
                                   2587 ;__00020053                Allocated to registers 
                                   2588 ;__00030058                Allocated to registers 
                                   2589 ;__00040059                Allocated to registers r4 
                                   2590 ;__00040060                Allocated to registers r6 
                                   2591 ;index                     Allocated to registers 
                                   2592 ;dow                       Allocated to registers 
                                   2593 ;__00040064                Allocated to registers r5 
                                   2594 ;__00040065                Allocated to registers r6 
                                   2595 ;index                     Allocated to registers 
                                   2596 ;dow                       Allocated to registers 
                                   2597 ;curstate                  Allocated with name '_fsm_alarm_fn_curstate_1_257'
                                   2598 ;sub_curstate              Allocated with name '_fsm_alarm_fn_sub_curstate_1_257'
                                   2599 ;------------------------------------------------------------
                                   2600 ;	../fsm.c:262: enum fsm_return fsm_alarm_fn() __reentrant {
                                   2601 ;	-----------------------------------------
                                   2602 ;	 function fsm_alarm_fn
                                   2603 ;	-----------------------------------------
      00129A                       2604 _fsm_alarm_fn:
                                   2605 ;	../fsm.c:270: menu_state = button_read_and_clear_menu();
      00129A 12 05 0A         [24] 2606 	lcall	_button_read_and_clear_menu
      00129D AF 82            [24] 2607 	mov	r7,dpl
                                   2608 ;	../fsm.c:271: select_state = button_read_and_clear_select();
      00129F C0 07            [24] 2609 	push	ar7
      0012A1 12 04 DE         [24] 2610 	lcall	_button_read_and_clear_select
      0012A4 AE 82            [24] 2611 	mov	r6,dpl
      0012A6 D0 07            [24] 2612 	pop	ar7
                                   2613 ;	../fsm.c:273: alarm_temp = 0;
      0012A8 7D 00            [12] 2614 	mov	r5,#0x00
                                   2615 ;	../fsm.c:274: if(select_state == BUTTON_PRESSED || select_state == BUTTON_HELD_DOWN)
      0012AA EE               [12] 2616 	mov	a,r6
      0012AB 60 03            [24] 2617 	jz	00101$
      0012AD BE 02 02         [24] 2618 	cjne	r6,#0x02,00102$
      0012B0                       2619 00101$:
                                   2620 ;	../fsm.c:275: alarm_temp = 1;
      0012B0 7D 01            [12] 2621 	mov	r5,#0x01
      0012B2                       2622 00102$:
                                   2623 ;	../fsm.c:277: switch(curstate) {
      0012B2 E4               [12] 2624 	clr	a
      0012B3 B5 52 02         [24] 2625 	cjne	a,_fsm_alarm_fn_curstate_1_257,00257$
      0012B6 80 07            [24] 2626 	sjmp	00104$
      0012B8                       2627 00257$:
      0012B8 74 01            [12] 2628 	mov	a,#0x01
                                   2629 ;	../fsm.c:278: case fsm_alarm_label:
      0012BA B5 52 6E         [24] 2630 	cjne	a,_fsm_alarm_fn_curstate_1_257,00119$
      0012BD 80 19            [24] 2631 	sjmp	00109$
      0012BF                       2632 00104$:
                                   2633 ;	../fsm.c:279: if(menu_state == BUTTON_PRESSED)
      0012BF EF               [12] 2634 	mov	a,r7
      0012C0 70 04            [24] 2635 	jnz	00106$
                                   2636 ;	../fsm.c:281: return fsm_fail;
      0012C2 75 82 02         [24] 2637 	mov	dpl,#0x02
      0012C5 22               [24] 2638 	ret
      0012C6                       2639 00106$:
                                   2640 ;	../fsm.c:282: if(select_state == BUTTON_PRESSED){
      0012C6 EE               [12] 2641 	mov	a,r6
      0012C7 70 06            [24] 2642 	jnz	00108$
                                   2643 ;	../fsm.c:284: curstate++;
      0012C9 05 52            [12] 2644 	inc	_fsm_alarm_fn_curstate_1_257
                                   2645 ;	../fsm.c:285: return fsm_repeat;
      0012CB 75 82 01         [24] 2646 	mov	dpl,#0x01
      0012CE 22               [24] 2647 	ret
      0012CF                       2648 00108$:
                                   2649 ;	../fsm.c:287: display_puts(ledstrings[ledstrings_seta]);
      0012CF 90 31 28         [24] 2650 	mov	dptr,#(_ledstrings + 0x0028)
      0012D2 12 05 8F         [24] 2651 	lcall	_display_puts
                                   2652 ;	../fsm.c:288: break;
      0012D5 02 15 F6         [24] 2653 	ljmp	00164$
                                   2654 ;	../fsm.c:289: case fsm_alarm_global_toggle:
      0012D8                       2655 00109$:
                                   2656 ;	../fsm.c:290: if(menu_state == BUTTON_LONG_PRESSED){
      0012D8 BF 01 10         [24] 2657 	cjne	r7,#0x01,00111$
                                   2658 ;	../fsm.c:291: curstate = fsm_alarm_label;
      0012DB 75 52 00         [24] 2659 	mov	_fsm_alarm_fn_curstate_1_257,#0x00
                                   2660 ;	../fsm.c:292: ds1302_calculate_CRC();
      0012DE 12 09 AD         [24] 2661 	lcall	_ds1302_calculate_CRC
                                   2662 ;	../fsm.c:293: ds1302_write_SRAM();	  //Save data
      0012E1 12 09 54         [24] 2663 	lcall	_ds1302_write_SRAM
                                   2664 ;	../fsm.c:294: alarm_lastpoll = 0x60;	  //Reset last poll time, force compare
      0012E4 75 4D 60         [24] 2665 	mov	_alarm_lastpoll,#0x60
                                   2666 ;	../fsm.c:295: return fsm_ok;
      0012E7 75 82 00         [24] 2667 	mov	dpl,#0x00
      0012EA 22               [24] 2668 	ret
      0012EB                       2669 00111$:
                                   2670 ;	../fsm.c:297: if(select_state == BUTTON_PRESSED)
      0012EB EE               [12] 2671 	mov	a,r6
      0012EC 70 08            [24] 2672 	jnz	00113$
                                   2673 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:94: ds1302_sram_data[3] ^= 0x01;
      0012EE 90 00 03         [24] 2674 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      0012F1 E0               [24] 2675 	movx	a,@dptr
      0012F2 64 01            [12] 2676 	xrl	a,#0x01
      0012F4 FC               [12] 2677 	mov	r4,a
      0012F5 F0               [24] 2678 	movx	@dptr,a
                                   2679 ;	../fsm.c:298: alarm_global_toggle();
      0012F6                       2680 00113$:
                                   2681 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:84: return (ds1302_sram_data[3] & 0x01);
      0012F6 90 00 03         [24] 2682 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      0012F9 E0               [24] 2683 	movx	a,@dptr
      0012FA FC               [12] 2684 	mov	r4,a
      0012FB 30 E0 0C         [24] 2685 	jnb	acc.0,00115$
                                   2686 ;	../fsm.c:299: if(alarm_global_state())
                                   2687 ;	../fsm.c:300: display_puts(ledstrings[ledstrings_alon]);
      0012FE 90 31 2D         [24] 2688 	mov	dptr,#(_ledstrings + 0x002d)
      001301 C0 07            [24] 2689 	push	ar7
      001303 12 05 8F         [24] 2690 	lcall	_display_puts
      001306 D0 07            [24] 2691 	pop	ar7
      001308 80 0A            [24] 2692 	sjmp	00116$
      00130A                       2693 00115$:
                                   2694 ;	../fsm.c:302: display_puts(ledstrings[ledstrings_alof]);
      00130A 90 31 32         [24] 2695 	mov	dptr,#(_ledstrings + 0x0032)
      00130D C0 07            [24] 2696 	push	ar7
      00130F 12 05 8F         [24] 2697 	lcall	_display_puts
      001312 D0 07            [24] 2698 	pop	ar7
      001314                       2699 00116$:
                                   2700 ;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
      001314 74 7F            [12] 2701 	mov	a,#0x7f
      001316 55 3C            [12] 2702 	anl	a,(_display_buffer + 0x0001)
      001318 F5 3C            [12] 2703 	mov	(_display_buffer + 0x0001),a
                                   2704 ;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
      00131A 74 7F            [12] 2705 	mov	a,#0x7f
      00131C 55 3D            [12] 2706 	anl	a,(_display_buffer + 0x0002)
      00131E F5 3D            [12] 2707 	mov	(_display_buffer + 0x0002),a
                                   2708 ;	../fsm.c:305: if(menu_state == BUTTON_PRESSED){
      001320 EF               [12] 2709 	mov	a,r7
      001321 60 03            [24] 2710 	jz	00265$
      001323 02 15 F6         [24] 2711 	ljmp	00164$
      001326                       2712 00265$:
                                   2713 ;	../fsm.c:306: ++curstate;
      001326 05 52            [12] 2714 	inc	_fsm_alarm_fn_curstate_1_257
                                   2715 ;	../fsm.c:308: break;
      001328 02 15 F6         [24] 2716 	ljmp	00164$
                                   2717 ;	../fsm.c:309: default:
      00132B                       2718 00119$:
                                   2719 ;	../fsm.c:310: switch(sub_curstate){
      00132B E5 53            [12] 2720 	mov	a,_fsm_alarm_fn_sub_curstate_1_257
      00132D 24 F6            [12] 2721 	add	a,#0xff - 0x09
      00132F 50 03            [24] 2722 	jnc	00266$
      001331 02 15 F6         [24] 2723 	ljmp	00164$
      001334                       2724 00266$:
      001334 E5 53            [12] 2725 	mov	a,_fsm_alarm_fn_sub_curstate_1_257
      001336 24 0B            [12] 2726 	add	a,#(00267$-3-.)
      001338 83               [24] 2727 	movc	a,@a+pc
      001339 F5 82            [12] 2728 	mov	dpl,a
      00133B E5 53            [12] 2729 	mov	a,_fsm_alarm_fn_sub_curstate_1_257
      00133D 24 0E            [12] 2730 	add	a,#(00268$-3-.)
      00133F 83               [24] 2731 	movc	a,@a+pc
      001340 F5 83            [12] 2732 	mov	dph,a
      001342 E4               [12] 2733 	clr	a
      001343 73               [24] 2734 	jmp	@a+dptr
      001344                       2735 00267$:
      001344 58                    2736 	.db	00120$
      001345 FD                    2737 	.db	00132$
      001346 FD                    2738 	.db	00132$
      001347 32                    2739 	.db	00151$
      001348 32                    2740 	.db	00151$
      001349 32                    2741 	.db	00151$
      00134A 32                    2742 	.db	00151$
      00134B 32                    2743 	.db	00151$
      00134C 32                    2744 	.db	00151$
      00134D 32                    2745 	.db	00151$
      00134E                       2746 00268$:
      00134E 13                    2747 	.db	00120$>>8
      00134F 13                    2748 	.db	00132$>>8
      001350 13                    2749 	.db	00132$>>8
      001351 15                    2750 	.db	00151$>>8
      001352 15                    2751 	.db	00151$>>8
      001353 15                    2752 	.db	00151$>>8
      001354 15                    2753 	.db	00151$>>8
      001355 15                    2754 	.db	00151$>>8
      001356 15                    2755 	.db	00151$>>8
      001357 15                    2756 	.db	00151$>>8
                                   2757 ;	../fsm.c:311: case fsm_alarm_substate_toggle:
      001358                       2758 00120$:
                                   2759 ;	../fsm.c:312: if(menu_state == BUTTON_PRESSED){
      001358 EF               [12] 2760 	mov	a,r7
      001359 70 12            [24] 2761 	jnz	00124$
                                   2762 ;	../fsm.c:313: if(++curstate == (fsm_alarm_end + NUM_ALARMS))
      00135B 05 52            [12] 2763 	inc	_fsm_alarm_fn_curstate_1_257
      00135D 74 09            [12] 2764 	mov	a,#0x09
      00135F B5 52 02         [24] 2765 	cjne	a,_fsm_alarm_fn_curstate_1_257,00270$
      001362 80 03            [24] 2766 	sjmp	00271$
      001364                       2767 00270$:
      001364 02 15 F6         [24] 2768 	ljmp	00164$
      001367                       2769 00271$:
                                   2770 ;	../fsm.c:314: curstate = fsm_alarm_start;
      001367 75 52 01         [24] 2771 	mov	_fsm_alarm_fn_curstate_1_257,#0x01
                                   2772 ;	../fsm.c:315: break;
      00136A 02 15 F6         [24] 2773 	ljmp	00164$
      00136D                       2774 00124$:
                                   2775 ;	../fsm.c:317: if(select_state == BUTTON_PRESSED){
      00136D EE               [12] 2776 	mov	a,r6
      00136E 70 36            [24] 2777 	jnz	00126$
                                   2778 ;	../fsm.c:318: alarms[(curstate - fsm_alarm_end)].dow_and_enable ^= 1;
      001370 C0 06            [24] 2779 	push	ar6
      001372 E5 52            [12] 2780 	mov	a,_fsm_alarm_fn_curstate_1_257
      001374 24 FE            [12] 2781 	add	a,#0xfe
      001376 75 F0 03         [24] 2782 	mov	b,#0x03
      001379 A4               [48] 2783 	mul	ab
      00137A FB               [12] 2784 	mov	r3,a
      00137B AC F0            [24] 2785 	mov	r4,b
      00137D 24 04            [12] 2786 	add	a,#_alarms
      00137F FA               [12] 2787 	mov	r2,a
      001380 EC               [12] 2788 	mov	a,r4
      001381 34 00            [12] 2789 	addc	a,#(_alarms >> 8)
      001383 FE               [12] 2790 	mov	r6,a
      001384 74 02            [12] 2791 	mov	a,#0x02
      001386 2A               [12] 2792 	add	a,r2
      001387 FA               [12] 2793 	mov	r2,a
      001388 E4               [12] 2794 	clr	a
      001389 3E               [12] 2795 	addc	a,r6
      00138A FE               [12] 2796 	mov	r6,a
      00138B EB               [12] 2797 	mov	a,r3
      00138C 24 04            [12] 2798 	add	a,#_alarms
      00138E FB               [12] 2799 	mov	r3,a
      00138F EC               [12] 2800 	mov	a,r4
      001390 34 00            [12] 2801 	addc	a,#(_alarms >> 8)
      001392 FC               [12] 2802 	mov	r4,a
      001393 8B 82            [24] 2803 	mov	dpl,r3
      001395 8C 83            [24] 2804 	mov	dph,r4
      001397 A3               [24] 2805 	inc	dptr
      001398 A3               [24] 2806 	inc	dptr
      001399 E0               [24] 2807 	movx	a,@dptr
      00139A FC               [12] 2808 	mov	r4,a
      00139B 63 04 01         [24] 2809 	xrl	ar4,#0x01
      00139E 8A 82            [24] 2810 	mov	dpl,r2
      0013A0 8E 83            [24] 2811 	mov	dph,r6
      0013A2 EC               [12] 2812 	mov	a,r4
      0013A3 F0               [24] 2813 	movx	@dptr,a
                                   2814 ;	../fsm.c:392: return fsm_repeat;
      0013A4 D0 06            [24] 2815 	pop	ar6
                                   2816 ;	../fsm.c:318: alarms[(curstate - fsm_alarm_end)].dow_and_enable ^= 1;
      0013A6                       2817 00126$:
                                   2818 ;	../fsm.c:320: if(select_state == BUTTON_LONG_PRESSED){
      0013A6 BE 01 05         [24] 2819 	cjne	r6,#0x01,00128$
                                   2820 ;	../fsm.c:321: sub_curstate++;
      0013A9 05 53            [12] 2821 	inc	_fsm_alarm_fn_sub_curstate_1_257
                                   2822 ;	../fsm.c:322: break;
      0013AB 02 15 F6         [24] 2823 	ljmp	00164$
      0013AE                       2824 00128$:
                                   2825 ;	../fsm.c:324: if(menu_state == BUTTON_LONG_PRESSED){
      0013AE BF 01 0A         [24] 2826 	cjne	r7,#0x01,00130$
                                   2827 ;	../fsm.c:325: sub_curstate = fsm_alarm_substate_toggle;
      0013B1 75 53 00         [24] 2828 	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x00
                                   2829 ;	../fsm.c:326: curstate = fsm_alarm_label;
      0013B4 75 52 00         [24] 2830 	mov	_fsm_alarm_fn_curstate_1_257,#0x00
                                   2831 ;	../fsm.c:327: return fsm_ok;
      0013B7 75 82 00         [24] 2832 	mov	dpl,#0x00
      0013BA 22               [24] 2833 	ret
      0013BB                       2834 00130$:
                                   2835 ;	../fsm.c:329: display_buffer[0] = ledfonts_numeric_normal['A'];
      0013BB 90 30 41         [24] 2836 	mov	dptr,#(_ledfonts_numeric_normal + 0x0041)
      0013BE E4               [12] 2837 	clr	a
      0013BF 93               [24] 2838 	movc	a,@a+dptr
      0013C0 FE               [12] 2839 	mov	r6,a
      0013C1 8E 3B            [24] 2840 	mov	_display_buffer,r6
                                   2841 ;	../fsm.c:330: display_buffer[1] = ledfonts_numeric_normal[(curstate - fsm_alarm_end)];
      0013C3 E5 52            [12] 2842 	mov	a,_fsm_alarm_fn_curstate_1_257
      0013C5 24 FE            [12] 2843 	add	a,#0xfe
      0013C7 90 30 00         [24] 2844 	mov	dptr,#_ledfonts_numeric_normal
      0013CA 93               [24] 2845 	movc	a,@a+dptr
      0013CB FE               [12] 2846 	mov	r6,a
      0013CC 8E 3C            [24] 2847 	mov	(_display_buffer + 0x0001),r6
                                   2848 ;	../fsm.c:331: display_putbool(alarms[(curstate - fsm_alarm_end)].dow_and_enable & 0x01);
      0013CE E5 52            [12] 2849 	mov	a,_fsm_alarm_fn_curstate_1_257
      0013D0 24 FE            [12] 2850 	add	a,#0xfe
      0013D2 75 F0 03         [24] 2851 	mov	b,#0x03
      0013D5 A4               [48] 2852 	mul	ab
      0013D6 24 04            [12] 2853 	add	a,#_alarms
      0013D8 FC               [12] 2854 	mov	r4,a
      0013D9 74 00            [12] 2855 	mov	a,#(_alarms >> 8)
      0013DB 35 F0            [12] 2856 	addc	a,b
      0013DD FE               [12] 2857 	mov	r6,a
      0013DE 8C 82            [24] 2858 	mov	dpl,r4
      0013E0 8E 83            [24] 2859 	mov	dph,r6
      0013E2 A3               [24] 2860 	inc	dptr
      0013E3 A3               [24] 2861 	inc	dptr
      0013E4 E0               [24] 2862 	movx	a,@dptr
      0013E5 FE               [12] 2863 	mov	r6,a
      0013E6 74 01            [12] 2864 	mov	a,#0x01
      0013E8 5E               [12] 2865 	anl	a,r6
      0013E9 F5 82            [12] 2866 	mov	dpl,a
      0013EB 12 06 97         [24] 2867 	lcall	_display_putbool
                                   2868 ;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
      0013EE 74 7F            [12] 2869 	mov	a,#0x7f
      0013F0 55 3C            [12] 2870 	anl	a,(_display_buffer + 0x0001)
      0013F2 F5 3C            [12] 2871 	mov	(_display_buffer + 0x0001),a
                                   2872 ;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
      0013F4 74 7F            [12] 2873 	mov	a,#0x7f
      0013F6 55 3D            [12] 2874 	anl	a,(_display_buffer + 0x0002)
      0013F8 F5 3D            [12] 2875 	mov	(_display_buffer + 0x0002),a
                                   2876 ;	../fsm.c:333: break;
      0013FA 02 15 F6         [24] 2877 	ljmp	00164$
                                   2878 ;	../fsm.c:335: case fsm_alarm_substate_mm:
      0013FD                       2879 00132$:
                                   2880 ;	../fsm.c:336: if(menu_state == BUTTON_PRESSED){
      0013FD EF               [12] 2881 	mov	a,r7
      0013FE 70 08            [24] 2882 	jnz	00134$
                                   2883 ;	../fsm.c:337: sub_curstate++;
      001400 05 53            [12] 2884 	inc	_fsm_alarm_fn_sub_curstate_1_257
                                   2885 ;	../fsm.c:338: display_flash = 0x00;
      001402 75 40 00         [24] 2886 	mov	_display_flash,#0x00
                                   2887 ;	../fsm.c:339: break;
      001405 02 15 F6         [24] 2888 	ljmp	00164$
      001408                       2889 00134$:
                                   2890 ;	../fsm.c:341: if(menu_state == BUTTON_LONG_PRESSED){
      001408 BF 01 09         [24] 2891 	cjne	r7,#0x01,00136$
                                   2892 ;	../fsm.c:342: sub_curstate = fsm_alarm_substate_toggle;
      00140B 75 53 00         [24] 2893 	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x00
                                   2894 ;	../fsm.c:343: display_flash = 0x00;
      00140E 75 40 00         [24] 2895 	mov	_display_flash,#0x00
                                   2896 ;	../fsm.c:344: break;
      001411 02 15 F6         [24] 2897 	ljmp	00164$
      001414                       2898 00136$:
                                   2899 ;	../fsm.c:346: if(sub_curstate == fsm_alarm_substate_hh){
      001414 74 01            [12] 2900 	mov	a,#0x01
      001416 B5 53 68         [24] 2901 	cjne	a,_fsm_alarm_fn_sub_curstate_1_257,00140$
                                   2902 ;	../fsm.c:347: alarms[(curstate - fsm_alarm_end)].hour = bcd_add(alarms[(curstate - fsm_alarm_end)].hour,alarm_temp);
      001419 E5 52            [12] 2903 	mov	a,_fsm_alarm_fn_curstate_1_257
      00141B 24 FE            [12] 2904 	add	a,#0xfe
      00141D 75 F0 03         [24] 2905 	mov	b,#0x03
      001420 A4               [48] 2906 	mul	ab
      001421 FC               [12] 2907 	mov	r4,a
      001422 AE F0            [24] 2908 	mov	r6,b
      001424 24 04            [12] 2909 	add	a,#_alarms
      001426 FA               [12] 2910 	mov	r2,a
      001427 EE               [12] 2911 	mov	a,r6
      001428 34 00            [12] 2912 	addc	a,#(_alarms >> 8)
      00142A FB               [12] 2913 	mov	r3,a
      00142B EC               [12] 2914 	mov	a,r4
      00142C 24 04            [12] 2915 	add	a,#_alarms
      00142E F5 82            [12] 2916 	mov	dpl,a
      001430 EE               [12] 2917 	mov	a,r6
      001431 34 00            [12] 2918 	addc	a,#(_alarms >> 8)
      001433 F5 83            [12] 2919 	mov	dph,a
      001435 E0               [24] 2920 	movx	a,@dptr
      001436 FE               [12] 2921 	mov	r6,a
      001437 8D 5E            [24] 2922 	mov	_bcd_add_PARM_2,r5
      001439 8E 82            [24] 2923 	mov	dpl,r6
      00143B C0 05            [24] 2924 	push	ar5
      00143D C0 03            [24] 2925 	push	ar3
      00143F C0 02            [24] 2926 	push	ar2
      001441 12 0A 17         [24] 2927 	lcall	_bcd_add
      001444 AE 82            [24] 2928 	mov	r6,dpl
      001446 D0 02            [24] 2929 	pop	ar2
      001448 D0 03            [24] 2930 	pop	ar3
      00144A D0 05            [24] 2931 	pop	ar5
      00144C 8A 82            [24] 2932 	mov	dpl,r2
      00144E 8B 83            [24] 2933 	mov	dph,r3
      001450 EE               [12] 2934 	mov	a,r6
      001451 F0               [24] 2935 	movx	@dptr,a
                                   2936 ;	../fsm.c:348: if(alarms[(curstate - fsm_alarm_end)].hour > 0x23)
      001452 E5 52            [12] 2937 	mov	a,_fsm_alarm_fn_curstate_1_257
      001454 24 FE            [12] 2938 	add	a,#0xfe
      001456 75 F0 03         [24] 2939 	mov	b,#0x03
      001459 A4               [48] 2940 	mul	ab
      00145A 24 04            [12] 2941 	add	a,#_alarms
      00145C F5 82            [12] 2942 	mov	dpl,a
      00145E 74 00            [12] 2943 	mov	a,#(_alarms >> 8)
      001460 35 F0            [12] 2944 	addc	a,b
      001462 F5 83            [12] 2945 	mov	dph,a
      001464 E0               [24] 2946 	movx	a,@dptr
      001465 FE               [12] 2947 	mov  r6,a
      001466 24 DC            [12] 2948 	add	a,#0xff - 0x23
      001468 50 14            [24] 2949 	jnc	00138$
                                   2950 ;	../fsm.c:349: alarms[(curstate - fsm_alarm_end)].hour = 0x00;
      00146A E5 52            [12] 2951 	mov	a,_fsm_alarm_fn_curstate_1_257
      00146C 24 FE            [12] 2952 	add	a,#0xfe
      00146E 75 F0 03         [24] 2953 	mov	b,#0x03
      001471 A4               [48] 2954 	mul	ab
      001472 24 04            [12] 2955 	add	a,#_alarms
      001474 F5 82            [12] 2956 	mov	dpl,a
      001476 74 00            [12] 2957 	mov	a,#(_alarms >> 8)
      001478 35 F0            [12] 2958 	addc	a,b
      00147A F5 83            [12] 2959 	mov	dph,a
      00147C E4               [12] 2960 	clr	a
      00147D F0               [24] 2961 	movx	@dptr,a
      00147E                       2962 00138$:
                                   2963 ;	../fsm.c:350: display_flash = 0x03;
      00147E 75 40 03         [24] 2964 	mov	_display_flash,#0x03
      001481                       2965 00140$:
                                   2966 ;	../fsm.c:352: if(sub_curstate == fsm_alarm_substate_mm){
      001481 74 02            [12] 2967 	mov	a,#0x02
      001483 B5 53 72         [24] 2968 	cjne	a,_fsm_alarm_fn_sub_curstate_1_257,00144$
                                   2969 ;	../fsm.c:353: alarms[(curstate - fsm_alarm_end)].minute = bcd_add(alarms[(curstate - fsm_alarm_end)].minute,alarm_temp);
      001486 E5 52            [12] 2970 	mov	a,_fsm_alarm_fn_curstate_1_257
      001488 24 FE            [12] 2971 	add	a,#0xfe
      00148A 75 F0 03         [24] 2972 	mov	b,#0x03
      00148D A4               [48] 2973 	mul	ab
      00148E FC               [12] 2974 	mov	r4,a
      00148F AE F0            [24] 2975 	mov	r6,b
      001491 24 04            [12] 2976 	add	a,#_alarms
      001493 FA               [12] 2977 	mov	r2,a
      001494 EE               [12] 2978 	mov	a,r6
      001495 34 00            [12] 2979 	addc	a,#(_alarms >> 8)
      001497 FB               [12] 2980 	mov	r3,a
      001498 0A               [12] 2981 	inc	r2
      001499 BA 00 01         [24] 2982 	cjne	r2,#0x00,00285$
      00149C 0B               [12] 2983 	inc	r3
      00149D                       2984 00285$:
      00149D EC               [12] 2985 	mov	a,r4
      00149E 24 04            [12] 2986 	add	a,#_alarms
      0014A0 FC               [12] 2987 	mov	r4,a
      0014A1 EE               [12] 2988 	mov	a,r6
      0014A2 34 00            [12] 2989 	addc	a,#(_alarms >> 8)
      0014A4 FE               [12] 2990 	mov	r6,a
      0014A5 8C 82            [24] 2991 	mov	dpl,r4
      0014A7 8E 83            [24] 2992 	mov	dph,r6
      0014A9 A3               [24] 2993 	inc	dptr
      0014AA E0               [24] 2994 	movx	a,@dptr
      0014AB FE               [12] 2995 	mov	r6,a
      0014AC 8D 5E            [24] 2996 	mov	_bcd_add_PARM_2,r5
      0014AE 8E 82            [24] 2997 	mov	dpl,r6
      0014B0 C0 03            [24] 2998 	push	ar3
      0014B2 C0 02            [24] 2999 	push	ar2
      0014B4 12 0A 17         [24] 3000 	lcall	_bcd_add
      0014B7 AE 82            [24] 3001 	mov	r6,dpl
      0014B9 D0 02            [24] 3002 	pop	ar2
      0014BB D0 03            [24] 3003 	pop	ar3
      0014BD 8A 82            [24] 3004 	mov	dpl,r2
      0014BF 8B 83            [24] 3005 	mov	dph,r3
      0014C1 EE               [12] 3006 	mov	a,r6
      0014C2 F0               [24] 3007 	movx	@dptr,a
                                   3008 ;	../fsm.c:354: if(alarms[(curstate - fsm_alarm_end)].minute > 0x59)
      0014C3 E5 52            [12] 3009 	mov	a,_fsm_alarm_fn_curstate_1_257
      0014C5 24 FE            [12] 3010 	add	a,#0xfe
      0014C7 75 F0 03         [24] 3011 	mov	b,#0x03
      0014CA A4               [48] 3012 	mul	ab
      0014CB 24 04            [12] 3013 	add	a,#_alarms
      0014CD FC               [12] 3014 	mov	r4,a
      0014CE 74 00            [12] 3015 	mov	a,#(_alarms >> 8)
      0014D0 35 F0            [12] 3016 	addc	a,b
      0014D2 FE               [12] 3017 	mov	r6,a
      0014D3 8C 82            [24] 3018 	mov	dpl,r4
      0014D5 8E 83            [24] 3019 	mov	dph,r6
      0014D7 A3               [24] 3020 	inc	dptr
      0014D8 E0               [24] 3021 	movx	a,@dptr
      0014D9 FE               [12] 3022 	mov  r6,a
      0014DA 24 A6            [12] 3023 	add	a,#0xff - 0x59
      0014DC 50 17            [24] 3024 	jnc	00142$
                                   3025 ;	../fsm.c:355: alarms[(curstate - fsm_alarm_end)].minute = 0x00;
      0014DE E5 52            [12] 3026 	mov	a,_fsm_alarm_fn_curstate_1_257
      0014E0 24 FE            [12] 3027 	add	a,#0xfe
      0014E2 75 F0 03         [24] 3028 	mov	b,#0x03
      0014E5 A4               [48] 3029 	mul	ab
      0014E6 24 04            [12] 3030 	add	a,#_alarms
      0014E8 FC               [12] 3031 	mov	r4,a
      0014E9 74 00            [12] 3032 	mov	a,#(_alarms >> 8)
      0014EB 35 F0            [12] 3033 	addc	a,b
      0014ED FE               [12] 3034 	mov	r6,a
      0014EE 8C 82            [24] 3035 	mov	dpl,r4
      0014F0 8E 83            [24] 3036 	mov	dph,r6
      0014F2 A3               [24] 3037 	inc	dptr
      0014F3 E4               [12] 3038 	clr	a
      0014F4 F0               [24] 3039 	movx	@dptr,a
      0014F5                       3040 00142$:
                                   3041 ;	../fsm.c:356: display_flash = 0x0c;
      0014F5 75 40 0C         [24] 3042 	mov	_display_flash,#0x0c
      0014F8                       3043 00144$:
                                   3044 ;	../fsm.c:358: display_puttime(alarms[(curstate - fsm_alarm_end)].hour,alarms[(curstate - fsm_alarm_end)].minute);
      0014F8 E5 52            [12] 3045 	mov	a,_fsm_alarm_fn_curstate_1_257
      0014FA 24 FE            [12] 3046 	add	a,#0xfe
      0014FC 75 F0 03         [24] 3047 	mov	b,#0x03
      0014FF A4               [48] 3048 	mul	ab
      001500 FC               [12] 3049 	mov	r4,a
      001501 AE F0            [24] 3050 	mov	r6,b
      001503 24 04            [12] 3051 	add	a,#_alarms
      001505 F5 82            [12] 3052 	mov	dpl,a
      001507 EE               [12] 3053 	mov	a,r6
      001508 34 00            [12] 3054 	addc	a,#(_alarms >> 8)
      00150A F5 83            [12] 3055 	mov	dph,a
      00150C E0               [24] 3056 	movx	a,@dptr
      00150D FB               [12] 3057 	mov	r3,a
      00150E EC               [12] 3058 	mov	a,r4
      00150F 24 04            [12] 3059 	add	a,#_alarms
      001511 FC               [12] 3060 	mov	r4,a
      001512 EE               [12] 3061 	mov	a,r6
      001513 34 00            [12] 3062 	addc	a,#(_alarms >> 8)
      001515 FE               [12] 3063 	mov	r6,a
      001516 8C 82            [24] 3064 	mov	dpl,r4
      001518 8E 83            [24] 3065 	mov	dph,r6
      00151A A3               [24] 3066 	inc	dptr
      00151B E0               [24] 3067 	movx	a,@dptr
      00151C F5 43            [12] 3068 	mov	_display_puttime_PARM_2,a
      00151E 8B 82            [24] 3069 	mov	dpl,r3
      001520 12 05 F9         [24] 3070 	lcall	_display_puttime
                                   3071 ;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
      001523 74 7F            [12] 3072 	mov	a,#0x7f
      001525 55 3C            [12] 3073 	anl	a,(_display_buffer + 0x0001)
      001527 F5 3C            [12] 3074 	mov	(_display_buffer + 0x0001),a
                                   3075 ;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
      001529 74 7F            [12] 3076 	mov	a,#0x7f
      00152B 55 3D            [12] 3077 	anl	a,(_display_buffer + 0x0002)
      00152D F5 3D            [12] 3078 	mov	(_display_buffer + 0x0002),a
                                   3079 ;	../fsm.c:360: break;
      00152F 02 15 F6         [24] 3080 	ljmp	00164$
                                   3081 ;	../fsm.c:367: case fsm_alarm_substate_dow_sun:
      001532                       3082 00151$:
                                   3083 ;	../fsm.c:368: display_puts(ledstrings[sub_curstate - fsm_alarm_substate_mm -1]);
      001532 AC 53            [24] 3084 	mov	r4,_fsm_alarm_fn_sub_curstate_1_257
      001534 7E 00            [12] 3085 	mov	r6,#0x00
      001536 EC               [12] 3086 	mov	a,r4
      001537 24 FD            [12] 3087 	add	a,#0xfd
      001539 F5 5E            [12] 3088 	mov	__mulint_PARM_2,a
      00153B EE               [12] 3089 	mov	a,r6
      00153C 34 FF            [12] 3090 	addc	a,#0xff
      00153E F5 5F            [12] 3091 	mov	(__mulint_PARM_2 + 1),a
      001540 90 00 05         [24] 3092 	mov	dptr,#0x0005
      001543 C0 07            [24] 3093 	push	ar7
      001545 C0 05            [24] 3094 	push	ar5
      001547 12 1C 2C         [24] 3095 	lcall	__mulint
      00154A AC 82            [24] 3096 	mov	r4,dpl
      00154C AE 83            [24] 3097 	mov	r6,dph
      00154E EC               [12] 3098 	mov	a,r4
      00154F 24 00            [12] 3099 	add	a,#_ledstrings
      001551 F5 82            [12] 3100 	mov	dpl,a
      001553 EE               [12] 3101 	mov	a,r6
      001554 34 31            [12] 3102 	addc	a,#(_ledstrings >> 8)
      001556 F5 83            [12] 3103 	mov	dph,a
      001558 12 05 8F         [24] 3104 	lcall	_display_puts
      00155B D0 05            [24] 3105 	pop	ar5
      00155D D0 07            [24] 3106 	pop	ar7
                                   3107 ;	../fsm.c:369: if(alarm_dow_state(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm)){
      00155F E5 53            [12] 3108 	mov	a,_fsm_alarm_fn_sub_curstate_1_257
      001561 24 FE            [12] 3109 	add	a,#0xfe
      001563 FE               [12] 3110 	mov	r6,a
      001564 E5 52            [12] 3111 	mov	a,_fsm_alarm_fn_curstate_1_257
      001566 24 FE            [12] 3112 	add	a,#0xfe
                                   3113 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:106: return ((alarms[index].dow_and_enable >> dow) & 0x01);
      001568 75 F0 03         [24] 3114 	mov	b,#0x03
      00156B A4               [48] 3115 	mul	ab
      00156C 24 04            [12] 3116 	add	a,#_alarms
      00156E FB               [12] 3117 	mov	r3,a
      00156F 74 00            [12] 3118 	mov	a,#(_alarms >> 8)
      001571 35 F0            [12] 3119 	addc	a,b
      001573 FC               [12] 3120 	mov	r4,a
      001574 8B 82            [24] 3121 	mov	dpl,r3
      001576 8C 83            [24] 3122 	mov	dph,r4
      001578 A3               [24] 3123 	inc	dptr
      001579 A3               [24] 3124 	inc	dptr
      00157A E0               [24] 3125 	movx	a,@dptr
      00157B FC               [12] 3126 	mov	r4,a
      00157C 8E F0            [24] 3127 	mov	b,r6
      00157E 05 F0            [12] 3128 	inc	b
      001580 EC               [12] 3129 	mov	a,r4
      001581 80 02            [24] 3130 	sjmp	00288$
      001583                       3131 00287$:
      001583 C3               [12] 3132 	clr	c
      001584 13               [12] 3133 	rrc	a
      001585                       3134 00288$:
      001585 D5 F0 FB         [24] 3135 	djnz	b,00287$
      001588 FE               [12] 3136 	mov	r6,a
      001589 30 E0 08         [24] 3137 	jnb	acc.0,00153$
                                   3138 ;	../fsm.c:369: if(alarm_dow_state(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm)){
                                   3139 ;	/home/shenghao/workspace/TESTMCS51/display.h:175: display_buffer[3] &= 0x7f;
      00158C 74 7F            [12] 3140 	mov	a,#0x7f
      00158E 55 3E            [12] 3141 	anl	a,(_display_buffer + 0x0003)
      001590 F5 3E            [12] 3142 	mov	(_display_buffer + 0x0003),a
                                   3143 ;	../fsm.c:370: display_ampmon();
      001592 80 06            [24] 3144 	sjmp	00154$
      001594                       3145 00153$:
                                   3146 ;	/home/shenghao/workspace/TESTMCS51/display.h:190: display_buffer[3] |= 0x80;
      001594 74 80            [12] 3147 	mov	a,#0x80
      001596 45 3E            [12] 3148 	orl	a,(_display_buffer + 0x0003)
      001598 F5 3E            [12] 3149 	mov	(_display_buffer + 0x0003),a
                                   3150 ;	../fsm.c:372: display_ampmoff();
      00159A                       3151 00154$:
                                   3152 ;	../fsm.c:374: if(alarm_temp)
      00159A ED               [12] 3153 	mov	a,r5
      00159B 60 44            [24] 3154 	jz	00156$
                                   3155 ;	../fsm.c:375: alarm_dow_toggle(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm);
      00159D E5 53            [12] 3156 	mov	a,_fsm_alarm_fn_sub_curstate_1_257
      00159F 24 FE            [12] 3157 	add	a,#0xfe
      0015A1 FE               [12] 3158 	mov	r6,a
      0015A2 E5 52            [12] 3159 	mov	a,_fsm_alarm_fn_curstate_1_257
      0015A4 24 FE            [12] 3160 	add	a,#0xfe
                                   3161 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:116: alarms[index].dow_and_enable ^= (0x01 << dow);
      0015A6 75 F0 03         [24] 3162 	mov	b,#0x03
      0015A9 A4               [48] 3163 	mul	ab
      0015AA FD               [12] 3164 	mov	r5,a
      0015AB AC F0            [24] 3165 	mov	r4,b
      0015AD 24 04            [12] 3166 	add	a,#_alarms
      0015AF FA               [12] 3167 	mov	r2,a
      0015B0 EC               [12] 3168 	mov	a,r4
      0015B1 34 00            [12] 3169 	addc	a,#(_alarms >> 8)
      0015B3 FB               [12] 3170 	mov	r3,a
      0015B4 74 02            [12] 3171 	mov	a,#0x02
      0015B6 2A               [12] 3172 	add	a,r2
      0015B7 FA               [12] 3173 	mov	r2,a
      0015B8 E4               [12] 3174 	clr	a
      0015B9 3B               [12] 3175 	addc	a,r3
      0015BA FB               [12] 3176 	mov	r3,a
      0015BB ED               [12] 3177 	mov	a,r5
      0015BC 24 04            [12] 3178 	add	a,#_alarms
      0015BE FD               [12] 3179 	mov	r5,a
      0015BF EC               [12] 3180 	mov	a,r4
      0015C0 34 00            [12] 3181 	addc	a,#(_alarms >> 8)
      0015C2 FC               [12] 3182 	mov	r4,a
      0015C3 8D 82            [24] 3183 	mov	dpl,r5
      0015C5 8C 83            [24] 3184 	mov	dph,r4
      0015C7 A3               [24] 3185 	inc	dptr
      0015C8 A3               [24] 3186 	inc	dptr
      0015C9 E0               [24] 3187 	movx	a,@dptr
      0015CA FD               [12] 3188 	mov	r5,a
      0015CB 8E F0            [24] 3189 	mov	b,r6
      0015CD 05 F0            [12] 3190 	inc	b
      0015CF 74 01            [12] 3191 	mov	a,#0x01
      0015D1 80 02            [24] 3192 	sjmp	00293$
      0015D3                       3193 00291$:
      0015D3 25 E0            [12] 3194 	add	a,acc
      0015D5                       3195 00293$:
      0015D5 D5 F0 FB         [24] 3196 	djnz	b,00291$
      0015D8 FE               [12] 3197 	mov	r6,a
      0015D9 62 05            [12] 3198 	xrl	ar5,a
      0015DB 8A 82            [24] 3199 	mov	dpl,r2
      0015DD 8B 83            [24] 3200 	mov	dph,r3
      0015DF ED               [12] 3201 	mov	a,r5
      0015E0 F0               [24] 3202 	movx	@dptr,a
                                   3203 ;	../fsm.c:375: alarm_dow_toggle(curstate - fsm_alarm_end,sub_curstate - fsm_alarm_substate_mm);
      0015E1                       3204 00156$:
                                   3205 ;	../fsm.c:376: if(menu_state == BUTTON_PRESSED){
      0015E1 EF               [12] 3206 	mov	a,r7
      0015E2 70 0C            [24] 3207 	jnz	00160$
                                   3208 ;	../fsm.c:377: if(++sub_curstate == fsm_alarm_substate_end){
      0015E4 05 53            [12] 3209 	inc	_fsm_alarm_fn_sub_curstate_1_257
      0015E6 74 0A            [12] 3210 	mov	a,#0x0a
      0015E8 B5 53 0B         [24] 3211 	cjne	a,_fsm_alarm_fn_sub_curstate_1_257,00164$
                                   3212 ;	../fsm.c:378: sub_curstate = fsm_alarm_substate_start;
      0015EB 75 53 01         [24] 3213 	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x01
                                   3214 ;	../fsm.c:380: break;
      0015EE 80 06            [24] 3215 	sjmp	00164$
      0015F0                       3216 00160$:
                                   3217 ;	../fsm.c:382: if(menu_state == BUTTON_LONG_PRESSED){
      0015F0 BF 01 03         [24] 3218 	cjne	r7,#0x01,00164$
                                   3219 ;	../fsm.c:383: sub_curstate = fsm_alarm_substate_toggle;
      0015F3 75 53 00         [24] 3220 	mov	_fsm_alarm_fn_sub_curstate_1_257,#0x00
                                   3221 ;	../fsm.c:390: }
      0015F6                       3222 00164$:
                                   3223 ;	../fsm.c:392: return fsm_repeat;
      0015F6 75 82 01         [24] 3224 	mov	dpl,#0x01
      0015F9 22               [24] 3225 	ret
                                   3226 ;------------------------------------------------------------
                                   3227 ;Allocation info for local variables in function 'fsm_config_fn'
                                   3228 ;------------------------------------------------------------
                                   3229 ;config_tmp2               Allocated to registers r4 r5 
                                   3230 ;menu_state                Allocated to registers r7 
                                   3231 ;select_state              Allocated to registers r6 
                                   3232 ;__00020071                Allocated to registers 
                                   3233 ;__00040067                Allocated to registers 
                                   3234 ;tmp                       Allocated to registers r4 r5 
                                   3235 ;__00040069                Allocated to registers 
                                   3236 ;tmp                       Allocated to registers r4 r5 
                                   3237 ;tmp                       Allocated to registers r4 r5 
                                   3238 ;curstate                  Allocated with name '_fsm_config_fn_curstate_1_303'
                                   3239 ;config_tmp                Allocated with name '_fsm_config_fn_config_tmp_1_303'
                                   3240 ;------------------------------------------------------------
                                   3241 ;	../fsm.c:396: enum fsm_return fsm_config_fn() __reentrant {
                                   3242 ;	-----------------------------------------
                                   3243 ;	 function fsm_config_fn
                                   3244 ;	-----------------------------------------
      0015FA                       3245 _fsm_config_fn:
                                   3246 ;	../fsm.c:403: menu_state = button_read_and_clear_menu();
      0015FA 12 05 0A         [24] 3247 	lcall	_button_read_and_clear_menu
      0015FD AF 82            [24] 3248 	mov	r7,dpl
                                   3249 ;	../fsm.c:404: select_state = button_read_and_clear_select();
      0015FF C0 07            [24] 3250 	push	ar7
      001601 12 04 DE         [24] 3251 	lcall	_button_read_and_clear_select
      001604 AE 82            [24] 3252 	mov	r6,dpl
      001606 D0 07            [24] 3253 	pop	ar7
                                   3254 ;	../fsm.c:406: switch(curstate) {
      001608 E5 54            [12] 3255 	mov	a,_fsm_config_fn_curstate_1_303
      00160A 24 F1            [12] 3256 	add	a,#0xff - 0x0e
      00160C 50 03            [24] 3257 	jnc	00240$
      00160E 02 18 5A         [24] 3258 	ljmp	00164$
      001611                       3259 00240$:
      001611 E5 54            [12] 3260 	mov	a,_fsm_config_fn_curstate_1_303
      001613 24 0B            [12] 3261 	add	a,#(00241$-3-.)
      001615 83               [24] 3262 	movc	a,@a+pc
      001616 F5 82            [12] 3263 	mov	dpl,a
      001618 E5 54            [12] 3264 	mov	a,_fsm_config_fn_curstate_1_303
      00161A 24 13            [12] 3265 	add	a,#(00242$-3-.)
      00161C 83               [24] 3266 	movc	a,@a+pc
      00161D F5 83            [12] 3267 	mov	dph,a
      00161F E4               [12] 3268 	clr	a
      001620 73               [24] 3269 	jmp	@a+dptr
      001621                       3270 00241$:
      001621 3F                    3271 	.db	00101$
      001622 63                    3272 	.db	00106$
      001623 78                    3273 	.db	00112$
      001624 78                    3274 	.db	00112$
      001625 DD                    3275 	.db	00123$
      001626 06                    3276 	.db	00128$
      001627 8D                    3277 	.db	00138$
      001628 A1                    3278 	.db	00150$
      001629 A1                    3279 	.db	00150$
      00162A A1                    3280 	.db	00150$
      00162B A1                    3281 	.db	00150$
      00162C A1                    3282 	.db	00150$
      00162D A1                    3283 	.db	00150$
      00162E A1                    3284 	.db	00150$
      00162F A1                    3285 	.db	00150$
      001630                       3286 00242$:
      001630 16                    3287 	.db	00101$>>8
      001631 16                    3288 	.db	00106$>>8
      001632 16                    3289 	.db	00112$>>8
      001633 16                    3290 	.db	00112$>>8
      001634 16                    3291 	.db	00123$>>8
      001635 17                    3292 	.db	00128$>>8
      001636 17                    3293 	.db	00138$>>8
      001637 17                    3294 	.db	00150$>>8
      001638 17                    3295 	.db	00150$>>8
      001639 17                    3296 	.db	00150$>>8
      00163A 17                    3297 	.db	00150$>>8
      00163B 17                    3298 	.db	00150$>>8
      00163C 17                    3299 	.db	00150$>>8
      00163D 17                    3300 	.db	00150$>>8
      00163E 17                    3301 	.db	00150$>>8
                                   3302 ;	../fsm.c:407: case fsm_config_label:
      00163F                       3303 00101$:
                                   3304 ;	../fsm.c:408: if(menu_state == BUTTON_PRESSED){
      00163F EF               [12] 3305 	mov	a,r7
      001640 70 13            [24] 3306 	jnz	00103$
                                   3307 ;	../fsm.c:414: ds1302_calculate_CRC();
      001642 12 09 AD         [24] 3308 	lcall	_ds1302_calculate_CRC
                                   3309 ;	../fsm.c:415: ds1302_write_SRAM();
      001645 12 09 54         [24] 3310 	lcall	_ds1302_write_SRAM
                                   3311 ;	../fsm.c:416: transition_ticks = centiseconds();
      001648 12 1A 99         [24] 3312 	lcall	_centiseconds
      00164B 85 82 4E         [24] 3313 	mov	_transition_ticks,dpl
      00164E 85 83 4F         [24] 3314 	mov	(_transition_ticks + 1),dph
                                   3315 ;	../fsm.c:417: return fsm_fail;
      001651 75 82 02         [24] 3316 	mov	dpl,#0x02
      001654 22               [24] 3317 	ret
      001655                       3318 00103$:
                                   3319 ;	../fsm.c:419: if(select_state == BUTTON_PRESSED)
      001655 EE               [12] 3320 	mov	a,r6
      001656 70 02            [24] 3321 	jnz	00105$
                                   3322 ;	../fsm.c:420: curstate++;
      001658 05 54            [12] 3323 	inc	_fsm_config_fn_curstate_1_303
      00165A                       3324 00105$:
                                   3325 ;	../fsm.c:421: display_puts(ledstrings[ledstrings_conf]);
      00165A 90 31 37         [24] 3326 	mov	dptr,#(_ledstrings + 0x0037)
      00165D 12 05 8F         [24] 3327 	lcall	_display_puts
                                   3328 ;	../fsm.c:422: break;
      001660 02 18 5A         [24] 3329 	ljmp	00164$
                                   3330 ;	../fsm.c:423: case fsm_config_ldr_calib_label:
      001663                       3331 00106$:
                                   3332 ;	../fsm.c:424: if(menu_state == BUTTON_PRESSED)
      001663 EF               [12] 3333 	mov	a,r7
      001664 70 03            [24] 3334 	jnz	00108$
                                   3335 ;	../fsm.c:425: curstate = fsm_config_thermistor_calib_label;
      001666 75 54 04         [24] 3336 	mov	_fsm_config_fn_curstate_1_303,#0x04
      001669                       3337 00108$:
                                   3338 ;	../fsm.c:426: if(select_state == BUTTON_PRESSED)
      001669 EE               [12] 3339 	mov	a,r6
      00166A 70 03            [24] 3340 	jnz	00110$
                                   3341 ;	../fsm.c:427: curstate = fsm_config_ldr_calib_low;
      00166C 75 54 02         [24] 3342 	mov	_fsm_config_fn_curstate_1_303,#0x02
      00166F                       3343 00110$:
                                   3344 ;	../fsm.c:428: display_puts(ledstrings[ledstrings_lcal]);
      00166F 90 31 3C         [24] 3345 	mov	dptr,#(_ledstrings + 0x003c)
      001672 12 05 8F         [24] 3346 	lcall	_display_puts
                                   3347 ;	../fsm.c:429: break;
      001675 02 18 5A         [24] 3348 	ljmp	00164$
                                   3349 ;	../fsm.c:431: case fsm_config_ldr_calib_high:
      001678                       3350 00112$:
                                   3351 ;	../fsm.c:432: display_autobrightness = 0;
                                   3352 ;	assignBit
      001678 C2 1F            [12] 3353 	clr	_display_autobrightness
                                   3354 ;	../fsm.c:434: if(menu_state == BUTTON_LONG_PRESSED)
      00167A BF 01 03         [24] 3355 	cjne	r7,#0x01,00114$
                                   3356 ;	../fsm.c:435: curstate = fsm_config_ldr_calib_label;
      00167D 75 54 01         [24] 3357 	mov	_fsm_config_fn_curstate_1_303,#0x01
      001680                       3358 00114$:
                                   3359 ;	../fsm.c:436: if(select_state == BUTTON_PRESSED){
      001680 EE               [12] 3360 	mov	a,r6
      001681 70 2F            [24] 3361 	jnz	00119$
                                   3362 ;	../fsm.c:437: if(curstate == fsm_config_ldr_calib_low) {
      001683 74 02            [12] 3363 	mov	a,#0x02
      001685 B5 54 10         [24] 3364 	cjne	a,_fsm_config_fn_curstate_1_303,00116$
                                   3365 ;	/home/shenghao/workspace/TESTMCS51/adc.h:133: INT_IE_EADC = 0;				//Disable ADC interrupt
                                   3366 ;	assignBit
      001688 C2 AD            [12] 3367 	clr	_INT_IE_EADC
                                   3368 ;	/home/shenghao/workspace/TESTMCS51/adc.h:134: tmp = adc_ldr_reading;	   		//Store temporary result
      00168A AC 24            [24] 3369 	mov	r4,_adc_ldr_reading
      00168C AD 25            [24] 3370 	mov	r5,(_adc_ldr_reading + 1)
                                   3371 ;	/home/shenghao/workspace/TESTMCS51/adc.h:135: INT_IE_EADC = 1;				//Enable ADC interrupt
                                   3372 ;	assignBit
      00168E D2 AD            [12] 3373 	setb	_INT_IE_EADC
                                   3374 ;	../fsm.c:438: config_tmp = adc_get_ldr();
      001690 8C 55            [24] 3375 	mov	_fsm_config_fn_config_tmp_1_303,r4
      001692 8D 56            [24] 3376 	mov	(_fsm_config_fn_config_tmp_1_303 + 1),r5
                                   3377 ;	../fsm.c:439: curstate++;
      001694 05 54            [12] 3378 	inc	_fsm_config_fn_curstate_1_303
      001696 80 1A            [24] 3379 	sjmp	00119$
      001698                       3380 00116$:
                                   3381 ;	/home/shenghao/workspace/TESTMCS51/adc.h:133: INT_IE_EADC = 0;				//Disable ADC interrupt
                                   3382 ;	assignBit
      001698 C2 AD            [12] 3383 	clr	_INT_IE_EADC
                                   3384 ;	/home/shenghao/workspace/TESTMCS51/adc.h:134: tmp = adc_ldr_reading;	   		//Store temporary result
      00169A AC 24            [24] 3385 	mov	r4,_adc_ldr_reading
      00169C AD 25            [24] 3386 	mov	r5,(_adc_ldr_reading + 1)
                                   3387 ;	/home/shenghao/workspace/TESTMCS51/adc.h:135: INT_IE_EADC = 1;				//Enable ADC interrupt
                                   3388 ;	assignBit
      00169E D2 AD            [12] 3389 	setb	_INT_IE_EADC
                                   3390 ;	../fsm.c:441: adc_calibrate_LDR(adc_get_ldr(),config_tmp);
      0016A0 85 55 28         [24] 3391 	mov	_adc_calibrate_LDR_PARM_2,_fsm_config_fn_config_tmp_1_303
      0016A3 85 56 29         [24] 3392 	mov	(_adc_calibrate_LDR_PARM_2 + 1),(_fsm_config_fn_config_tmp_1_303 + 1)
      0016A6 8C 82            [24] 3393 	mov	dpl,r4
      0016A8 8D 83            [24] 3394 	mov	dph,r5
      0016AA 12 01 01         [24] 3395 	lcall	_adc_calibrate_LDR
                                   3396 ;	../fsm.c:442: curstate = fsm_config_ldr_calib_label;
      0016AD 75 54 01         [24] 3397 	mov	_fsm_config_fn_curstate_1_303,#0x01
                                   3398 ;	../fsm.c:443: display_autobrightness = 1;
                                   3399 ;	assignBit
      0016B0 D2 1F            [12] 3400 	setb	_display_autobrightness
      0016B2                       3401 00119$:
                                   3402 ;	../fsm.c:446: if(curstate == fsm_config_ldr_calib_low) {
      0016B2 74 02            [12] 3403 	mov	a,#0x02
      0016B4 B5 54 13         [24] 3404 	cjne	a,_fsm_config_fn_curstate_1_303,00121$
                                   3405 ;	../fsm.c:447: display_puts(ledstrings[ledstrings_cllo]);
      0016B7 90 31 46         [24] 3406 	mov	dptr,#(_ledstrings + 0x0046)
      0016BA 12 05 8F         [24] 3407 	lcall	_display_puts
                                   3408 ;	../fsm.c:448: INT_IE_EA = 0;
                                   3409 ;	assignBit
      0016BD C2 AF            [12] 3410 	clr	_INT_IE_EA
                                   3411 ;	../fsm.c:449: display_counts = DISPLAY_COUNTS_MIN;
      0016BF 75 41 2C         [24] 3412 	mov	_display_counts,#0x2c
      0016C2 75 42 01         [24] 3413 	mov	(_display_counts + 1),#0x01
                                   3414 ;	../fsm.c:450: INT_IE_EA = 1;
                                   3415 ;	assignBit
      0016C5 D2 AF            [12] 3416 	setb	_INT_IE_EA
      0016C7 02 18 5A         [24] 3417 	ljmp	00164$
      0016CA                       3418 00121$:
                                   3419 ;	../fsm.c:452: display_puts(ledstrings[ledstrings_clhi]);
      0016CA 90 31 4B         [24] 3420 	mov	dptr,#(_ledstrings + 0x004b)
      0016CD 12 05 8F         [24] 3421 	lcall	_display_puts
                                   3422 ;	../fsm.c:453: INT_IE_EA = 0;
                                   3423 ;	assignBit
      0016D0 C2 AF            [12] 3424 	clr	_INT_IE_EA
                                   3425 ;	../fsm.c:454: display_counts = DISPLAY_COUNTS_MAX;
      0016D2 75 41 00         [24] 3426 	mov	_display_counts,#0x00
      0016D5 75 42 EA         [24] 3427 	mov	(_display_counts + 1),#0xea
                                   3428 ;	../fsm.c:455: INT_IE_EA = 1;
                                   3429 ;	assignBit
      0016D8 D2 AF            [12] 3430 	setb	_INT_IE_EA
                                   3431 ;	../fsm.c:457: break;
      0016DA 02 18 5A         [24] 3432 	ljmp	00164$
                                   3433 ;	../fsm.c:458: case fsm_config_thermistor_calib_label:
      0016DD                       3434 00123$:
                                   3435 ;	../fsm.c:459: if(menu_state == BUTTON_PRESSED)
      0016DD EF               [12] 3436 	mov	a,r7
      0016DE 70 03            [24] 3437 	jnz	00125$
                                   3438 ;	../fsm.c:460: curstate = fsm_config_display_label;
      0016E0 75 54 06         [24] 3439 	mov	_fsm_config_fn_curstate_1_303,#0x06
      0016E3                       3440 00125$:
                                   3441 ;	../fsm.c:461: if(select_state == BUTTON_PRESSED) {
      0016E3 EE               [12] 3442 	mov	a,r6
      0016E4 70 17            [24] 3443 	jnz	00127$
                                   3444 ;	../fsm.c:462: curstate = fsm_config_thermistor_calib;
      0016E6 75 54 05         [24] 3445 	mov	_fsm_config_fn_curstate_1_303,#0x05
                                   3446 ;	../fsm.c:463: config_tmp = (TEMP_OFFSET_LSB | (TEMP_OFFSET_MSB << 0x08));
      0016E9 90 00 1D         [24] 3447 	mov	dptr,#(_ds1302_sram_data + 0x001d)
      0016EC E0               [24] 3448 	movx	a,@dptr
      0016ED FD               [12] 3449 	mov	r5,a
      0016EE 90 00 1E         [24] 3450 	mov	dptr,#(_ds1302_sram_data + 0x001e)
      0016F1 E0               [24] 3451 	movx	a,@dptr
      0016F2 FB               [12] 3452 	mov	r3,a
      0016F3 E4               [12] 3453 	clr	a
      0016F4 FC               [12] 3454 	mov	r4,a
      0016F5 FA               [12] 3455 	mov	r2,a
      0016F6 4D               [12] 3456 	orl	a,r5
      0016F7 F5 55            [12] 3457 	mov	_fsm_config_fn_config_tmp_1_303,a
      0016F9 EB               [12] 3458 	mov	a,r3
      0016FA 4A               [12] 3459 	orl	a,r2
      0016FB F5 56            [12] 3460 	mov	(_fsm_config_fn_config_tmp_1_303 + 1),a
      0016FD                       3461 00127$:
                                   3462 ;	../fsm.c:465: display_puts(ledstrings[ledstrings_tcal]);
      0016FD 90 31 50         [24] 3463 	mov	dptr,#(_ledstrings + 0x0050)
      001700 12 05 8F         [24] 3464 	lcall	_display_puts
                                   3465 ;	../fsm.c:466: break;
      001703 02 18 5A         [24] 3466 	ljmp	00164$
                                   3467 ;	../fsm.c:467: case fsm_config_thermistor_calib:
      001706                       3468 00128$:
                                   3469 ;	../fsm.c:468: if(menu_state == BUTTON_LONG_PRESSED) {
      001706 BF 01 11         [24] 3470 	cjne	r7,#0x01,00130$
                                   3471 ;	../fsm.c:469: curstate = fsm_config_thermistor_calib_label;
      001709 75 54 04         [24] 3472 	mov	_fsm_config_fn_curstate_1_303,#0x04
                                   3473 ;	../fsm.c:470: TEMP_OFFSET_LSB = (config_tmp & 0x00ff);
      00170C AD 55            [24] 3474 	mov	r5,_fsm_config_fn_config_tmp_1_303
      00170E 90 00 1D         [24] 3475 	mov	dptr,#(_ds1302_sram_data + 0x001d)
      001711 ED               [12] 3476 	mov	a,r5
      001712 F0               [24] 3477 	movx	@dptr,a
                                   3478 ;	../fsm.c:471: TEMP_OFFSET_MSB = (config_tmp >> 0x08);
      001713 AD 56            [24] 3479 	mov	r5,(_fsm_config_fn_config_tmp_1_303 + 1)
      001715 90 00 1E         [24] 3480 	mov	dptr,#(_ds1302_sram_data + 0x001e)
      001718 ED               [12] 3481 	mov	a,r5
      001719 F0               [24] 3482 	movx	@dptr,a
      00171A                       3483 00130$:
                                   3484 ;	../fsm.c:473: if((select_state == BUTTON_PRESSED) || (select_state == BUTTON_HELD_DOWN))
      00171A EE               [12] 3485 	mov	a,r6
      00171B 60 03            [24] 3486 	jz	00131$
      00171D BE 02 15         [24] 3487 	cjne	r6,#0x02,00132$
      001720                       3488 00131$:
                                   3489 ;	../fsm.c:474: config_tmp = bcd_add_16(config_tmp,0x0001);
      001720 75 5E 01         [24] 3490 	mov	_bcd_add_16_PARM_2,#0x01
      001723 75 5F 00         [24] 3491 	mov	(_bcd_add_16_PARM_2 + 1),#0x00
      001726 85 55 82         [24] 3492 	mov	dpl,_fsm_config_fn_config_tmp_1_303
      001729 85 56 83         [24] 3493 	mov	dph,(_fsm_config_fn_config_tmp_1_303 + 1)
      00172C 12 0A 27         [24] 3494 	lcall	_bcd_add_16
      00172F 85 82 55         [24] 3495 	mov	_fsm_config_fn_config_tmp_1_303,dpl
      001732 85 83 56         [24] 3496 	mov	(_fsm_config_fn_config_tmp_1_303 + 1),dph
      001735                       3497 00132$:
                                   3498 ;	../fsm.c:476: if(config_tmp > 0x0140)
      001735 C3               [12] 3499 	clr	c
      001736 74 40            [12] 3500 	mov	a,#0x40
      001738 95 55            [12] 3501 	subb	a,_fsm_config_fn_config_tmp_1_303
      00173A 74 01            [12] 3502 	mov	a,#0x01
      00173C 95 56            [12] 3503 	subb	a,(_fsm_config_fn_config_tmp_1_303 + 1)
      00173E 50 05            [24] 3504 	jnc	00135$
                                   3505 ;	../fsm.c:477: config_tmp = 0x0000;
      001740 E4               [12] 3506 	clr	a
      001741 F5 55            [12] 3507 	mov	_fsm_config_fn_config_tmp_1_303,a
      001743 F5 56            [12] 3508 	mov	(_fsm_config_fn_config_tmp_1_303 + 1),a
      001745                       3509 00135$:
                                   3510 ;	../fsm.c:479: config_tmp2 = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
                                   3511 ;	/home/shenghao/workspace/TESTMCS51/adc.h:147: INT_IE_EADC = 0;				//Disable ADC interrupt
                                   3512 ;	assignBit
      001745 C2 AD            [12] 3513 	clr	_INT_IE_EADC
                                   3514 ;	/home/shenghao/workspace/TESTMCS51/adc.h:148: tmp = adc_thermistor_reading;	//Store temporary result
      001747 AC 26            [24] 3515 	mov	r4,_adc_thermistor_reading
      001749 AD 27            [24] 3516 	mov	r5,(_adc_thermistor_reading + 1)
                                   3517 ;	/home/shenghao/workspace/TESTMCS51/adc.h:149: INT_IE_EADC = 1;				//Enable ADC interrupt
                                   3518 ;	assignBit
      00174B D2 AD            [12] 3519 	setb	_INT_IE_EADC
                                   3520 ;	../fsm.c:479: config_tmp2 = EEPROM_TEMP_FROM_THERMISTOR_TABLE[adc_get_thermistor()];
      00174D EC               [12] 3521 	mov	a,r4
      00174E 2C               [12] 3522 	add	a,r4
      00174F FC               [12] 3523 	mov	r4,a
      001750 ED               [12] 3524 	mov	a,r5
      001751 33               [12] 3525 	rlc	a
      001752 FD               [12] 3526 	mov	r5,a
      001753 8C 82            [24] 3527 	mov	dpl,r4
      001755 74 28            [12] 3528 	mov	a,#(_EEPROM_TEMP_FROM_THERMISTOR_TABLE >> 8)
      001757 2D               [12] 3529 	add	a,r5
      001758 F5 83            [12] 3530 	mov	dph,a
      00175A E4               [12] 3531 	clr	a
      00175B 93               [24] 3532 	movc	a,@a+dptr
      00175C FC               [12] 3533 	mov	r4,a
      00175D A3               [24] 3534 	inc	dptr
      00175E E4               [12] 3535 	clr	a
      00175F 93               [24] 3536 	movc	a,@a+dptr
      001760 FD               [12] 3537 	mov	r5,a
                                   3538 ;	../fsm.c:480: config_tmp2 = bcd_add_16(config_tmp2,config_tmp);
      001761 85 55 5E         [24] 3539 	mov	_bcd_add_16_PARM_2,_fsm_config_fn_config_tmp_1_303
      001764 85 56 5F         [24] 3540 	mov	(_bcd_add_16_PARM_2 + 1),(_fsm_config_fn_config_tmp_1_303 + 1)
      001767 8C 82            [24] 3541 	mov	dpl,r4
      001769 8D 83            [24] 3542 	mov	dph,r5
      00176B 12 0A 27         [24] 3543 	lcall	_bcd_add_16
      00176E AA 82            [24] 3544 	mov	r2,dpl
      001770 AB 83            [24] 3545 	mov	r3,dph
      001772 8A 04            [24] 3546 	mov	ar4,r2
      001774 8B 05            [24] 3547 	mov	ar5,r3
                                   3548 ;	../fsm.c:481: if(config_tmp2 > 0x0999)
      001776 C3               [12] 3549 	clr	c
      001777 74 99            [12] 3550 	mov	a,#0x99
      001779 9C               [12] 3551 	subb	a,r4
      00177A 74 09            [12] 3552 	mov	a,#0x09
      00177C 9D               [12] 3553 	subb	a,r5
      00177D 50 04            [24] 3554 	jnc	00137$
                                   3555 ;	../fsm.c:482: config_tmp2 = 0x0999;
      00177F 7C 99            [12] 3556 	mov	r4,#0x99
      001781 7D 09            [12] 3557 	mov	r5,#0x09
      001783                       3558 00137$:
                                   3559 ;	../fsm.c:483: display_puttemp(config_tmp2);
      001783 8C 82            [24] 3560 	mov	dpl,r4
      001785 8D 83            [24] 3561 	mov	dph,r5
      001787 12 06 BE         [24] 3562 	lcall	_display_puttemp
                                   3563 ;	../fsm.c:484: break;
      00178A 02 18 5A         [24] 3564 	ljmp	00164$
                                   3565 ;	../fsm.c:485: case fsm_config_display_label:
      00178D                       3566 00138$:
                                   3567 ;	../fsm.c:486: if(select_state == BUTTON_PRESSED)
      00178D EE               [12] 3568 	mov	a,r6
      00178E 70 03            [24] 3569 	jnz	00140$
                                   3570 ;	../fsm.c:487: curstate = fsm_config_auto_mmss;
      001790 75 54 07         [24] 3571 	mov	_fsm_config_fn_curstate_1_303,#0x07
      001793                       3572 00140$:
                                   3573 ;	../fsm.c:488: if(menu_state == BUTTON_PRESSED)
      001793 EF               [12] 3574 	mov	a,r7
                                   3575 ;	../fsm.c:489: curstate = fsm_config_label;
      001794 70 02            [24] 3576 	jnz	00142$
      001796 F5 54            [12] 3577 	mov	_fsm_config_fn_curstate_1_303,a
      001798                       3578 00142$:
                                   3579 ;	../fsm.c:490: display_puts(ledstrings[ledstrings_disp]);
      001798 90 31 55         [24] 3580 	mov	dptr,#(_ledstrings + 0x0055)
      00179B 12 05 8F         [24] 3581 	lcall	_display_puts
                                   3582 ;	../fsm.c:491: break;
      00179E 02 18 5A         [24] 3583 	ljmp	00164$
                                   3584 ;	../fsm.c:499: case fsm_config_display_remove_lzeroes:
      0017A1                       3585 00150$:
                                   3586 ;	../fsm.c:500: display_puts(ledstrings[curstate + 0x0b]);
      0017A1 AC 54            [24] 3587 	mov	r4,_fsm_config_fn_curstate_1_303
      0017A3 7D 00            [12] 3588 	mov	r5,#0x00
      0017A5 74 0B            [12] 3589 	mov	a,#0x0b
      0017A7 2C               [12] 3590 	add	a,r4
      0017A8 F5 5E            [12] 3591 	mov	__mulint_PARM_2,a
      0017AA E4               [12] 3592 	clr	a
      0017AB 3D               [12] 3593 	addc	a,r5
      0017AC F5 5F            [12] 3594 	mov	(__mulint_PARM_2 + 1),a
      0017AE 90 00 05         [24] 3595 	mov	dptr,#0x0005
      0017B1 C0 07            [24] 3596 	push	ar7
      0017B3 C0 06            [24] 3597 	push	ar6
      0017B5 12 1C 2C         [24] 3598 	lcall	__mulint
      0017B8 AC 82            [24] 3599 	mov	r4,dpl
      0017BA AD 83            [24] 3600 	mov	r5,dph
      0017BC EC               [12] 3601 	mov	a,r4
      0017BD 24 00            [12] 3602 	add	a,#_ledstrings
      0017BF F5 82            [12] 3603 	mov	dpl,a
      0017C1 ED               [12] 3604 	mov	a,r5
      0017C2 34 31            [12] 3605 	addc	a,#(_ledstrings >> 8)
      0017C4 F5 83            [12] 3606 	mov	dph,a
      0017C6 12 05 8F         [24] 3607 	lcall	_display_puts
      0017C9 D0 06            [24] 3608 	pop	ar6
      0017CB D0 07            [24] 3609 	pop	ar7
                                   3610 ;	../fsm.c:501: if(curstate != fsm_config_display_remove_lzeroes) {
      0017CD 74 0E            [12] 3611 	mov	a,#0x0e
      0017CF B5 54 02         [24] 3612 	cjne	a,_fsm_config_fn_curstate_1_303,00265$
      0017D2 80 47            [24] 3613 	sjmp	00156$
      0017D4                       3614 00265$:
                                   3615 ;	../fsm.c:502: display_putbool((SC_1 >> (curstate - 0x06)) & 0x01);
      0017D4 90 00 03         [24] 3616 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      0017D7 E0               [24] 3617 	movx	a,@dptr
      0017D8 FD               [12] 3618 	mov	r5,a
      0017D9 E5 54            [12] 3619 	mov	a,_fsm_config_fn_curstate_1_303
      0017DB 24 FA            [12] 3620 	add	a,#0xfa
      0017DD F5 F0            [12] 3621 	mov	b,a
      0017DF 05 F0            [12] 3622 	inc	b
      0017E1 ED               [12] 3623 	mov	a,r5
      0017E2 80 02            [24] 3624 	sjmp	00267$
      0017E4                       3625 00266$:
      0017E4 C3               [12] 3626 	clr	c
      0017E5 13               [12] 3627 	rrc	a
      0017E6                       3628 00267$:
      0017E6 D5 F0 FB         [24] 3629 	djnz	b,00266$
      0017E9 54 01            [12] 3630 	anl	a,#0x01
      0017EB F5 82            [12] 3631 	mov	dpl,a
      0017ED C0 07            [24] 3632 	push	ar7
      0017EF C0 06            [24] 3633 	push	ar6
      0017F1 12 06 97         [24] 3634 	lcall	_display_putbool
      0017F4 D0 06            [24] 3635 	pop	ar6
      0017F6 D0 07            [24] 3636 	pop	ar7
                                   3637 ;	../fsm.c:503: if(select_state == BUTTON_PRESSED)
      0017F8 EE               [12] 3638 	mov	a,r6
      0017F9 70 40            [24] 3639 	jnz	00157$
                                   3640 ;	../fsm.c:504: SC_1 ^= (0x01 << (curstate - 0x06));
      0017FB 90 00 03         [24] 3641 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      0017FE E0               [24] 3642 	movx	a,@dptr
      0017FF FD               [12] 3643 	mov	r5,a
      001800 E5 54            [12] 3644 	mov	a,_fsm_config_fn_curstate_1_303
      001802 24 FA            [12] 3645 	add	a,#0xfa
      001804 F5 F0            [12] 3646 	mov	b,a
      001806 05 F0            [12] 3647 	inc	b
      001808 74 01            [12] 3648 	mov	a,#0x01
      00180A 80 02            [24] 3649 	sjmp	00271$
      00180C                       3650 00269$:
      00180C 25 E0            [12] 3651 	add	a,acc
      00180E                       3652 00271$:
      00180E D5 F0 FB         [24] 3653 	djnz	b,00269$
      001811 FC               [12] 3654 	mov	r4,a
      001812 62 05            [12] 3655 	xrl	ar5,a
      001814 90 00 03         [24] 3656 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      001817 ED               [12] 3657 	mov	a,r5
      001818 F0               [24] 3658 	movx	@dptr,a
      001819 80 20            [24] 3659 	sjmp	00157$
      00181B                       3660 00156$:
                                   3661 ;	../fsm.c:506: display_putbool(DISPLAY_REMOVE_LEADING_ZEROES);
      00181B 90 00 02         [24] 3662 	mov	dptr,#(_ds1302_sram_data + 0x0002)
      00181E E0               [24] 3663 	movx	a,@dptr
      00181F FD               [12] 3664 	mov	r5,a
      001820 74 01            [12] 3665 	mov	a,#0x01
      001822 5D               [12] 3666 	anl	a,r5
      001823 F5 82            [12] 3667 	mov	dpl,a
      001825 C0 07            [24] 3668 	push	ar7
      001827 C0 06            [24] 3669 	push	ar6
      001829 12 06 97         [24] 3670 	lcall	_display_putbool
      00182C D0 06            [24] 3671 	pop	ar6
      00182E D0 07            [24] 3672 	pop	ar7
                                   3673 ;	../fsm.c:507: if(select_state == BUTTON_PRESSED)
      001830 EE               [12] 3674 	mov	a,r6
      001831 70 08            [24] 3675 	jnz	00157$
                                   3676 ;	../fsm.c:508: SC_0 ^= 0x01;
      001833 90 00 02         [24] 3677 	mov	dptr,#(_ds1302_sram_data + 0x0002)
      001836 E0               [24] 3678 	movx	a,@dptr
      001837 64 01            [12] 3679 	xrl	a,#0x01
      001839 FE               [12] 3680 	mov	r6,a
      00183A F0               [24] 3681 	movx	@dptr,a
      00183B                       3682 00157$:
                                   3683 ;	/home/shenghao/workspace/TESTMCS51/display.h:116: display_buffer[1] &= 0x7f;
      00183B 74 7F            [12] 3684 	mov	a,#0x7f
      00183D 55 3C            [12] 3685 	anl	a,(_display_buffer + 0x0001)
      00183F F5 3C            [12] 3686 	mov	(_display_buffer + 0x0001),a
                                   3687 ;	/home/shenghao/workspace/TESTMCS51/display.h:117: display_buffer[2] &= 0x7f;
      001841 74 7F            [12] 3688 	mov	a,#0x7f
      001843 55 3D            [12] 3689 	anl	a,(_display_buffer + 0x0002)
      001845 F5 3D            [12] 3690 	mov	(_display_buffer + 0x0002),a
                                   3691 ;	../fsm.c:512: if(menu_state == BUTTON_PRESSED)
      001847 EF               [12] 3692 	mov	a,r7
      001848 70 0A            [24] 3693 	jnz	00161$
                                   3694 ;	../fsm.c:513: if(++curstate == fsm_config_end)
      00184A 05 54            [12] 3695 	inc	_fsm_config_fn_curstate_1_303
      00184C 74 0F            [12] 3696 	mov	a,#0x0f
      00184E B5 54 03         [24] 3697 	cjne	a,_fsm_config_fn_curstate_1_303,00161$
                                   3698 ;	../fsm.c:514: curstate = fsm_config_auto_mmss;
      001851 75 54 07         [24] 3699 	mov	_fsm_config_fn_curstate_1_303,#0x07
      001854                       3700 00161$:
                                   3701 ;	../fsm.c:515: if(menu_state == BUTTON_LONG_PRESSED)
      001854 BF 01 03         [24] 3702 	cjne	r7,#0x01,00164$
                                   3703 ;	../fsm.c:516: curstate = fsm_config_display_label;
      001857 75 54 06         [24] 3704 	mov	_fsm_config_fn_curstate_1_303,#0x06
                                   3705 ;	../fsm.c:518: }
      00185A                       3706 00164$:
                                   3707 ;	../fsm.c:520: return fsm_repeat;
      00185A 75 82 01         [24] 3708 	mov	dpl,#0x01
      00185D 22               [24] 3709 	ret
                                   3710 	.area CSEG    (CODE)
                                   3711 	.area CONST   (CODE)
                                   3712 	.area XINIT   (CODE)
                                   3713 	.area CABS    (ABS,CODE)
      003300                       3714 	.org 0x3300
      003300                       3715 _fsm_transition_table_fp:
      003300 0C 11                 3716 	.byte _fsm_set_fn, (_fsm_set_fn >> 8)
      003302 83 0A                 3717 	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
      003304 83 0A                 3718 	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
      003306 83 0A                 3719 	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
      003308 0C 11                 3720 	.byte _fsm_set_fn, (_fsm_set_fn >> 8)
      00330A 9A 12                 3721 	.byte _fsm_alarm_fn, (_fsm_alarm_fn >> 8)
      00330C 83 0A                 3722 	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
      00330E 9A 12                 3723 	.byte _fsm_alarm_fn, (_fsm_alarm_fn >> 8)
      003310 FA 15                 3724 	.byte _fsm_config_fn, (_fsm_config_fn >> 8)
      003312 83 0A                 3725 	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
      003314 FA 15                 3726 	.byte _fsm_config_fn, (_fsm_config_fn >> 8)
      003316 83 0A                 3727 	.byte _fsm_home_fn, (_fsm_home_fn >> 8)
      003318                       3728 	.org 0x3318
      003318                       3729 _fsm_transition_table_s:
      003318 01                    3730 	.db #0x01	; 1
      003319 00                    3731 	.db #0x00	; 0
      00331A 00                    3732 	.db #0x00	; 0
      00331B 00                    3733 	.db #0x00	; 0
      00331C 01                    3734 	.db #0x01	; 1
      00331D 02                    3735 	.db #0x02	; 2
      00331E 00                    3736 	.db #0x00	; 0
      00331F 02                    3737 	.db #0x02	; 2
      003320 03                    3738 	.db #0x03	; 3
      003321 00                    3739 	.db #0x00	; 0
      003322 03                    3740 	.db #0x03	; 3
      003323 00                    3741 	.db #0x00	; 0
