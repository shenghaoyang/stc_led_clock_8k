/*
 * stc15w408as.h
 *
 *  Created on: 19 Jul 2017
 *      Author: shenghao
 */

#ifndef STC15W408AS_H_
#define STC15W408AS_H_

/* SFR definitions for the STC15W408AS */
/* Interrupt number definitions */
#define INT_INT0 0
#define INT_T0   1
#define INT_INT1 2
#define INT_T1   3
#define INT_UART1 4
#define INT_ADC  5
#define INT_LVD  6
#define INT_PCA  7
#define INT_UART2 8
#define INT_SPI 9
#define INT_INT2 10
#define INT_INT3 11
#define INT_T2 12
#define INT_PWM 13
#define INT_INT4 16
#define INT_UART3 17
#define INT_UART4 18
#define INT_T3 19
#define INT_T4 20
#define INT_CMP 21

/* General definitions */
__sfr __at(0x81) SP;
__sfr16 __at(0x8382) DPTR;
__sfr __at(0x87) PCON;
__sfr __at(0x8e) AUXR;
__sfr __at(0xa2) AUXR1;
__sfr __at(0x8f) AUXR2;
__sfr __at(0x97) PCON2;

/* Program status word definition */
__sfr __at(0xd0) PSW;
__sbit __at(0xd0) P;
__sbit __at(0xd1) F1;
__sbit __at(0xd2) OV;
__sbit __at(0xd3) RS0;
__sbit __at(0xd4) RS1;
__sbit __at(0xd5) F0;
__sbit __at(0xd6) AC;
__sbit __at(0xd7) CY;

/* Port definitions */
__sfr __at(0x90) PORT_P1; ///< Port 1 register
__sfr __at(0xa0) PORT_P2; ///< Port 2 register
__sfr __at(0xb0) PORT_P3; ///< Port 3 register
__sfr __at(0xc0) PORT_P4; ///< Port 4 register
__sfr __at(0xc8) PORT_P5; ///< Port 5 register
__sfr __at(0x91) PORT_P1M1; ///< Port 1 mode register 1
__sfr __at(0x92) PORT_P1M0; ///< Port 1 mode register 0
__sfr __at(0x95) PORT_P2M1; ///< Port 2 mode register 1
__sfr __at(0x96) PORT_P2M0; ///< Port 2 mode register 0
__sfr __at(0xb1) PORT_P3M1; ///< Port 3 mode register 1
__sfr __at(0xb2) PORT_P3M0; ///< Port 3 mode register 0
__sfr __at(0xb3) PORT_P4M1; ///< Port 4 mode register 1
__sfr __at(0xb4) PORT_P4M0; ///< Port 4 mode register 0
__sfr __at(0xc9) PORT_P5M1; ///< Port 5 mode register 1
__sfr __at(0xca) PORT_P5M0; ///< Port 5 mode register 0

