                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #9959 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _fsm_home_fn
                                     13 	.globl _button_read_and_clear_select
                                     14 	.globl _button_read_and_clear_menu
                                     15 	.globl _ds1302_power_loss_reset
                                     16 	.globl _ds1302_check_SRAM
                                     17 	.globl _ds1302_read_SRAM
                                     18 	.globl _ds1302_reset
                                     19 	.globl _UART_SM0
                                     20 	.globl _UART_SM1
                                     21 	.globl _UART_SM2
                                     22 	.globl _UART_REN
                                     23 	.globl _UART_TB8
                                     24 	.globl _UART_RB8
                                     25 	.globl _UART_TI
                                     26 	.globl _UART_RI
                                     27 	.globl _PCA_CF
                                     28 	.globl _PCA_CR
                                     29 	.globl _PCA_CCF2
                                     30 	.globl _PCA_CCF1
                                     31 	.globl _PCA_CCF0
                                     32 	.globl _TMR_TCON_TF1
                                     33 	.globl _TMR_TCON_TR1
                                     34 	.globl _TMR_TCON_TF0
                                     35 	.globl _TMR_TCON_TR0
                                     36 	.globl _TMR_TCON_IE1
                                     37 	.globl _TMR_TCON_IT1
                                     38 	.globl _TMR_TCON_IE0
                                     39 	.globl _TMR_TCON_IT0
                                     40 	.globl _INT_IP_PPCA
                                     41 	.globl _INT_IP_PLVD
                                     42 	.globl _INT_IP_PADC
                                     43 	.globl _INT_IP_PS
                                     44 	.globl _INT_IP_PT1
                                     45 	.globl _INT_IP_PX1
                                     46 	.globl _INT_IP_PT0
                                     47 	.globl _INT_IP_PX0
                                     48 	.globl _INT_IE_EA
                                     49 	.globl _INT_IE_ELVD
                                     50 	.globl _INT_IE_EADC
                                     51 	.globl _INT_IE_ES
                                     52 	.globl _INT_IE_ET1
                                     53 	.globl _INT_IE_EX1
                                     54 	.globl _INT_IE_ET0
                                     55 	.globl _INT_IE_EX0
                                     56 	.globl _PORT_P5_7
                                     57 	.globl _PORT_P5_6
                                     58 	.globl _PORT_P5_5
                                     59 	.globl _PORT_P5_4
                                     60 	.globl _PORT_P5_3
                                     61 	.globl _PORT_P5_2
                                     62 	.globl _PORT_P5_1
                                     63 	.globl _PORT_P5_0
                                     64 	.globl _PORT_P4_7
                                     65 	.globl _PORT_P4_6
                                     66 	.globl _PORT_P4_5
                                     67 	.globl _PORT_P4_4
                                     68 	.globl _PORT_P4_3
                                     69 	.globl _PORT_P4_2
                                     70 	.globl _PORT_P4_1
                                     71 	.globl _PORT_P4_0
                                     72 	.globl _PORT_P3_7
                                     73 	.globl _PORT_P3_6
                                     74 	.globl _PORT_P3_5
                                     75 	.globl _PORT_P3_4
                                     76 	.globl _PORT_P3_3
                                     77 	.globl _PORT_P3_2
                                     78 	.globl _PORT_P3_1
                                     79 	.globl _PORT_P3_0
                                     80 	.globl _PORT_P2_7
                                     81 	.globl _PORT_P2_6
                                     82 	.globl _PORT_P2_5
                                     83 	.globl _PORT_P2_4
                                     84 	.globl _PORT_P2_3
                                     85 	.globl _PORT_P2_2
                                     86 	.globl _PORT_P2_1
                                     87 	.globl _PORT_P2_0
                                     88 	.globl _PORT_P1_7
                                     89 	.globl _PORT_P1_6
                                     90 	.globl _PORT_P1_5
                                     91 	.globl _PORT_P1_4
                                     92 	.globl _PORT_P1_3
                                     93 	.globl _PORT_P1_2
                                     94 	.globl _PORT_P1_1
                                     95 	.globl _PORT_P1_0
                                     96 	.globl _CY
                                     97 	.globl _AC
                                     98 	.globl _F0
                                     99 	.globl _RS1
                                    100 	.globl _RS0
                                    101 	.globl _OV
                                    102 	.globl _F1
                                    103 	.globl _P
                                    104 	.globl _IAP_CONTR
                                    105 	.globl _IAP_TRIG
                                    106 	.globl _IAP_CMD
                                    107 	.globl _IAP_ADDR
                                    108 	.globl _IAP_ADDRL
                                    109 	.globl _IAP_ADDRH
                                    110 	.globl _IAP_DATA
                                    111 	.globl _UART_SADEN
                                    112 	.globl _UART_SADDR
                                    113 	.globl _UART_SBUF
                                    114 	.globl _UART_SCON
                                    115 	.globl _PCA_CMOD
                                    116 	.globl _PCA_CCON
                                    117 	.globl _PCA_PWM2
                                    118 	.globl _PCA_PWM1
                                    119 	.globl _PCA_PWM0
                                    120 	.globl _PCA_C
                                    121 	.globl _PCA_CCAP2_L
                                    122 	.globl _PCA_CCAP2_H
                                    123 	.globl _PCA_CCAP1_L
                                    124 	.globl _PCA_CCAP1_H
                                    125 	.globl _PCA_CCAP0_L
                                    126 	.globl _PCA_CCAP0_H
                                    127 	.globl _PCA_CCAP2
                                    128 	.globl _PCA_CCAP1
                                    129 	.globl _PCA_CCAP0
                                    130 	.globl _PCA_CCAPM2
                                    131 	.globl _PCA_CCAPM1
                                    132 	.globl _PCA_CCAPM0
                                    133 	.globl _CMP_CR2
                                    134 	.globl _CMP_CR1
                                    135 	.globl _ADC_RESL
                                    136 	.globl _ADC_RESH
                                    137 	.globl _ADC_RES
                                    138 	.globl _ADC_CONTR
                                    139 	.globl _ADC_P1ASF
                                    140 	.globl _EEPROM_CONTR
                                    141 	.globl _EEPROM_TRIG
                                    142 	.globl _EEPROM_CMD
                                    143 	.globl _EEPROM_ADDR
                                    144 	.globl _EEPROM_DATA
                                    145 	.globl _TMR_T2
                                    146 	.globl _TMR_T0
                                    147 	.globl _TMR_TMOD
                                    148 	.globl _TMR_TCON
                                    149 	.globl _INT_IP2
                                    150 	.globl _INT_IP
                                    151 	.globl _INT_IE2
                                    152 	.globl _INT_IE
                                    153 	.globl _PORT_P5M0
                                    154 	.globl _PORT_P5M1
                                    155 	.globl _PORT_P4M0
                                    156 	.globl _PORT_P4M1
                                    157 	.globl _PORT_P3M0
                                    158 	.globl _PORT_P3M1
                                    159 	.globl _PORT_P2M0
                                    160 	.globl _PORT_P2M1
                                    161 	.globl _PORT_P1M0
                                    162 	.globl _PORT_P1M1
                                    163 	.globl _PORT_P5
                                    164 	.globl _PORT_P4
                                    165 	.globl _PORT_P3
                                    166 	.globl _PORT_P2
                                    167 	.globl _PORT_P1
                                    168 	.globl _PSW
                                    169 	.globl _PCON2
                                    170 	.globl _AUXR2
                                    171 	.globl _AUXR1
                                    172 	.globl _AUXR
                                    173 	.globl _PCON
                                    174 	.globl _DPTR
                                    175 	.globl _SP
                                    176 	.globl _alarms
                                    177 	.globl _fsm_home_auto
                                    178 	.globl _BUTTON_DATA_SELECT_HELD_DOWN
                                    179 	.globl _BUTTON_DATA_SELECT_RELEASED_LONGP
                                    180 	.globl _BUTTON_DATA_SELECT_RELEASED_NORMAL
                                    181 	.globl _BUTTON_DATA_SELECT_PRESSED
                                    182 	.globl _BUTTON_DATA_MENU_HELD_DOWN
                                    183 	.globl _BUTTON_DATA_MENU_RELEASED_LONGP
                                    184 	.globl _BUTTON_DATA_MENU_RELEASED_NORMAL
                                    185 	.globl _BUTTON_DATA_MENU_PRESSED
                                    186 	.globl _display_autobrightness
                                    187 	.globl _DS1302_DATA_7
                                    188 	.globl _DS1302_DATA_6
                                    189 	.globl _DS1302_DATA_5
                                    190 	.globl _DS1302_DATA_4
                                    191 	.globl _DS1302_DATA_3
                                    192 	.globl _DS1302_DATA_2
                                    193 	.globl _DS1302_DATA_1
                                    194 	.globl _DS1302_DATA_0
                                    195 	.globl _BUTTON_DATA
                                    196 	.globl _DS1302_DATA
                                    197 ;--------------------------------------------------------
                                    198 ; special function registers
                                    199 ;--------------------------------------------------------
                                    200 	.area RSEG    (ABS,DATA)
      000000                        201 	.org 0x0000
                           000081   202 _SP	=	0x0081
                           008382   203 _DPTR	=	0x8382
                           000087   204 _PCON	=	0x0087
                           00008E   205 _AUXR	=	0x008e
                           0000A2   206 _AUXR1	=	0x00a2
                           00008F   207 _AUXR2	=	0x008f
                           000097   208 _PCON2	=	0x0097
                           0000D0   209 _PSW	=	0x00d0
                           000090   210 _PORT_P1	=	0x0090
                           0000A0   211 _PORT_P2	=	0x00a0
                           0000B0   212 _PORT_P3	=	0x00b0
                           0000C0   213 _PORT_P4	=	0x00c0
                           0000C8   214 _PORT_P5	=	0x00c8
                           000091   215 _PORT_P1M1	=	0x0091
                           000092   216 _PORT_P1M0	=	0x0092
                           000095   217 _PORT_P2M1	=	0x0095
                           000096   218 _PORT_P2M0	=	0x0096
                           0000B1   219 _PORT_P3M1	=	0x00b1
                           0000B2   220 _PORT_P3M0	=	0x00b2
                           0000B3   221 _PORT_P4M1	=	0x00b3
                           0000B4   222 _PORT_P4M0	=	0x00b4
                           0000C9   223 _PORT_P5M1	=	0x00c9
                           0000CA   224 _PORT_P5M0	=	0x00ca
                           0000A8   225 _INT_IE	=	0x00a8
                           0000AF   226 _INT_IE2	=	0x00af
                           0000B8   227 _INT_IP	=	0x00b8
                           0000B5   228 _INT_IP2	=	0x00b5
                           000088   229 _TMR_TCON	=	0x0088
                           000089   230 _TMR_TMOD	=	0x0089
                           008C8A   231 _TMR_T0	=	0x8c8a
                           00D6D7   232 _TMR_T2	=	0xd6d7
                           0000C2   233 _EEPROM_DATA	=	0x00c2
                           00C3C4   234 _EEPROM_ADDR	=	0xc3c4
                           0000C5   235 _EEPROM_CMD	=	0x00c5
                           0000C6   236 _EEPROM_TRIG	=	0x00c6
                           0000C7   237 _EEPROM_CONTR	=	0x00c7
                           00009D   238 _ADC_P1ASF	=	0x009d
                           0000BC   239 _ADC_CONTR	=	0x00bc
                           00BDBE   240 _ADC_RES	=	0xbdbe
                           0000BD   241 _ADC_RESH	=	0x00bd
                           0000BE   242 _ADC_RESL	=	0x00be
                           0000E6   243 _CMP_CR1	=	0x00e6
                           0000E7   244 _CMP_CR2	=	0x00e7
                           0000DA   245 _PCA_CCAPM0	=	0x00da
                           0000DB   246 _PCA_CCAPM1	=	0x00db
                           0000DC   247 _PCA_CCAPM2	=	0x00dc
                           00FAEA   248 _PCA_CCAP0	=	0xfaea
                           00FBEB   249 _PCA_CCAP1	=	0xfbeb
                           00FCEC   250 _PCA_CCAP2	=	0xfcec
                           0000FA   251 _PCA_CCAP0_H	=	0x00fa
                           0000EA   252 _PCA_CCAP0_L	=	0x00ea
                           0000FB   253 _PCA_CCAP1_H	=	0x00fb
                           0000EB   254 _PCA_CCAP1_L	=	0x00eb
                           0000FC   255 _PCA_CCAP2_H	=	0x00fc
                           0000EC   256 _PCA_CCAP2_L	=	0x00ec
                           00F9E9   257 _PCA_C	=	0xf9e9
                           0000F2   258 _PCA_PWM0	=	0x00f2
                           0000F3   259 _PCA_PWM1	=	0x00f3
                           0000F4   260 _PCA_PWM2	=	0x00f4
                           0000D8   261 _PCA_CCON	=	0x00d8
                           0000D9   262 _PCA_CMOD	=	0x00d9
                           000098   263 _UART_SCON	=	0x0098
                           000099   264 _UART_SBUF	=	0x0099
                           0000A9   265 _UART_SADDR	=	0x00a9
                           0000B9   266 _UART_SADEN	=	0x00b9
                           0000C2   267 _IAP_DATA	=	0x00c2
                           0000C3   268 _IAP_ADDRH	=	0x00c3
                           0000C4   269 _IAP_ADDRL	=	0x00c4
                           00C3C4   270 _IAP_ADDR	=	0xc3c4
                           0000C5   271 _IAP_CMD	=	0x00c5
                           0000C6   272 _IAP_TRIG	=	0x00c6
                           0000C7   273 _IAP_CONTR	=	0x00c7
                                    274 ;--------------------------------------------------------
                                    275 ; special function bits
                                    276 ;--------------------------------------------------------
                                    277 	.area RSEG    (ABS,DATA)
      000000                        278 	.org 0x0000
                           0000D0   279 _P	=	0x00d0
                           0000D1   280 _F1	=	0x00d1
                           0000D2   281 _OV	=	0x00d2
                           0000D3   282 _RS0	=	0x00d3
                           0000D4   283 _RS1	=	0x00d4
                           0000D5   284 _F0	=	0x00d5
                           0000D6   285 _AC	=	0x00d6
                           0000D7   286 _CY	=	0x00d7
                           000090   287 _PORT_P1_0	=	0x0090
                           000091   288 _PORT_P1_1	=	0x0091
                           000092   289 _PORT_P1_2	=	0x0092
                           000093   290 _PORT_P1_3	=	0x0093
                           000094   291 _PORT_P1_4	=	0x0094
                           000095   292 _PORT_P1_5	=	0x0095
                           000096   293 _PORT_P1_6	=	0x0096
                           000097   294 _PORT_P1_7	=	0x0097
                           0000A0   295 _PORT_P2_0	=	0x00a0
                           0000A1   296 _PORT_P2_1	=	0x00a1
                           0000A2   297 _PORT_P2_2	=	0x00a2
                           0000A3   298 _PORT_P2_3	=	0x00a3
                           0000A4   299 _PORT_P2_4	=	0x00a4
                           0000A5   300 _PORT_P2_5	=	0x00a5
                           0000A6   301 _PORT_P2_6	=	0x00a6
                           0000A7   302 _PORT_P2_7	=	0x00a7
                           0000B0   303 _PORT_P3_0	=	0x00b0
                           0000B1   304 _PORT_P3_1	=	0x00b1
                           0000B2   305 _PORT_P3_2	=	0x00b2
                           0000B3   306 _PORT_P3_3	=	0x00b3
                           0000B4   307 _PORT_P3_4	=	0x00b4
                           0000B5   308 _PORT_P3_5	=	0x00b5
                           0000B6   309 _PORT_P3_6	=	0x00b6
                           0000B7   310 _PORT_P3_7	=	0x00b7
                           0000C0   311 _PORT_P4_0	=	0x00c0
                           0000C1   312 _PORT_P4_1	=	0x00c1
                           0000C2   313 _PORT_P4_2	=	0x00c2
                           0000C3   314 _PORT_P4_3	=	0x00c3
                           0000C4   315 _PORT_P4_4	=	0x00c4
                           0000C5   316 _PORT_P4_5	=	0x00c5
                           0000C6   317 _PORT_P4_6	=	0x00c6
                           0000C7   318 _PORT_P4_7	=	0x00c7
                           0000C8   319 _PORT_P5_0	=	0x00c8
                           0000C9   320 _PORT_P5_1	=	0x00c9
                           0000CA   321 _PORT_P5_2	=	0x00ca
                           0000CB   322 _PORT_P5_3	=	0x00cb
                           0000CC   323 _PORT_P5_4	=	0x00cc
                           0000CD   324 _PORT_P5_5	=	0x00cd
                           0000CE   325 _PORT_P5_6	=	0x00ce
                           0000CD   326 _PORT_P5_7	=	0x00cd
                           0000A8   327 _INT_IE_EX0	=	0x00a8
                           0000A9   328 _INT_IE_ET0	=	0x00a9
                           0000AA   329 _INT_IE_EX1	=	0x00aa
                           0000AB   330 _INT_IE_ET1	=	0x00ab
                           0000AC   331 _INT_IE_ES	=	0x00ac
                           0000AD   332 _INT_IE_EADC	=	0x00ad
                           0000AE   333 _INT_IE_ELVD	=	0x00ae
                           0000AF   334 _INT_IE_EA	=	0x00af
                           0000B8   335 _INT_IP_PX0	=	0x00b8
                           0000B9   336 _INT_IP_PT0	=	0x00b9
                           0000BA   337 _INT_IP_PX1	=	0x00ba
                           0000BB   338 _INT_IP_PT1	=	0x00bb
                           0000BC   339 _INT_IP_PS	=	0x00bc
                           0000BD   340 _INT_IP_PADC	=	0x00bd
                           0000BE   341 _INT_IP_PLVD	=	0x00be
                           0000BF   342 _INT_IP_PPCA	=	0x00bf
                           000088   343 _TMR_TCON_IT0	=	0x0088
                           000089   344 _TMR_TCON_IE0	=	0x0089
                           00008A   345 _TMR_TCON_IT1	=	0x008a
                           00008B   346 _TMR_TCON_IE1	=	0x008b
                           00008C   347 _TMR_TCON_TR0	=	0x008c
                           00008D   348 _TMR_TCON_TF0	=	0x008d
                           00008E   349 _TMR_TCON_TR1	=	0x008e
                           00008F   350 _TMR_TCON_TF1	=	0x008f
                           0000D8   351 _PCA_CCF0	=	0x00d8
                           0000D9   352 _PCA_CCF1	=	0x00d9
                           0000DA   353 _PCA_CCF2	=	0x00da
                           0000DE   354 _PCA_CR	=	0x00de
                           0000DF   355 _PCA_CF	=	0x00df
                           000098   356 _UART_RI	=	0x0098
                           000099   357 _UART_TI	=	0x0099
                           00009A   358 _UART_RB8	=	0x009a
                           00009B   359 _UART_TB8	=	0x009b
                           00009C   360 _UART_REN	=	0x009c
                           00009D   361 _UART_SM2	=	0x009d
                           00009E   362 _UART_SM1	=	0x009e
                           00009E   363 _UART_SM0	=	0x009e
                                    364 ;--------------------------------------------------------
                                    365 ; overlayable register banks
                                    366 ;--------------------------------------------------------
                                    367 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        368 	.ds 8
                                    369 ;--------------------------------------------------------
                                    370 ; internal ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area DSEG    (DATA)
                           000021   373 _DS1302_DATA	=	0x0021
                           000022   374 _BUTTON_DATA	=	0x0022
      000057                        375 _main_fsm_runstate_1_170:
      000057                        376 	.ds 1
      000058                        377 _main_ticks_now_4_199:
      000058                        378 	.ds 2
      00005A                        379 _main_ticks_now_5_205:
      00005A                        380 	.ds 2
                                    381 ;--------------------------------------------------------
                                    382 ; overlayable items in internal ram 
                                    383 ;--------------------------------------------------------
                                    384 ;--------------------------------------------------------
                                    385 ; Stack segment in internal ram 
                                    386 ;--------------------------------------------------------
                                    387 	.area	SSEG
      000069                        388 __start__stack:
      000069                        389 	.ds	1
                                    390 
                                    391 ;--------------------------------------------------------
                                    392 ; indirectly addressable internal ram data
                                    393 ;--------------------------------------------------------
                                    394 	.area ISEG    (DATA)
                                    395 ;--------------------------------------------------------
                                    396 ; absolute internal ram data
                                    397 ;--------------------------------------------------------
                                    398 	.area IABS    (ABS,DATA)
                                    399 	.area IABS    (ABS,DATA)
                                    400 ;--------------------------------------------------------
                                    401 ; bit data
                                    402 ;--------------------------------------------------------
                                    403 	.area BSEG    (BIT)
                           000008   404 _DS1302_DATA_0	=	0x0008
                           000009   405 _DS1302_DATA_1	=	0x0009
                           00000A   406 _DS1302_DATA_2	=	0x000a
                           00000B   407 _DS1302_DATA_3	=	0x000b
                           00000C   408 _DS1302_DATA_4	=	0x000c
                           00000D   409 _DS1302_DATA_5	=	0x000d
                           00000E   410 _DS1302_DATA_6	=	0x000e
                           00000F   411 _DS1302_DATA_7	=	0x000f
                           00001F   412 _display_autobrightness	=	0x001f
                           000010   413 _BUTTON_DATA_MENU_PRESSED	=	0x0010
                           000011   414 _BUTTON_DATA_MENU_RELEASED_NORMAL	=	0x0011
                           000012   415 _BUTTON_DATA_MENU_RELEASED_LONGP	=	0x0012
                           000013   416 _BUTTON_DATA_MENU_HELD_DOWN	=	0x0013
                           000014   417 _BUTTON_DATA_SELECT_PRESSED	=	0x0014
                           000015   418 _BUTTON_DATA_SELECT_RELEASED_NORMAL	=	0x0015
                           000016   419 _BUTTON_DATA_SELECT_RELEASED_LONGP	=	0x0016
                           000017   420 _BUTTON_DATA_SELECT_HELD_DOWN	=	0x0017
                           00001E   421 _fsm_home_auto	=	0x001e
                                    422 ;--------------------------------------------------------
                                    423 ; paged external ram data
                                    424 ;--------------------------------------------------------
                                    425 	.area PSEG    (PAG,XDATA)
                                    426 ;--------------------------------------------------------
                                    427 ; external ram data
                                    428 ;--------------------------------------------------------
                                    429 	.area XSEG    (XDATA)
                           000004   430 _alarms	=	0x0004
                                    431 ;--------------------------------------------------------
                                    432 ; absolute external ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area XABS    (ABS,XDATA)
                                    435 ;--------------------------------------------------------
                                    436 ; external initialized ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area XISEG   (XDATA)
                                    439 	.area HOME    (CODE)
                                    440 	.area GSINIT0 (CODE)
                                    441 	.area GSINIT1 (CODE)
                                    442 	.area GSINIT2 (CODE)
                                    443 	.area GSINIT3 (CODE)
                                    444 	.area GSINIT4 (CODE)
                                    445 	.area GSINIT5 (CODE)
                                    446 	.area GSINIT  (CODE)
                                    447 	.area GSFINAL (CODE)
                                    448 	.area CSEG    (CODE)
                                    449 ;--------------------------------------------------------
                                    450 ; interrupt vector 
                                    451 ;--------------------------------------------------------
                                    452 	.area HOME    (CODE)
      000000                        453 __interrupt_vect:
      000000 02 00 6B         [24]  454 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  455 	reti
      000004                        456 	.ds	7
      00000B 02 19 CD         [24]  457 	ljmp	_ISR_T0
      00000E                        458 	.ds	5
      000013 32               [24]  459 	reti
      000014                        460 	.ds	7
      00001B 32               [24]  461 	reti
      00001C                        462 	.ds	7
      000023 32               [24]  463 	reti
      000024                        464 	.ds	7
      00002B 02 03 39         [24]  465 	ljmp	_ISR_ADC
      00002E                        466 	.ds	5
      000033 32               [24]  467 	reti
      000034                        468 	.ds	7
      00003B 02 07 14         [24]  469 	ljmp	_ISR_PCA
      00003E                        470 	.ds	5
      000043 32               [24]  471 	reti
      000044                        472 	.ds	7
      00004B 32               [24]  473 	reti
      00004C                        474 	.ds	7
      000053 32               [24]  475 	reti
      000054                        476 	.ds	7
      00005B 32               [24]  477 	reti
      00005C                        478 	.ds	7
      000063 02 04 9E         [24]  479 	ljmp	_ISR_T2
                                    480 ;--------------------------------------------------------
                                    481 ; global & static initialisations
                                    482 ;--------------------------------------------------------
                                    483 	.area HOME    (CODE)
                                    484 	.area GSINIT  (CODE)
                                    485 	.area GSFINAL (CODE)
                                    486 	.area GSINIT  (CODE)
                                    487 	.globl __sdcc_gsinit_startup
                                    488 	.globl __sdcc_program_startup
                                    489 	.globl __start__stack
                                    490 	.globl __mcs51_genXINIT
                                    491 	.globl __mcs51_genXRAMCLEAR
                                    492 	.globl __mcs51_genRAMCLEAR
                                    493 	.area GSFINAL (CODE)
      0000FE 02 00 66         [24]  494 	ljmp	__sdcc_program_startup
                                    495 ;--------------------------------------------------------
                                    496 ; Home
                                    497 ;--------------------------------------------------------
                                    498 	.area HOME    (CODE)
                                    499 	.area HOME    (CODE)
      000066                        500 __sdcc_program_startup:
      000066 02 18 5E         [24]  501 	ljmp	_main
                                    502 ;	return from main will return to caller
                                    503 ;--------------------------------------------------------
                                    504 ; code
                                    505 ;--------------------------------------------------------
                                    506 	.area CSEG    (CODE)
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'main'
                                    509 ;------------------------------------------------------------
                                    510 ;fsm_curstate              Allocated to registers r7 
                                    511 ;fsm_fp                    Allocated to registers r5 r6 
                                    512 ;fsm_runstate              Allocated with name '_main_fsm_runstate_1_170'
                                    513 ;__00020024                Allocated to registers 
                                    514 ;index                     Allocated to registers 
                                    515 ;__00020042                Allocated to registers 
                                    516 ;cs                        Allocated to registers 
                                    517 ;ticks_now                 Allocated with name '_main_ticks_now_4_199'
                                    518 ;__00030045                Allocated to registers 
                                    519 ;cs                        Allocated to registers 
                                    520 ;ticks_now                 Allocated with name '_main_ticks_now_5_205'
                                    521 ;------------------------------------------------------------
                                    522 ;	../main.c:15: void main(void)
                                    523 ;	-----------------------------------------
                                    524 ;	 function main
                                    525 ;	-----------------------------------------
      00185E                        526 _main:
                           000007   527 	ar7 = 0x07
                           000006   528 	ar6 = 0x06
                           000005   529 	ar5 = 0x05
                           000004   530 	ar4 = 0x04
                           000003   531 	ar3 = 0x03
                           000002   532 	ar2 = 0x02
                           000001   533 	ar1 = 0x01
                           000000   534 	ar0 = 0x00
      00185E E5 81            [12]  535 	mov	a,sp
      001860 24 04            [12]  536 	add	a,#0x04
      001862 F5 81            [12]  537 	mov	sp,a
                                    538 ;	../main.c:18: enum fsm_states_highlevel fsm_curstate = fsm_home;
      001864 7F 00            [12]  539 	mov	r7,#0x00
                                    540 ;	../main.c:19: enum fsm_return (*fsm_fp)(void) = fsm_home_fn;
      001866 7D 83            [12]  541 	mov	r5,#_fsm_home_fn
      001868 7E 0A            [12]  542 	mov	r6,#(_fsm_home_fn >> 8)
                                    543 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:167: INT_IE2 &= 0xfb;	//TMR2 Interrupt disabled
      00186A 53 AF FB         [24]  544 	anl	_INT_IE2,#0xfb
                                    545 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:168: AUXR &= 0xe2;		//TMR2: 12T, STOP, TIMER, NOT BAUD GENERATOR
      00186D 53 8E E2         [24]  546 	anl	_AUXR,#0xe2
                                    547 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:169: TMR_T2 = 0x102a;	//TMR2 Starts from 0x0fd7, overflow rate at 12T is ~30Hz
      001870 75 D7 2A         [24]  548 	mov	((_TMR_T2 >> 0) & 0xFF),#0x2a
      001873 75 D6 10         [24]  549 	mov	((_TMR_T2 >> 8) & 0xFF),#0x10
                                    550 ;	/home/shenghao/workspace/TESTMCS51/alarm.h:170: AUXR |= 0x10;		//TMR2: RUN
      001876 43 8E 10         [24]  551 	orl	_AUXR,#0x10
                                    552 ;	../main.c:25: ALARM_BUZZER = 0;
                                    553 ;	assignBit
      001879 C2 95            [12]  554 	clr	_PORT_P1_5
                                    555 ;	/home/shenghao/workspace/TESTMCS51/adc.h:44: | (0x01 << ADC_THERMISTOR_PIN));		//Set both thermistor and LDR input pins as High-Z
      00187B 43 91 C0         [24]  556 	orl	_PORT_P1M1,#0xc0
                                    557 ;	/home/shenghao/workspace/TESTMCS51/adc.h:46: | (0x01 << ADC_THERMISTOR_PIN));		//Set both thermistor and LDR input pins as ADC input pins, block digital functions
      00187E 43 9D C0         [24]  558 	orl	_ADC_P1ASF,#0xc0
                                    559 ;	/home/shenghao/workspace/TESTMCS51/adc.h:47: ADC_CONTR = 0x80;		//Turn on the ADC power and set the ADC speed to min
      001881 75 BC 80         [24]  560 	mov	_ADC_CONTR,#0x80
                                    561 ;	/home/shenghao/workspace/TESTMCS51/adc.h:48: PCON2	  |= 0x20;		//Sets up the ADC to return a right justified result
      001884 43 97 20         [24]  562 	orl	_PCON2,#0x20
                                    563 ;	/home/shenghao/workspace/TESTMCS51/adc.h:49: ADC_RES = 0x0000;		//Clear the ADC result
      001887 E4               [12]  564 	clr	a
      001888 F5 BE            [12]  565 	mov	((_ADC_RES >> 0) & 0xFF),a
      00188A F5 BD            [12]  566 	mov	((_ADC_RES >> 8) & 0xFF),a
                                    567 ;	/home/shenghao/workspace/TESTMCS51/adc.h:50: INT_IE_EADC = 1;		//Enable ADC interrupt
                                    568 ;	assignBit
      00188C D2 AD            [12]  569 	setb	_INT_IE_EADC
                                    570 ;	/home/shenghao/workspace/TESTMCS51/adc.h:60: __endasm; 					 //Wait for ADC power on
      00188E 00               [12]  571 	nop
      00188F 00               [12]  572 	nop
      001890 00               [12]  573 	nop
      001891 00               [12]  574 	nop
      001892 00               [12]  575 	nop
      001893 00               [12]  576 	nop
      001894 00               [12]  577 	nop
      001895 00               [12]  578 	nop
                                    579 ;	/home/shenghao/workspace/TESTMCS51/adc.h:61: ADC_CONTR = ADC_SETUP_LDR;   //Write initial trigger source so that timer interrupt triggers another ADC conversion
      001896 75 BC E6         [24]  580 	mov	_ADC_CONTR,#0xe6
                                    581 ;	/home/shenghao/workspace/TESTMCS51/timer.h:26: TMR_TMOD = 0x00; //Set Timer 0 as 16-bit auto reload TC
      001899 75 89 00         [24]  582 	mov	_TMR_TMOD,#0x00
                                    583 ;	/home/shenghao/workspace/TESTMCS51/timer.h:27: TMR_T0 = 0xb800; //Set Initial value for Timer 0 auto reload
      00189C 75 8A 00         [24]  584 	mov	((_TMR_T0 >> 0) & 0xFF),#0x00
      00189F 75 8C B8         [24]  585 	mov	((_TMR_T0 >> 8) & 0xFF),#0xb8
                                    586 ;	/home/shenghao/workspace/TESTMCS51/timer.h:28: TMR_TCON = 0x00; //Reset timer TCON
      0018A2 75 88 00         [24]  587 	mov	_TMR_TCON,#0x00
                                    588 ;	/home/shenghao/workspace/TESTMCS51/timer.h:29: AUXR &= 0b01111111; //Set Timer 0 to count up once every 12 ticks
      0018A5 53 8E 7F         [24]  589 	anl	_AUXR,#0x7f
                                    590 ;	/home/shenghao/workspace/TESTMCS51/timer.h:30: INT_IE_ET0 = 1;  //Enable timer 0 interrupt
                                    591 ;	assignBit
      0018A8 D2 A9            [12]  592 	setb	_INT_IE_ET0
                                    593 ;	/home/shenghao/workspace/TESTMCS51/timer.h:31: TMR_TCON_TR0 = 1;//Run timer 0 and start 100Hz ticks
                                    594 ;	assignBit
      0018AA D2 8C            [12]  595 	setb	_TMR_TCON_TR0
                                    596 ;	/home/shenghao/workspace/TESTMCS51/board_config.h:65: PORT_P2M1 = 0xff; //Configure display port for open-drain operation mode
      0018AC 75 95 FF         [24]  597 	mov	_PORT_P2M1,#0xff
                                    598 ;	/home/shenghao/workspace/TESTMCS51/board_config.h:66: PORT_P2M0 = 0xff; //Set the mode register 0 first to transition through high-z mode instead of push-pull mode
      0018AF 75 96 FF         [24]  599 	mov	_PORT_P2M0,#0xff
                                    600 ;	/home/shenghao/workspace/TESTMCS51/display.h:78: PCA_CMOD = 0x09; //Run at SysClk, enable overflow interrupt.
      0018B2 75 D9 09         [24]  601 	mov	_PCA_CMOD,#0x09
                                    602 ;	/home/shenghao/workspace/TESTMCS51/display.h:79: PCA_CCON = 0x00; //Reset the interrupt bits for the PCA
                                    603 ;	/home/shenghao/workspace/TESTMCS51/display.h:80: PCA_C = 0x0000;  //Reset PCA
      0018B5 E4               [12]  604 	clr	a
      0018B6 F5 D8            [12]  605 	mov	_PCA_CCON,a
      0018B8 F5 E9            [12]  606 	mov	((_PCA_C >> 0) & 0xFF),a
      0018BA F5 F9            [12]  607 	mov	((_PCA_C >> 8) & 0xFF),a
                                    608 ;	/home/shenghao/workspace/TESTMCS51/display.h:81: PCA_CCAP0 = display_counts; //Set module 0 compare register
      0018BC 85 41 EA         [24]  609 	mov	((_PCA_CCAP0 >> 0) & 0xFF),_display_counts
      0018BF 85 42 FA         [24]  610 	mov	((_PCA_CCAP0 >> 8) & 0xFF),(_display_counts + 1)
                                    611 ;	/home/shenghao/workspace/TESTMCS51/display.h:82: PCA_CCAPM0 = 0x49;  //Set module 0 compare mode - software timer
      0018C2 75 DA 49         [24]  612 	mov	_PCA_CCAPM0,#0x49
                                    613 ;	/home/shenghao/workspace/TESTMCS51/display.h:83: PCA_CR = 1;		 //Run PCA
                                    614 ;	assignBit
      0018C5 D2 DE            [12]  615 	setb	_PCA_CR
                                    616 ;	/home/shenghao/workspace/TESTMCS51/display.h:84: INT_IP_PPCA = 1; //Set PCA interrupt to be high priority
                                    617 ;	assignBit
      0018C7 D2 BF            [12]  618 	setb	_INT_IP_PPCA
                                    619 ;	/home/shenghao/workspace/TESTMCS51/display.h:85: INT_IE_EA = 1;	 //Enable global interrupts
                                    620 ;	assignBit
      0018C9 D2 AF            [12]  621 	setb	_INT_IE_EA
                                    622 ;	/home/shenghao/workspace/TESTMCS51/display.h:87: PORT_P2 = display_buffer[3];
      0018CB 85 3E A0         [24]  623 	mov	_PORT_P2,(_display_buffer + 0x0003)
                                    624 ;	/home/shenghao/workspace/TESTMCS51/board_config.h:46: PORT_P3 &= ~(0x04 << index);
      0018CE 53 B0 DF         [24]  625 	anl	_PORT_P3,#0xdf
                                    626 ;	/home/shenghao/workspace/TESTMCS51/display.h:102: display_autobrightness = 1; //Enable display automatic brightness adjust
                                    627 ;	assignBit
      0018D1 D2 1F            [12]  628 	setb	_display_autobrightness
                                    629 ;	/home/shenghao/workspace/TESTMCS51/button.h:58: BUTTON_MENU_STATE = 0x00;	//Reset menu button state tracker
      0018D3 75 37 00         [24]  630 	mov	_BUTTON_MENU_STATE,#0x00
                                    631 ;	/home/shenghao/workspace/TESTMCS51/button.h:59: BUTTON_SELECT_STATE = 0x00; //Reset select button state tracker
      0018D6 75 38 00         [24]  632 	mov	_BUTTON_SELECT_STATE,#0x00
                                    633 ;	/home/shenghao/workspace/TESTMCS51/button.h:60: BUTTON_DATA = 0x00;			//Reset button data state
      0018D9 75 22 00         [24]  634 	mov	_BUTTON_DATA,#0x00
                                    635 ;	/home/shenghao/workspace/TESTMCS51/button.h:61: BUTTON_MENU_CNT = 0x00;		//Reset menu counter
      0018DC 75 39 00         [24]  636 	mov	_BUTTON_MENU_CNT,#0x00
                                    637 ;	/home/shenghao/workspace/TESTMCS51/button.h:62: BUTTON_SELECT_CNT = 0x00;	//Reset select counter
      0018DF 75 3A 00         [24]  638 	mov	_BUTTON_SELECT_CNT,#0x00
                                    639 ;	/home/shenghao/workspace/TESTMCS51/timer.h:19: INT_IE_ET0 = 0; //Disable timer interrupt
                                    640 ;	assignBit
      0018E2 C2 A9            [12]  641 	clr	_INT_IE_ET0
                                    642 ;	/home/shenghao/workspace/TESTMCS51/timer.h:20: ticks_now = ticks_10ms;
      0018E4 85 5C 58         [24]  643 	mov	_main_ticks_now_4_199,_ticks_10ms
      0018E7 85 5D 59         [24]  644 	mov	(_main_ticks_now_4_199 + 1),(_ticks_10ms + 1)
                                    645 ;	/home/shenghao/workspace/TESTMCS51/timer.h:21: INT_IE_ET0 = 1; //Enable timer interrupt
                                    646 ;	assignBit
      0018EA D2 A9            [12]  647 	setb	_INT_IE_ET0
                                    648 ;	/home/shenghao/workspace/TESTMCS51/timer.h:22: while((ticks_10ms - ticks_now) < cs); //Wait
      0018EC                        649 00116$:
      0018EC E5 5C            [12]  650 	mov	a,_ticks_10ms
      0018EE C3               [12]  651 	clr	c
      0018EF 95 58            [12]  652 	subb	a,_main_ticks_now_4_199
      0018F1 FA               [12]  653 	mov	r2,a
      0018F2 E5 5D            [12]  654 	mov	a,(_ticks_10ms + 1)
      0018F4 95 59            [12]  655 	subb	a,(_main_ticks_now_4_199 + 1)
      0018F6 FC               [12]  656 	mov	r4,a
      0018F7 C3               [12]  657 	clr	c
      0018F8 EA               [12]  658 	mov	a,r2
      0018F9 94 C8            [12]  659 	subb	a,#0xc8
      0018FB EC               [12]  660 	mov	a,r4
      0018FC 94 00            [12]  661 	subb	a,#0x00
      0018FE 40 EC            [24]  662 	jc	00116$
                                    663 ;	../main.c:35: ALARM_BUZZER = 1;
                                    664 ;	assignBit
      001900 D2 95            [12]  665 	setb	_PORT_P1_5
                                    666 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:76: PORT_P1   &= 0xf8;
      001902 53 90 F8         [24]  667 	anl	_PORT_P1,#0xf8
                                    668 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:78: PORT_P1M1 |= 0x02;	//Set high-z first before set to open drain
      001905 43 91 02         [24]  669 	orl	_PORT_P1M1,#0x02
                                    670 ;	/home/shenghao/workspace/TESTMCS51/ds1302.h:79: PORT_P1M0 |= 0x07;
      001908 43 92 07         [24]  671 	orl	_PORT_P1M0,#0x07
                                    672 ;	../main.c:38: ds1302_reset();
      00190B C0 07            [24]  673 	push	ar7
      00190D C0 06            [24]  674 	push	ar6
      00190F C0 05            [24]  675 	push	ar5
      001911 12 07 81         [24]  676 	lcall	_ds1302_reset
                                    677 ;	../main.c:39: ds1302_read_SRAM();
      001914 12 09 2A         [24]  678 	lcall	_ds1302_read_SRAM
                                    679 ;	../main.c:40: if(!ds1302_check_SRAM() ||
      001917 12 09 72         [24]  680 	lcall	_ds1302_check_SRAM
      00191A E5 82            [12]  681 	mov	a,dpl
      00191C D0 05            [24]  682 	pop	ar5
      00191E D0 06            [24]  683 	pop	ar6
      001920 D0 07            [24]  684 	pop	ar7
      001922 60 28            [24]  685 	jz	00101$
                                    686 ;	../main.c:41: ((button_read_and_clear_menu() == BUTTON_HELD_DOWN)
      001924 C0 07            [24]  687 	push	ar7
      001926 C0 06            [24]  688 	push	ar6
      001928 C0 05            [24]  689 	push	ar5
      00192A 12 05 0A         [24]  690 	lcall	_button_read_and_clear_menu
      00192D AC 82            [24]  691 	mov	r4,dpl
      00192F D0 05            [24]  692 	pop	ar5
      001931 D0 06            [24]  693 	pop	ar6
      001933 D0 07            [24]  694 	pop	ar7
      001935 BC 02 23         [24]  695 	cjne	r4,#0x02,00102$
                                    696 ;	../main.c:42: && (button_read_and_clear_select() == BUTTON_HELD_DOWN)))
      001938 C0 07            [24]  697 	push	ar7
      00193A C0 06            [24]  698 	push	ar6
      00193C C0 05            [24]  699 	push	ar5
      00193E 12 04 DE         [24]  700 	lcall	_button_read_and_clear_select
      001941 AC 82            [24]  701 	mov	r4,dpl
      001943 D0 05            [24]  702 	pop	ar5
      001945 D0 06            [24]  703 	pop	ar6
      001947 D0 07            [24]  704 	pop	ar7
      001949 BC 02 0F         [24]  705 	cjne	r4,#0x02,00102$
      00194C                        706 00101$:
                                    707 ;	../main.c:43: ds1302_power_loss_reset();
      00194C C0 07            [24]  708 	push	ar7
      00194E C0 06            [24]  709 	push	ar6
      001950 C0 05            [24]  710 	push	ar5
      001952 12 09 CC         [24]  711 	lcall	_ds1302_power_loss_reset
      001955 D0 05            [24]  712 	pop	ar5
      001957 D0 06            [24]  713 	pop	ar6
      001959 D0 07            [24]  714 	pop	ar7
      00195B                        715 00102$:
                                    716 ;	../main.c:45: display_autobrightness = 1;
                                    717 ;	assignBit
      00195B D2 1F            [12]  718 	setb	_display_autobrightness
                                    719 ;	../main.c:46: fsm_home_auto = 0;
                                    720 ;	assignBit
      00195D C2 1E            [12]  721 	clr	_fsm_home_auto
                                    722 ;	../main.c:48: while(1){
      00195F                        723 00106$:
                                    724 ;	../main.c:49: fsm_runstate = fsm_fp();
      00195F C0 07            [24]  725 	push	ar7
      001961 C0 06            [24]  726 	push	ar6
      001963 C0 05            [24]  727 	push	ar5
      001965 8D 82            [24]  728 	mov	dpl,r5
      001967 8E 83            [24]  729 	mov	dph,r6
      001969 12 00 69         [24]  730 	lcall	__sdcc_call_dptr
      00196C 85 82 57         [24]  731 	mov	_main_fsm_runstate_1_170,dpl
      00196F D0 05            [24]  732 	pop	ar5
      001971 D0 06            [24]  733 	pop	ar6
      001973 D0 07            [24]  734 	pop	ar7
                                    735 ;	../main.c:50: fsm_fp = fsm_transition_table_fp[fsm_curstate][fsm_runstate];
      001975 EF               [12]  736 	mov	a,r7
      001976 75 F0 06         [24]  737 	mov	b,#0x06
      001979 A4               [48]  738 	mul	ab
      00197A 24 00            [12]  739 	add	a,#_fsm_transition_table_fp
      00197C FA               [12]  740 	mov	r2,a
      00197D 74 33            [12]  741 	mov	a,#(_fsm_transition_table_fp >> 8)
      00197F 35 F0            [12]  742 	addc	a,b
      001981 FB               [12]  743 	mov	r3,a
      001982 E5 57            [12]  744 	mov	a,_main_fsm_runstate_1_170
      001984 25 57            [12]  745 	add	a,_main_fsm_runstate_1_170
      001986 2A               [12]  746 	add	a,r2
      001987 F5 82            [12]  747 	mov	dpl,a
      001989 E4               [12]  748 	clr	a
      00198A 3B               [12]  749 	addc	a,r3
      00198B F5 83            [12]  750 	mov	dph,a
      00198D E4               [12]  751 	clr	a
      00198E 93               [24]  752 	movc	a,@a+dptr
      00198F FD               [12]  753 	mov	r5,a
      001990 A3               [24]  754 	inc	dptr
      001991 E4               [12]  755 	clr	a
      001992 93               [24]  756 	movc	a,@a+dptr
      001993 FE               [12]  757 	mov	r6,a
                                    758 ;	../main.c:51: fsm_curstate = fsm_transition_table_s[fsm_curstate][fsm_runstate];
      001994 EF               [12]  759 	mov	a,r7
      001995 75 F0 03         [24]  760 	mov	b,#0x03
      001998 A4               [48]  761 	mul	ab
      001999 24 18            [12]  762 	add	a,#_fsm_transition_table_s
      00199B FB               [12]  763 	mov	r3,a
      00199C 74 33            [12]  764 	mov	a,#(_fsm_transition_table_s >> 8)
      00199E 35 F0            [12]  765 	addc	a,b
      0019A0 FC               [12]  766 	mov	r4,a
      0019A1 E5 57            [12]  767 	mov	a,_main_fsm_runstate_1_170
      0019A3 2B               [12]  768 	add	a,r3
      0019A4 F5 82            [12]  769 	mov	dpl,a
      0019A6 E4               [12]  770 	clr	a
      0019A7 3C               [12]  771 	addc	a,r4
      0019A8 F5 83            [12]  772 	mov	dph,a
      0019AA E4               [12]  773 	clr	a
      0019AB 93               [24]  774 	movc	a,@a+dptr
      0019AC FF               [12]  775 	mov	r7,a
                                    776 ;	/home/shenghao/workspace/TESTMCS51/timer.h:19: INT_IE_ET0 = 0; //Disable timer interrupt
                                    777 ;	assignBit
      0019AD C2 A9            [12]  778 	clr	_INT_IE_ET0
                                    779 ;	/home/shenghao/workspace/TESTMCS51/timer.h:20: ticks_now = ticks_10ms;
      0019AF 85 5C 5A         [24]  780 	mov	_main_ticks_now_5_205,_ticks_10ms
      0019B2 85 5D 5B         [24]  781 	mov	(_main_ticks_now_5_205 + 1),(_ticks_10ms + 1)
                                    782 ;	/home/shenghao/workspace/TESTMCS51/timer.h:21: INT_IE_ET0 = 1; //Enable timer interrupt
                                    783 ;	assignBit
      0019B5 D2 A9            [12]  784 	setb	_INT_IE_ET0
                                    785 ;	/home/shenghao/workspace/TESTMCS51/timer.h:22: while((ticks_10ms - ticks_now) < cs); //Wait
      0019B7                        786 00121$:
      0019B7 E5 5C            [12]  787 	mov	a,_ticks_10ms
      0019B9 C3               [12]  788 	clr	c
      0019BA 95 5A            [12]  789 	subb	a,_main_ticks_now_5_205
      0019BC FA               [12]  790 	mov	r2,a
      0019BD E5 5D            [12]  791 	mov	a,(_ticks_10ms + 1)
      0019BF 95 5B            [12]  792 	subb	a,(_main_ticks_now_5_205 + 1)
      0019C1 FC               [12]  793 	mov	r4,a
      0019C2 C3               [12]  794 	clr	c
      0019C3 EA               [12]  795 	mov	a,r2
      0019C4 94 0A            [12]  796 	subb	a,#0x0a
      0019C6 EC               [12]  797 	mov	a,r4
      0019C7 94 00            [12]  798 	subb	a,#0x00
      0019C9 40 EC            [24]  799 	jc	00121$
                                    800 ;	../main.c:52: delay_centiseconds(10); 			//Delay 100ms, update state machine @ 10Hz
      0019CB 80 92            [24]  801 	sjmp	00106$
                                    802 	.area CSEG    (CODE)
                                    803 	.area CONST   (CODE)
                                    804 	.area XINIT   (CODE)
                                    805 	.area CABS    (ABS,CODE)
