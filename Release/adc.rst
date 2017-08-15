                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #9959 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ISR_ADC
                                     12 	.globl _eeprom_end
                                     13 	.globl _eeprom_write
                                     14 	.globl _eeprom_erase
                                     15 	.globl _eeprom_start
                                     16 	.globl _UART_SM0
                                     17 	.globl _UART_SM1
                                     18 	.globl _UART_SM2
                                     19 	.globl _UART_REN
                                     20 	.globl _UART_TB8
                                     21 	.globl _UART_RB8
                                     22 	.globl _UART_TI
                                     23 	.globl _UART_RI
                                     24 	.globl _PCA_CF
                                     25 	.globl _PCA_CR
                                     26 	.globl _PCA_CCF2
                                     27 	.globl _PCA_CCF1
                                     28 	.globl _PCA_CCF0
                                     29 	.globl _TMR_TCON_TF1
                                     30 	.globl _TMR_TCON_TR1
                                     31 	.globl _TMR_TCON_TF0
                                     32 	.globl _TMR_TCON_TR0
                                     33 	.globl _TMR_TCON_IE1
                                     34 	.globl _TMR_TCON_IT1
                                     35 	.globl _TMR_TCON_IE0
                                     36 	.globl _TMR_TCON_IT0
                                     37 	.globl _INT_IP_PPCA
                                     38 	.globl _INT_IP_PLVD
                                     39 	.globl _INT_IP_PADC
                                     40 	.globl _INT_IP_PS
                                     41 	.globl _INT_IP_PT1
                                     42 	.globl _INT_IP_PX1
                                     43 	.globl _INT_IP_PT0
                                     44 	.globl _INT_IP_PX0
                                     45 	.globl _INT_IE_EA
                                     46 	.globl _INT_IE_ELVD
                                     47 	.globl _INT_IE_EADC
                                     48 	.globl _INT_IE_ES
                                     49 	.globl _INT_IE_ET1
                                     50 	.globl _INT_IE_EX1
                                     51 	.globl _INT_IE_ET0
                                     52 	.globl _INT_IE_EX0
                                     53 	.globl _PORT_P5_7
                                     54 	.globl _PORT_P5_6
                                     55 	.globl _PORT_P5_5
                                     56 	.globl _PORT_P5_4
                                     57 	.globl _PORT_P5_3
                                     58 	.globl _PORT_P5_2
                                     59 	.globl _PORT_P5_1
                                     60 	.globl _PORT_P5_0
                                     61 	.globl _PORT_P4_7
                                     62 	.globl _PORT_P4_6
                                     63 	.globl _PORT_P4_5
                                     64 	.globl _PORT_P4_4
                                     65 	.globl _PORT_P4_3
                                     66 	.globl _PORT_P4_2
                                     67 	.globl _PORT_P4_1
                                     68 	.globl _PORT_P4_0
                                     69 	.globl _PORT_P3_7
                                     70 	.globl _PORT_P3_6
                                     71 	.globl _PORT_P3_5
                                     72 	.globl _PORT_P3_4
                                     73 	.globl _PORT_P3_3
                                     74 	.globl _PORT_P3_2
                                     75 	.globl _PORT_P3_1
                                     76 	.globl _PORT_P3_0
                                     77 	.globl _PORT_P2_7
                                     78 	.globl _PORT_P2_6
                                     79 	.globl _PORT_P2_5
                                     80 	.globl _PORT_P2_4
                                     81 	.globl _PORT_P2_3
                                     82 	.globl _PORT_P2_2
                                     83 	.globl _PORT_P2_1
                                     84 	.globl _PORT_P2_0
                                     85 	.globl _PORT_P1_7
                                     86 	.globl _PORT_P1_6
                                     87 	.globl _PORT_P1_5
                                     88 	.globl _PORT_P1_4
                                     89 	.globl _PORT_P1_3
                                     90 	.globl _PORT_P1_2
                                     91 	.globl _PORT_P1_1
                                     92 	.globl _PORT_P1_0
                                     93 	.globl _CY
                                     94 	.globl _AC
                                     95 	.globl _F0
                                     96 	.globl _RS1
                                     97 	.globl _RS0
                                     98 	.globl _OV
                                     99 	.globl _F1
                                    100 	.globl _P
                                    101 	.globl _IAP_CONTR
                                    102 	.globl _IAP_TRIG
                                    103 	.globl _IAP_CMD
                                    104 	.globl _IAP_ADDR
                                    105 	.globl _IAP_ADDRL
                                    106 	.globl _IAP_ADDRH
                                    107 	.globl _IAP_DATA
                                    108 	.globl _UART_SADEN
                                    109 	.globl _UART_SADDR
                                    110 	.globl _UART_SBUF
                                    111 	.globl _UART_SCON
                                    112 	.globl _PCA_CMOD
                                    113 	.globl _PCA_CCON
                                    114 	.globl _PCA_PWM2
                                    115 	.globl _PCA_PWM1
                                    116 	.globl _PCA_PWM0
                                    117 	.globl _PCA_C
                                    118 	.globl _PCA_CCAP2_L
                                    119 	.globl _PCA_CCAP2_H
                                    120 	.globl _PCA_CCAP1_L
                                    121 	.globl _PCA_CCAP1_H
                                    122 	.globl _PCA_CCAP0_L
                                    123 	.globl _PCA_CCAP0_H
                                    124 	.globl _PCA_CCAP2
                                    125 	.globl _PCA_CCAP1
                                    126 	.globl _PCA_CCAP0
                                    127 	.globl _PCA_CCAPM2
                                    128 	.globl _PCA_CCAPM1
                                    129 	.globl _PCA_CCAPM0
                                    130 	.globl _CMP_CR2
                                    131 	.globl _CMP_CR1
                                    132 	.globl _ADC_RESL
                                    133 	.globl _ADC_RESH
                                    134 	.globl _ADC_RES
                                    135 	.globl _ADC_CONTR
                                    136 	.globl _ADC_P1ASF
                                    137 	.globl _EEPROM_CONTR
                                    138 	.globl _EEPROM_TRIG
                                    139 	.globl _EEPROM_CMD
                                    140 	.globl _EEPROM_ADDR
                                    141 	.globl _EEPROM_DATA
                                    142 	.globl _TMR_T2
                                    143 	.globl _TMR_T0
                                    144 	.globl _TMR_TMOD
                                    145 	.globl _TMR_TCON
                                    146 	.globl _INT_IP2
                                    147 	.globl _INT_IP
                                    148 	.globl _INT_IE2
                                    149 	.globl _INT_IE
                                    150 	.globl _PORT_P5M0
                                    151 	.globl _PORT_P5M1
                                    152 	.globl _PORT_P4M0
                                    153 	.globl _PORT_P4M1
                                    154 	.globl _PORT_P3M0
                                    155 	.globl _PORT_P3M1
                                    156 	.globl _PORT_P2M0
                                    157 	.globl _PORT_P2M1
                                    158 	.globl _PORT_P1M0
                                    159 	.globl _PORT_P1M1
                                    160 	.globl _PORT_P5
                                    161 	.globl _PORT_P4
                                    162 	.globl _PORT_P3
                                    163 	.globl _PORT_P2
                                    164 	.globl _PORT_P1
                                    165 	.globl _PSW
                                    166 	.globl _PCON2
                                    167 	.globl _AUXR2
                                    168 	.globl _AUXR1
                                    169 	.globl _AUXR
                                    170 	.globl _PCON
                                    171 	.globl _DPTR
                                    172 	.globl _SP
                                    173 	.globl _display_autobrightness
                                    174 	.globl _DS1302_DATA_7
                                    175 	.globl _DS1302_DATA_6
                                    176 	.globl _DS1302_DATA_5
                                    177 	.globl _DS1302_DATA_4
                                    178 	.globl _DS1302_DATA_3
                                    179 	.globl _DS1302_DATA_2
                                    180 	.globl _DS1302_DATA_1
                                    181 	.globl _DS1302_DATA_0
                                    182 	.globl _adc_calibrate_LDR_PARM_2
                                    183 	.globl _adc_thermistor_reading
                                    184 	.globl _adc_ldr_reading
                                    185 	.globl _DS1302_DATA
                                    186 	.globl _adc_calibrate_LDR
                                    187 ;--------------------------------------------------------
                                    188 ; special function registers
                                    189 ;--------------------------------------------------------
                                    190 	.area RSEG    (ABS,DATA)
      000000                        191 	.org 0x0000
                           000081   192 _SP	=	0x0081
                           008382   193 _DPTR	=	0x8382
                           000087   194 _PCON	=	0x0087
                           00008E   195 _AUXR	=	0x008e
                           0000A2   196 _AUXR1	=	0x00a2
                           00008F   197 _AUXR2	=	0x008f
                           000097   198 _PCON2	=	0x0097
                           0000D0   199 _PSW	=	0x00d0
                           000090   200 _PORT_P1	=	0x0090
                           0000A0   201 _PORT_P2	=	0x00a0
                           0000B0   202 _PORT_P3	=	0x00b0
                           0000C0   203 _PORT_P4	=	0x00c0
                           0000C8   204 _PORT_P5	=	0x00c8
                           000091   205 _PORT_P1M1	=	0x0091
                           000092   206 _PORT_P1M0	=	0x0092
                           000095   207 _PORT_P2M1	=	0x0095
                           000096   208 _PORT_P2M0	=	0x0096
                           0000B1   209 _PORT_P3M1	=	0x00b1
                           0000B2   210 _PORT_P3M0	=	0x00b2
                           0000B3   211 _PORT_P4M1	=	0x00b3
                           0000B4   212 _PORT_P4M0	=	0x00b4
                           0000C9   213 _PORT_P5M1	=	0x00c9
                           0000CA   214 _PORT_P5M0	=	0x00ca
                           0000A8   215 _INT_IE	=	0x00a8
                           0000AF   216 _INT_IE2	=	0x00af
                           0000B8   217 _INT_IP	=	0x00b8
                           0000B5   218 _INT_IP2	=	0x00b5
                           000088   219 _TMR_TCON	=	0x0088
                           000089   220 _TMR_TMOD	=	0x0089
                           008C8A   221 _TMR_T0	=	0x8c8a
                           00D6D7   222 _TMR_T2	=	0xd6d7
                           0000C2   223 _EEPROM_DATA	=	0x00c2
                           00C3C4   224 _EEPROM_ADDR	=	0xc3c4
                           0000C5   225 _EEPROM_CMD	=	0x00c5
                           0000C6   226 _EEPROM_TRIG	=	0x00c6
                           0000C7   227 _EEPROM_CONTR	=	0x00c7
                           00009D   228 _ADC_P1ASF	=	0x009d
                           0000BC   229 _ADC_CONTR	=	0x00bc
                           00BDBE   230 _ADC_RES	=	0xbdbe
                           0000BD   231 _ADC_RESH	=	0x00bd
                           0000BE   232 _ADC_RESL	=	0x00be
                           0000E6   233 _CMP_CR1	=	0x00e6
                           0000E7   234 _CMP_CR2	=	0x00e7
                           0000DA   235 _PCA_CCAPM0	=	0x00da
                           0000DB   236 _PCA_CCAPM1	=	0x00db
                           0000DC   237 _PCA_CCAPM2	=	0x00dc
                           00FAEA   238 _PCA_CCAP0	=	0xfaea
                           00FBEB   239 _PCA_CCAP1	=	0xfbeb
                           00FCEC   240 _PCA_CCAP2	=	0xfcec
                           0000FA   241 _PCA_CCAP0_H	=	0x00fa
                           0000EA   242 _PCA_CCAP0_L	=	0x00ea
                           0000FB   243 _PCA_CCAP1_H	=	0x00fb
                           0000EB   244 _PCA_CCAP1_L	=	0x00eb
                           0000FC   245 _PCA_CCAP2_H	=	0x00fc
                           0000EC   246 _PCA_CCAP2_L	=	0x00ec
                           00F9E9   247 _PCA_C	=	0xf9e9
                           0000F2   248 _PCA_PWM0	=	0x00f2
                           0000F3   249 _PCA_PWM1	=	0x00f3
                           0000F4   250 _PCA_PWM2	=	0x00f4
                           0000D8   251 _PCA_CCON	=	0x00d8
                           0000D9   252 _PCA_CMOD	=	0x00d9
                           000098   253 _UART_SCON	=	0x0098
                           000099   254 _UART_SBUF	=	0x0099
                           0000A9   255 _UART_SADDR	=	0x00a9
                           0000B9   256 _UART_SADEN	=	0x00b9
                           0000C2   257 _IAP_DATA	=	0x00c2
                           0000C3   258 _IAP_ADDRH	=	0x00c3
                           0000C4   259 _IAP_ADDRL	=	0x00c4
                           00C3C4   260 _IAP_ADDR	=	0xc3c4
                           0000C5   261 _IAP_CMD	=	0x00c5
                           0000C6   262 _IAP_TRIG	=	0x00c6
                           0000C7   263 _IAP_CONTR	=	0x00c7
                                    264 ;--------------------------------------------------------
                                    265 ; special function bits
                                    266 ;--------------------------------------------------------
                                    267 	.area RSEG    (ABS,DATA)
      000000                        268 	.org 0x0000
                           0000D0   269 _P	=	0x00d0
                           0000D1   270 _F1	=	0x00d1
                           0000D2   271 _OV	=	0x00d2
                           0000D3   272 _RS0	=	0x00d3
                           0000D4   273 _RS1	=	0x00d4
                           0000D5   274 _F0	=	0x00d5
                           0000D6   275 _AC	=	0x00d6
                           0000D7   276 _CY	=	0x00d7
                           000090   277 _PORT_P1_0	=	0x0090
                           000091   278 _PORT_P1_1	=	0x0091
                           000092   279 _PORT_P1_2	=	0x0092
                           000093   280 _PORT_P1_3	=	0x0093
                           000094   281 _PORT_P1_4	=	0x0094
                           000095   282 _PORT_P1_5	=	0x0095
                           000096   283 _PORT_P1_6	=	0x0096
                           000097   284 _PORT_P1_7	=	0x0097
                           0000A0   285 _PORT_P2_0	=	0x00a0
                           0000A1   286 _PORT_P2_1	=	0x00a1
                           0000A2   287 _PORT_P2_2	=	0x00a2
                           0000A3   288 _PORT_P2_3	=	0x00a3
                           0000A4   289 _PORT_P2_4	=	0x00a4
                           0000A5   290 _PORT_P2_5	=	0x00a5
                           0000A6   291 _PORT_P2_6	=	0x00a6
                           0000A7   292 _PORT_P2_7	=	0x00a7
                           0000B0   293 _PORT_P3_0	=	0x00b0
                           0000B1   294 _PORT_P3_1	=	0x00b1
                           0000B2   295 _PORT_P3_2	=	0x00b2
                           0000B3   296 _PORT_P3_3	=	0x00b3
                           0000B4   297 _PORT_P3_4	=	0x00b4
                           0000B5   298 _PORT_P3_5	=	0x00b5
                           0000B6   299 _PORT_P3_6	=	0x00b6
                           0000B7   300 _PORT_P3_7	=	0x00b7
                           0000C0   301 _PORT_P4_0	=	0x00c0
                           0000C1   302 _PORT_P4_1	=	0x00c1
                           0000C2   303 _PORT_P4_2	=	0x00c2
                           0000C3   304 _PORT_P4_3	=	0x00c3
                           0000C4   305 _PORT_P4_4	=	0x00c4
                           0000C5   306 _PORT_P4_5	=	0x00c5
                           0000C6   307 _PORT_P4_6	=	0x00c6
                           0000C7   308 _PORT_P4_7	=	0x00c7
                           0000C8   309 _PORT_P5_0	=	0x00c8
                           0000C9   310 _PORT_P5_1	=	0x00c9
                           0000CA   311 _PORT_P5_2	=	0x00ca
                           0000CB   312 _PORT_P5_3	=	0x00cb
                           0000CC   313 _PORT_P5_4	=	0x00cc
                           0000CD   314 _PORT_P5_5	=	0x00cd
                           0000CE   315 _PORT_P5_6	=	0x00ce
                           0000CD   316 _PORT_P5_7	=	0x00cd
                           0000A8   317 _INT_IE_EX0	=	0x00a8
                           0000A9   318 _INT_IE_ET0	=	0x00a9
                           0000AA   319 _INT_IE_EX1	=	0x00aa
                           0000AB   320 _INT_IE_ET1	=	0x00ab
                           0000AC   321 _INT_IE_ES	=	0x00ac
                           0000AD   322 _INT_IE_EADC	=	0x00ad
                           0000AE   323 _INT_IE_ELVD	=	0x00ae
                           0000AF   324 _INT_IE_EA	=	0x00af
                           0000B8   325 _INT_IP_PX0	=	0x00b8
                           0000B9   326 _INT_IP_PT0	=	0x00b9
                           0000BA   327 _INT_IP_PX1	=	0x00ba
                           0000BB   328 _INT_IP_PT1	=	0x00bb
                           0000BC   329 _INT_IP_PS	=	0x00bc
                           0000BD   330 _INT_IP_PADC	=	0x00bd
                           0000BE   331 _INT_IP_PLVD	=	0x00be
                           0000BF   332 _INT_IP_PPCA	=	0x00bf
                           000088   333 _TMR_TCON_IT0	=	0x0088
                           000089   334 _TMR_TCON_IE0	=	0x0089
                           00008A   335 _TMR_TCON_IT1	=	0x008a
                           00008B   336 _TMR_TCON_IE1	=	0x008b
                           00008C   337 _TMR_TCON_TR0	=	0x008c
                           00008D   338 _TMR_TCON_TF0	=	0x008d
                           00008E   339 _TMR_TCON_TR1	=	0x008e
                           00008F   340 _TMR_TCON_TF1	=	0x008f
                           0000D8   341 _PCA_CCF0	=	0x00d8
                           0000D9   342 _PCA_CCF1	=	0x00d9
                           0000DA   343 _PCA_CCF2	=	0x00da
                           0000DE   344 _PCA_CR	=	0x00de
                           0000DF   345 _PCA_CF	=	0x00df
                           000098   346 _UART_RI	=	0x0098
                           000099   347 _UART_TI	=	0x0099
                           00009A   348 _UART_RB8	=	0x009a
                           00009B   349 _UART_TB8	=	0x009b
                           00009C   350 _UART_REN	=	0x009c
                           00009D   351 _UART_SM2	=	0x009d
                           00009E   352 _UART_SM1	=	0x009e
                           00009E   353 _UART_SM0	=	0x009e
                                    354 ;--------------------------------------------------------
                                    355 ; overlayable register banks
                                    356 ;--------------------------------------------------------
                                    357 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        358 	.ds 8
                                    359 	.area REG_BANK_3	(REL,OVR,DATA)
      000018                        360 	.ds 8
                                    361 ;--------------------------------------------------------
                                    362 ; overlayable bit register bank
                                    363 ;--------------------------------------------------------
                                    364 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        365 bits:
      000020                        366 	.ds 1
                           008000   367 	b0 = bits[0]
                           008100   368 	b1 = bits[1]
                           008200   369 	b2 = bits[2]
                           008300   370 	b3 = bits[3]
                           008400   371 	b4 = bits[4]
                           008500   372 	b5 = bits[5]
                           008600   373 	b6 = bits[6]
                           008700   374 	b7 = bits[7]
                                    375 ;--------------------------------------------------------
                                    376 ; internal ram data
                                    377 ;--------------------------------------------------------
                                    378 	.area DSEG    (DATA)
                           000021   379 _DS1302_DATA	=	0x0021
      000024                        380 _adc_ldr_reading::
      000024                        381 	.ds 2
      000026                        382 _adc_thermistor_reading::
      000026                        383 	.ds 2
      000028                        384 _adc_calibrate_LDR_PARM_2:
      000028                        385 	.ds 2
      00002A                        386 _adc_calibrate_LDR_ldr_min_1_154:
      00002A                        387 	.ds 2
      00002C                        388 _adc_calibrate_LDR_gradient_1_155:
      00002C                        389 	.ds 4
      000030                        390 _adc_calibrate_LDR_intercept_1_155:
      000030                        391 	.ds 4
                                    392 ;--------------------------------------------------------
                                    393 ; overlayable items in internal ram 
                                    394 ;--------------------------------------------------------
                                    395 ;--------------------------------------------------------
                                    396 ; indirectly addressable internal ram data
                                    397 ;--------------------------------------------------------
                                    398 	.area ISEG    (DATA)
                                    399 ;--------------------------------------------------------
                                    400 ; absolute internal ram data
                                    401 ;--------------------------------------------------------
                                    402 	.area IABS    (ABS,DATA)
                                    403 	.area IABS    (ABS,DATA)
                                    404 ;--------------------------------------------------------
                                    405 ; bit data
                                    406 ;--------------------------------------------------------
                                    407 	.area BSEG    (BIT)
                           000008   408 _DS1302_DATA_0	=	0x0008
                           000009   409 _DS1302_DATA_1	=	0x0009
                           00000A   410 _DS1302_DATA_2	=	0x000a
                           00000B   411 _DS1302_DATA_3	=	0x000b
                           00000C   412 _DS1302_DATA_4	=	0x000c
                           00000D   413 _DS1302_DATA_5	=	0x000d
                           00000E   414 _DS1302_DATA_6	=	0x000e
                           00000F   415 _DS1302_DATA_7	=	0x000f
                           00001F   416 _display_autobrightness	=	0x001f
                                    417 ;--------------------------------------------------------
                                    418 ; paged external ram data
                                    419 ;--------------------------------------------------------
                                    420 	.area PSEG    (PAG,XDATA)
                                    421 ;--------------------------------------------------------
                                    422 ; external ram data
                                    423 ;--------------------------------------------------------
                                    424 	.area XSEG    (XDATA)
                                    425 ;--------------------------------------------------------
                                    426 ; absolute external ram data
                                    427 ;--------------------------------------------------------
                                    428 	.area XABS    (ABS,XDATA)
                                    429 ;--------------------------------------------------------
                                    430 ; external initialized ram data
                                    431 ;--------------------------------------------------------
                                    432 	.area XISEG   (XDATA)
                                    433 	.area HOME    (CODE)
                                    434 	.area GSINIT0 (CODE)
                                    435 	.area GSINIT1 (CODE)
                                    436 	.area GSINIT2 (CODE)
                                    437 	.area GSINIT3 (CODE)
                                    438 	.area GSINIT4 (CODE)
                                    439 	.area GSINIT5 (CODE)
                                    440 	.area GSINIT  (CODE)
                                    441 	.area GSFINAL (CODE)
                                    442 	.area CSEG    (CODE)
                                    443 ;--------------------------------------------------------
                                    444 ; global & static initialisations
                                    445 ;--------------------------------------------------------
                                    446 	.area HOME    (CODE)
                                    447 	.area GSINIT  (CODE)
                                    448 	.area GSFINAL (CODE)
                                    449 	.area GSINIT  (CODE)
                                    450 ;--------------------------------------------------------
                                    451 ; Home
                                    452 ;--------------------------------------------------------
                                    453 	.area HOME    (CODE)
                                    454 	.area HOME    (CODE)
                                    455 ;--------------------------------------------------------
                                    456 ; code
                                    457 ;--------------------------------------------------------
                                    458 	.area CSEG    (CODE)
                                    459 ;------------------------------------------------------------
                                    460 ;Allocation info for local variables in function 'adc_calibrate_LDR'
                                    461 ;------------------------------------------------------------
                                    462 ;ldr_max                   Allocated with name '_adc_calibrate_LDR_PARM_2'
                                    463 ;ldr_min                   Allocated with name '_adc_calibrate_LDR_ldr_min_1_154'
                                    464 ;gradient                  Allocated with name '_adc_calibrate_LDR_gradient_1_155'
                                    465 ;intercept                 Allocated with name '_adc_calibrate_LDR_intercept_1_155'
                                    466 ;i                         Allocated to registers r0 r1 
                                    467 ;------------------------------------------------------------
                                    468 ;	../adc.c:13: void adc_calibrate_LDR(uint16_t ldr_min,uint16_t ldr_max) {
                                    469 ;	-----------------------------------------
                                    470 ;	 function adc_calibrate_LDR
                                    471 ;	-----------------------------------------
      000101                        472 _adc_calibrate_LDR:
                           000007   473 	ar7 = 0x07
                           000006   474 	ar6 = 0x06
                           000005   475 	ar5 = 0x05
                           000004   476 	ar4 = 0x04
                           000003   477 	ar3 = 0x03
                           000002   478 	ar2 = 0x02
                           000001   479 	ar1 = 0x01
                           000000   480 	ar0 = 0x00
      000101 85 82 2A         [24]  481 	mov	_adc_calibrate_LDR_ldr_min_1_154,dpl
      000104 85 83 2B         [24]  482 	mov	(_adc_calibrate_LDR_ldr_min_1_154 + 1),dph
                                    483 ;	../adc.c:14: float gradient = (((float)(DISPLAY_COUNTS_RANGE))/((-1.00f)*(float)(ldr_max - ldr_min)));
      000107 E5 28            [12]  484 	mov	a,_adc_calibrate_LDR_PARM_2
      000109 C3               [12]  485 	clr	c
      00010A 95 2A            [12]  486 	subb	a,_adc_calibrate_LDR_ldr_min_1_154
      00010C F5 82            [12]  487 	mov	dpl,a
      00010E E5 29            [12]  488 	mov	a,(_adc_calibrate_LDR_PARM_2 + 1)
      000110 95 2B            [12]  489 	subb	a,(_adc_calibrate_LDR_ldr_min_1_154 + 1)
      000112 F5 83            [12]  490 	mov	dph,a
      000114 12 1C A2         [24]  491 	lcall	___uint2fs
      000117 AA 82            [24]  492 	mov	r2,dpl
      000119 AB 83            [24]  493 	mov	r3,dph
      00011B AC F0            [24]  494 	mov	r4,b
      00011D B2 E7            [12]  495 	cpl	acc.7
      00011F FD               [12]  496 	mov	r5,a
      000120 C0 02            [24]  497 	push	ar2
      000122 C0 03            [24]  498 	push	ar3
      000124 C0 04            [24]  499 	push	ar4
      000126 C0 05            [24]  500 	push	ar5
      000128 90 D4 00         [24]  501 	mov	dptr,#0xd400
      00012B 75 F0 68         [24]  502 	mov	b,#0x68
      00012E 74 47            [12]  503 	mov	a,#0x47
      000130 12 1D 22         [24]  504 	lcall	___fsdiv
      000133 85 82 2C         [24]  505 	mov	_adc_calibrate_LDR_gradient_1_155,dpl
      000136 85 83 2D         [24]  506 	mov	(_adc_calibrate_LDR_gradient_1_155 + 1),dph
      000139 85 F0 2E         [24]  507 	mov	(_adc_calibrate_LDR_gradient_1_155 + 2),b
      00013C F5 2F            [12]  508 	mov	(_adc_calibrate_LDR_gradient_1_155 + 3),a
      00013E E5 81            [12]  509 	mov	a,sp
      000140 24 FC            [12]  510 	add	a,#0xfc
      000142 F5 81            [12]  511 	mov	sp,a
                                    512 ;	../adc.c:15: float intercept = ((float)DISPLAY_COUNTS_MAX - gradient*((float)ldr_min));
      000144 85 2A 82         [24]  513 	mov	dpl,_adc_calibrate_LDR_ldr_min_1_154
      000147 85 2B 83         [24]  514 	mov	dph,(_adc_calibrate_LDR_ldr_min_1_154 + 1)
      00014A 12 1C A2         [24]  515 	lcall	___uint2fs
      00014D A8 82            [24]  516 	mov	r0,dpl
      00014F A9 83            [24]  517 	mov	r1,dph
      000151 AC F0            [24]  518 	mov	r4,b
      000153 FD               [12]  519 	mov	r5,a
      000154 C0 00            [24]  520 	push	ar0
      000156 C0 01            [24]  521 	push	ar1
      000158 C0 04            [24]  522 	push	ar4
      00015A C0 05            [24]  523 	push	ar5
      00015C 85 2C 82         [24]  524 	mov	dpl,_adc_calibrate_LDR_gradient_1_155
      00015F 85 2D 83         [24]  525 	mov	dph,(_adc_calibrate_LDR_gradient_1_155 + 1)
      000162 85 2E F0         [24]  526 	mov	b,(_adc_calibrate_LDR_gradient_1_155 + 2)
      000165 E5 2F            [12]  527 	mov	a,(_adc_calibrate_LDR_gradient_1_155 + 3)
      000167 12 1A B8         [24]  528 	lcall	___fsmul
      00016A AA 82            [24]  529 	mov	r2,dpl
      00016C AB 83            [24]  530 	mov	r3,dph
      00016E AC F0            [24]  531 	mov	r4,b
      000170 FD               [12]  532 	mov	r5,a
      000171 E5 81            [12]  533 	mov	a,sp
      000173 24 FC            [12]  534 	add	a,#0xfc
      000175 F5 81            [12]  535 	mov	sp,a
      000177 C0 02            [24]  536 	push	ar2
      000179 C0 03            [24]  537 	push	ar3
      00017B C0 04            [24]  538 	push	ar4
      00017D C0 05            [24]  539 	push	ar5
      00017F 90 00 00         [24]  540 	mov	dptr,#0x0000
      000182 75 F0 6A         [24]  541 	mov	b,#0x6a
      000185 74 47            [12]  542 	mov	a,#0x47
      000187 12 1A AD         [24]  543 	lcall	___fssub
      00018A 85 82 30         [24]  544 	mov	_adc_calibrate_LDR_intercept_1_155,dpl
      00018D 85 83 31         [24]  545 	mov	(_adc_calibrate_LDR_intercept_1_155 + 1),dph
      000190 85 F0 32         [24]  546 	mov	(_adc_calibrate_LDR_intercept_1_155 + 2),b
      000193 F5 33            [12]  547 	mov	(_adc_calibrate_LDR_intercept_1_155 + 3),a
      000195 E5 81            [12]  548 	mov	a,sp
      000197 24 FC            [12]  549 	add	a,#0xfc
      000199 F5 81            [12]  550 	mov	sp,a
                                    551 ;	../adc.c:18: eeprom_start();
      00019B 12 0A 40         [24]  552 	lcall	_eeprom_start
                                    553 ;	../adc.c:19: eeprom_erase(0x00);	//Erase EEPROM sectors holding LDR lookup table
      00019E 75 82 00         [24]  554 	mov	dpl,#0x00
      0001A1 12 0A 44         [24]  555 	lcall	_eeprom_erase
                                    556 ;	../adc.c:20: eeprom_erase(0x02);	//Erase EEPROM sectors holding LDR lookup table
      0001A4 75 82 02         [24]  557 	mov	dpl,#0x02
      0001A7 12 0A 44         [24]  558 	lcall	_eeprom_erase
                                    559 ;	../adc.c:21: eeprom_erase(0x04);	//Erase EEPROM sectors holding LDR lookup table
      0001AA 75 82 04         [24]  560 	mov	dpl,#0x04
      0001AD 12 0A 44         [24]  561 	lcall	_eeprom_erase
                                    562 ;	../adc.c:22: eeprom_erase(0x08);	//Erase EEPROM sectors holding LDR lookup table
      0001B0 75 82 08         [24]  563 	mov	dpl,#0x08
      0001B3 12 0A 44         [24]  564 	lcall	_eeprom_erase
                                    565 ;	../adc.c:23: for(i=0;i<1024;i++){
      0001B6 78 00            [12]  566 	mov	r0,#0x00
      0001B8 79 00            [12]  567 	mov	r1,#0x00
      0001BA                        568 00108$:
                                    569 ;	../adc.c:24: if((i >= ldr_min) && (i <= ldr_max)){
      0001BA C3               [12]  570 	clr	c
      0001BB E8               [12]  571 	mov	a,r0
      0001BC 95 2A            [12]  572 	subb	a,_adc_calibrate_LDR_ldr_min_1_154
      0001BE E9               [12]  573 	mov	a,r1
      0001BF 95 2B            [12]  574 	subb	a,(_adc_calibrate_LDR_ldr_min_1_154 + 1)
      0001C1 50 03            [24]  575 	jnc	00127$
      0001C3 02 02 B8         [24]  576 	ljmp	00102$
      0001C6                        577 00127$:
      0001C6 C3               [12]  578 	clr	c
      0001C7 E5 28            [12]  579 	mov	a,_adc_calibrate_LDR_PARM_2
      0001C9 98               [12]  580 	subb	a,r0
      0001CA E5 29            [12]  581 	mov	a,(_adc_calibrate_LDR_PARM_2 + 1)
      0001CC 99               [12]  582 	subb	a,r1
      0001CD 50 03            [24]  583 	jnc	00128$
      0001CF 02 02 B8         [24]  584 	ljmp	00102$
      0001D2                        585 00128$:
                                    586 ;	../adc.c:25: eeprom_write(2*i,((uint16_t)((gradient*(float)(i)) + intercept)) & 0x00ff);
      0001D2 E8               [12]  587 	mov	a,r0
      0001D3 28               [12]  588 	add	a,r0
      0001D4 FC               [12]  589 	mov	r4,a
      0001D5 E9               [12]  590 	mov	a,r1
      0001D6 33               [12]  591 	rlc	a
      0001D7 FD               [12]  592 	mov	r5,a
      0001D8 88 82            [24]  593 	mov	dpl,r0
      0001DA 89 83            [24]  594 	mov	dph,r1
      0001DC C0 05            [24]  595 	push	ar5
      0001DE C0 04            [24]  596 	push	ar4
      0001E0 C0 01            [24]  597 	push	ar1
      0001E2 C0 00            [24]  598 	push	ar0
      0001E4 12 1C A2         [24]  599 	lcall	___uint2fs
      0001E7 AA 82            [24]  600 	mov	r2,dpl
      0001E9 AB 83            [24]  601 	mov	r3,dph
      0001EB AE F0            [24]  602 	mov	r6,b
      0001ED FF               [12]  603 	mov	r7,a
      0001EE C0 02            [24]  604 	push	ar2
      0001F0 C0 03            [24]  605 	push	ar3
      0001F2 C0 06            [24]  606 	push	ar6
      0001F4 C0 07            [24]  607 	push	ar7
      0001F6 85 2C 82         [24]  608 	mov	dpl,_adc_calibrate_LDR_gradient_1_155
      0001F9 85 2D 83         [24]  609 	mov	dph,(_adc_calibrate_LDR_gradient_1_155 + 1)
      0001FC 85 2E F0         [24]  610 	mov	b,(_adc_calibrate_LDR_gradient_1_155 + 2)
      0001FF E5 2F            [12]  611 	mov	a,(_adc_calibrate_LDR_gradient_1_155 + 3)
      000201 12 1A B8         [24]  612 	lcall	___fsmul
      000204 AA 82            [24]  613 	mov	r2,dpl
      000206 AB 83            [24]  614 	mov	r3,dph
      000208 AE F0            [24]  615 	mov	r6,b
      00020A FF               [12]  616 	mov	r7,a
      00020B E5 81            [12]  617 	mov	a,sp
      00020D 24 FC            [12]  618 	add	a,#0xfc
      00020F F5 81            [12]  619 	mov	sp,a
      000211 C0 30            [24]  620 	push	_adc_calibrate_LDR_intercept_1_155
      000213 C0 31            [24]  621 	push	(_adc_calibrate_LDR_intercept_1_155 + 1)
      000215 C0 32            [24]  622 	push	(_adc_calibrate_LDR_intercept_1_155 + 2)
      000217 C0 33            [24]  623 	push	(_adc_calibrate_LDR_intercept_1_155 + 3)
      000219 8A 82            [24]  624 	mov	dpl,r2
      00021B 8B 83            [24]  625 	mov	dph,r3
      00021D 8E F0            [24]  626 	mov	b,r6
      00021F EF               [12]  627 	mov	a,r7
      000220 12 1C 49         [24]  628 	lcall	___fsadd
      000223 AA 82            [24]  629 	mov	r2,dpl
      000225 AB 83            [24]  630 	mov	r3,dph
      000227 AE F0            [24]  631 	mov	r6,b
      000229 FF               [12]  632 	mov	r7,a
      00022A E5 81            [12]  633 	mov	a,sp
      00022C 24 FC            [12]  634 	add	a,#0xfc
      00022E F5 81            [12]  635 	mov	sp,a
      000230 D0 00            [24]  636 	pop	ar0
      000232 D0 01            [24]  637 	pop	ar1
      000234 D0 04            [24]  638 	pop	ar4
      000236 D0 05            [24]  639 	pop	ar5
      000238 8A 82            [24]  640 	mov	dpl,r2
      00023A 8B 83            [24]  641 	mov	dph,r3
      00023C 8E F0            [24]  642 	mov	b,r6
      00023E EF               [12]  643 	mov	a,r7
      00023F C0 07            [24]  644 	push	ar7
      000241 C0 06            [24]  645 	push	ar6
      000243 C0 05            [24]  646 	push	ar5
      000245 C0 04            [24]  647 	push	ar4
      000247 C0 03            [24]  648 	push	ar3
      000249 C0 02            [24]  649 	push	ar2
      00024B C0 01            [24]  650 	push	ar1
      00024D C0 00            [24]  651 	push	ar0
      00024F 12 1C AE         [24]  652 	lcall	___fs2uint
      000252 85 82 5E         [24]  653 	mov	_eeprom_write_PARM_2,dpl
      000255 D0 00            [24]  654 	pop	ar0
      000257 D0 01            [24]  655 	pop	ar1
      000259 D0 02            [24]  656 	pop	ar2
      00025B D0 03            [24]  657 	pop	ar3
      00025D D0 04            [24]  658 	pop	ar4
      00025F D0 05            [24]  659 	pop	ar5
      000261 8C 82            [24]  660 	mov	dpl,r4
      000263 8D 83            [24]  661 	mov	dph,r5
      000265 C0 05            [24]  662 	push	ar5
      000267 C0 04            [24]  663 	push	ar4
      000269 C0 03            [24]  664 	push	ar3
      00026B C0 02            [24]  665 	push	ar2
      00026D C0 01            [24]  666 	push	ar1
      00026F C0 00            [24]  667 	push	ar0
      000271 12 0A 53         [24]  668 	lcall	_eeprom_write
      000274 D0 00            [24]  669 	pop	ar0
      000276 D0 01            [24]  670 	pop	ar1
      000278 D0 02            [24]  671 	pop	ar2
      00027A D0 03            [24]  672 	pop	ar3
      00027C D0 04            [24]  673 	pop	ar4
      00027E D0 05            [24]  674 	pop	ar5
      000280 D0 06            [24]  675 	pop	ar6
      000282 D0 07            [24]  676 	pop	ar7
                                    677 ;	../adc.c:26: eeprom_write((2*i)+1,((uint16_t)((gradient*(float)(i)) + intercept)) >> 8);
      000284 0C               [12]  678 	inc	r4
      000285 BC 00 01         [24]  679 	cjne	r4,#0x00,00129$
      000288 0D               [12]  680 	inc	r5
      000289                        681 00129$:
      000289 8A 82            [24]  682 	mov	dpl,r2
      00028B 8B 83            [24]  683 	mov	dph,r3
      00028D 8E F0            [24]  684 	mov	b,r6
      00028F EF               [12]  685 	mov	a,r7
      000290 C0 05            [24]  686 	push	ar5
      000292 C0 04            [24]  687 	push	ar4
      000294 C0 01            [24]  688 	push	ar1
      000296 C0 00            [24]  689 	push	ar0
      000298 12 1C AE         [24]  690 	lcall	___fs2uint
      00029B AF 83            [24]  691 	mov	r7,dph
      00029D D0 00            [24]  692 	pop	ar0
      00029F D0 01            [24]  693 	pop	ar1
      0002A1 D0 04            [24]  694 	pop	ar4
      0002A3 D0 05            [24]  695 	pop	ar5
      0002A5 8F 5E            [24]  696 	mov	_eeprom_write_PARM_2,r7
      0002A7 8C 82            [24]  697 	mov	dpl,r4
      0002A9 8D 83            [24]  698 	mov	dph,r5
      0002AB C0 01            [24]  699 	push	ar1
      0002AD C0 00            [24]  700 	push	ar0
      0002AF 12 0A 53         [24]  701 	lcall	_eeprom_write
      0002B2 D0 00            [24]  702 	pop	ar0
      0002B4 D0 01            [24]  703 	pop	ar1
                                    704 ;	../adc.c:27: continue;
      0002B6 80 71            [24]  705 	sjmp	00106$
      0002B8                        706 00102$:
                                    707 ;	../adc.c:29: if(i < ldr_min){
      0002B8 C3               [12]  708 	clr	c
      0002B9 E8               [12]  709 	mov	a,r0
      0002BA 95 2A            [12]  710 	subb	a,_adc_calibrate_LDR_ldr_min_1_154
      0002BC E9               [12]  711 	mov	a,r1
      0002BD 95 2B            [12]  712 	subb	a,(_adc_calibrate_LDR_ldr_min_1_154 + 1)
      0002BF 50 35            [24]  713 	jnc	00105$
                                    714 ;	../adc.c:30: eeprom_write((2*i),DISPLAY_COUNTS_MAX & 0x00ff);
      0002C1 E8               [12]  715 	mov	a,r0
      0002C2 28               [12]  716 	add	a,r0
      0002C3 FE               [12]  717 	mov	r6,a
      0002C4 E9               [12]  718 	mov	a,r1
      0002C5 33               [12]  719 	rlc	a
      0002C6 FF               [12]  720 	mov	r7,a
      0002C7 75 5E 00         [24]  721 	mov	_eeprom_write_PARM_2,#0x00
      0002CA 8E 82            [24]  722 	mov	dpl,r6
      0002CC 8F 83            [24]  723 	mov	dph,r7
      0002CE C0 07            [24]  724 	push	ar7
      0002D0 C0 06            [24]  725 	push	ar6
      0002D2 C0 01            [24]  726 	push	ar1
      0002D4 C0 00            [24]  727 	push	ar0
      0002D6 12 0A 53         [24]  728 	lcall	_eeprom_write
      0002D9 D0 00            [24]  729 	pop	ar0
      0002DB D0 01            [24]  730 	pop	ar1
      0002DD D0 06            [24]  731 	pop	ar6
      0002DF D0 07            [24]  732 	pop	ar7
                                    733 ;	../adc.c:31: eeprom_write((2*i)+1,DISPLAY_COUNTS_MAX >> 8);
      0002E1 8E 82            [24]  734 	mov	dpl,r6
      0002E3 8F 83            [24]  735 	mov	dph,r7
      0002E5 A3               [24]  736 	inc	dptr
      0002E6 75 5E EA         [24]  737 	mov	_eeprom_write_PARM_2,#0xea
      0002E9 C0 01            [24]  738 	push	ar1
      0002EB C0 00            [24]  739 	push	ar0
      0002ED 12 0A 53         [24]  740 	lcall	_eeprom_write
      0002F0 D0 00            [24]  741 	pop	ar0
      0002F2 D0 01            [24]  742 	pop	ar1
                                    743 ;	../adc.c:32: continue;
      0002F4 80 33            [24]  744 	sjmp	00106$
      0002F6                        745 00105$:
                                    746 ;	../adc.c:34: eeprom_write((2*i),DISPLAY_COUNTS_MIN & 0x00ff);
      0002F6 E8               [12]  747 	mov	a,r0
      0002F7 28               [12]  748 	add	a,r0
      0002F8 FE               [12]  749 	mov	r6,a
      0002F9 E9               [12]  750 	mov	a,r1
      0002FA 33               [12]  751 	rlc	a
      0002FB FF               [12]  752 	mov	r7,a
      0002FC 75 5E 2C         [24]  753 	mov	_eeprom_write_PARM_2,#0x2c
      0002FF 8E 82            [24]  754 	mov	dpl,r6
      000301 8F 83            [24]  755 	mov	dph,r7
      000303 C0 07            [24]  756 	push	ar7
      000305 C0 06            [24]  757 	push	ar6
      000307 C0 01            [24]  758 	push	ar1
      000309 C0 00            [24]  759 	push	ar0
      00030B 12 0A 53         [24]  760 	lcall	_eeprom_write
      00030E D0 00            [24]  761 	pop	ar0
      000310 D0 01            [24]  762 	pop	ar1
      000312 D0 06            [24]  763 	pop	ar6
      000314 D0 07            [24]  764 	pop	ar7
                                    765 ;	../adc.c:35: eeprom_write((2*i)+1,DISPLAY_COUNTS_MIN >> 8);
      000316 8E 82            [24]  766 	mov	dpl,r6
      000318 8F 83            [24]  767 	mov	dph,r7
      00031A A3               [24]  768 	inc	dptr
      00031B 75 5E 01         [24]  769 	mov	_eeprom_write_PARM_2,#0x01
      00031E C0 01            [24]  770 	push	ar1
      000320 C0 00            [24]  771 	push	ar0
      000322 12 0A 53         [24]  772 	lcall	_eeprom_write
      000325 D0 00            [24]  773 	pop	ar0
      000327 D0 01            [24]  774 	pop	ar1
      000329                        775 00106$:
                                    776 ;	../adc.c:23: for(i=0;i<1024;i++){
      000329 08               [12]  777 	inc	r0
      00032A B8 00 01         [24]  778 	cjne	r0,#0x00,00131$
      00032D 09               [12]  779 	inc	r1
      00032E                        780 00131$:
      00032E 74 FC            [12]  781 	mov	a,#0x100 - 0x04
      000330 29               [12]  782 	add	a,r1
      000331 40 03            [24]  783 	jc	00132$
      000333 02 01 BA         [24]  784 	ljmp	00108$
      000336                        785 00132$:
                                    786 ;	../adc.c:37: eeprom_end();
      000336 02 0A 7F         [24]  787 	ljmp	_eeprom_end
                                    788 ;------------------------------------------------------------
                                    789 ;Allocation info for local variables in function 'ISR_ADC'
                                    790 ;------------------------------------------------------------
                                    791 ;display_counts_buffer     Allocated to registers r6 r7 
                                    792 ;------------------------------------------------------------
                                    793 ;	../adc.c:57: void ISR_ADC(void) __interrupt(INT_ADC) __using(3) {
                                    794 ;	-----------------------------------------
                                    795 ;	 function ISR_ADC
                                    796 ;	-----------------------------------------
      000339                        797 _ISR_ADC:
                           00001F   798 	ar7 = 0x1f
                           00001E   799 	ar6 = 0x1e
                           00001D   800 	ar5 = 0x1d
                           00001C   801 	ar4 = 0x1c
                           00001B   802 	ar3 = 0x1b
                           00001A   803 	ar2 = 0x1a
                           000019   804 	ar1 = 0x19
                           000018   805 	ar0 = 0x18
      000339 C0 20            [24]  806 	push	bits
      00033B C0 E0            [24]  807 	push	acc
      00033D C0 F0            [24]  808 	push	b
      00033F C0 82            [24]  809 	push	dpl
      000341 C0 83            [24]  810 	push	dph
      000343 C0 07            [24]  811 	push	(0+7)
      000345 C0 06            [24]  812 	push	(0+6)
      000347 C0 05            [24]  813 	push	(0+5)
      000349 C0 04            [24]  814 	push	(0+4)
      00034B C0 03            [24]  815 	push	(0+3)
      00034D C0 02            [24]  816 	push	(0+2)
      00034F C0 01            [24]  817 	push	(0+1)
      000351 C0 00            [24]  818 	push	(0+0)
      000353 C0 D0            [24]  819 	push	psw
      000355 75 D0 18         [24]  820 	mov	psw,#0x18
                                    821 ;	../adc.c:59: ADC_CONTR ^= 0x10; //Clear the ADC flag
      000358 63 BC 10         [24]  822 	xrl	_ADC_CONTR,#0x10
                                    823 ;	../adc.c:61: if(ADC_CONTR == ADC_SETUP_THERMISTOR){
      00035B 74 E7            [12]  824 	mov	a,#0xe7
      00035D B5 BC 09         [24]  825 	cjne	a,_ADC_CONTR,00104$
                                    826 ;	../adc.c:62: adc_thermistor_reading = ADC_RES;
      000360 85 BE 26         [24]  827 	mov	_adc_thermistor_reading,((_ADC_RES >> 0) & 0xFF)
      000363 85 BD 27         [24]  828 	mov	(_adc_thermistor_reading + 1),((_ADC_RES >> 8) & 0xFF)
      000366 02 04 81         [24]  829 	ljmp	00106$
      000369                        830 00104$:
                                    831 ;	../adc.c:64: adc_ldr_reading = ADC_RES;
      000369 85 BE 24         [24]  832 	mov	_adc_ldr_reading,((_ADC_RES >> 0) & 0xFF)
      00036C 85 BD 25         [24]  833 	mov	(_adc_ldr_reading + 1),((_ADC_RES >> 8) & 0xFF)
                                    834 ;	../adc.c:65: if(display_autobrightness) {
      00036F 20 1F 03         [24]  835 	jb	_display_autobrightness,00116$
      000372 02 04 81         [24]  836 	ljmp	00106$
      000375                        837 00116$:
                                    838 ;	../adc.c:67: display_counts_buffer = (((float)EEPROM_PWM_FROM_LDR_TABLE[adc_ldr_reading]/100.0) + ((99.00) *((float)display_counts/100.0)));
      000375 E5 24            [12]  839 	mov	a,_adc_ldr_reading
      000377 25 E0            [12]  840 	add	a,acc
      000379 FE               [12]  841 	mov	r6,a
      00037A E5 25            [12]  842 	mov	a,(_adc_ldr_reading + 1)
      00037C 33               [12]  843 	rlc	a
      00037D FF               [12]  844 	mov	r7,a
      00037E 8E 82            [24]  845 	mov	dpl,r6
      000380 74 20            [12]  846 	mov	a,#(_EEPROM_PWM_FROM_LDR_TABLE >> 8)
      000382 2F               [12]  847 	add	a,r7
      000383 F5 83            [12]  848 	mov	dph,a
      000385 E4               [12]  849 	clr	a
      000386 93               [24]  850 	movc	a,@a+dptr
      000387 FE               [12]  851 	mov	r6,a
      000388 A3               [24]  852 	inc	dptr
      000389 E4               [12]  853 	clr	a
      00038A 93               [24]  854 	movc	a,@a+dptr
      00038B FF               [12]  855 	mov	r7,a
      00038C 8E 82            [24]  856 	mov	dpl,r6
      00038E 8F 83            [24]  857 	mov	dph,r7
      000390 75 D0 00         [24]  858 	mov	psw,#0x00
      000393 12 1C A2         [24]  859 	lcall	___uint2fs
      000396 75 D0 18         [24]  860 	mov	psw,#0x18
      000399 AC 82            [24]  861 	mov	r4,dpl
      00039B AD 83            [24]  862 	mov	r5,dph
      00039D AE F0            [24]  863 	mov	r6,b
      00039F FF               [12]  864 	mov	r7,a
      0003A0 E4               [12]  865 	clr	a
      0003A1 C0 E0            [24]  866 	push	acc
      0003A3 C0 E0            [24]  867 	push	acc
      0003A5 74 C8            [12]  868 	mov	a,#0xc8
      0003A7 C0 E0            [24]  869 	push	acc
      0003A9 74 42            [12]  870 	mov	a,#0x42
      0003AB C0 E0            [24]  871 	push	acc
      0003AD 8C 82            [24]  872 	mov	dpl,r4
      0003AF 8D 83            [24]  873 	mov	dph,r5
      0003B1 8E F0            [24]  874 	mov	b,r6
      0003B3 EF               [12]  875 	mov	a,r7
      0003B4 75 D0 00         [24]  876 	mov	psw,#0x00
      0003B7 12 1D 22         [24]  877 	lcall	___fsdiv
      0003BA 75 D0 18         [24]  878 	mov	psw,#0x18
      0003BD AC 82            [24]  879 	mov	r4,dpl
      0003BF AD 83            [24]  880 	mov	r5,dph
      0003C1 AE F0            [24]  881 	mov	r6,b
      0003C3 FF               [12]  882 	mov	r7,a
      0003C4 E5 81            [12]  883 	mov	a,sp
      0003C6 24 FC            [12]  884 	add	a,#0xfc
      0003C8 F5 81            [12]  885 	mov	sp,a
      0003CA 85 41 82         [24]  886 	mov	dpl,_display_counts
      0003CD 85 42 83         [24]  887 	mov	dph,(_display_counts + 1)
      0003D0 C0 1F            [24]  888 	push	ar7
      0003D2 C0 1E            [24]  889 	push	ar6
      0003D4 C0 1D            [24]  890 	push	ar5
      0003D6 C0 1C            [24]  891 	push	ar4
      0003D8 75 D0 00         [24]  892 	mov	psw,#0x00
      0003DB 12 1C A2         [24]  893 	lcall	___uint2fs
      0003DE 75 D0 18         [24]  894 	mov	psw,#0x18
      0003E1 A8 82            [24]  895 	mov	r0,dpl
      0003E3 A9 83            [24]  896 	mov	r1,dph
      0003E5 AA F0            [24]  897 	mov	r2,b
      0003E7 FB               [12]  898 	mov	r3,a
      0003E8 E4               [12]  899 	clr	a
      0003E9 C0 E0            [24]  900 	push	acc
      0003EB C0 E0            [24]  901 	push	acc
      0003ED 74 C8            [12]  902 	mov	a,#0xc8
      0003EF C0 E0            [24]  903 	push	acc
      0003F1 74 42            [12]  904 	mov	a,#0x42
      0003F3 C0 E0            [24]  905 	push	acc
      0003F5 88 82            [24]  906 	mov	dpl,r0
      0003F7 89 83            [24]  907 	mov	dph,r1
      0003F9 8A F0            [24]  908 	mov	b,r2
      0003FB EB               [12]  909 	mov	a,r3
      0003FC 75 D0 00         [24]  910 	mov	psw,#0x00
      0003FF 12 1D 22         [24]  911 	lcall	___fsdiv
      000402 75 D0 18         [24]  912 	mov	psw,#0x18
      000405 A8 82            [24]  913 	mov	r0,dpl
      000407 A9 83            [24]  914 	mov	r1,dph
      000409 AA F0            [24]  915 	mov	r2,b
      00040B FB               [12]  916 	mov	r3,a
      00040C E5 81            [12]  917 	mov	a,sp
      00040E 24 FC            [12]  918 	add	a,#0xfc
      000410 F5 81            [12]  919 	mov	sp,a
      000412 C0 18            [24]  920 	push	ar0
      000414 C0 19            [24]  921 	push	ar1
      000416 C0 1A            [24]  922 	push	ar2
      000418 C0 1B            [24]  923 	push	ar3
      00041A 90 00 00         [24]  924 	mov	dptr,#0x0000
      00041D 75 F0 C6         [24]  925 	mov	b,#0xc6
      000420 74 42            [12]  926 	mov	a,#0x42
      000422 75 D0 00         [24]  927 	mov	psw,#0x00
      000425 12 1A B8         [24]  928 	lcall	___fsmul
      000428 75 D0 18         [24]  929 	mov	psw,#0x18
      00042B A8 82            [24]  930 	mov	r0,dpl
      00042D A9 83            [24]  931 	mov	r1,dph
      00042F AA F0            [24]  932 	mov	r2,b
      000431 FB               [12]  933 	mov	r3,a
      000432 E5 81            [12]  934 	mov	a,sp
      000434 24 FC            [12]  935 	add	a,#0xfc
      000436 F5 81            [12]  936 	mov	sp,a
      000438 D0 1C            [24]  937 	pop	ar4
      00043A D0 1D            [24]  938 	pop	ar5
      00043C D0 1E            [24]  939 	pop	ar6
      00043E D0 1F            [24]  940 	pop	ar7
      000440 C0 18            [24]  941 	push	ar0
      000442 C0 19            [24]  942 	push	ar1
      000444 C0 1A            [24]  943 	push	ar2
      000446 C0 1B            [24]  944 	push	ar3
      000448 8C 82            [24]  945 	mov	dpl,r4
      00044A 8D 83            [24]  946 	mov	dph,r5
      00044C 8E F0            [24]  947 	mov	b,r6
      00044E EF               [12]  948 	mov	a,r7
      00044F 75 D0 00         [24]  949 	mov	psw,#0x00
      000452 12 1C 49         [24]  950 	lcall	___fsadd
      000455 75 D0 18         [24]  951 	mov	psw,#0x18
      000458 AC 82            [24]  952 	mov	r4,dpl
      00045A AD 83            [24]  953 	mov	r5,dph
      00045C AE F0            [24]  954 	mov	r6,b
      00045E FF               [12]  955 	mov	r7,a
      00045F E5 81            [12]  956 	mov	a,sp
      000461 24 FC            [12]  957 	add	a,#0xfc
      000463 F5 81            [12]  958 	mov	sp,a
      000465 8C 82            [24]  959 	mov	dpl,r4
      000467 8D 83            [24]  960 	mov	dph,r5
      000469 8E F0            [24]  961 	mov	b,r6
      00046B EF               [12]  962 	mov	a,r7
      00046C 75 D0 00         [24]  963 	mov	psw,#0x00
      00046F 12 1C AE         [24]  964 	lcall	___fs2uint
      000472 75 D0 18         [24]  965 	mov	psw,#0x18
      000475 AE 82            [24]  966 	mov	r6,dpl
      000477 AF 83            [24]  967 	mov	r7,dph
                                    968 ;	../adc.c:68: INT_IP_PPCA = 0; //Block PCA interrupt from stacking on top of ADC ISR
                                    969 ;	assignBit
      000479 C2 BF            [12]  970 	clr	_INT_IP_PPCA
                                    971 ;	../adc.c:69: display_counts = display_counts_buffer;
      00047B 8E 41            [24]  972 	mov	_display_counts,r6
      00047D 8F 42            [24]  973 	mov	(_display_counts + 1),r7
                                    974 ;	../adc.c:70: INT_IP_PPCA = 1; //Re-enable PCA interrupt high priority
                                    975 ;	assignBit
      00047F D2 BF            [12]  976 	setb	_INT_IP_PPCA
      000481                        977 00106$:
      000481 D0 D0            [24]  978 	pop	psw
      000483 D0 00            [24]  979 	pop	(0+0)
      000485 D0 01            [24]  980 	pop	(0+1)
      000487 D0 02            [24]  981 	pop	(0+2)
      000489 D0 03            [24]  982 	pop	(0+3)
      00048B D0 04            [24]  983 	pop	(0+4)
      00048D D0 05            [24]  984 	pop	(0+5)
      00048F D0 06            [24]  985 	pop	(0+6)
      000491 D0 07            [24]  986 	pop	(0+7)
      000493 D0 83            [24]  987 	pop	dph
      000495 D0 82            [24]  988 	pop	dpl
      000497 D0 F0            [24]  989 	pop	b
      000499 D0 E0            [24]  990 	pop	acc
      00049B D0 20            [24]  991 	pop	bits
      00049D 32               [24]  992 	reti
                                    993 	.area CSEG    (CODE)
                                    994 	.area CONST   (CODE)
                                    995 	.area XINIT   (CODE)
                                    996 	.area CABS    (ABS,CODE)