/* Port bit definitions */
/* Port One */
__sbit __at(0x90) PORT_P1_0;
__sbit __at(0x91) PORT_P1_1;
__sbit __at(0x92) PORT_P1_2;
__sbit __at(0x93) PORT_P1_3;
__sbit __at(0x94) PORT_P1_4;
__sbit __at(0x95) PORT_P1_5;
__sbit __at(0x96) PORT_P1_6;
__sbit __at(0x97) PORT_P1_7;
/* Port Two */
__sbit __at(0xa0) PORT_P2_0;
__sbit __at(0xa1) PORT_P2_1;
__sbit __at(0xa2) PORT_P2_2;
__sbit __at(0xa3) PORT_P2_3;
__sbit __at(0xa4) PORT_P2_4;
__sbit __at(0xa5) PORT_P2_5;
__sbit __at(0xa6) PORT_P2_6;
__sbit __at(0xa7) PORT_P2_7;
/* Port Three */
__sbit __at(0xb0) PORT_P3_0;
__sbit __at(0xb1) PORT_P3_1;
__sbit __at(0xb2) PORT_P3_2;
__sbit __at(0xb3) PORT_P3_3;
__sbit __at(0xb4) PORT_P3_4;
__sbit __at(0xb5) PORT_P3_5;
__sbit __at(0xb6) PORT_P3_6;
__sbit __at(0xb7) PORT_P3_7;
/* Port Four */
__sbit __at(0xc0) PORT_P4_0;
__sbit __at(0xc1) PORT_P4_1;
__sbit __at(0xc2) PORT_P4_2;
__sbit __at(0xc3) PORT_P4_3;
__sbit __at(0xc4) PORT_P4_4;
__sbit __at(0xc5) PORT_P4_5;
__sbit __at(0xc6) PORT_P4_6;
__sbit __at(0xc7) PORT_P4_7;
/* Port Five */
__sbit __at(0xc8) PORT_P5_0;
__sbit __at(0xc9) PORT_P5_1;
__sbit __at(0xca) PORT_P5_2;
__sbit __at(0xcb) PORT_P5_3;
__sbit __at(0xcc) PORT_P5_4;
__sbit __at(0xcd) PORT_P5_5;
__sbit __at(0xce) PORT_P5_6;
__sbit __at(0xcd) PORT_P5_7;
/* End Port bit definitions */
/* End Port definitions */

/* Begin interrupt registers */
__sfr __at(0xa8) INT_IE;
__sfr __at(0xaf) INT_IE2;
__sfr __at(0xb8) INT_IP;
__sfr __at(0xb5) INT_IP2;

/* Begin interrupt bit definitions */
__sbit __at(0xa8) INT_IE_EX0;
__sbit __at(0xa9) INT_IE_ET0;
__sbit __at(0xaa) INT_IE_EX1;
__sbit __at(0xab) INT_IE_ET1;
__sbit __at(0xac) INT_IE_ES;
__sbit __at(0xad) INT_IE_EADC;
__sbit __at(0xae) INT_IE_ELVD;
__sbit __at(0xaf) INT_IE_EA;

__sbit __at(0xb8) INT_IP_PX0;
__sbit __at(0xb9) INT_IP_PT0;
__sbit __at(0xba) INT_IP_PX1;
__sbit __at(0xbb) INT_IP_PT1;
__sbit __at(0xbc) INT_IP_PS;
__sbit __at(0xbd) INT_IP_PADC;
__sbit __at(0xbe) INT_IP_PLVD;
__sbit __at(0xbf) INT_IP_PPCA;
/* End interrupt bit definitions */
/* End interrupt registers */

/* Begin timer definitions */
__sfr __at(0x88) TMR_TCON;
__sfr __at(0x89) TMR_TMOD;
__sfr16 __at(0x8c8a) TMR_T0;
__sfr16 __at(0xd6d7) TMR_T2;

/* Begin timer bit definitions */
__sbit __at(0x88) TMR_TCON_IT0;
__sbit __at(0x89) TMR_TCON_IE0;
__sbit __at(0x8a) TMR_TCON_IT1;
__sbit __at(0x8b) TMR_TCON_IE1;
__sbit __at(0x8c) TMR_TCON_TR0;
__sbit __at(0x8d) TMR_TCON_TF0;
__sbit __at(0x8e) TMR_TCON_TR1;
__sbit __at(0x8f) TMR_TCON_TF1;
/* End timer bit definitions */
/* End timer definitions */

/* Begin EEPROM definitions */
__sfr __at(0xc2) EEPROM_DATA;						///< EEPROM Data register
__sfr16 __at(0xc3c4) EEPROM_ADDR;					///< EEPROM Address register
__sfr __at(0xc5) EEPROM_CMD;						///< EEPROM Command register
__sfr __at(0xc6) EEPROM_TRIG;						///< EEPROM Trigger register
__sfr __at(0xc7) EEPROM_CONTR;						///< EEPROM Control register
#define EEPROM_START 0x2000   						///< EEPROM MOVC INST Offset address
/* End EEPROM definitions */

