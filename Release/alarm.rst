                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #9959 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module alarm
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ISR_T2
                                     12 	.globl _UART_SM0
                                     13 	.globl _UART_SM1
                                     14 	.globl _UART_SM2
                                     15 	.globl _UART_REN
                                     16 	.globl _UART_TB8
                                     17 	.globl _UART_RB8
                                     18 	.globl _UART_TI
                                     19 	.globl _UART_RI
                                     20 	.globl _PCA_CF
                                     21 	.globl _PCA_CR
                                     22 	.globl _PCA_CCF2
                                     23 	.globl _PCA_CCF1
                                     24 	.globl _PCA_CCF0
                                     25 	.globl _TMR_TCON_TF1
                                     26 	.globl _TMR_TCON_TR1
                                     27 	.globl _TMR_TCON_TF0
                                     28 	.globl _TMR_TCON_TR0
                                     29 	.globl _TMR_TCON_IE1
                                     30 	.globl _TMR_TCON_IT1
                                     31 	.globl _TMR_TCON_IE0
                                     32 	.globl _TMR_TCON_IT0
                                     33 	.globl _INT_IP_PPCA
                                     34 	.globl _INT_IP_PLVD
                                     35 	.globl _INT_IP_PADC
                                     36 	.globl _INT_IP_PS
                                     37 	.globl _INT_IP_PT1
                                     38 	.globl _INT_IP_PX1
                                     39 	.globl _INT_IP_PT0
                                     40 	.globl _INT_IP_PX0
                                     41 	.globl _INT_IE_EA
                                     42 	.globl _INT_IE_ELVD
                                     43 	.globl _INT_IE_EADC
                                     44 	.globl _INT_IE_ES
                                     45 	.globl _INT_IE_ET1
                                     46 	.globl _INT_IE_EX1
                                     47 	.globl _INT_IE_ET0
                                     48 	.globl _INT_IE_EX0
                                     49 	.globl _PORT_P5_7
                                     50 	.globl _PORT_P5_6
                                     51 	.globl _PORT_P5_5
                                     52 	.globl _PORT_P5_4
                                     53 	.globl _PORT_P5_3
                                     54 	.globl _PORT_P5_2
                                     55 	.globl _PORT_P5_1
                                     56 	.globl _PORT_P5_0
                                     57 	.globl _PORT_P4_7
                                     58 	.globl _PORT_P4_6
                                     59 	.globl _PORT_P4_5
                                     60 	.globl _PORT_P4_4
                                     61 	.globl _PORT_P4_3
                                     62 	.globl _PORT_P4_2
                                     63 	.globl _PORT_P4_1
                                     64 	.globl _PORT_P4_0
                                     65 	.globl _PORT_P3_7
                                     66 	.globl _PORT_P3_6
                                     67 	.globl _PORT_P3_5
                                     68 	.globl _PORT_P3_4
                                     69 	.globl _PORT_P3_3
                                     70 	.globl _PORT_P3_2
                                     71 	.globl _PORT_P3_1
                                     72 	.globl _PORT_P3_0
                                     73 	.globl _PORT_P2_7
                                     74 	.globl _PORT_P2_6
                                     75 	.globl _PORT_P2_5
                                     76 	.globl _PORT_P2_4
                                     77 	.globl _PORT_P2_3
                                     78 	.globl _PORT_P2_2
                                     79 	.globl _PORT_P2_1
                                     80 	.globl _PORT_P2_0
                                     81 	.globl _PORT_P1_7
                                     82 	.globl _PORT_P1_6
                                     83 	.globl _PORT_P1_5
                                     84 	.globl _PORT_P1_4
                                     85 	.globl _PORT_P1_3
                                     86 	.globl _PORT_P1_2
                                     87 	.globl _PORT_P1_1
                                     88 	.globl _PORT_P1_0
                                     89 	.globl _CY
                                     90 	.globl _AC
                                     91 	.globl _F0
                                     92 	.globl _RS1
                                     93 	.globl _RS0
                                     94 	.globl _OV
                                     95 	.globl _F1
                                     96 	.globl _P
                                     97 	.globl _IAP_CONTR
                                     98 	.globl _IAP_TRIG
                                     99 	.globl _IAP_CMD
                                    100 	.globl _IAP_ADDR
                                    101 	.globl _IAP_ADDRL
                                    102 	.globl _IAP_ADDRH
                                    103 	.globl _IAP_DATA
                                    104 	.globl _UART_SADEN
                                    105 	.globl _UART_SADDR
                                    106 	.globl _UART_SBUF
                                    107 	.globl _UART_SCON
                                    108 	.globl _PCA_CMOD
                                    109 	.globl _PCA_CCON
                                    110 	.globl _PCA_PWM2
                                    111 	.globl _PCA_PWM1
                                    112 	.globl _PCA_PWM0
                                    113 	.globl _PCA_C
                                    114 	.globl _PCA_CCAP2_L
                                    115 	.globl _PCA_CCAP2_H
                                    116 	.globl _PCA_CCAP1_L
                                    117 	.globl _PCA_CCAP1_H
                                    118 	.globl _PCA_CCAP0_L
                                    119 	.globl _PCA_CCAP0_H
                                    120 	.globl _PCA_CCAP2
                                    121 	.globl _PCA_CCAP1
                                    122 	.globl _PCA_CCAP0
                                    123 	.globl _PCA_CCAPM2
                                    124 	.globl _PCA_CCAPM1
                                    125 	.globl _PCA_CCAPM0
                                    126 	.globl _CMP_CR2
                                    127 	.globl _CMP_CR1
                                    128 	.globl _ADC_RESL
                                    129 	.globl _ADC_RESH
                                    130 	.globl _ADC_RES
                                    131 	.globl _ADC_CONTR
                                    132 	.globl _ADC_P1ASF
                                    133 	.globl _EEPROM_CONTR
                                    134 	.globl _EEPROM_TRIG
                                    135 	.globl _EEPROM_CMD
                                    136 	.globl _EEPROM_ADDR
                                    137 	.globl _EEPROM_DATA
                                    138 	.globl _TMR_T2
                                    139 	.globl _TMR_T0
                                    140 	.globl _TMR_TMOD
                                    141 	.globl _TMR_TCON
                                    142 	.globl _INT_IP2
                                    143 	.globl _INT_IP
                                    144 	.globl _INT_IE2
                                    145 	.globl _INT_IE
                                    146 	.globl _PORT_P5M0
                                    147 	.globl _PORT_P5M1
                                    148 	.globl _PORT_P4M0
                                    149 	.globl _PORT_P4M1
                                    150 	.globl _PORT_P3M0
                                    151 	.globl _PORT_P3M1
                                    152 	.globl _PORT_P2M0
                                    153 	.globl _PORT_P2M1
                                    154 	.globl _PORT_P1M0
                                    155 	.globl _PORT_P1M1
                                    156 	.globl _PORT_P5
                                    157 	.globl _PORT_P4
                                    158 	.globl _PORT_P3
                                    159 	.globl _PORT_P2
                                    160 	.globl _PORT_P1
                                    161 	.globl _PSW
                                    162 	.globl _PCON2
                                    163 	.globl _AUXR2
                                    164 	.globl _AUXR1
                                    165 	.globl _AUXR
                                    166 	.globl _PCON
                                    167 	.globl _DPTR
                                    168 	.globl _SP
                                    169 	.globl _alarms
                                    170 	.globl _DS1302_DATA_7
                                    171 	.globl _DS1302_DATA_6
                                    172 	.globl _DS1302_DATA_5
                                    173 	.globl _DS1302_DATA_4
                                    174 	.globl _DS1302_DATA_3
                                    175 	.globl _DS1302_DATA_2
                                    176 	.globl _DS1302_DATA_1
                                    177 	.globl _DS1302_DATA_0
                                    178 	.globl _alarm_counter
                                    179 	.globl _DS1302_DATA
                                    180 ;--------------------------------------------------------
                                    181 ; special function registers
                                    182 ;--------------------------------------------------------
                                    183 	.area RSEG    (ABS,DATA)
      000000                        184 	.org 0x0000
                           000081   185 _SP	=	0x0081
                           008382   186 _DPTR	=	0x8382
                           000087   187 _PCON	=	0x0087
                           00008E   188 _AUXR	=	0x008e
                           0000A2   189 _AUXR1	=	0x00a2
                           00008F   190 _AUXR2	=	0x008f
                           000097   191 _PCON2	=	0x0097
                           0000D0   192 _PSW	=	0x00d0
                           000090   193 _PORT_P1	=	0x0090
                           0000A0   194 _PORT_P2	=	0x00a0
                           0000B0   195 _PORT_P3	=	0x00b0
                           0000C0   196 _PORT_P4	=	0x00c0
                           0000C8   197 _PORT_P5	=	0x00c8
                           000091   198 _PORT_P1M1	=	0x0091
                           000092   199 _PORT_P1M0	=	0x0092
                           000095   200 _PORT_P2M1	=	0x0095
                           000096   201 _PORT_P2M0	=	0x0096
                           0000B1   202 _PORT_P3M1	=	0x00b1
                           0000B2   203 _PORT_P3M0	=	0x00b2
                           0000B3   204 _PORT_P4M1	=	0x00b3
                           0000B4   205 _PORT_P4M0	=	0x00b4
                           0000C9   206 _PORT_P5M1	=	0x00c9
                           0000CA   207 _PORT_P5M0	=	0x00ca
                           0000A8   208 _INT_IE	=	0x00a8
                           0000AF   209 _INT_IE2	=	0x00af
                           0000B8   210 _INT_IP	=	0x00b8
                           0000B5   211 _INT_IP2	=	0x00b5
                           000088   212 _TMR_TCON	=	0x0088
                           000089   213 _TMR_TMOD	=	0x0089
                           008C8A   214 _TMR_T0	=	0x8c8a
                           00D6D7   215 _TMR_T2	=	0xd6d7
                           0000C2   216 _EEPROM_DATA	=	0x00c2
                           00C3C4   217 _EEPROM_ADDR	=	0xc3c4
                           0000C5   218 _EEPROM_CMD	=	0x00c5
                           0000C6   219 _EEPROM_TRIG	=	0x00c6
                           0000C7   220 _EEPROM_CONTR	=	0x00c7
                           00009D   221 _ADC_P1ASF	=	0x009d
                           0000BC   222 _ADC_CONTR	=	0x00bc
                           00BDBE   223 _ADC_RES	=	0xbdbe
                           0000BD   224 _ADC_RESH	=	0x00bd
                           0000BE   225 _ADC_RESL	=	0x00be
                           0000E6   226 _CMP_CR1	=	0x00e6
                           0000E7   227 _CMP_CR2	=	0x00e7
                           0000DA   228 _PCA_CCAPM0	=	0x00da
                           0000DB   229 _PCA_CCAPM1	=	0x00db
                           0000DC   230 _PCA_CCAPM2	=	0x00dc
                           00FAEA   231 _PCA_CCAP0	=	0xfaea
                           00FBEB   232 _PCA_CCAP1	=	0xfbeb
                           00FCEC   233 _PCA_CCAP2	=	0xfcec
                           0000FA   234 _PCA_CCAP0_H	=	0x00fa
                           0000EA   235 _PCA_CCAP0_L	=	0x00ea
                           0000FB   236 _PCA_CCAP1_H	=	0x00fb
                           0000EB   237 _PCA_CCAP1_L	=	0x00eb
                           0000FC   238 _PCA_CCAP2_H	=	0x00fc
                           0000EC   239 _PCA_CCAP2_L	=	0x00ec
                           00F9E9   240 _PCA_C	=	0xf9e9
                           0000F2   241 _PCA_PWM0	=	0x00f2
                           0000F3   242 _PCA_PWM1	=	0x00f3
                           0000F4   243 _PCA_PWM2	=	0x00f4
                           0000D8   244 _PCA_CCON	=	0x00d8
                           0000D9   245 _PCA_CMOD	=	0x00d9
                           000098   246 _UART_SCON	=	0x0098
                           000099   247 _UART_SBUF	=	0x0099
                           0000A9   248 _UART_SADDR	=	0x00a9
                           0000B9   249 _UART_SADEN	=	0x00b9
                           0000C2   250 _IAP_DATA	=	0x00c2
                           0000C3   251 _IAP_ADDRH	=	0x00c3
                           0000C4   252 _IAP_ADDRL	=	0x00c4
                           00C3C4   253 _IAP_ADDR	=	0xc3c4
                           0000C5   254 _IAP_CMD	=	0x00c5
                           0000C6   255 _IAP_TRIG	=	0x00c6
                           0000C7   256 _IAP_CONTR	=	0x00c7
                                    257 ;--------------------------------------------------------
                                    258 ; special function bits
                                    259 ;--------------------------------------------------------
                                    260 	.area RSEG    (ABS,DATA)
      000000                        261 	.org 0x0000
                           0000D0   262 _P	=	0x00d0
                           0000D1   263 _F1	=	0x00d1
                           0000D2   264 _OV	=	0x00d2
                           0000D3   265 _RS0	=	0x00d3
                           0000D4   266 _RS1	=	0x00d4
                           0000D5   267 _F0	=	0x00d5
                           0000D6   268 _AC	=	0x00d6
                           0000D7   269 _CY	=	0x00d7
                           000090   270 _PORT_P1_0	=	0x0090
                           000091   271 _PORT_P1_1	=	0x0091
                           000092   272 _PORT_P1_2	=	0x0092
                           000093   273 _PORT_P1_3	=	0x0093
                           000094   274 _PORT_P1_4	=	0x0094
                           000095   275 _PORT_P1_5	=	0x0095
                           000096   276 _PORT_P1_6	=	0x0096
                           000097   277 _PORT_P1_7	=	0x0097
                           0000A0   278 _PORT_P2_0	=	0x00a0
                           0000A1   279 _PORT_P2_1	=	0x00a1
                           0000A2   280 _PORT_P2_2	=	0x00a2
                           0000A3   281 _PORT_P2_3	=	0x00a3
                           0000A4   282 _PORT_P2_4	=	0x00a4
                           0000A5   283 _PORT_P2_5	=	0x00a5
                           0000A6   284 _PORT_P2_6	=	0x00a6
                           0000A7   285 _PORT_P2_7	=	0x00a7
                           0000B0   286 _PORT_P3_0	=	0x00b0
                           0000B1   287 _PORT_P3_1	=	0x00b1
                           0000B2   288 _PORT_P3_2	=	0x00b2
                           0000B3   289 _PORT_P3_3	=	0x00b3
                           0000B4   290 _PORT_P3_4	=	0x00b4
                           0000B5   291 _PORT_P3_5	=	0x00b5
                           0000B6   292 _PORT_P3_6	=	0x00b6
                           0000B7   293 _PORT_P3_7	=	0x00b7
                           0000C0   294 _PORT_P4_0	=	0x00c0
                           0000C1   295 _PORT_P4_1	=	0x00c1
                           0000C2   296 _PORT_P4_2	=	0x00c2
                           0000C3   297 _PORT_P4_3	=	0x00c3
                           0000C4   298 _PORT_P4_4	=	0x00c4
                           0000C5   299 _PORT_P4_5	=	0x00c5
                           0000C6   300 _PORT_P4_6	=	0x00c6
                           0000C7   301 _PORT_P4_7	=	0x00c7
                           0000C8   302 _PORT_P5_0	=	0x00c8
                           0000C9   303 _PORT_P5_1	=	0x00c9
                           0000CA   304 _PORT_P5_2	=	0x00ca
                           0000CB   305 _PORT_P5_3	=	0x00cb
                           0000CC   306 _PORT_P5_4	=	0x00cc
                           0000CD   307 _PORT_P5_5	=	0x00cd
                           0000CE   308 _PORT_P5_6	=	0x00ce
                           0000CD   309 _PORT_P5_7	=	0x00cd
                           0000A8   310 _INT_IE_EX0	=	0x00a8
                           0000A9   311 _INT_IE_ET0	=	0x00a9
                           0000AA   312 _INT_IE_EX1	=	0x00aa
                           0000AB   313 _INT_IE_ET1	=	0x00ab
                           0000AC   314 _INT_IE_ES	=	0x00ac
                           0000AD   315 _INT_IE_EADC	=	0x00ad
                           0000AE   316 _INT_IE_ELVD	=	0x00ae
                           0000AF   317 _INT_IE_EA	=	0x00af
                           0000B8   318 _INT_IP_PX0	=	0x00b8
                           0000B9   319 _INT_IP_PT0	=	0x00b9
                           0000BA   320 _INT_IP_PX1	=	0x00ba
                           0000BB   321 _INT_IP_PT1	=	0x00bb
                           0000BC   322 _INT_IP_PS	=	0x00bc
                           0000BD   323 _INT_IP_PADC	=	0x00bd
                           0000BE   324 _INT_IP_PLVD	=	0x00be
                           0000BF   325 _INT_IP_PPCA	=	0x00bf
                           000088   326 _TMR_TCON_IT0	=	0x0088
                           000089   327 _TMR_TCON_IE0	=	0x0089
                           00008A   328 _TMR_TCON_IT1	=	0x008a
                           00008B   329 _TMR_TCON_IE1	=	0x008b
                           00008C   330 _TMR_TCON_TR0	=	0x008c
                           00008D   331 _TMR_TCON_TF0	=	0x008d
                           00008E   332 _TMR_TCON_TR1	=	0x008e
                           00008F   333 _TMR_TCON_TF1	=	0x008f
                           0000D8   334 _PCA_CCF0	=	0x00d8
                           0000D9   335 _PCA_CCF1	=	0x00d9
                           0000DA   336 _PCA_CCF2	=	0x00da
                           0000DE   337 _PCA_CR	=	0x00de
                           0000DF   338 _PCA_CF	=	0x00df
                           000098   339 _UART_RI	=	0x0098
                           000099   340 _UART_TI	=	0x0099
                           00009A   341 _UART_RB8	=	0x009a
                           00009B   342 _UART_TB8	=	0x009b
                           00009C   343 _UART_REN	=	0x009c
                           00009D   344 _UART_SM2	=	0x009d
                           00009E   345 _UART_SM1	=	0x009e
                           00009E   346 _UART_SM0	=	0x009e
                                    347 ;--------------------------------------------------------
                                    348 ; overlayable register banks
                                    349 ;--------------------------------------------------------
                                    350 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        351 	.ds 8
                                    352 ;--------------------------------------------------------
                                    353 ; internal ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area DSEG    (DATA)
                           000021   356 _DS1302_DATA	=	0x0021
      000034                        357 _alarm_counter::
      000034                        358 	.ds 2
      000036                        359 _ISR_T2_cnt_1_85:
      000036                        360 	.ds 1
                                    361 ;--------------------------------------------------------
                                    362 ; overlayable items in internal ram 
                                    363 ;--------------------------------------------------------
                                    364 ;--------------------------------------------------------
                                    365 ; indirectly addressable internal ram data
                                    366 ;--------------------------------------------------------
                                    367 	.area ISEG    (DATA)
                                    368 ;--------------------------------------------------------
                                    369 ; absolute internal ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area IABS    (ABS,DATA)
                                    372 	.area IABS    (ABS,DATA)
                                    373 ;--------------------------------------------------------
                                    374 ; bit data
                                    375 ;--------------------------------------------------------
                                    376 	.area BSEG    (BIT)
                           000008   377 _DS1302_DATA_0	=	0x0008
                           000009   378 _DS1302_DATA_1	=	0x0009
                           00000A   379 _DS1302_DATA_2	=	0x000a
                           00000B   380 _DS1302_DATA_3	=	0x000b
                           00000C   381 _DS1302_DATA_4	=	0x000c
                           00000D   382 _DS1302_DATA_5	=	0x000d
                           00000E   383 _DS1302_DATA_6	=	0x000e
                           00000F   384 _DS1302_DATA_7	=	0x000f
                                    385 ;--------------------------------------------------------
                                    386 ; paged external ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area PSEG    (PAG,XDATA)
                                    389 ;--------------------------------------------------------
                                    390 ; external ram data
                                    391 ;--------------------------------------------------------
                                    392 	.area XSEG    (XDATA)
                           000004   393 _alarms	=	0x0004
                                    394 ;--------------------------------------------------------
                                    395 ; absolute external ram data
                                    396 ;--------------------------------------------------------
                                    397 	.area XABS    (ABS,XDATA)
                                    398 ;--------------------------------------------------------
                                    399 ; external initialized ram data
                                    400 ;--------------------------------------------------------
                                    401 	.area XISEG   (XDATA)
                                    402 	.area HOME    (CODE)
                                    403 	.area GSINIT0 (CODE)
                                    404 	.area GSINIT1 (CODE)
                                    405 	.area GSINIT2 (CODE)
                                    406 	.area GSINIT3 (CODE)
                                    407 	.area GSINIT4 (CODE)
                                    408 	.area GSINIT5 (CODE)
                                    409 	.area GSINIT  (CODE)
                                    410 	.area GSFINAL (CODE)
                                    411 	.area CSEG    (CODE)
                                    412 ;--------------------------------------------------------
                                    413 ; global & static initialisations
                                    414 ;--------------------------------------------------------
                                    415 	.area HOME    (CODE)
                                    416 	.area GSINIT  (CODE)
                                    417 	.area GSFINAL (CODE)
                                    418 	.area GSINIT  (CODE)
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'ISR_T2'
                                    421 ;------------------------------------------------------------
                                    422 ;cnt                       Allocated with name '_ISR_T2_cnt_1_85'
                                    423 ;------------------------------------------------------------
                                    424 ;	../alarm.c:12: static uint8_t cnt = 15;
      0000C4 75 36 0F         [24]  425 	mov	_ISR_T2_cnt_1_85,#0x0f
                                    426 ;--------------------------------------------------------
                                    427 ; Home
                                    428 ;--------------------------------------------------------
                                    429 	.area HOME    (CODE)
                                    430 	.area HOME    (CODE)
                                    431 ;--------------------------------------------------------
                                    432 ; code
                                    433 ;--------------------------------------------------------
                                    434 	.area CSEG    (CODE)
                                    435 ;------------------------------------------------------------
                                    436 ;Allocation info for local variables in function 'ISR_T2'
                                    437 ;------------------------------------------------------------
                                    438 ;cnt                       Allocated with name '_ISR_T2_cnt_1_85'
                                    439 ;------------------------------------------------------------
                                    440 ;	../alarm.c:11: void ISR_T2() __interrupt(INT_T2) __using(0) {
                                    441 ;	-----------------------------------------
                                    442 ;	 function ISR_T2
                                    443 ;	-----------------------------------------
      00049E                        444 _ISR_T2:
                           000007   445 	ar7 = 0x07
                           000006   446 	ar6 = 0x06
                           000005   447 	ar5 = 0x05
                           000004   448 	ar4 = 0x04
                           000003   449 	ar3 = 0x03
                           000002   450 	ar2 = 0x02
                           000001   451 	ar1 = 0x01
                           000000   452 	ar0 = 0x00
      00049E C0 E0            [24]  453 	push	acc
      0004A0 C0 D0            [24]  454 	push	psw
                                    455 ;	../alarm.c:13: INT_IE_EA = 0;	//Guard against display interrupt modifying state
                                    456 ;	assignBit
      0004A2 C2 AF            [12]  457 	clr	_INT_IE_EA
                                    458 ;	../alarm.c:14: if(cnt > 7 && (alarm_counter < ALARM_MAX_TIME))
      0004A4 E5 36            [12]  459 	mov	a,_ISR_T2_cnt_1_85
      0004A6 24 F8            [12]  460 	add	a,#0xff - 0x07
      0004A8 50 0F            [24]  461 	jnc	00102$
      0004AA C3               [12]  462 	clr	c
      0004AB E5 34            [12]  463 	mov	a,_alarm_counter
      0004AD 94 28            [12]  464 	subb	a,#0x28
      0004AF E5 35            [12]  465 	mov	a,(_alarm_counter + 1)
      0004B1 94 23            [12]  466 	subb	a,#0x23
      0004B3 50 04            [24]  467 	jnc	00102$
                                    468 ;	../alarm.c:15: ALARM_BUZZER_DRIVE_ACTIVE();
                                    469 ;	assignBit
      0004B5 C2 95            [12]  470 	clr	_PORT_P1_5
      0004B7 80 02            [24]  471 	sjmp	00103$
      0004B9                        472 00102$:
                                    473 ;	../alarm.c:17: ALARM_BUZZER_DRIVE_INACTIVE();
                                    474 ;	assignBit
      0004B9 D2 95            [12]  475 	setb	_PORT_P1_5
      0004BB                        476 00103$:
                                    477 ;	../alarm.c:18: INT_IE_EA = 1;
                                    478 ;	assignBit
      0004BB D2 AF            [12]  479 	setb	_INT_IE_EA
                                    480 ;	../alarm.c:19: if((--cnt) == 0)
      0004BD D5 36 03         [24]  481 	djnz	_ISR_T2_cnt_1_85,00106$
                                    482 ;	../alarm.c:20: cnt = 15;
      0004C0 75 36 0F         [24]  483 	mov	_ISR_T2_cnt_1_85,#0x0f
      0004C3                        484 00106$:
                                    485 ;	../alarm.c:21: if(alarm_counter < ALARM_MAX_TIME)
      0004C3 C3               [12]  486 	clr	c
      0004C4 E5 34            [12]  487 	mov	a,_alarm_counter
      0004C6 94 28            [12]  488 	subb	a,#0x28
      0004C8 E5 35            [12]  489 	mov	a,(_alarm_counter + 1)
      0004CA 94 23            [12]  490 	subb	a,#0x23
      0004CC 50 0B            [24]  491 	jnc	00109$
                                    492 ;	../alarm.c:22: alarm_counter++;
      0004CE 74 01            [12]  493 	mov	a,#0x01
      0004D0 25 34            [12]  494 	add	a,_alarm_counter
      0004D2 F5 34            [12]  495 	mov	_alarm_counter,a
      0004D4 E4               [12]  496 	clr	a
      0004D5 35 35            [12]  497 	addc	a,(_alarm_counter + 1)
      0004D7 F5 35            [12]  498 	mov	(_alarm_counter + 1),a
      0004D9                        499 00109$:
      0004D9 D0 D0            [24]  500 	pop	psw
      0004DB D0 E0            [24]  501 	pop	acc
      0004DD 32               [24]  502 	reti
                                    503 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    504 ;	eliminated unneeded push/pop dpl
                                    505 ;	eliminated unneeded push/pop dph
                                    506 ;	eliminated unneeded push/pop b
                                    507 	.area CSEG    (CODE)
                                    508 	.area CONST   (CODE)
                                    509 	.area XINIT   (CODE)
                                    510 	.area CABS    (ABS,CODE)
