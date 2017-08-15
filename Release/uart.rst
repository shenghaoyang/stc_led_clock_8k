                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #9959 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _putchar
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
                                    169 ;--------------------------------------------------------
                                    170 ; special function registers
                                    171 ;--------------------------------------------------------
                                    172 	.area RSEG    (ABS,DATA)
      000000                        173 	.org 0x0000
                           000081   174 _SP	=	0x0081
                           008382   175 _DPTR	=	0x8382
                           000087   176 _PCON	=	0x0087
                           00008E   177 _AUXR	=	0x008e
                           0000A2   178 _AUXR1	=	0x00a2
                           00008F   179 _AUXR2	=	0x008f
                           000097   180 _PCON2	=	0x0097
                           0000D0   181 _PSW	=	0x00d0
                           000090   182 _PORT_P1	=	0x0090
                           0000A0   183 _PORT_P2	=	0x00a0
                           0000B0   184 _PORT_P3	=	0x00b0
                           0000C0   185 _PORT_P4	=	0x00c0
                           0000C8   186 _PORT_P5	=	0x00c8
                           000091   187 _PORT_P1M1	=	0x0091
                           000092   188 _PORT_P1M0	=	0x0092
                           000095   189 _PORT_P2M1	=	0x0095
                           000096   190 _PORT_P2M0	=	0x0096
                           0000B1   191 _PORT_P3M1	=	0x00b1
                           0000B2   192 _PORT_P3M0	=	0x00b2
                           0000B3   193 _PORT_P4M1	=	0x00b3
                           0000B4   194 _PORT_P4M0	=	0x00b4
                           0000C9   195 _PORT_P5M1	=	0x00c9
                           0000CA   196 _PORT_P5M0	=	0x00ca
                           0000A8   197 _INT_IE	=	0x00a8
                           0000AF   198 _INT_IE2	=	0x00af
                           0000B8   199 _INT_IP	=	0x00b8
                           0000B5   200 _INT_IP2	=	0x00b5
                           000088   201 _TMR_TCON	=	0x0088
                           000089   202 _TMR_TMOD	=	0x0089
                           008C8A   203 _TMR_T0	=	0x8c8a
                           00D6D7   204 _TMR_T2	=	0xd6d7
                           0000C2   205 _EEPROM_DATA	=	0x00c2
                           00C3C4   206 _EEPROM_ADDR	=	0xc3c4
                           0000C5   207 _EEPROM_CMD	=	0x00c5
                           0000C6   208 _EEPROM_TRIG	=	0x00c6
                           0000C7   209 _EEPROM_CONTR	=	0x00c7
                           00009D   210 _ADC_P1ASF	=	0x009d
                           0000BC   211 _ADC_CONTR	=	0x00bc
                           00BDBE   212 _ADC_RES	=	0xbdbe
                           0000BD   213 _ADC_RESH	=	0x00bd
                           0000BE   214 _ADC_RESL	=	0x00be
                           0000E6   215 _CMP_CR1	=	0x00e6
                           0000E7   216 _CMP_CR2	=	0x00e7
                           0000DA   217 _PCA_CCAPM0	=	0x00da
                           0000DB   218 _PCA_CCAPM1	=	0x00db
                           0000DC   219 _PCA_CCAPM2	=	0x00dc
                           00FAEA   220 _PCA_CCAP0	=	0xfaea
                           00FBEB   221 _PCA_CCAP1	=	0xfbeb
                           00FCEC   222 _PCA_CCAP2	=	0xfcec
                           0000FA   223 _PCA_CCAP0_H	=	0x00fa
                           0000EA   224 _PCA_CCAP0_L	=	0x00ea
                           0000FB   225 _PCA_CCAP1_H	=	0x00fb
                           0000EB   226 _PCA_CCAP1_L	=	0x00eb
                           0000FC   227 _PCA_CCAP2_H	=	0x00fc
                           0000EC   228 _PCA_CCAP2_L	=	0x00ec
                           00F9E9   229 _PCA_C	=	0xf9e9
                           0000F2   230 _PCA_PWM0	=	0x00f2
                           0000F3   231 _PCA_PWM1	=	0x00f3
                           0000F4   232 _PCA_PWM2	=	0x00f4
                           0000D8   233 _PCA_CCON	=	0x00d8
                           0000D9   234 _PCA_CMOD	=	0x00d9
                           000098   235 _UART_SCON	=	0x0098
                           000099   236 _UART_SBUF	=	0x0099
                           0000A9   237 _UART_SADDR	=	0x00a9
                           0000B9   238 _UART_SADEN	=	0x00b9
                           0000C2   239 _IAP_DATA	=	0x00c2
                           0000C3   240 _IAP_ADDRH	=	0x00c3
                           0000C4   241 _IAP_ADDRL	=	0x00c4
                           00C3C4   242 _IAP_ADDR	=	0xc3c4
                           0000C5   243 _IAP_CMD	=	0x00c5
                           0000C6   244 _IAP_TRIG	=	0x00c6
                           0000C7   245 _IAP_CONTR	=	0x00c7
                                    246 ;--------------------------------------------------------
                                    247 ; special function bits
                                    248 ;--------------------------------------------------------
                                    249 	.area RSEG    (ABS,DATA)
      000000                        250 	.org 0x0000
                           0000D0   251 _P	=	0x00d0
                           0000D1   252 _F1	=	0x00d1
                           0000D2   253 _OV	=	0x00d2
                           0000D3   254 _RS0	=	0x00d3
                           0000D4   255 _RS1	=	0x00d4
                           0000D5   256 _F0	=	0x00d5
                           0000D6   257 _AC	=	0x00d6
                           0000D7   258 _CY	=	0x00d7
                           000090   259 _PORT_P1_0	=	0x0090
                           000091   260 _PORT_P1_1	=	0x0091
                           000092   261 _PORT_P1_2	=	0x0092
                           000093   262 _PORT_P1_3	=	0x0093
                           000094   263 _PORT_P1_4	=	0x0094
                           000095   264 _PORT_P1_5	=	0x0095
                           000096   265 _PORT_P1_6	=	0x0096
                           000097   266 _PORT_P1_7	=	0x0097
                           0000A0   267 _PORT_P2_0	=	0x00a0
                           0000A1   268 _PORT_P2_1	=	0x00a1
                           0000A2   269 _PORT_P2_2	=	0x00a2
                           0000A3   270 _PORT_P2_3	=	0x00a3
                           0000A4   271 _PORT_P2_4	=	0x00a4
                           0000A5   272 _PORT_P2_5	=	0x00a5
                           0000A6   273 _PORT_P2_6	=	0x00a6
                           0000A7   274 _PORT_P2_7	=	0x00a7
                           0000B0   275 _PORT_P3_0	=	0x00b0
                           0000B1   276 _PORT_P3_1	=	0x00b1
                           0000B2   277 _PORT_P3_2	=	0x00b2
                           0000B3   278 _PORT_P3_3	=	0x00b3
                           0000B4   279 _PORT_P3_4	=	0x00b4
                           0000B5   280 _PORT_P3_5	=	0x00b5
                           0000B6   281 _PORT_P3_6	=	0x00b6
                           0000B7   282 _PORT_P3_7	=	0x00b7
                           0000C0   283 _PORT_P4_0	=	0x00c0
                           0000C1   284 _PORT_P4_1	=	0x00c1
                           0000C2   285 _PORT_P4_2	=	0x00c2
                           0000C3   286 _PORT_P4_3	=	0x00c3
                           0000C4   287 _PORT_P4_4	=	0x00c4
                           0000C5   288 _PORT_P4_5	=	0x00c5
                           0000C6   289 _PORT_P4_6	=	0x00c6
                           0000C7   290 _PORT_P4_7	=	0x00c7
                           0000C8   291 _PORT_P5_0	=	0x00c8
                           0000C9   292 _PORT_P5_1	=	0x00c9
                           0000CA   293 _PORT_P5_2	=	0x00ca
                           0000CB   294 _PORT_P5_3	=	0x00cb
                           0000CC   295 _PORT_P5_4	=	0x00cc
                           0000CD   296 _PORT_P5_5	=	0x00cd
                           0000CE   297 _PORT_P5_6	=	0x00ce
                           0000CD   298 _PORT_P5_7	=	0x00cd
                           0000A8   299 _INT_IE_EX0	=	0x00a8
                           0000A9   300 _INT_IE_ET0	=	0x00a9
                           0000AA   301 _INT_IE_EX1	=	0x00aa
                           0000AB   302 _INT_IE_ET1	=	0x00ab
                           0000AC   303 _INT_IE_ES	=	0x00ac
                           0000AD   304 _INT_IE_EADC	=	0x00ad
                           0000AE   305 _INT_IE_ELVD	=	0x00ae
                           0000AF   306 _INT_IE_EA	=	0x00af
                           0000B8   307 _INT_IP_PX0	=	0x00b8
                           0000B9   308 _INT_IP_PT0	=	0x00b9
                           0000BA   309 _INT_IP_PX1	=	0x00ba
                           0000BB   310 _INT_IP_PT1	=	0x00bb
                           0000BC   311 _INT_IP_PS	=	0x00bc
                           0000BD   312 _INT_IP_PADC	=	0x00bd
                           0000BE   313 _INT_IP_PLVD	=	0x00be
                           0000BF   314 _INT_IP_PPCA	=	0x00bf
                           000088   315 _TMR_TCON_IT0	=	0x0088
                           000089   316 _TMR_TCON_IE0	=	0x0089
                           00008A   317 _TMR_TCON_IT1	=	0x008a
                           00008B   318 _TMR_TCON_IE1	=	0x008b
                           00008C   319 _TMR_TCON_TR0	=	0x008c
                           00008D   320 _TMR_TCON_TF0	=	0x008d
                           00008E   321 _TMR_TCON_TR1	=	0x008e
                           00008F   322 _TMR_TCON_TF1	=	0x008f
                           0000D8   323 _PCA_CCF0	=	0x00d8
                           0000D9   324 _PCA_CCF1	=	0x00d9
                           0000DA   325 _PCA_CCF2	=	0x00da
                           0000DE   326 _PCA_CR	=	0x00de
                           0000DF   327 _PCA_CF	=	0x00df
                           000098   328 _UART_RI	=	0x0098
                           000099   329 _UART_TI	=	0x0099
                           00009A   330 _UART_RB8	=	0x009a
                           00009B   331 _UART_TB8	=	0x009b
                           00009C   332 _UART_REN	=	0x009c
                           00009D   333 _UART_SM2	=	0x009d
                           00009E   334 _UART_SM1	=	0x009e
                           00009E   335 _UART_SM0	=	0x009e
                                    336 ;--------------------------------------------------------
                                    337 ; overlayable register banks
                                    338 ;--------------------------------------------------------
                                    339 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        340 	.ds 8
                                    341 ;--------------------------------------------------------
                                    342 ; internal ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area DSEG    (DATA)
                                    345 ;--------------------------------------------------------
                                    346 ; overlayable items in internal ram 
                                    347 ;--------------------------------------------------------
                                    348 	.area	OSEG    (OVR,DATA)
                                    349 ;--------------------------------------------------------
                                    350 ; indirectly addressable internal ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area ISEG    (DATA)
                                    353 ;--------------------------------------------------------
                                    354 ; absolute internal ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area IABS    (ABS,DATA)
                                    357 	.area IABS    (ABS,DATA)
                                    358 ;--------------------------------------------------------
                                    359 ; bit data
                                    360 ;--------------------------------------------------------
                                    361 	.area BSEG    (BIT)
                                    362 ;--------------------------------------------------------
                                    363 ; paged external ram data
                                    364 ;--------------------------------------------------------
                                    365 	.area PSEG    (PAG,XDATA)
                                    366 ;--------------------------------------------------------
                                    367 ; external ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area XSEG    (XDATA)
                                    370 ;--------------------------------------------------------
                                    371 ; absolute external ram data
                                    372 ;--------------------------------------------------------
                                    373 	.area XABS    (ABS,XDATA)
                                    374 ;--------------------------------------------------------
                                    375 ; external initialized ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area XISEG   (XDATA)
                                    378 	.area HOME    (CODE)
                                    379 	.area GSINIT0 (CODE)
                                    380 	.area GSINIT1 (CODE)
                                    381 	.area GSINIT2 (CODE)
                                    382 	.area GSINIT3 (CODE)
                                    383 	.area GSINIT4 (CODE)
                                    384 	.area GSINIT5 (CODE)
                                    385 	.area GSINIT  (CODE)
                                    386 	.area GSFINAL (CODE)
                                    387 	.area CSEG    (CODE)
                                    388 ;--------------------------------------------------------
                                    389 ; global & static initialisations
                                    390 ;--------------------------------------------------------
                                    391 	.area HOME    (CODE)
                                    392 	.area GSINIT  (CODE)
                                    393 	.area GSFINAL (CODE)
                                    394 	.area GSINIT  (CODE)
                                    395 ;--------------------------------------------------------
                                    396 ; Home
                                    397 ;--------------------------------------------------------
                                    398 	.area HOME    (CODE)
                                    399 	.area HOME    (CODE)
                                    400 ;--------------------------------------------------------
                                    401 ; code
                                    402 ;--------------------------------------------------------
                                    403 	.area CSEG    (CODE)
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'putchar'
                                    406 ;------------------------------------------------------------
                                    407 ;c                         Allocated to registers 
                                    408 ;------------------------------------------------------------
                                    409 ;	../uart.c:10: void putchar(uint8_t c) {
                                    410 ;	-----------------------------------------
                                    411 ;	 function putchar
                                    412 ;	-----------------------------------------
      001AA4                        413 _putchar:
                           000007   414 	ar7 = 0x07
                           000006   415 	ar6 = 0x06
                           000005   416 	ar5 = 0x05
                           000004   417 	ar4 = 0x04
                           000003   418 	ar3 = 0x03
                           000002   419 	ar2 = 0x02
                           000001   420 	ar1 = 0x01
                           000000   421 	ar0 = 0x00
      001AA4 85 82 99         [24]  422 	mov	_UART_SBUF,dpl
                                    423 ;	../uart.c:12: while(!UART_TI); // Wait for transmission to complete
      001AA7                        424 00101$:
                                    425 ;	../uart.c:13: UART_TI = 0;	 // Clear transmit flag
                                    426 ;	assignBit
      001AA7 10 99 02         [24]  427 	jbc	_UART_TI,00112$
      001AAA 80 FB            [24]  428 	sjmp	00101$
      001AAC                        429 00112$:
      001AAC 22               [24]  430 	ret
                                    431 	.area CSEG    (CODE)
                                    432 	.area CONST   (CODE)
                                    433 	.area XINIT   (CODE)
                                    434 	.area CABS    (ABS,CODE)
