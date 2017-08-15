                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #9959 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module display
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _display_putbcd_PARM_2
                                     12 	.globl _ISR_PCA
                                     13 	.globl _convert_24h_to_12h
                                     14 	.globl _UART_SM0
                                     15 	.globl _UART_SM1
                                     16 	.globl _UART_SM2
                                     17 	.globl _UART_REN
                                     18 	.globl _UART_TB8
                                     19 	.globl _UART_RB8
                                     20 	.globl _UART_TI
                                     21 	.globl _UART_RI
                                     22 	.globl _PCA_CF
                                     23 	.globl _PCA_CR
                                     24 	.globl _PCA_CCF2
                                     25 	.globl _PCA_CCF1
                                     26 	.globl _PCA_CCF0
                                     27 	.globl _TMR_TCON_TF1
                                     28 	.globl _TMR_TCON_TR1
                                     29 	.globl _TMR_TCON_TF0
                                     30 	.globl _TMR_TCON_TR0
                                     31 	.globl _TMR_TCON_IE1
                                     32 	.globl _TMR_TCON_IT1
                                     33 	.globl _TMR_TCON_IE0
                                     34 	.globl _TMR_TCON_IT0
                                     35 	.globl _INT_IP_PPCA
                                     36 	.globl _INT_IP_PLVD
                                     37 	.globl _INT_IP_PADC
                                     38 	.globl _INT_IP_PS
                                     39 	.globl _INT_IP_PT1
                                     40 	.globl _INT_IP_PX1
                                     41 	.globl _INT_IP_PT0
                                     42 	.globl _INT_IP_PX0
                                     43 	.globl _INT_IE_EA
                                     44 	.globl _INT_IE_ELVD
                                     45 	.globl _INT_IE_EADC
                                     46 	.globl _INT_IE_ES
                                     47 	.globl _INT_IE_ET1
                                     48 	.globl _INT_IE_EX1
                                     49 	.globl _INT_IE_ET0
                                     50 	.globl _INT_IE_EX0
                                     51 	.globl _PORT_P5_7
                                     52 	.globl _PORT_P5_6
                                     53 	.globl _PORT_P5_5
                                     54 	.globl _PORT_P5_4
                                     55 	.globl _PORT_P5_3
                                     56 	.globl _PORT_P5_2
                                     57 	.globl _PORT_P5_1
                                     58 	.globl _PORT_P5_0
                                     59 	.globl _PORT_P4_7
                                     60 	.globl _PORT_P4_6
                                     61 	.globl _PORT_P4_5
                                     62 	.globl _PORT_P4_4
                                     63 	.globl _PORT_P4_3
                                     64 	.globl _PORT_P4_2
                                     65 	.globl _PORT_P4_1
                                     66 	.globl _PORT_P4_0
                                     67 	.globl _PORT_P3_7
                                     68 	.globl _PORT_P3_6
                                     69 	.globl _PORT_P3_5
                                     70 	.globl _PORT_P3_4
                                     71 	.globl _PORT_P3_3
                                     72 	.globl _PORT_P3_2
                                     73 	.globl _PORT_P3_1
                                     74 	.globl _PORT_P3_0
                                     75 	.globl _PORT_P2_7
                                     76 	.globl _PORT_P2_6
                                     77 	.globl _PORT_P2_5
                                     78 	.globl _PORT_P2_4
                                     79 	.globl _PORT_P2_3
                                     80 	.globl _PORT_P2_2
                                     81 	.globl _PORT_P2_1
                                     82 	.globl _PORT_P2_0
                                     83 	.globl _PORT_P1_7
                                     84 	.globl _PORT_P1_6
                                     85 	.globl _PORT_P1_5
                                     86 	.globl _PORT_P1_4
                                     87 	.globl _PORT_P1_3
                                     88 	.globl _PORT_P1_2
                                     89 	.globl _PORT_P1_1
                                     90 	.globl _PORT_P1_0
                                     91 	.globl _CY
                                     92 	.globl _AC
                                     93 	.globl _F0
                                     94 	.globl _RS1
                                     95 	.globl _RS0
                                     96 	.globl _OV
                                     97 	.globl _F1
                                     98 	.globl _P
                                     99 	.globl _IAP_CONTR
                                    100 	.globl _IAP_TRIG
                                    101 	.globl _IAP_CMD
                                    102 	.globl _IAP_ADDR
                                    103 	.globl _IAP_ADDRL
                                    104 	.globl _IAP_ADDRH
                                    105 	.globl _IAP_DATA
                                    106 	.globl _UART_SADEN
                                    107 	.globl _UART_SADDR
                                    108 	.globl _UART_SBUF
                                    109 	.globl _UART_SCON
                                    110 	.globl _PCA_CMOD
                                    111 	.globl _PCA_CCON
                                    112 	.globl _PCA_PWM2
                                    113 	.globl _PCA_PWM1
                                    114 	.globl _PCA_PWM0
                                    115 	.globl _PCA_C
                                    116 	.globl _PCA_CCAP2_L
                                    117 	.globl _PCA_CCAP2_H
                                    118 	.globl _PCA_CCAP1_L
                                    119 	.globl _PCA_CCAP1_H
                                    120 	.globl _PCA_CCAP0_L
                                    121 	.globl _PCA_CCAP0_H
                                    122 	.globl _PCA_CCAP2
                                    123 	.globl _PCA_CCAP1
                                    124 	.globl _PCA_CCAP0
                                    125 	.globl _PCA_CCAPM2
                                    126 	.globl _PCA_CCAPM1
                                    127 	.globl _PCA_CCAPM0
                                    128 	.globl _CMP_CR2
                                    129 	.globl _CMP_CR1
                                    130 	.globl _ADC_RESL
                                    131 	.globl _ADC_RESH
                                    132 	.globl _ADC_RES
                                    133 	.globl _ADC_CONTR
                                    134 	.globl _ADC_P1ASF
                                    135 	.globl _EEPROM_CONTR
                                    136 	.globl _EEPROM_TRIG
                                    137 	.globl _EEPROM_CMD
                                    138 	.globl _EEPROM_ADDR
                                    139 	.globl _EEPROM_DATA
                                    140 	.globl _TMR_T2
                                    141 	.globl _TMR_T0
                                    142 	.globl _TMR_TMOD
                                    143 	.globl _TMR_TCON
                                    144 	.globl _INT_IP2
                                    145 	.globl _INT_IP
                                    146 	.globl _INT_IE2
                                    147 	.globl _INT_IE
                                    148 	.globl _PORT_P5M0
                                    149 	.globl _PORT_P5M1
                                    150 	.globl _PORT_P4M0
                                    151 	.globl _PORT_P4M1
                                    152 	.globl _PORT_P3M0
                                    153 	.globl _PORT_P3M1
                                    154 	.globl _PORT_P2M0
                                    155 	.globl _PORT_P2M1
                                    156 	.globl _PORT_P1M0
                                    157 	.globl _PORT_P1M1
                                    158 	.globl _PORT_P5
                                    159 	.globl _PORT_P4
                                    160 	.globl _PORT_P3
                                    161 	.globl _PORT_P2
                                    162 	.globl _PORT_P1
                                    163 	.globl _PSW
                                    164 	.globl _PCON2
                                    165 	.globl _AUXR2
                                    166 	.globl _AUXR1
                                    167 	.globl _AUXR
                                    168 	.globl _PCON
                                    169 	.globl _DPTR
                                    170 	.globl _SP
                                    171 	.globl _display_autobrightness
                                    172 	.globl _DS1302_DATA_7
                                    173 	.globl _DS1302_DATA_6
                                    174 	.globl _DS1302_DATA_5
                                    175 	.globl _DS1302_DATA_4
                                    176 	.globl _DS1302_DATA_3
                                    177 	.globl _DS1302_DATA_2
                                    178 	.globl _DS1302_DATA_1
                                    179 	.globl _DS1302_DATA_0
                                    180 	.globl _display_puttime_PARM_2
                                    181 	.globl _display_counts
                                    182 	.globl _display_flash
                                    183 	.globl _display_index
                                    184 	.globl _display_buffer
                                    185 	.globl _DS1302_DATA
                                    186 	.globl _display_puts
                                    187 	.globl _display_putbcd
                                    188 	.globl _display_puttime
                                    189 	.globl _display_putdate
                                    190 	.globl _display_putbool
                                    191 	.globl _display_puttemp
                                    192 ;--------------------------------------------------------
                                    193 ; special function registers
                                    194 ;--------------------------------------------------------
                                    195 	.area RSEG    (ABS,DATA)
      000000                        196 	.org 0x0000
                           000081   197 _SP	=	0x0081
                           008382   198 _DPTR	=	0x8382
                           000087   199 _PCON	=	0x0087
                           00008E   200 _AUXR	=	0x008e
                           0000A2   201 _AUXR1	=	0x00a2
                           00008F   202 _AUXR2	=	0x008f
                           000097   203 _PCON2	=	0x0097
                           0000D0   204 _PSW	=	0x00d0
                           000090   205 _PORT_P1	=	0x0090
                           0000A0   206 _PORT_P2	=	0x00a0
                           0000B0   207 _PORT_P3	=	0x00b0
                           0000C0   208 _PORT_P4	=	0x00c0
                           0000C8   209 _PORT_P5	=	0x00c8
                           000091   210 _PORT_P1M1	=	0x0091
                           000092   211 _PORT_P1M0	=	0x0092
                           000095   212 _PORT_P2M1	=	0x0095
                           000096   213 _PORT_P2M0	=	0x0096
                           0000B1   214 _PORT_P3M1	=	0x00b1
                           0000B2   215 _PORT_P3M0	=	0x00b2
                           0000B3   216 _PORT_P4M1	=	0x00b3
                           0000B4   217 _PORT_P4M0	=	0x00b4
                           0000C9   218 _PORT_P5M1	=	0x00c9
                           0000CA   219 _PORT_P5M0	=	0x00ca
                           0000A8   220 _INT_IE	=	0x00a8
                           0000AF   221 _INT_IE2	=	0x00af
                           0000B8   222 _INT_IP	=	0x00b8
                           0000B5   223 _INT_IP2	=	0x00b5
                           000088   224 _TMR_TCON	=	0x0088
                           000089   225 _TMR_TMOD	=	0x0089
                           008C8A   226 _TMR_T0	=	0x8c8a
                           00D6D7   227 _TMR_T2	=	0xd6d7
                           0000C2   228 _EEPROM_DATA	=	0x00c2
                           00C3C4   229 _EEPROM_ADDR	=	0xc3c4
                           0000C5   230 _EEPROM_CMD	=	0x00c5
                           0000C6   231 _EEPROM_TRIG	=	0x00c6
                           0000C7   232 _EEPROM_CONTR	=	0x00c7
                           00009D   233 _ADC_P1ASF	=	0x009d
                           0000BC   234 _ADC_CONTR	=	0x00bc
                           00BDBE   235 _ADC_RES	=	0xbdbe
                           0000BD   236 _ADC_RESH	=	0x00bd
                           0000BE   237 _ADC_RESL	=	0x00be
                           0000E6   238 _CMP_CR1	=	0x00e6
                           0000E7   239 _CMP_CR2	=	0x00e7
                           0000DA   240 _PCA_CCAPM0	=	0x00da
                           0000DB   241 _PCA_CCAPM1	=	0x00db
                           0000DC   242 _PCA_CCAPM2	=	0x00dc
                           00FAEA   243 _PCA_CCAP0	=	0xfaea
                           00FBEB   244 _PCA_CCAP1	=	0xfbeb
                           00FCEC   245 _PCA_CCAP2	=	0xfcec
                           0000FA   246 _PCA_CCAP0_H	=	0x00fa
                           0000EA   247 _PCA_CCAP0_L	=	0x00ea
                           0000FB   248 _PCA_CCAP1_H	=	0x00fb
                           0000EB   249 _PCA_CCAP1_L	=	0x00eb
                           0000FC   250 _PCA_CCAP2_H	=	0x00fc
                           0000EC   251 _PCA_CCAP2_L	=	0x00ec
                           00F9E9   252 _PCA_C	=	0xf9e9
                           0000F2   253 _PCA_PWM0	=	0x00f2
                           0000F3   254 _PCA_PWM1	=	0x00f3
                           0000F4   255 _PCA_PWM2	=	0x00f4
                           0000D8   256 _PCA_CCON	=	0x00d8
                           0000D9   257 _PCA_CMOD	=	0x00d9
                           000098   258 _UART_SCON	=	0x0098
                           000099   259 _UART_SBUF	=	0x0099
                           0000A9   260 _UART_SADDR	=	0x00a9
                           0000B9   261 _UART_SADEN	=	0x00b9
                           0000C2   262 _IAP_DATA	=	0x00c2
                           0000C3   263 _IAP_ADDRH	=	0x00c3
                           0000C4   264 _IAP_ADDRL	=	0x00c4
                           00C3C4   265 _IAP_ADDR	=	0xc3c4
                           0000C5   266 _IAP_CMD	=	0x00c5
                           0000C6   267 _IAP_TRIG	=	0x00c6
                           0000C7   268 _IAP_CONTR	=	0x00c7
                                    269 ;--------------------------------------------------------
                                    270 ; special function bits
                                    271 ;--------------------------------------------------------
                                    272 	.area RSEG    (ABS,DATA)
      000000                        273 	.org 0x0000
                           0000D0   274 _P	=	0x00d0
                           0000D1   275 _F1	=	0x00d1
                           0000D2   276 _OV	=	0x00d2
                           0000D3   277 _RS0	=	0x00d3
                           0000D4   278 _RS1	=	0x00d4
                           0000D5   279 _F0	=	0x00d5
                           0000D6   280 _AC	=	0x00d6
                           0000D7   281 _CY	=	0x00d7
                           000090   282 _PORT_P1_0	=	0x0090
                           000091   283 _PORT_P1_1	=	0x0091
                           000092   284 _PORT_P1_2	=	0x0092
                           000093   285 _PORT_P1_3	=	0x0093
                           000094   286 _PORT_P1_4	=	0x0094
                           000095   287 _PORT_P1_5	=	0x0095
                           000096   288 _PORT_P1_6	=	0x0096
                           000097   289 _PORT_P1_7	=	0x0097
                           0000A0   290 _PORT_P2_0	=	0x00a0
                           0000A1   291 _PORT_P2_1	=	0x00a1
                           0000A2   292 _PORT_P2_2	=	0x00a2
                           0000A3   293 _PORT_P2_3	=	0x00a3
                           0000A4   294 _PORT_P2_4	=	0x00a4
                           0000A5   295 _PORT_P2_5	=	0x00a5
                           0000A6   296 _PORT_P2_6	=	0x00a6
                           0000A7   297 _PORT_P2_7	=	0x00a7
                           0000B0   298 _PORT_P3_0	=	0x00b0
                           0000B1   299 _PORT_P3_1	=	0x00b1
                           0000B2   300 _PORT_P3_2	=	0x00b2
                           0000B3   301 _PORT_P3_3	=	0x00b3
                           0000B4   302 _PORT_P3_4	=	0x00b4
                           0000B5   303 _PORT_P3_5	=	0x00b5
                           0000B6   304 _PORT_P3_6	=	0x00b6
                           0000B7   305 _PORT_P3_7	=	0x00b7
                           0000C0   306 _PORT_P4_0	=	0x00c0
                           0000C1   307 _PORT_P4_1	=	0x00c1
                           0000C2   308 _PORT_P4_2	=	0x00c2
                           0000C3   309 _PORT_P4_3	=	0x00c3
                           0000C4   310 _PORT_P4_4	=	0x00c4
                           0000C5   311 _PORT_P4_5	=	0x00c5
                           0000C6   312 _PORT_P4_6	=	0x00c6
                           0000C7   313 _PORT_P4_7	=	0x00c7
                           0000C8   314 _PORT_P5_0	=	0x00c8
                           0000C9   315 _PORT_P5_1	=	0x00c9
                           0000CA   316 _PORT_P5_2	=	0x00ca
                           0000CB   317 _PORT_P5_3	=	0x00cb
                           0000CC   318 _PORT_P5_4	=	0x00cc
                           0000CD   319 _PORT_P5_5	=	0x00cd
                           0000CE   320 _PORT_P5_6	=	0x00ce
                           0000CD   321 _PORT_P5_7	=	0x00cd
                           0000A8   322 _INT_IE_EX0	=	0x00a8
                           0000A9   323 _INT_IE_ET0	=	0x00a9
                           0000AA   324 _INT_IE_EX1	=	0x00aa
                           0000AB   325 _INT_IE_ET1	=	0x00ab
                           0000AC   326 _INT_IE_ES	=	0x00ac
                           0000AD   327 _INT_IE_EADC	=	0x00ad
                           0000AE   328 _INT_IE_ELVD	=	0x00ae
                           0000AF   329 _INT_IE_EA	=	0x00af
                           0000B8   330 _INT_IP_PX0	=	0x00b8
                           0000B9   331 _INT_IP_PT0	=	0x00b9
                           0000BA   332 _INT_IP_PX1	=	0x00ba
                           0000BB   333 _INT_IP_PT1	=	0x00bb
                           0000BC   334 _INT_IP_PS	=	0x00bc
                           0000BD   335 _INT_IP_PADC	=	0x00bd
                           0000BE   336 _INT_IP_PLVD	=	0x00be
                           0000BF   337 _INT_IP_PPCA	=	0x00bf
                           000088   338 _TMR_TCON_IT0	=	0x0088
                           000089   339 _TMR_TCON_IE0	=	0x0089
                           00008A   340 _TMR_TCON_IT1	=	0x008a
                           00008B   341 _TMR_TCON_IE1	=	0x008b
                           00008C   342 _TMR_TCON_TR0	=	0x008c
                           00008D   343 _TMR_TCON_TF0	=	0x008d
                           00008E   344 _TMR_TCON_TR1	=	0x008e
                           00008F   345 _TMR_TCON_TF1	=	0x008f
                           0000D8   346 _PCA_CCF0	=	0x00d8
                           0000D9   347 _PCA_CCF1	=	0x00d9
                           0000DA   348 _PCA_CCF2	=	0x00da
                           0000DE   349 _PCA_CR	=	0x00de
                           0000DF   350 _PCA_CF	=	0x00df
                           000098   351 _UART_RI	=	0x0098
                           000099   352 _UART_TI	=	0x0099
                           00009A   353 _UART_RB8	=	0x009a
                           00009B   354 _UART_TB8	=	0x009b
                           00009C   355 _UART_REN	=	0x009c
                           00009D   356 _UART_SM2	=	0x009d
                           00009E   357 _UART_SM1	=	0x009e
                           00009E   358 _UART_SM0	=	0x009e
                                    359 ;--------------------------------------------------------
                                    360 ; overlayable register banks
                                    361 ;--------------------------------------------------------
                                    362 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        363 	.ds 8
                                    364 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        365 	.ds 8
                                    366 ;--------------------------------------------------------
                                    367 ; internal ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area DSEG    (DATA)
                           000021   370 _DS1302_DATA	=	0x0021
      00003B                        371 _display_buffer::
      00003B                        372 	.ds 4
      00003F                        373 _display_index::
      00003F                        374 	.ds 1
      000040                        375 _display_flash::
      000040                        376 	.ds 1
      000041                        377 _display_counts::
      000041                        378 	.ds 2
      000043                        379 _display_puttime_PARM_2:
      000043                        380 	.ds 1
      000044                        381 _ISR_PCA_flash_prescaler_1_149:
      000044                        382 	.ds 1
                                    383 ;--------------------------------------------------------
                                    384 ; overlayable items in internal ram 
                                    385 ;--------------------------------------------------------
                                    386 	.area	OSEG    (OVR,DATA)
                                    387 	.area	OSEG    (OVR,DATA)
      00005E                        388 _display_putbcd_PARM_2:
      00005E                        389 	.ds 1
                                    390 	.area	OSEG    (OVR,DATA)
                                    391 	.area	OSEG    (OVR,DATA)
                                    392 ;--------------------------------------------------------
                                    393 ; indirectly addressable internal ram data
                                    394 ;--------------------------------------------------------
                                    395 	.area ISEG    (DATA)
                                    396 ;--------------------------------------------------------
                                    397 ; absolute internal ram data
                                    398 ;--------------------------------------------------------
                                    399 	.area IABS    (ABS,DATA)
                                    400 	.area IABS    (ABS,DATA)
                                    401 ;--------------------------------------------------------
                                    402 ; bit data
                                    403 ;--------------------------------------------------------
                                    404 	.area BSEG    (BIT)
                           000008   405 _DS1302_DATA_0	=	0x0008
                           000009   406 _DS1302_DATA_1	=	0x0009
                           00000A   407 _DS1302_DATA_2	=	0x000a
                           00000B   408 _DS1302_DATA_3	=	0x000b
                           00000C   409 _DS1302_DATA_4	=	0x000c
                           00000D   410 _DS1302_DATA_5	=	0x000d
                           00000E   411 _DS1302_DATA_6	=	0x000e
                           00000F   412 _DS1302_DATA_7	=	0x000f
                           00001F   413 _display_autobrightness	=	0x001f
                                    414 ;--------------------------------------------------------
                                    415 ; paged external ram data
                                    416 ;--------------------------------------------------------
                                    417 	.area PSEG    (PAG,XDATA)
                                    418 ;--------------------------------------------------------
                                    419 ; external ram data
                                    420 ;--------------------------------------------------------
                                    421 	.area XSEG    (XDATA)
                                    422 ;--------------------------------------------------------
                                    423 ; absolute external ram data
                                    424 ;--------------------------------------------------------
                                    425 	.area XABS    (ABS,XDATA)
                                    426 ;--------------------------------------------------------
                                    427 ; external initialized ram data
                                    428 ;--------------------------------------------------------
                                    429 	.area XISEG   (XDATA)
                                    430 	.area HOME    (CODE)
                                    431 	.area GSINIT0 (CODE)
                                    432 	.area GSINIT1 (CODE)
                                    433 	.area GSINIT2 (CODE)
                                    434 	.area GSINIT3 (CODE)
                                    435 	.area GSINIT4 (CODE)
                                    436 	.area GSINIT5 (CODE)
                                    437 	.area GSINIT  (CODE)
                                    438 	.area GSFINAL (CODE)
                                    439 	.area CSEG    (CODE)
                                    440 ;--------------------------------------------------------
                                    441 ; global & static initialisations
                                    442 ;--------------------------------------------------------
                                    443 	.area HOME    (CODE)
                                    444 	.area GSINIT  (CODE)
                                    445 	.area GSFINAL (CODE)
                                    446 	.area GSINIT  (CODE)
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function 'ISR_PCA'
                                    449 ;------------------------------------------------------------
                                    450 ;flash_prescaler           Allocated with name '_ISR_PCA_flash_prescaler_1_149'
                                    451 ;__00030031                Allocated to registers r7 
                                    452 ;index                     Allocated to registers 
                                    453 ;------------------------------------------------------------
                                    454 ;	../display.c:80: static uint8_t flash_prescaler = 0x10;
      0000C7 75 44 10         [24]  455 	mov	_ISR_PCA_flash_prescaler_1_149,#0x10
                                    456 ;	../display.c:12: volatile uint8_t display_buffer[4] = {0x00,0x00,0x00,0x00};
      0000CA 75 3B 00         [24]  457 	mov	_display_buffer,#0x00
      0000CD 75 3C 00         [24]  458 	mov	(_display_buffer + 0x0001),#0x00
      0000D0 75 3D 00         [24]  459 	mov	(_display_buffer + 0x0002),#0x00
      0000D3 75 3E 00         [24]  460 	mov	(_display_buffer + 0x0003),#0x00
                                    461 ;	../display.c:13: volatile uint8_t display_index = 0x03;
      0000D6 75 3F 03         [24]  462 	mov	_display_index,#0x03
                                    463 ;	../display.c:14: volatile uint8_t display_flash = 0x00;
      0000D9 75 40 00         [24]  464 	mov	_display_flash,#0x00
                                    465 ;	../display.c:15: volatile uint16_t display_counts = 0xff00;
      0000DC 75 41 00         [24]  466 	mov	_display_counts,#0x00
      0000DF 75 42 FF         [24]  467 	mov	(_display_counts + 1),#0xff
                                    468 ;--------------------------------------------------------
                                    469 ; Home
                                    470 ;--------------------------------------------------------
                                    471 	.area HOME    (CODE)
                                    472 	.area HOME    (CODE)
                                    473 ;--------------------------------------------------------
                                    474 ; code
                                    475 ;--------------------------------------------------------
                                    476 	.area CSEG    (CODE)
                                    477 ;------------------------------------------------------------
                                    478 ;Allocation info for local variables in function 'display_puts'
                                    479 ;------------------------------------------------------------
                                    480 ;s                         Allocated to registers r6 r7 
                                    481 ;------------------------------------------------------------
                                    482 ;	../display.c:17: void display_puts(__code const char* s) {
                                    483 ;	-----------------------------------------
                                    484 ;	 function display_puts
                                    485 ;	-----------------------------------------
      00058F                        486 _display_puts:
                           000007   487 	ar7 = 0x07
                           000006   488 	ar6 = 0x06
                           000005   489 	ar5 = 0x05
                           000004   490 	ar4 = 0x04
                           000003   491 	ar3 = 0x03
                           000002   492 	ar2 = 0x02
                           000001   493 	ar1 = 0x01
                           000000   494 	ar0 = 0x00
                                    495 ;	../display.c:18: display_buffer[0] = ledfonts_numeric_normal[*s];
      00058F AE 82            [24]  496 	mov	r6,dpl
      000591 AF 83            [24]  497 	mov  r7,dph
      000593 E4               [12]  498 	clr	a
      000594 93               [24]  499 	movc	a,@a+dptr
      000595 90 30 00         [24]  500 	mov	dptr,#_ledfonts_numeric_normal
      000598 93               [24]  501 	movc	a,@a+dptr
      000599 FD               [12]  502 	mov	r5,a
      00059A 8D 3B            [24]  503 	mov	_display_buffer,r5
                                    504 ;	../display.c:19: display_buffer[1] = ledfonts_numeric_normal[*(s+1)];
      00059C 8E 82            [24]  505 	mov	dpl,r6
      00059E 8F 83            [24]  506 	mov	dph,r7
      0005A0 A3               [24]  507 	inc	dptr
      0005A1 E4               [12]  508 	clr	a
      0005A2 93               [24]  509 	movc	a,@a+dptr
      0005A3 90 30 00         [24]  510 	mov	dptr,#_ledfonts_numeric_normal
      0005A6 93               [24]  511 	movc	a,@a+dptr
      0005A7 FD               [12]  512 	mov	r5,a
      0005A8 8D 3C            [24]  513 	mov	(_display_buffer + 0x0001),r5
                                    514 ;	../display.c:20: display_buffer[2] = ledfonts_numeric_flipped[*(s+2)];
      0005AA 8E 82            [24]  515 	mov	dpl,r6
      0005AC 8F 83            [24]  516 	mov	dph,r7
      0005AE A3               [24]  517 	inc	dptr
      0005AF A3               [24]  518 	inc	dptr
      0005B0 E4               [12]  519 	clr	a
      0005B1 93               [24]  520 	movc	a,@a+dptr
      0005B2 90 30 80         [24]  521 	mov	dptr,#_ledfonts_numeric_flipped
      0005B5 93               [24]  522 	movc	a,@a+dptr
      0005B6 FD               [12]  523 	mov	r5,a
      0005B7 8D 3D            [24]  524 	mov	(_display_buffer + 0x0002),r5
                                    525 ;	../display.c:21: display_buffer[3] = ledfonts_numeric_normal[*(s+3)];
      0005B9 8E 82            [24]  526 	mov	dpl,r6
      0005BB 8F 83            [24]  527 	mov	dph,r7
      0005BD A3               [24]  528 	inc	dptr
      0005BE A3               [24]  529 	inc	dptr
      0005BF A3               [24]  530 	inc	dptr
      0005C0 E4               [12]  531 	clr	a
      0005C1 93               [24]  532 	movc	a,@a+dptr
      0005C2 90 30 00         [24]  533 	mov	dptr,#_ledfonts_numeric_normal
      0005C5 93               [24]  534 	movc	a,@a+dptr
      0005C6 FF               [12]  535 	mov	r7,a
      0005C7 8F 3E            [24]  536 	mov	(_display_buffer + 0x0003),r7
      0005C9 22               [24]  537 	ret
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function 'display_putbcd'
                                    540 ;------------------------------------------------------------
                                    541 ;v2                        Allocated with name '_display_putbcd_PARM_2'
                                    542 ;v1                        Allocated to registers r7 
                                    543 ;------------------------------------------------------------
                                    544 ;	../display.c:24: void display_putbcd(uint8_t v1, uint8_t v2) {
                                    545 ;	-----------------------------------------
                                    546 ;	 function display_putbcd
                                    547 ;	-----------------------------------------
      0005CA                        548 _display_putbcd:
                                    549 ;	../display.c:25: display_buffer[0] = ledfonts_numeric_normal[(v1 >> 0x04)];
      0005CA E5 82            [12]  550 	mov	a,dpl
      0005CC FF               [12]  551 	mov	r7,a
      0005CD C4               [12]  552 	swap	a
      0005CE 54 0F            [12]  553 	anl	a,#0x0f
      0005D0 90 30 00         [24]  554 	mov	dptr,#_ledfonts_numeric_normal
      0005D3 93               [24]  555 	movc	a,@a+dptr
      0005D4 FE               [12]  556 	mov	r6,a
      0005D5 8E 3B            [24]  557 	mov	_display_buffer,r6
                                    558 ;	../display.c:26: display_buffer[1] = ledfonts_numeric_normal[(v1 & 0x0f)];
      0005D7 74 0F            [12]  559 	mov	a,#0x0f
      0005D9 5F               [12]  560 	anl	a,r7
      0005DA 90 30 00         [24]  561 	mov	dptr,#_ledfonts_numeric_normal
      0005DD 93               [24]  562 	movc	a,@a+dptr
      0005DE FF               [12]  563 	mov	r7,a
      0005DF 8F 3C            [24]  564 	mov	(_display_buffer + 0x0001),r7
                                    565 ;	../display.c:27: display_buffer[2] = ledfonts_numeric_flipped[(v2 >> 0x04)];
      0005E1 E5 5E            [12]  566 	mov	a,_display_putbcd_PARM_2
      0005E3 C4               [12]  567 	swap	a
      0005E4 54 0F            [12]  568 	anl	a,#0x0f
      0005E6 90 30 80         [24]  569 	mov	dptr,#_ledfonts_numeric_flipped
      0005E9 93               [24]  570 	movc	a,@a+dptr
      0005EA FF               [12]  571 	mov	r7,a
      0005EB 8F 3D            [24]  572 	mov	(_display_buffer + 0x0002),r7
                                    573 ;	../display.c:28: display_buffer[3] = ledfonts_numeric_normal[(v2 & 0x0f)];
      0005ED 74 0F            [12]  574 	mov	a,#0x0f
      0005EF 55 5E            [12]  575 	anl	a,_display_putbcd_PARM_2
      0005F1 90 30 00         [24]  576 	mov	dptr,#_ledfonts_numeric_normal
      0005F4 93               [24]  577 	movc	a,@a+dptr
      0005F5 FF               [12]  578 	mov	r7,a
      0005F6 8F 3E            [24]  579 	mov	(_display_buffer + 0x0003),r7
      0005F8 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'display_puttime'
                                    583 ;------------------------------------------------------------
                                    584 ;minute                    Allocated with name '_display_puttime_PARM_2'
                                    585 ;hour                      Allocated to registers r7 
                                    586 ;------------------------------------------------------------
                                    587 ;	../display.c:31: void display_puttime(uint8_t hour, uint8_t minute) {
                                    588 ;	-----------------------------------------
                                    589 ;	 function display_puttime
                                    590 ;	-----------------------------------------
      0005F9                        591 _display_puttime:
      0005F9 AF 82            [24]  592 	mov	r7,dpl
                                    593 ;	../display.c:32: if(TIME_DISPLAY_12) {
      0005FB 90 00 03         [24]  594 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      0005FE E0               [24]  595 	movx	a,@dptr
      0005FF 23               [12]  596 	rl	a
      000600 23               [12]  597 	rl	a
      000601 54 01            [12]  598 	anl	a,#0x01
      000603 FE               [12]  599 	mov	r6,a
      000604 60 20            [24]  600 	jz	00104$
                                    601 ;	../display.c:33: display_putbcd(convert_24h_to_12h(hour),minute);
      000606 8F 82            [24]  602 	mov	dpl,r7
      000608 C0 07            [24]  603 	push	ar7
      00060A 12 0A 0E         [24]  604 	lcall	_convert_24h_to_12h
      00060D D0 07            [24]  605 	pop	ar7
      00060F 85 43 5E         [24]  606 	mov	_display_putbcd_PARM_2,_display_puttime_PARM_2
      000612 C0 07            [24]  607 	push	ar7
      000614 12 05 CA         [24]  608 	lcall	_display_putbcd
      000617 D0 07            [24]  609 	pop	ar7
                                    610 ;	../display.c:34: if(hour > 0x11)
      000619 EF               [12]  611 	mov	a,r7
      00061A 24 EE            [12]  612 	add	a,#0xff - 0x11
      00061C 50 10            [24]  613 	jnc	00105$
                                    614 ;	/home/shenghao/workspace/TESTMCS51/display.h:175: display_buffer[3] &= 0x7f;
      00061E 74 7F            [12]  615 	mov	a,#0x7f
      000620 55 3E            [12]  616 	anl	a,(_display_buffer + 0x0003)
      000622 F5 3E            [12]  617 	mov	(_display_buffer + 0x0003),a
                                    618 ;	../display.c:35: display_ampmon();
      000624 80 08            [24]  619 	sjmp	00105$
      000626                        620 00104$:
                                    621 ;	../display.c:37: display_putbcd(hour,minute);
      000626 85 43 5E         [24]  622 	mov	_display_putbcd_PARM_2,_display_puttime_PARM_2
      000629 8F 82            [24]  623 	mov	dpl,r7
      00062B 12 05 CA         [24]  624 	lcall	_display_putbcd
      00062E                        625 00105$:
                                    626 ;	../display.c:40: if(DISPLAY_REMOVE_LEADING_ZEROES &&
      00062E 90 00 02         [24]  627 	mov	dptr,#(_ds1302_sram_data + 0x0002)
      000631 E0               [24]  628 	movx	a,@dptr
      000632 FF               [12]  629 	mov	r7,a
      000633 30 E0 11         [24]  630 	jnb	acc.0,00110$
                                    631 ;	../display.c:41: (display_buffer[0] == ledfonts_numeric_normal['0']))
      000636 90 30 30         [24]  632 	mov	dptr,#(_ledfonts_numeric_normal + 0x0030)
      000639 E4               [12]  633 	clr	a
      00063A 93               [24]  634 	movc	a,@a+dptr
      00063B FF               [12]  635 	mov	r7,a
      00063C B5 3B 08         [24]  636 	cjne	a,_display_buffer,00110$
                                    637 ;	../display.c:42: display_buffer[0] = ledfonts_numeric_normal[' '];
      00063F 90 30 20         [24]  638 	mov	dptr,#(_ledfonts_numeric_normal + 0x0020)
      000642 E4               [12]  639 	clr	a
      000643 93               [24]  640 	movc	a,@a+dptr
      000644 FF               [12]  641 	mov	r7,a
      000645 8F 3B            [24]  642 	mov	_display_buffer,r7
      000647                        643 00110$:
      000647 22               [24]  644 	ret
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'display_putdate'
                                    647 ;------------------------------------------------------------
                                    648 ;	../display.c:45: void display_putdate(void) {
                                    649 ;	-----------------------------------------
                                    650 ;	 function display_putdate
                                    651 ;	-----------------------------------------
      000648                        652 _display_putdate:
                                    653 ;	../display.c:46: if(DATE_DISPLAY_MMDD)
      000648 90 00 03         [24]  654 	mov	dptr,#(_ds1302_sram_data + 0x0003)
      00064B E0               [24]  655 	movx	a,@dptr
      00064C 23               [12]  656 	rl	a
      00064D 54 01            [12]  657 	anl	a,#0x01
      00064F FF               [12]  658 	mov	r7,a
      000650 60 0B            [24]  659 	jz	00102$
                                    660 ;	../display.c:47: display_putbcd(ds1302.month,ds1302.date);
      000652 85 49 82         [24]  661 	mov	dpl,(_ds1302 + 0x0004)
      000655 85 48 5E         [24]  662 	mov	_display_putbcd_PARM_2,(_ds1302 + 0x0003)
      000658 12 05 CA         [24]  663 	lcall	_display_putbcd
      00065B 80 09            [24]  664 	sjmp	00103$
      00065D                        665 00102$:
                                    666 ;	../display.c:49: display_putbcd(ds1302.date,ds1302.month);
      00065D 85 48 82         [24]  667 	mov	dpl,(_ds1302 + 0x0003)
      000660 85 49 5E         [24]  668 	mov	_display_putbcd_PARM_2,(_ds1302 + 0x0004)
      000663 12 05 CA         [24]  669 	lcall	_display_putbcd
      000666                        670 00103$:
                                    671 ;	/home/shenghao/workspace/TESTMCS51/display.h:146: display_buffer[1] &= 0x7f;
      000666 74 7F            [12]  672 	mov	a,#0x7f
      000668 55 3C            [12]  673 	anl	a,(_display_buffer + 0x0001)
      00066A F5 3C            [12]  674 	mov	(_display_buffer + 0x0001),a
                                    675 ;	../display.c:52: if(DISPLAY_REMOVE_LEADING_ZEROES){
      00066C 90 00 02         [24]  676 	mov	dptr,#(_ds1302_sram_data + 0x0002)
      00066F E0               [24]  677 	movx	a,@dptr
      000670 FF               [12]  678 	mov	r7,a
      000671 30 E0 22         [24]  679 	jnb	acc.0,00111$
                                    680 ;	../display.c:53: if(display_buffer[0] == ledfonts_numeric_normal['0'])
      000674 90 30 30         [24]  681 	mov	dptr,#(_ledfonts_numeric_normal + 0x0030)
      000677 E4               [12]  682 	clr	a
      000678 93               [24]  683 	movc	a,@a+dptr
      000679 FF               [12]  684 	mov	r7,a
      00067A B5 3B 08         [24]  685 	cjne	a,_display_buffer,00105$
                                    686 ;	../display.c:54: display_buffer[0] = ledfonts_numeric_normal[' '];
      00067D 90 30 20         [24]  687 	mov	dptr,#(_ledfonts_numeric_normal + 0x0020)
      000680 E4               [12]  688 	clr	a
      000681 93               [24]  689 	movc	a,@a+dptr
      000682 FF               [12]  690 	mov	r7,a
      000683 8F 3B            [24]  691 	mov	_display_buffer,r7
      000685                        692 00105$:
                                    693 ;	../display.c:55: if(display_buffer[2] == ledfonts_numeric_flipped['0'])
      000685 90 30 B0         [24]  694 	mov	dptr,#(_ledfonts_numeric_flipped + 0x0030)
      000688 E4               [12]  695 	clr	a
      000689 93               [24]  696 	movc	a,@a+dptr
      00068A FF               [12]  697 	mov	r7,a
      00068B B5 3D 08         [24]  698 	cjne	a,(_display_buffer + 0x0002),00111$
                                    699 ;	../display.c:56: display_buffer[2] = ledfonts_numeric_flipped[' '];
      00068E 90 30 A0         [24]  700 	mov	dptr,#(_ledfonts_numeric_flipped + 0x0020)
      000691 E4               [12]  701 	clr	a
      000692 93               [24]  702 	movc	a,@a+dptr
      000693 FF               [12]  703 	mov	r7,a
      000694 8F 3D            [24]  704 	mov	(_display_buffer + 0x0002),r7
      000696                        705 00111$:
      000696 22               [24]  706 	ret
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'display_putbool'
                                    709 ;------------------------------------------------------------
                                    710 ;v                         Allocated to registers r7 
                                    711 ;------------------------------------------------------------
                                    712 ;	../display.c:60: void display_putbool(uint8_t v) {
                                    713 ;	-----------------------------------------
                                    714 ;	 function display_putbool
                                    715 ;	-----------------------------------------
      000697                        716 _display_putbool:
                                    717 ;	../display.c:61: if(v) {
      000697 E5 82            [12]  718 	mov	a,dpl
      000699 FF               [12]  719 	mov	r7,a
      00069A 60 11            [24]  720 	jz	00102$
                                    721 ;	../display.c:62: display_buffer[2] = ledfonts_numeric_flipped['O'];
      00069C 90 30 CF         [24]  722 	mov	dptr,#(_ledfonts_numeric_flipped + 0x004f)
      00069F E4               [12]  723 	clr	a
      0006A0 93               [24]  724 	movc	a,@a+dptr
      0006A1 FF               [12]  725 	mov	r7,a
      0006A2 8F 3D            [24]  726 	mov	(_display_buffer + 0x0002),r7
                                    727 ;	../display.c:63: display_buffer[3] = ledfonts_numeric_normal['N'];
      0006A4 90 30 4E         [24]  728 	mov	dptr,#(_ledfonts_numeric_normal + 0x004e)
      0006A7 E4               [12]  729 	clr	a
      0006A8 93               [24]  730 	movc	a,@a+dptr
      0006A9 FF               [12]  731 	mov	r7,a
      0006AA 8F 3E            [24]  732 	mov	(_display_buffer + 0x0003),r7
      0006AC 22               [24]  733 	ret
      0006AD                        734 00102$:
                                    735 ;	../display.c:65: display_buffer[2] = ledfonts_numeric_flipped['O'];
      0006AD 90 30 CF         [24]  736 	mov	dptr,#(_ledfonts_numeric_flipped + 0x004f)
      0006B0 E4               [12]  737 	clr	a
      0006B1 93               [24]  738 	movc	a,@a+dptr
      0006B2 FF               [12]  739 	mov	r7,a
      0006B3 8F 3D            [24]  740 	mov	(_display_buffer + 0x0002),r7
                                    741 ;	../display.c:66: display_buffer[3] = ledfonts_numeric_normal['F'];
      0006B5 90 30 46         [24]  742 	mov	dptr,#(_ledfonts_numeric_normal + 0x0046)
      0006B8 E4               [12]  743 	clr	a
      0006B9 93               [24]  744 	movc	a,@a+dptr
      0006BA FF               [12]  745 	mov	r7,a
      0006BB 8F 3E            [24]  746 	mov	(_display_buffer + 0x0003),r7
      0006BD 22               [24]  747 	ret
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'display_puttemp'
                                    750 ;------------------------------------------------------------
                                    751 ;v                         Allocated to registers r6 r7 
                                    752 ;------------------------------------------------------------
                                    753 ;	../display.c:70: void display_puttemp(uint16_t v) {
                                    754 ;	-----------------------------------------
                                    755 ;	 function display_puttemp
                                    756 ;	-----------------------------------------
      0006BE                        757 _display_puttemp:
      0006BE AE 82            [24]  758 	mov	r6,dpl
      0006C0 AF 83            [24]  759 	mov	r7,dph
                                    760 ;	../display.c:71: display_buffer[0] = ledfonts_numeric_normal[(v >> 0x08) & 0x0f];
      0006C2 8F 05            [24]  761 	mov	ar5,r7
      0006C4 74 0F            [12]  762 	mov	a,#0x0f
      0006C6 5D               [12]  763 	anl	a,r5
      0006C7 90 30 00         [24]  764 	mov	dptr,#_ledfonts_numeric_normal
      0006CA 93               [24]  765 	movc	a,@a+dptr
      0006CB FD               [12]  766 	mov	r5,a
      0006CC 8D 3B            [24]  767 	mov	_display_buffer,r5
                                    768 ;	../display.c:72: display_buffer[1] = ledfonts_numeric_normal[(v >> 0x04) & 0x0f];
      0006CE 8E 04            [24]  769 	mov	ar4,r6
      0006D0 EF               [12]  770 	mov	a,r7
      0006D1 C4               [12]  771 	swap	a
      0006D2 CC               [12]  772 	xch	a,r4
      0006D3 C4               [12]  773 	swap	a
      0006D4 54 0F            [12]  774 	anl	a,#0x0f
      0006D6 6C               [12]  775 	xrl	a,r4
      0006D7 CC               [12]  776 	xch	a,r4
      0006D8 54 0F            [12]  777 	anl	a,#0x0f
      0006DA CC               [12]  778 	xch	a,r4
      0006DB 6C               [12]  779 	xrl	a,r4
      0006DC CC               [12]  780 	xch	a,r4
      0006DD 53 04 0F         [24]  781 	anl	ar4,#0x0f
      0006E0 7D 00            [12]  782 	mov	r5,#0x00
      0006E2 EC               [12]  783 	mov	a,r4
      0006E3 24 00            [12]  784 	add	a,#_ledfonts_numeric_normal
      0006E5 F5 82            [12]  785 	mov	dpl,a
      0006E7 ED               [12]  786 	mov	a,r5
      0006E8 34 30            [12]  787 	addc	a,#(_ledfonts_numeric_normal >> 8)
      0006EA F5 83            [12]  788 	mov	dph,a
      0006EC E4               [12]  789 	clr	a
      0006ED 93               [24]  790 	movc	a,@a+dptr
      0006EE FD               [12]  791 	mov	r5,a
      0006EF 8D 3C            [24]  792 	mov	(_display_buffer + 0x0001),r5
                                    793 ;	../display.c:73: display_buffer[2] = ledfonts_numeric_flipped[v & 0x0f];
      0006F1 53 06 0F         [24]  794 	anl	ar6,#0x0f
      0006F4 7F 00            [12]  795 	mov	r7,#0x00
      0006F6 EE               [12]  796 	mov	a,r6
      0006F7 24 80            [12]  797 	add	a,#_ledfonts_numeric_flipped
      0006F9 F5 82            [12]  798 	mov	dpl,a
      0006FB EF               [12]  799 	mov	a,r7
      0006FC 34 30            [12]  800 	addc	a,#(_ledfonts_numeric_flipped >> 8)
      0006FE F5 83            [12]  801 	mov	dph,a
      000700 E4               [12]  802 	clr	a
      000701 93               [24]  803 	movc	a,@a+dptr
      000702 FF               [12]  804 	mov	r7,a
      000703 8F 3D            [24]  805 	mov	(_display_buffer + 0x0002),r7
                                    806 ;	../display.c:74: display_buffer[3] = ledfonts_numeric_normal['C'];
      000705 90 30 43         [24]  807 	mov	dptr,#(_ledfonts_numeric_normal + 0x0043)
      000708 E4               [12]  808 	clr	a
      000709 93               [24]  809 	movc	a,@a+dptr
      00070A FF               [12]  810 	mov	r7,a
      00070B 8F 3E            [24]  811 	mov	(_display_buffer + 0x0003),r7
                                    812 ;	/home/shenghao/workspace/TESTMCS51/display.h:146: display_buffer[1] &= 0x7f;
      00070D 74 7F            [12]  813 	mov	a,#0x7f
      00070F 55 3C            [12]  814 	anl	a,(_display_buffer + 0x0001)
      000711 F5 3C            [12]  815 	mov	(_display_buffer + 0x0001),a
                                    816 ;	../display.c:75: display_periodon();
      000713 22               [24]  817 	ret
                                    818 ;------------------------------------------------------------
                                    819 ;Allocation info for local variables in function 'ISR_PCA'
                                    820 ;------------------------------------------------------------
                                    821 ;flash_prescaler           Allocated with name '_ISR_PCA_flash_prescaler_1_149'
                                    822 ;__00030031                Allocated to registers r7 
                                    823 ;index                     Allocated to registers 
                                    824 ;------------------------------------------------------------
                                    825 ;	../display.c:78: void ISR_PCA(void) __interrupt(INT_PCA) __using(1)
                                    826 ;	-----------------------------------------
                                    827 ;	 function ISR_PCA
                                    828 ;	-----------------------------------------
      000714                        829 _ISR_PCA:
                           00000F   830 	ar7 = 0x0f
                           00000E   831 	ar6 = 0x0e
                           00000D   832 	ar5 = 0x0d
                           00000C   833 	ar4 = 0x0c
                           00000B   834 	ar3 = 0x0b
                           00000A   835 	ar2 = 0x0a
                           000009   836 	ar1 = 0x09
                           000008   837 	ar0 = 0x08
      000714 C0 E0            [24]  838 	push	acc
      000716 C0 F0            [24]  839 	push	b
      000718 C0 D0            [24]  840 	push	psw
      00071A 75 D0 08         [24]  841 	mov	psw,#0x08
                                    842 ;	../display.c:81: if(PCA_CF) {
                                    843 ;	../display.c:87: PCA_CF = 0;										//Disable interrupt flag
                                    844 ;	assignBit
      00071D 10 DF 02         [24]  845 	jbc	_PCA_CF,00132$
      000720 80 3D            [24]  846 	sjmp	00106$
      000722                        847 00132$:
                                    848 ;	../display.c:88: PCA_CCAP0_L = (display_counts & 0x0f); 			//Setup new compare value - Note that the low register MUST be written first to stop the comparison operation!
      000722 AF 41            [24]  849 	mov	r7,_display_counts
      000724 74 0F            [12]  850 	mov	a,#0x0f
      000726 5F               [12]  851 	anl	a,r7
      000727 F5 EA            [12]  852 	mov	_PCA_CCAP0_L,a
                                    853 ;	../display.c:89: PCA_CCAP0_H = (display_counts >> 8);			//Setup new compare value
      000729 85 42 FA         [24]  854 	mov	_PCA_CCAP0_H,(_display_counts + 1)
                                    855 ;	../display.c:90: PORT_P2 = display_buffer[display_index];		//Write segment buffer
      00072C E5 3F            [12]  856 	mov	a,_display_index
      00072E 24 3B            [12]  857 	add	a,#_display_buffer
      000730 F9               [12]  858 	mov	r1,a
      000731 87 A0            [24]  859 	mov	_PORT_P2,@r1
                                    860 ;	../display.c:93: if((flash_prescaler < 0x08) && ((display_flash >> display_index) & 0x01))
      000733 74 F8            [12]  861 	mov	a,#0x100 - 0x08
      000735 25 44            [12]  862 	add	a,_ISR_PCA_flash_prescaler_1_149
      000737 40 11            [24]  863 	jc	00102$
      000739 85 3F F0         [24]  864 	mov	b,_display_index
      00073C 05 F0            [12]  865 	inc	b
      00073E E5 40            [12]  866 	mov	a,_display_flash
      000740 80 02            [24]  867 	sjmp	00135$
      000742                        868 00134$:
      000742 C3               [12]  869 	clr	c
      000743 13               [12]  870 	rrc	a
      000744                        871 00135$:
      000744 D5 F0 FB         [24]  872 	djnz	b,00134$
      000747 20 E0 30         [24]  873 	jb	acc.0,00115$
      00074A                        874 00102$:
                                    875 ;	../display.c:96: display_drive_common(display_index);
      00074A AF 3F            [24]  876 	mov	r7,_display_index
                                    877 ;	/home/shenghao/workspace/TESTMCS51/board_config.h:46: PORT_P3 &= ~(0x04 << index);
      00074C 8F F0            [24]  878 	mov	b,r7
      00074E 05 F0            [12]  879 	inc	b
      000750 74 04            [12]  880 	mov	a,#0x04
      000752 80 02            [24]  881 	sjmp	00139$
      000754                        882 00137$:
      000754 25 E0            [12]  883 	add	a,acc
      000756                        884 00139$:
      000756 D5 F0 FB         [24]  885 	djnz	b,00137$
      000759 F4               [12]  886 	cpl	a
      00075A FF               [12]  887 	mov	r7,a
      00075B 52 B0            [12]  888 	anl	_PORT_P3,a
                                    889 ;	../display.c:96: display_drive_common(display_index);
                                    890 ;	../display.c:98: return;
      00075D 80 1B            [24]  891 	sjmp	00115$
      00075F                        892 00106$:
                                    893 ;	../display.c:101: if(PCA_CCF0) {
                                    894 ;	../display.c:106: PCA_CCF0 = 0;				//Disable interrupt flag
                                    895 ;	assignBit
      00075F 10 D8 02         [24]  896 	jbc	_PCA_CCF0,00140$
      000762 80 16            [24]  897 	sjmp	00115$
      000764                        898 00140$:
                                    899 ;	/home/shenghao/workspace/TESTMCS51/board_config.h:57: PORT_P3 |= (0x3c);
      000764 43 B0 3C         [24]  900 	orl	_PORT_P3,#0x3c
                                    901 ;	../display.c:108: if(!display_index){
      000767 E5 3F            [12]  902 	mov	a,_display_index
      000769 70 0D            [24]  903 	jnz	00110$
                                    904 ;	../display.c:110: if(!(flash_prescaler--))
      00076B AF 44            [24]  905 	mov	r7,_ISR_PCA_flash_prescaler_1_149
      00076D 15 44            [12]  906 	dec	_ISR_PCA_flash_prescaler_1_149
      00076F EF               [12]  907 	mov	a,r7
      000770 70 03            [24]  908 	jnz	00108$
                                    909 ;	../display.c:111: flash_prescaler = 0x10;
      000772 75 44 10         [24]  910 	mov	_ISR_PCA_flash_prescaler_1_149,#0x10
      000775                        911 00108$:
                                    912 ;	../display.c:112: display_index = 0x04;
      000775 75 3F 04         [24]  913 	mov	_display_index,#0x04
      000778                        914 00110$:
                                    915 ;	../display.c:114: display_index--;			//Decrement display index
      000778 15 3F            [12]  916 	dec	_display_index
                                    917 ;	../display.c:116: return;
      00077A                        918 00115$:
      00077A D0 D0            [24]  919 	pop	psw
      00077C D0 F0            [24]  920 	pop	b
      00077E D0 E0            [24]  921 	pop	acc
      000780 32               [24]  922 	reti
                                    923 ;	eliminated unneeded push/pop dpl
                                    924 ;	eliminated unneeded push/pop dph
                                    925 	.area CSEG    (CODE)
                                    926 	.area CONST   (CODE)
                                    927 	.area XINIT   (CODE)
                                    928 	.area CABS    (ABS,CODE)
