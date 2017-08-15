;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9959 (Linux)
;--------------------------------------------------------
	.module crc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _crcSlow_PARM_2
	.globl _crcSlow
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_crcSlow_PARM_2:
	.ds 1
_crcSlow_message_1_2:
	.ds 3
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
;Allocation info for local variables in function 'crcSlow'
;------------------------------------------------------------
;nBytes                    Allocated with name '_crcSlow_PARM_2'
;message                   Allocated with name '_crcSlow_message_1_2'
;remainder                 Allocated to registers r3 r4 
;byte                      Allocated to registers r2 
;bit                       Allocated to registers r7 
;------------------------------------------------------------
;	../crc.c:42: crcSlow(const uint8_t message[], uint8_t nBytes)
;	-----------------------------------------
;	 function crcSlow
;	-----------------------------------------
_crcSlow:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_crcSlow_message_1_2,dpl
	mov	(_crcSlow_message_1_2 + 1),dph
	mov	(_crcSlow_message_1_2 + 2),b
;	../crc.c:44: crc            remainder = INITIAL_REMAINDER;
	mov	r3,#0xff
	mov	r4,#0xff
;	../crc.c:52: for (byte = 0; byte < nBytes; ++byte)
	mov	r2,#0x00
00109$:
	clr	c
	mov	a,r2
	subb	a,_crcSlow_PARM_2
	jnc	00105$
;	../crc.c:57: remainder ^= (message[byte] << (WIDTH - 8));
	mov	a,r2
	add	a,_crcSlow_message_1_2
	mov	r0,a
	clr	a
	addc	a,(_crcSlow_message_1_2 + 1)
	mov	r1,a
	mov	r7,(_crcSlow_message_1_2 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	mov	r0,a
	xrl	ar3,a
	mov	a,r7
	xrl	ar4,a
;	../crc.c:62: for (bit = 8; bit > 0; --bit)
	mov	r7,#0x08
00106$:
;	../crc.c:67: if (remainder & TOPBIT)
	mov	a,r4
	jnb	acc.7,00102$
;	../crc.c:69: remainder = (remainder << 1) ^ POLYNOMIAL;
	mov	a,r3
	add	a,r3
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r6,a
	mov	a,#0x21
	xrl	a,r5
	mov	r3,a
	mov	a,#0x10
	xrl	a,r6
	mov	r4,a
	sjmp	00107$
00102$:
;	../crc.c:73: remainder = (remainder << 1);
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00107$:
;	../crc.c:62: for (bit = 8; bit > 0; --bit)
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	jnz	00106$
;	../crc.c:52: for (byte = 0; byte < nBytes; ++byte)
	inc	r2
	sjmp	00109$
00105$:
;	../crc.c:81: return (remainder ^ FINAL_XOR_VALUE);
	mov	dpl,r3
	mov	dph,r4
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