/* Begin ADC definitions */
__sfr __at(0x9d) ADC_P1ASF;
__sfr __at(0xbc) ADC_CONTR;
__sfr16 __at(0xbdbe) ADC_RES;
__sfr __at(0xbd) ADC_RESH;
__sfr __at(0xbe) ADC_RESL;
/* End ADC definitions */

/* Start comparator definitions */
__sfr __at(0xe6) CMP_CR1;
__sfr __at(0xe7) CMP_CR2;
/* End comparator definitions */

/* Capture / Compare module definitions  */
__sfr __at(0xda) PCA_CCAPM0; ///< PCA Module 0 mode register
__sfr __at(0xdb) PCA_CCAPM1; ///< PCA Module 1 mode register
__sfr __at(0xdc) PCA_CCAPM2; ///< PCA Module 2 mode register
__sfr16 __at(0xfaea) PCA_CCAP0; ///< PCA Module 0 capture register
__sfr16 __at(0xfbeb) PCA_CCAP1; ///< PCA Module 1 capture register
__sfr16 __at(0xfcec) PCA_CCAP2; ///< PCA Module 2 capture register
__sfr __at(0xfa) PCA_CCAP0_H;
__sfr __at(0xea) PCA_CCAP0_L;
__sfr __at(0xfb) PCA_CCAP1_H;
__sfr __at(0xeb) PCA_CCAP1_L;
__sfr __at(0xfc) PCA_CCAP2_H;
__sfr __at(0xec) PCA_CCAP2_L;
__sfr16 __at(0xf9e9) PCA_C;	  ///< PCA Counter register
__sfr __at(0xf2) PCA_PWM0;  ///< PCA PWM Mode Channel 0 register
__sfr __at(0xf3) PCA_PWM1;  ///< PCA PWM Mode Channel 1 register
__sfr __at(0xf4) PCA_PWM2;  ///< PCA PWM Mode Channel 2 register
__sfr __at(0xd8) PCA_CCON;  ///< PCA Control register
__sfr __at(0xd9) PCA_CMOD;  ///< PCA Mode register

/* Begin Capture / Compare module bit definitions */
__sbit __at(0xd8) PCA_CCF0;
__sbit __at(0xd9) PCA_CCF1;
__sbit __at(0xda) PCA_CCF2;
__sbit __at(0xde) PCA_CR;
__sbit __at(0xdf) PCA_CF;
/* End Capture / Compare module bit definitions */
/* End capture / compare module definitions */

/* Begin UART definitions */
__sfr __at(0x98) UART_SCON;
__sfr __at(0x99) UART_SBUF;
__sfr __at(0xa9) UART_SADDR;
__sfr __at(0xb9) UART_SADEN;

/* Begin UART bit definitions */
__sbit __at(0x98) UART_RI;
__sbit __at(0x99) UART_TI;
__sbit __at(0x9a) UART_RB8;
__sbit __at(0x9b) UART_TB8;
__sbit __at(0x9c) UART_REN;
__sbit __at(0x9d) UART_SM2;
__sbit __at(0x9e) UART_SM1;
__sbit __at(0x9e) UART_SM0;
/* End UART bit definitions */

/* End UART definitions */

/* Begin IAP/EEPROM definitions */
__sfr __at(0xc2) IAP_DATA;
__sfr __at(0xc3) IAP_ADDRH;
__sfr __at(0xc4) IAP_ADDRL;
__sfr16 __at(0xc3c4) IAP_ADDR;
__sfr __at(0xc5) IAP_CMD;
__sfr __at(0xc6) IAP_TRIG;
__sfr __at(0xc7) IAP_CONTR;
/* End IAP/EEPROM definitions */


#endif /* STC15W408AS_H_ */
