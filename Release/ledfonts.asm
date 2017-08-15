;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9959 (Linux)
;--------------------------------------------------------
	.module ledfonts
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ledstrings
	.globl _ledfonts_numeric_flipped
	.globl _ledfonts_numeric_normal
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
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
	.org 0x3000
_ledfonts_numeric_normal:
	.db #0xc0	; 192
	.db #0xf9	; 249
	.db #0xa4	; 164
	.db #0xb0	; 176
	.db #0x99	; 153
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x83	; 131
	.db #0xc6	; 198
	.db #0xa1	; 161
	.db #0x86	; 134
	.db #0x8e	; 142
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xc6	; 198
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xf9	; 249
	.db #0xa4	; 164
	.db #0xb0	; 176
	.db #0x99	; 153
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0x90	; 144
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x88	; 136
	.db #0x83	; 131
	.db #0xc6	; 198
	.db #0xa1	; 161
	.db #0x86	; 134
	.db #0x8e	; 142
	.db #0xc2	; 194
	.db #0x89	; 137
	.db #0xf9	; 249
	.db #0xf1	; 241
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0xab	; 171
	.db #0xc0	; 192
	.db #0x8c	; 140
	.db #0x98	; 152
	.db #0xaf	; 175
	.db #0x92	; 146
	.db #0x87	; 135
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xdf	; 223
	.db #0x88	; 136
	.db #0x83	; 131
	.db #0xa7	; 167
	.db #0xa1	; 161
	.db #0x84	; 132
	.db #0x8e	; 142
	.db #0xc2	; 194
	.db #0x8b	; 139
	.db #0xfb	; 251
	.db #0xf1	; 241
	.db #0xff	; 255
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0xab	; 171
	.db #0xa3	; 163
	.db #0x8c	; 140
	.db #0x98	; 152
	.db #0xaf	; 175
	.db #0x92	; 146
	.db #0x87	; 135
	.db #0xe3	; 227
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.org 0x3080
_ledfonts_numeric_flipped:
	.db #0xc0	; 192
	.db #0xcf	; 207
	.db #0xa4	; 164
	.db #0x86	; 134
	.db #0x8b	; 139
	.db #0x92	; 146
	.db #0x90	; 144
	.db #0xc7	; 199
	.db #0x80	; 128
	.db #0x82	; 130
	.db #0x81	; 129
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x8c	; 140
	.db #0xb0	; 176
	.db #0xb1	; 177
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xeb	; 235
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xcf	; 207
	.db #0xa4	; 164
	.db #0x86	; 134
	.db #0x8b	; 139
	.db #0x92	; 146
	.db #0x90	; 144
	.db #0xc7	; 199
	.db #0x80	; 128
	.db #0x82	; 130
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x8c	; 140
	.db #0xb0	; 176
	.db #0xb1	; 177
	.db #0xd0	; 208
	.db #0x89	; 137
	.db #0xcf	; 207
	.db #0xce	; 206
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0x9d	; 157
	.db #0xc0	; 192
	.db #0xa1	; 161
	.db #0x83	; 131
	.db #0xbd	; 189
	.db #0x92	; 146
	.db #0xb8	; 184
	.db #0xc8	; 200
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x8a	; 138
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xc6	; 198
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfb	; 251
	.db #0x81	; 129
	.db #0x98	; 152
	.db #0xbc	; 188
	.db #0x8c	; 140
	.db #0xa0	; 160
	.db #0xb1	; 177
	.db #0xd0	; 208
	.db #0x99	; 153
	.db #0xdf	; 223
	.db #0xce	; 206
	.db #0xff	; 255
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0x9d	; 157
	.db #0x9c	; 156
	.db #0xa1	; 161
	.db #0x83	; 131
	.db #0xbd	; 189
	.db #0x92	; 146
	.db #0xb8	; 184
	.db #0xdc	; 220
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.org 0x3100
_ledstrings:
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x45	; 69	'E'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x55	; 85	'U'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x52	; 82	'R'
	.db #0x49	; 73	'I'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x55	; 85	'U'
	.db #0x4e	; 78	'N'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x54	; 84	'T'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x54	; 84	'T'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x4c	; 76	'L'
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x4c	; 76	'L'
	.db #0x4f	; 79	'O'
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x43	; 67	'C'
	.db #0x41	; 65	'A'
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x4c	; 76	'L'
	.db #0x4c	; 76	'L'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x4c	; 76	'L'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x43	; 67	'C'
	.db #0x41	; 65	'A'
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x49	; 73	'I'
	.db #0x53	; 83	'S'
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x4e	; 78	'N'
	.db #0x53	; 83	'S'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x55	; 85	'U'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x54	; 84	'T'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x59	; 89	'Y'
	.db #0x52	; 82	'R'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
