                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #9959 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module button
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UART_SM0
                                     12 	.globl _UART_SM1
                                     13 	.globl _UART_SM2
                                     14 	.globl _UART_REN
                                     15 	.globl _UART_TB8
                                     16 	.globl _UART_RB8
                                     17 	.globl _UART_TI
                                     18 	.globl _UART_RI
                                     19 	.globl _PCA_CF
                                     20 	.globl _PCA_CR
                                     21 	.globl _PCA_CCF2
                                     22 	.globl _PCA_CCF1
                                     23 	.globl _PCA_CCF0
                                     24 	.globl _TMR_TCON_TF1
                                     25 	.globl _TMR_TCON_TR1
                                     26 	.globl _TMR_TCON_TF0
                                     27 	.globl _TMR_TCON_TR0
                                     28 	.globl _TMR_TCON_IE1
                                     29 	.globl _TMR_TCON_IT1
                                     30 	.globl _TMR_TCON_IE0
                                     31 	.globl _TMR_TCON_IT0
                                     32 	.globl _INT_IP_PPCA
                                     33 	.globl _INT_IP_PLVD
                                     34 	.globl _INT_IP_PADC
                                     35 	.globl _INT_IP_PS
                                     36 	.globl _INT_IP_PT1
                                     37 	.globl _INT_IP_PX1
                                     38 	.globl _INT_IP_PT0
                                     39 	.globl _INT_IP_PX0
                                     40 	.globl _INT_IE_EA
                                     41 	.globl _INT_IE_ELVD
                                     42 	.globl _INT_IE_EADC
                                     43 	.globl _INT_IE_ES
                                     44 	.globl _INT_IE_ET1
                                     45 	.globl _INT_IE_EX1
                                     46 	.globl _INT_IE_ET0
                                     47 	.globl _INT_IE_EX0
                                     48 	.globl _PORT_P5_7
                                     49 	.globl _PORT_P5_6
                                     50 	.globl _PORT_P5_5
                                     51 	.globl _PORT_P5_4
                                     52 	.globl _PORT_P5_3
                                     53 	.globl _PORT_P5_2
                                     54 	.globl _PORT_P5_1
                                     55 	.globl _PORT_P5_0
                                     56 	.globl _PORT_P4_7
                                     57 	.globl _PORT_P4_6
                                     58 	.globl _PORT_P4_5
                                     59 	.globl _PORT_P4_4
                                     60 	.globl _PORT_P4_3
                                     61 	.globl _PORT_P4_2
                                     62 	.globl _PORT_P4_1
                                     63 	.globl _PORT_P4_0
                                     64 	.globl _PORT_P3_7
                                     65 	.globl _PORT_P3_6
                                     66 	.globl _PORT_P3_5
                                     67 	.globl _PORT_P3_4
                                     68 	.globl _PORT_P3_3
                                     69 	.globl _PORT_P3_2
                                     70 	.globl _PORT_P3_1
                                     71 	.globl _PORT_P3_0
                                     72 	.globl _PORT_P2_7
                                     73 	.globl _PORT_P2_6
                                     74 	.globl _PORT_P2_5
                                     75 	.globl _PORT_P2_4
                                     76 	.globl _PORT_P2_3
                                     77 	.globl _PORT_P2_2
                                     78 	.globl _PORT_P2_1
                                     79 	.globl _PORT_P2_0
                                     80 	.globl _PORT_P1_7
                                     81 	.globl _PORT_P1_6
                                     82 	.globl _PORT_P1_5
                                     83 	.globl _PORT_P1_4
                                     84 	.globl _PORT_P1_3
                                     85 	.globl _PORT_P1_2
                                     86 	.globl _PORT_P1_1
                                     87 	.globl _PORT_P1_0
                                     88 	.globl _CY
                                     89 	.globl _AC
                                     90 	.globl _F0
                                     91 	.globl _RS1
                                     92 	.globl _RS0
                                     93 	.globl _OV
                                     94 	.globl _F1
                                     95 	.globl _P
                                     96 	.globl _IAP_CONTR
                                     97 	.globl _IAP_TRIG
                                     98 	.globl _IAP_CMD
                                     99 	.globl _IAP_ADDR
                                    100 	.globl _IAP_ADDRL
                                    101 	.globl _IAP_ADDRH
                                    102 	.globl _IAP_DATA
                                    103 	.globl _UART_SADEN
                                    104 	.globl _UART_SADDR
                                    105 	.globl _UART_SBUF
                                    106 	.globl _UART_SCON
                                    107 	.globl _PCA_CMOD
                                    108 	.globl _PCA_CCON
                                    109 	.globl _PCA_PWM2
                                    110 	.globl _PCA_PWM1
                                    111 	.globl _PCA_PWM0
                                    112 	.globl _PCA_C
                                    113 	.globl _PCA_CCAP2_L
                                    114 	.globl _PCA_CCAP2_H
                                    115 	.globl _PCA_CCAP1_L
                                    116 	.globl _PCA_CCAP1_H
                                    117 	.globl _PCA_CCAP0_L
                                    118 	.globl _PCA_CCAP0_H
                                    119 	.globl _PCA_CCAP2
                                    120 	.globl _PCA_CCAP1
                                    121 	.globl _PCA_CCAP0
                                    122 	.globl _PCA_CCAPM2
                                    123 	.globl _PCA_CCAPM1
                                    124 	.globl _PCA_CCAPM0
                                    125 	.globl _CMP_CR2
                                    126 	.globl _CMP_CR1
                                    127 	.globl _ADC_RESL
                                    128 	.globl _ADC_RESH
                                    129 	.globl _ADC_RES
                                    130 	.globl _ADC_CONTR
                                    131 	.globl _ADC_P1ASF
                                    132 	.globl _EEPROM_CONTR
                                    133 	.globl _EEPROM_TRIG
                                    134 	.globl _EEPROM_CMD
                                    135 	.globl _EEPROM_ADDR
                                    136 	.globl _EEPROM_DATA
                                    137 	.globl _TMR_T2
                                    138 	.globl _TMR_T0
                                    139 	.globl _TMR_TMOD
                                    140 	.globl _TMR_TCON
                                    141 	.globl _INT_IP2
                                    142 	.globl _INT_IP
                                    143 	.globl _INT_IE2
                                    144 	.globl _INT_IE
                                    145 	.globl _PORT_P5M0
                                    146 	.globl _PORT_P5M1
                                    147 	.globl _PORT_P4M0
                                    148 	.globl _PORT_P4M1
                                    149 	.globl _PORT_P3M0
                                    150 	.globl _PORT_P3M1
                                    151 	.globl _PORT_P2M0
                                    152 	.globl _PORT_P2M1
                                    153 	.globl _PORT_P1M0
                                    154 	.globl _PORT_P1M1
                                    155 	.globl _PORT_P5
                                    156 	.globl _PORT_P4
                                    157 	.globl _PORT_P3
                                    158 	.globl _PORT_P2
                                    159 	.globl _PORT_P1
                                    160 	.globl _PSW
                                    161 	.globl _PCON2
                                    162 	.globl _AUXR2
                                    163 	.globl _AUXR1
                                    164 	.globl _AUXR
                                    165 	.globl _PCON
                                    166 	.globl _DPTR
                                    167 	.globl _SP
                                    168 	.globl _BUTTON_DATA_SELECT_HELD_DOWN
                                    169 	.globl _BUTTON_DATA_SELECT_RELEASED_LONGP
                                    170 	.globl _BUTTON_DATA_SELECT_RELEASED_NORMAL
                                    171 	.globl _BUTTON_DATA_SELECT_PRESSED
                                    172 	.globl _BUTTON_DATA_MENU_HELD_DOWN
                                    173 	.globl _BUTTON_DATA_MENU_RELEASED_LONGP
                                    174 	.globl _BUTTON_DATA_MENU_RELEASED_NORMAL
                                    175 	.globl _BUTTON_DATA_MENU_PRESSED
                                    176 	.globl _BUTTON_DATA
                                    177 	.globl _BUTTON_SELECT_CNT
                                    178 	.globl _BUTTON_MENU_CNT
                                    179 	.globl _BUTTON_SELECT_STATE
                                    180 	.globl _BUTTON_MENU_STATE
                                    181 	.globl _button_read_and_clear_select
                                    182 	.globl _button_read_and_clear_menu
                                    183 ;--------------------------------------------------------
                                    184 ; special function registers
                                    185 ;--------------------------------------------------------
                                    186 	.area RSEG    (ABS,DATA)
      000000                        187 	.org 0x0000
                           000081   188 _SP	=	0x0081
                           008382   189 _DPTR	=	0x8382
                           000087   190 _PCON	=	0x0087
                           00008E   191 _AUXR	=	0x008e
                           0000A2   192 _AUXR1	=	0x00a2
                           00008F   193 _AUXR2	=	0x008f
                           000097   194 _PCON2	=	0x0097
                           0000D0   195 _PSW	=	0x00d0
                           000090   196 _PORT_P1	=	0x0090
                           0000A0   197 _PORT_P2	=	0x00a0
                           0000B0   198 _PORT_P3	=	0x00b0
                           0000C0   199 _PORT_P4	=	0x00c0
                           0000C8   200 _PORT_P5	=	0x00c8
                           000091   201 _PORT_P1M1	=	0x0091
                           000092   202 _PORT_P1M0	=	0x0092
                           000095   203 _PORT_P2M1	=	0x0095
                           000096   204 _PORT_P2M0	=	0x0096
                           0000B1   205 _PORT_P3M1	=	0x00b1
                           0000B2   206 _PORT_P3M0	=	0x00b2
                           0000B3   207 _PORT_P4M1	=	0x00b3
                           0000B4   208 _PORT_P4M0	=	0x00b4
                           0000C9   209 _PORT_P5M1	=	0x00c9
                           0000CA   210 _PORT_P5M0	=	0x00ca
                           0000A8   211 _INT_IE	=	0x00a8
                           0000AF   212 _INT_IE2	=	0x00af
                           0000B8   213 _INT_IP	=	0x00b8
                           0000B5   214 _INT_IP2	=	0x00b5
                           000088   215 _TMR_TCON	=	0x0088
                           000089   216 _TMR_TMOD	=	0x0089
                           008C8A   217 _TMR_T0	=	0x8c8a
                           00D6D7   218 _TMR_T2	=	0xd6d7
                           0000C2   219 _EEPROM_DATA	=	0x00c2
                           00C3C4   220 _EEPROM_ADDR	=	0xc3c4
                           0000C5   221 _EEPROM_CMD	=	0x00c5
                           0000C6   222 _EEPROM_TRIG	=	0x00c6
                           0000C7   223 _EEPROM_CONTR	=	0x00c7
                           00009D   224 _ADC_P1ASF	=	0x009d
                           0000BC   225 _ADC_CONTR	=	0x00bc
                           00BDBE   226 _ADC_RES	=	0xbdbe
                           0000BD   227 _ADC_RESH	=	0x00bd
                           0000BE   228 _ADC_RESL	=	0x00be
                           0000E6   229 _CMP_CR1	=	0x00e6
                           0000E7   230 _CMP_CR2	=	0x00e7
                           0000DA   231 _PCA_CCAPM0	=	0x00da
                           0000DB   232 _PCA_CCAPM1	=	0x00db
                           0000DC   233 _PCA_CCAPM2	=	0x00dc
                           00FAEA   234 _PCA_CCAP0	=	0xfaea
                           00FBEB   235 _PCA_CCAP1	=	0xfbeb
                           00FCEC   236 _PCA_CCAP2	=	0xfcec
                           0000FA   237 _PCA_CCAP0_H	=	0x00fa
                           0000EA   238 _PCA_CCAP0_L	=	0x00ea
                           0000FB   239 _PCA_CCAP1_H	=	0x00fb
                           0000EB   240 _PCA_CCAP1_L	=	0x00eb
                           0000FC   241 _PCA_CCAP2_H	=	0x00fc
                           0000EC   242 _PCA_CCAP2_L	=	0x00ec
                           00F9E9   243 _PCA_C	=	0xf9e9
                           0000F2   244 _PCA_PWM0	=	0x00f2
                           0000F3   245 _PCA_PWM1	=	0x00f3
                           0000F4   246 _PCA_PWM2	=	0x00f4
                           0000D8   247 _PCA_CCON	=	0x00d8
                           0000D9   248 _PCA_CMOD	=	0x00d9
                           000098   249 _UART_SCON	=	0x0098
                           000099   250 _UART_SBUF	=	0x0099
                           0000A9   251 _UART_SADDR	=	0x00a9
                           0000B9   252 _UART_SADEN	=	0x00b9
                           0000C2   253 _IAP_DATA	=	0x00c2
                           0000C3   254 _IAP_ADDRH	=	0x00c3
                           0000C4   255 _IAP_ADDRL	=	0x00c4
                           00C3C4   256 _IAP_ADDR	=	0xc3c4
                           0000C5   257 _IAP_CMD	=	0x00c5
                           0000C6   258 _IAP_TRIG	=	0x00c6
                           0000C7   259 _IAP_CONTR	=	0x00c7
                                    260 ;--------------------------------------------------------
                                    261 ; special function bits
                                    262 ;--------------------------------------------------------
                                    263 	.area RSEG    (ABS,DATA)
      000000                        264 	.org 0x0000
                           0000D0   265 _P	=	0x00d0
                           0000D1   266 _F1	=	0x00d1
                           0000D2   267 _OV	=	0x00d2
                           0000D3   268 _RS0	=	0x00d3
                           0000D4   269 _RS1	=	0x00d4
                           0000D5   270 _F0	=	0x00d5
                           0000D6   271 _AC	=	0x00d6
                           0000D7   272 _CY	=	0x00d7
                           000090   273 _PORT_P1_0	=	0x0090
                           000091   274 _PORT_P1_1	=	0x0091
                           000092   275 _PORT_P1_2	=	0x0092
                           000093   276 _PORT_P1_3	=	0x0093
                           000094   277 _PORT_P1_4	=	0x0094
                           000095   278 _PORT_P1_5	=	0x0095
                           000096   279 _PORT_P1_6	=	0x0096
                           000097   280 _PORT_P1_7	=	0x0097
                           0000A0   281 _PORT_P2_0	=	0x00a0
                           0000A1   282 _PORT_P2_1	=	0x00a1
                           0000A2   283 _PORT_P2_2	=	0x00a2
                           0000A3   284 _PORT_P2_3	=	0x00a3
                           0000A4   285 _PORT_P2_4	=	0x00a4
                           0000A5   286 _PORT_P2_5	=	0x00a5
                           0000A6   287 _PORT_P2_6	=	0x00a6
                           0000A7   288 _PORT_P2_7	=	0x00a7
                           0000B0   289 _PORT_P3_0	=	0x00b0
                           0000B1   290 _PORT_P3_1	=	0x00b1
                           0000B2   291 _PORT_P3_2	=	0x00b2
                           0000B3   292 _PORT_P3_3	=	0x00b3
                           0000B4   293 _PORT_P3_4	=	0x00b4
                           0000B5   294 _PORT_P3_5	=	0x00b5
                           0000B6   295 _PORT_P3_6	=	0x00b6
                           0000B7   296 _PORT_P3_7	=	0x00b7
                           0000C0   297 _PORT_P4_0	=	0x00c0
                           0000C1   298 _PORT_P4_1	=	0x00c1
                           0000C2   299 _PORT_P4_2	=	0x00c2
                           0000C3   300 _PORT_P4_3	=	0x00c3
                           0000C4   301 _PORT_P4_4	=	0x00c4
                           0000C5   302 _PORT_P4_5	=	0x00c5
                           0000C6   303 _PORT_P4_6	=	0x00c6
                           0000C7   304 _PORT_P4_7	=	0x00c7
                           0000C8   305 _PORT_P5_0	=	0x00c8
                           0000C9   306 _PORT_P5_1	=	0x00c9
                           0000CA   307 _PORT_P5_2	=	0x00ca
                           0000CB   308 _PORT_P5_3	=	0x00cb
                           0000CC   309 _PORT_P5_4	=	0x00cc
                           0000CD   310 _PORT_P5_5	=	0x00cd
                           0000CE   311 _PORT_P5_6	=	0x00ce
                           0000CD   312 _PORT_P5_7	=	0x00cd
                           0000A8   313 _INT_IE_EX0	=	0x00a8
                           0000A9   314 _INT_IE_ET0	=	0x00a9
                           0000AA   315 _INT_IE_EX1	=	0x00aa
                           0000AB   316 _INT_IE_ET1	=	0x00ab
                           0000AC   317 _INT_IE_ES	=	0x00ac
                           0000AD   318 _INT_IE_EADC	=	0x00ad
                           0000AE   319 _INT_IE_ELVD	=	0x00ae
                           0000AF   320 _INT_IE_EA	=	0x00af
                           0000B8   321 _INT_IP_PX0	=	0x00b8
                           0000B9   322 _INT_IP_PT0	=	0x00b9
                           0000BA   323 _INT_IP_PX1	=	0x00ba
                           0000BB   324 _INT_IP_PT1	=	0x00bb
                           0000BC   325 _INT_IP_PS	=	0x00bc
                           0000BD   326 _INT_IP_PADC	=	0x00bd
                           0000BE   327 _INT_IP_PLVD	=	0x00be
                           0000BF   328 _INT_IP_PPCA	=	0x00bf
                           000088   329 _TMR_TCON_IT0	=	0x0088
                           000089   330 _TMR_TCON_IE0	=	0x0089
                           00008A   331 _TMR_TCON_IT1	=	0x008a
                           00008B   332 _TMR_TCON_IE1	=	0x008b
                           00008C   333 _TMR_TCON_TR0	=	0x008c
                           00008D   334 _TMR_TCON_TF0	=	0x008d
                           00008E   335 _TMR_TCON_TR1	=	0x008e
                           00008F   336 _TMR_TCON_TF1	=	0x008f
                           0000D8   337 _PCA_CCF0	=	0x00d8
                           0000D9   338 _PCA_CCF1	=	0x00d9
                           0000DA   339 _PCA_CCF2	=	0x00da
                           0000DE   340 _PCA_CR	=	0x00de
                           0000DF   341 _PCA_CF	=	0x00df
                           000098   342 _UART_RI	=	0x0098
                           000099   343 _UART_TI	=	0x0099
                           00009A   344 _UART_RB8	=	0x009a
                           00009B   345 _UART_TB8	=	0x009b
                           00009C   346 _UART_REN	=	0x009c
                           00009D   347 _UART_SM2	=	0x009d
                           00009E   348 _UART_SM1	=	0x009e
                           00009E   349 _UART_SM0	=	0x009e
                                    350 ;--------------------------------------------------------
                                    351 ; overlayable register banks
                                    352 ;--------------------------------------------------------
                                    353 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        354 	.ds 8
                                    355 ;--------------------------------------------------------
                                    356 ; internal ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area DSEG    (DATA)
      000037                        359 _BUTTON_MENU_STATE::
      000037                        360 	.ds 1
      000038                        361 _BUTTON_SELECT_STATE::
      000038                        362 	.ds 1
      000039                        363 _BUTTON_MENU_CNT::
      000039                        364 	.ds 1
      00003A                        365 _BUTTON_SELECT_CNT::
      00003A                        366 	.ds 1
                           000022   367 _BUTTON_DATA	=	0x0022
                                    368 ;--------------------------------------------------------
                                    369 ; overlayable items in internal ram 
                                    370 ;--------------------------------------------------------
                                    371 	.area	OSEG    (OVR,DATA)
                                    372 	.area	OSEG    (OVR,DATA)
                                    373 ;--------------------------------------------------------
                                    374 ; indirectly addressable internal ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area ISEG    (DATA)
                                    377 ;--------------------------------------------------------
                                    378 ; absolute internal ram data
                                    379 ;--------------------------------------------------------
                                    380 	.area IABS    (ABS,DATA)
                                    381 	.area IABS    (ABS,DATA)
                                    382 ;--------------------------------------------------------
                                    383 ; bit data
                                    384 ;--------------------------------------------------------
                                    385 	.area BSEG    (BIT)
                           000010   386 _BUTTON_DATA_MENU_PRESSED	=	0x0010
                           000011   387 _BUTTON_DATA_MENU_RELEASED_NORMAL	=	0x0011
                           000012   388 _BUTTON_DATA_MENU_RELEASED_LONGP	=	0x0012
                           000013   389 _BUTTON_DATA_MENU_HELD_DOWN	=	0x0013
                           000014   390 _BUTTON_DATA_SELECT_PRESSED	=	0x0014
                           000015   391 _BUTTON_DATA_SELECT_RELEASED_NORMAL	=	0x0015
                           000016   392 _BUTTON_DATA_SELECT_RELEASED_LONGP	=	0x0016
                           000017   393 _BUTTON_DATA_SELECT_HELD_DOWN	=	0x0017
                                    394 ;--------------------------------------------------------
                                    395 ; paged external ram data
                                    396 ;--------------------------------------------------------
                                    397 	.area PSEG    (PAG,XDATA)
                                    398 ;--------------------------------------------------------
                                    399 ; external ram data
                                    400 ;--------------------------------------------------------
                                    401 	.area XSEG    (XDATA)
                                    402 ;--------------------------------------------------------
                                    403 ; absolute external ram data
                                    404 ;--------------------------------------------------------
                                    405 	.area XABS    (ABS,XDATA)
                                    406 ;--------------------------------------------------------
                                    407 ; external initialized ram data
                                    408 ;--------------------------------------------------------
                                    409 	.area XISEG   (XDATA)
                                    410 	.area HOME    (CODE)
                                    411 	.area GSINIT0 (CODE)
                                    412 	.area GSINIT1 (CODE)
                                    413 	.area GSINIT2 (CODE)
                                    414 	.area GSINIT3 (CODE)
                                    415 	.area GSINIT4 (CODE)
                                    416 	.area GSINIT5 (CODE)
                                    417 	.area GSINIT  (CODE)
                                    418 	.area GSFINAL (CODE)
                                    419 	.area CSEG    (CODE)
                                    420 ;--------------------------------------------------------
                                    421 ; global & static initialisations
                                    422 ;--------------------------------------------------------
                                    423 	.area HOME    (CODE)
                                    424 	.area GSINIT  (CODE)
                                    425 	.area GSFINAL (CODE)
                                    426 	.area GSINIT  (CODE)
                                    427 ;--------------------------------------------------------
                                    428 ; Home
                                    429 ;--------------------------------------------------------
                                    430 	.area HOME    (CODE)
                                    431 	.area HOME    (CODE)
                                    432 ;--------------------------------------------------------
                                    433 ; code
                                    434 ;--------------------------------------------------------
                                    435 	.area CSEG    (CODE)
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'button_read_and_clear_select'
                                    438 ;------------------------------------------------------------
                                    439 ;s                         Allocated to registers r7 
                                    440 ;------------------------------------------------------------
                                    441 ;	../button.c:11: enum button_states button_read_and_clear_select() {
                                    442 ;	-----------------------------------------
                                    443 ;	 function button_read_and_clear_select
                                    444 ;	-----------------------------------------
      0004DE                        445 _button_read_and_clear_select:
                           000007   446 	ar7 = 0x07
                           000006   447 	ar6 = 0x06
                           000005   448 	ar5 = 0x05
                           000004   449 	ar4 = 0x04
                           000003   450 	ar3 = 0x03
                           000002   451 	ar2 = 0x02
                           000001   452 	ar1 = 0x01
                           000000   453 	ar0 = 0x00
                                    454 ;	../button.c:13: INT_IE_ET0 = 0; //Disable timer 0 interrupt so we don't get half bit sets
                                    455 ;	assignBit
      0004DE C2 A9            [12]  456 	clr	_INT_IE_ET0
                                    457 ;	../button.c:14: if(!(BUTTON_DATA >> 0x05)){
      0004E0 E5 22            [12]  458 	mov	a,_BUTTON_DATA
      0004E2 C4               [12]  459 	swap	a
      0004E3 03               [12]  460 	rr	a
      0004E4 54 07            [12]  461 	anl	a,#0x07
      0004E6 FF               [12]  462 	mov	r7,a
      0004E7 70 06            [24]  463 	jnz	00102$
                                    464 ;	../button.c:15: INT_IE_ET0 = 1;
                                    465 ;	assignBit
      0004E9 D2 A9            [12]  466 	setb	_INT_IE_ET0
                                    467 ;	../button.c:16: return BUTTON_NONE;
      0004EB 75 82 03         [24]  468 	mov	dpl,#0x03
      0004EE 22               [24]  469 	ret
      0004EF                        470 00102$:
                                    471 ;	../button.c:18: if(BUTTON_DATA_SELECT_HELD_DOWN){
      0004EF 30 17 06         [24]  472 	jnb	_BUTTON_DATA_SELECT_HELD_DOWN,00104$
                                    473 ;	../button.c:19: INT_IE_ET0 = 1;
                                    474 ;	assignBit
      0004F2 D2 A9            [12]  475 	setb	_INT_IE_ET0
                                    476 ;	../button.c:20: return BUTTON_HELD_DOWN;
      0004F4 75 82 02         [24]  477 	mov	dpl,#0x02
      0004F7 22               [24]  478 	ret
      0004F8                        479 00104$:
                                    480 ;	../button.c:22: if(BUTTON_DATA_SELECT_RELEASED_NORMAL){
                                    481 ;	../button.c:23: BUTTON_DATA_SELECT_RELEASED_NORMAL = 0;
                                    482 ;	assignBit
      0004F8 10 15 02         [24]  483 	jbc	_BUTTON_DATA_SELECT_RELEASED_NORMAL,00121$
      0004FB 80 04            [24]  484 	sjmp	00106$
      0004FD                        485 00121$:
                                    486 ;	../button.c:24: s = BUTTON_PRESSED;
      0004FD 7F 00            [12]  487 	mov	r7,#0x00
      0004FF 80 04            [24]  488 	sjmp	00107$
      000501                        489 00106$:
                                    490 ;	../button.c:26: BUTTON_DATA_SELECT_RELEASED_LONGP = 0;
                                    491 ;	assignBit
      000501 C2 16            [12]  492 	clr	_BUTTON_DATA_SELECT_RELEASED_LONGP
                                    493 ;	../button.c:27: s = BUTTON_LONG_PRESSED;
      000503 7F 01            [12]  494 	mov	r7,#0x01
      000505                        495 00107$:
                                    496 ;	../button.c:29: INT_IE_ET0 = 1; //Enable timer 0 interrupt
                                    497 ;	assignBit
      000505 D2 A9            [12]  498 	setb	_INT_IE_ET0
                                    499 ;	../button.c:30: return s;
      000507 8F 82            [24]  500 	mov	dpl,r7
      000509 22               [24]  501 	ret
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'button_read_and_clear_menu'
                                    504 ;------------------------------------------------------------
                                    505 ;s                         Allocated to registers r7 
                                    506 ;------------------------------------------------------------
                                    507 ;	../button.c:33: enum button_states button_read_and_clear_menu() {
                                    508 ;	-----------------------------------------
                                    509 ;	 function button_read_and_clear_menu
                                    510 ;	-----------------------------------------
      00050A                        511 _button_read_and_clear_menu:
                                    512 ;	../button.c:35: INT_IE_ET0 = 0; //Disable timer 0 interrupt so we don't get half bit sets
                                    513 ;	assignBit
      00050A C2 A9            [12]  514 	clr	_INT_IE_ET0
                                    515 ;	../button.c:36: if(!(BUTTON_DATA & 0x0e)){
      00050C E5 22            [12]  516 	mov	a,_BUTTON_DATA
      00050E 54 0E            [12]  517 	anl	a,#0x0e
      000510 60 02            [24]  518 	jz	00120$
      000512 80 06            [24]  519 	sjmp	00102$
      000514                        520 00120$:
                                    521 ;	../button.c:37: INT_IE_ET0 = 1;
                                    522 ;	assignBit
      000514 D2 A9            [12]  523 	setb	_INT_IE_ET0
                                    524 ;	../button.c:38: return BUTTON_NONE;
      000516 75 82 03         [24]  525 	mov	dpl,#0x03
      000519 22               [24]  526 	ret
      00051A                        527 00102$:
                                    528 ;	../button.c:40: if(BUTTON_DATA_MENU_HELD_DOWN){
      00051A 30 13 06         [24]  529 	jnb	_BUTTON_DATA_MENU_HELD_DOWN,00104$
                                    530 ;	../button.c:41: INT_IE_ET0 = 1;
                                    531 ;	assignBit
      00051D D2 A9            [12]  532 	setb	_INT_IE_ET0
                                    533 ;	../button.c:42: return BUTTON_HELD_DOWN;
      00051F 75 82 02         [24]  534 	mov	dpl,#0x02
      000522 22               [24]  535 	ret
      000523                        536 00104$:
                                    537 ;	../button.c:44: if(BUTTON_DATA_MENU_RELEASED_NORMAL){
                                    538 ;	../button.c:45: BUTTON_DATA_MENU_RELEASED_NORMAL = 0;
                                    539 ;	assignBit
      000523 10 11 02         [24]  540 	jbc	_BUTTON_DATA_MENU_RELEASED_NORMAL,00122$
      000526 80 04            [24]  541 	sjmp	00106$
      000528                        542 00122$:
                                    543 ;	../button.c:46: s = BUTTON_PRESSED;
      000528 7F 00            [12]  544 	mov	r7,#0x00
      00052A 80 04            [24]  545 	sjmp	00107$
      00052C                        546 00106$:
                                    547 ;	../button.c:48: BUTTON_DATA_MENU_RELEASED_LONGP = 0;
                                    548 ;	assignBit
      00052C C2 12            [12]  549 	clr	_BUTTON_DATA_MENU_RELEASED_LONGP
                                    550 ;	../button.c:49: s = BUTTON_LONG_PRESSED;
      00052E 7F 01            [12]  551 	mov	r7,#0x01
      000530                        552 00107$:
                                    553 ;	../button.c:51: INT_IE_ET0 = 1; //Enable timer 0 interrupt
                                    554 ;	assignBit
      000530 D2 A9            [12]  555 	setb	_INT_IE_ET0
                                    556 ;	../button.c:52: return s;
      000532 8F 82            [24]  557 	mov	dpl,r7
      000534 22               [24]  558 	ret
                                    559 	.area CSEG    (CODE)
                                    560 	.area CONST   (CODE)
                                    561 	.area XINIT   (CODE)
                                    562 	.area CABS    (ABS,CODE)
