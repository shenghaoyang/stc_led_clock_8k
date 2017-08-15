                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #9959 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module crc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _crcSlow_PARM_2
                                     12 	.globl _crcSlow
                                     13 ;--------------------------------------------------------
                                     14 ; special function registers
                                     15 ;--------------------------------------------------------
                                     16 	.area RSEG    (ABS,DATA)
      000000                         17 	.org 0x0000
                                     18 ;--------------------------------------------------------
                                     19 ; special function bits
                                     20 ;--------------------------------------------------------
                                     21 	.area RSEG    (ABS,DATA)
      000000                         22 	.org 0x0000
                                     23 ;--------------------------------------------------------
                                     24 ; overlayable register banks
                                     25 ;--------------------------------------------------------
                                     26 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         27 	.ds 8
                                     28 ;--------------------------------------------------------
                                     29 ; internal ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DSEG    (DATA)
                                     32 ;--------------------------------------------------------
                                     33 ; overlayable items in internal ram 
                                     34 ;--------------------------------------------------------
                                     35 	.area	OSEG    (OVR,DATA)
      00005E                         36 _crcSlow_PARM_2:
      00005E                         37 	.ds 1
      00005F                         38 _crcSlow_message_1_2:
      00005F                         39 	.ds 3
                                     40 ;--------------------------------------------------------
                                     41 ; indirectly addressable internal ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area ISEG    (DATA)
                                     44 ;--------------------------------------------------------
                                     45 ; absolute internal ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area IABS    (ABS,DATA)
                                     48 	.area IABS    (ABS,DATA)
                                     49 ;--------------------------------------------------------
                                     50 ; bit data
                                     51 ;--------------------------------------------------------
                                     52 	.area BSEG    (BIT)
                                     53 ;--------------------------------------------------------
                                     54 ; paged external ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area PSEG    (PAG,XDATA)
                                     57 ;--------------------------------------------------------
                                     58 ; external ram data
                                     59 ;--------------------------------------------------------
                                     60 	.area XSEG    (XDATA)
                                     61 ;--------------------------------------------------------
                                     62 ; absolute external ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area XABS    (ABS,XDATA)
                                     65 ;--------------------------------------------------------
                                     66 ; external initialized ram data
                                     67 ;--------------------------------------------------------
                                     68 	.area XISEG   (XDATA)
                                     69 	.area HOME    (CODE)
                                     70 	.area GSINIT0 (CODE)
                                     71 	.area GSINIT1 (CODE)
                                     72 	.area GSINIT2 (CODE)
                                     73 	.area GSINIT3 (CODE)
                                     74 	.area GSINIT4 (CODE)
                                     75 	.area GSINIT5 (CODE)
                                     76 	.area GSINIT  (CODE)
                                     77 	.area GSFINAL (CODE)
                                     78 	.area CSEG    (CODE)
                                     79 ;--------------------------------------------------------
                                     80 ; global & static initialisations
                                     81 ;--------------------------------------------------------
                                     82 	.area HOME    (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 	.area GSFINAL (CODE)
                                     85 	.area GSINIT  (CODE)
                                     86 ;--------------------------------------------------------
                                     87 ; Home
                                     88 ;--------------------------------------------------------
                                     89 	.area HOME    (CODE)
                                     90 	.area HOME    (CODE)
                                     91 ;--------------------------------------------------------
                                     92 ; code
                                     93 ;--------------------------------------------------------
                                     94 	.area CSEG    (CODE)
                                     95 ;------------------------------------------------------------
                                     96 ;Allocation info for local variables in function 'crcSlow'
                                     97 ;------------------------------------------------------------
                                     98 ;nBytes                    Allocated with name '_crcSlow_PARM_2'
                                     99 ;message                   Allocated with name '_crcSlow_message_1_2'
                                    100 ;remainder                 Allocated to registers r3 r4 
                                    101 ;byte                      Allocated to registers r2 
                                    102 ;bit                       Allocated to registers r7 
                                    103 ;------------------------------------------------------------
                                    104 ;	../crc.c:42: crcSlow(const uint8_t message[], uint8_t nBytes)
                                    105 ;	-----------------------------------------
                                    106 ;	 function crcSlow
                                    107 ;	-----------------------------------------
      000535                        108 _crcSlow:
                           000007   109 	ar7 = 0x07
                           000006   110 	ar6 = 0x06
                           000005   111 	ar5 = 0x05
                           000004   112 	ar4 = 0x04
                           000003   113 	ar3 = 0x03
                           000002   114 	ar2 = 0x02
                           000001   115 	ar1 = 0x01
                           000000   116 	ar0 = 0x00
      000535 85 82 5F         [24]  117 	mov	_crcSlow_message_1_2,dpl
      000538 85 83 60         [24]  118 	mov	(_crcSlow_message_1_2 + 1),dph
      00053B 85 F0 61         [24]  119 	mov	(_crcSlow_message_1_2 + 2),b
                                    120 ;	../crc.c:44: crc            remainder = INITIAL_REMAINDER;
      00053E 7B FF            [12]  121 	mov	r3,#0xff
      000540 7C FF            [12]  122 	mov	r4,#0xff
                                    123 ;	../crc.c:52: for (byte = 0; byte < nBytes; ++byte)
      000542 7A 00            [12]  124 	mov	r2,#0x00
      000544                        125 00109$:
      000544 C3               [12]  126 	clr	c
      000545 EA               [12]  127 	mov	a,r2
      000546 95 5E            [12]  128 	subb	a,_crcSlow_PARM_2
      000548 50 40            [24]  129 	jnc	00105$
                                    130 ;	../crc.c:57: remainder ^= (message[byte] << (WIDTH - 8));
      00054A EA               [12]  131 	mov	a,r2
      00054B 25 5F            [12]  132 	add	a,_crcSlow_message_1_2
      00054D F8               [12]  133 	mov	r0,a
      00054E E4               [12]  134 	clr	a
      00054F 35 60            [12]  135 	addc	a,(_crcSlow_message_1_2 + 1)
      000551 F9               [12]  136 	mov	r1,a
      000552 AF 61            [24]  137 	mov	r7,(_crcSlow_message_1_2 + 2)
      000554 88 82            [24]  138 	mov	dpl,r0
      000556 89 83            [24]  139 	mov	dph,r1
      000558 8F F0            [24]  140 	mov	b,r7
      00055A 12 1D E5         [24]  141 	lcall	__gptrget
      00055D FF               [12]  142 	mov	r7,a
      00055E E4               [12]  143 	clr	a
      00055F F8               [12]  144 	mov	r0,a
      000560 62 03            [12]  145 	xrl	ar3,a
      000562 EF               [12]  146 	mov	a,r7
      000563 62 04            [12]  147 	xrl	ar4,a
                                    148 ;	../crc.c:62: for (bit = 8; bit > 0; --bit)
      000565 7F 08            [12]  149 	mov	r7,#0x08
      000567                        150 00106$:
                                    151 ;	../crc.c:67: if (remainder & TOPBIT)
      000567 EC               [12]  152 	mov	a,r4
      000568 30 E7 10         [24]  153 	jnb	acc.7,00102$
                                    154 ;	../crc.c:69: remainder = (remainder << 1) ^ POLYNOMIAL;
      00056B EB               [12]  155 	mov	a,r3
      00056C 2B               [12]  156 	add	a,r3
      00056D FD               [12]  157 	mov	r5,a
      00056E EC               [12]  158 	mov	a,r4
      00056F 33               [12]  159 	rlc	a
      000570 FE               [12]  160 	mov	r6,a
      000571 74 21            [12]  161 	mov	a,#0x21
      000573 6D               [12]  162 	xrl	a,r5
      000574 FB               [12]  163 	mov	r3,a
      000575 74 10            [12]  164 	mov	a,#0x10
      000577 6E               [12]  165 	xrl	a,r6
      000578 FC               [12]  166 	mov	r4,a
      000579 80 06            [24]  167 	sjmp	00107$
      00057B                        168 00102$:
                                    169 ;	../crc.c:73: remainder = (remainder << 1);
      00057B EB               [12]  170 	mov	a,r3
      00057C 2B               [12]  171 	add	a,r3
      00057D FB               [12]  172 	mov	r3,a
      00057E EC               [12]  173 	mov	a,r4
      00057F 33               [12]  174 	rlc	a
      000580 FC               [12]  175 	mov	r4,a
      000581                        176 00107$:
                                    177 ;	../crc.c:62: for (bit = 8; bit > 0; --bit)
      000581 EF               [12]  178 	mov	a,r7
      000582 14               [12]  179 	dec	a
      000583 FE               [12]  180 	mov	r6,a
      000584 FF               [12]  181 	mov	r7,a
      000585 70 E0            [24]  182 	jnz	00106$
                                    183 ;	../crc.c:52: for (byte = 0; byte < nBytes; ++byte)
      000587 0A               [12]  184 	inc	r2
      000588 80 BA            [24]  185 	sjmp	00109$
      00058A                        186 00105$:
                                    187 ;	../crc.c:81: return (remainder ^ FINAL_XOR_VALUE);
      00058A 8B 82            [24]  188 	mov	dpl,r3
      00058C 8C 83            [24]  189 	mov	dph,r4
      00058E 22               [24]  190 	ret
                                    191 	.area CSEG    (CODE)
                                    192 	.area CONST   (CODE)
                                    193 	.area XINIT   (CODE)
                                    194 	.area CABS    (ABS,CODE)
