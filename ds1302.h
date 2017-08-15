/*!
 * \file ds1302.h
 * \brief Declarations and definitions for the 8051 DS1302 driver
 * \author Shenghao Yang
 * \date 26 July 2017
 *
 * \todo Optimize SPI bit banging
 * \todo Optimize clock structure transmission / reception calls
 */
#ifndef DS1302_H_
#define DS1302_H_
#include <stdint.h>
#include <string.h>
#include <stc15w408as.h>
#include <crc.h>
#include <ledfonts.h>
uint8_t __at(0x21) DS1302_DATA;	///< Bit addressable data byte used by DS1302 functions
__bit  __at(0x08) DS1302_DATA_0;///< Bit 0 of bit addressable data byte used by ds1302 functions
__bit  __at(0x09) DS1302_DATA_1;///< Bit 1 of bit addressable data byte used by ds1302 functions
__bit  __at(0x0a) DS1302_DATA_2;///< Bit 2 of bit addressable data byte used by ds1302 functions
__bit  __at(0x0b) DS1302_DATA_3;///< Bit 3 of bit addressable data byte used by ds1302 functions
__bit  __at(0x0c) DS1302_DATA_4;///< Bit 4 of bit addressable data byte used by ds1302 functions
__bit  __at(0x0d) DS1302_DATA_5;///< Bit 5 of bit addressable data byte used by ds1302 functions
__bit  __at(0x0e) DS1302_DATA_6;///< Bit 6 of bit addressable data byte used by ds1302 functions
__bit  __at(0x0f) DS1302_DATA_7;///< Bit 7 of bit addressable data byte used by ds1302 functions


#define DS1302_CLK PORT_P1_2	///< sbit representing the DS1302 CLK pin
#define DS1302_CE  PORT_P1_0	///< sbit representing the DS1302 CE  pin
#define DS1302_IO  PORT_P1_1	///< sbit representing the DS1302 IO  pin
#define DS1302_BBSRAM_SIZE 31	///< size of the DS1302's BBSRAM region
#define DS1302_CRC_SIZE 2		///< size of the CRC checksum used to check the DS1302 BBSRAM contents

#define CRC_LSB (ds1302_sram_data[0x00]) ///< DS1302 BBSRAM CRC LSB
#define CRC_MSB (ds1302_sram_data[0x01]) ///< DS1302 BBSRAM CRC MSB
#define SC_0	(ds1302_sram_data[0x02]) ///< Status and configuration register 0
#define SC_1 	(ds1302_sram_data[0x03]) ///< Status and configuration register 1
#define TEMP_OFFSET_MSB (ds1302_sram_data[DS1302_BBSRAM_SIZE - 0x01]) ///< Temperature offset MSB (BCD, packed)
#define TEMP_OFFSET_LSB (ds1302_sram_data[DS1302_BBSRAM_SIZE - 0x02]) ///< Temperature offset LSB (BCD, packed)
#define DATE_DISPLAY_MMDD (SC_1 >> 0x07)		///< Set if the date is to be displayed in MMDD format
#define TIME_DISPLAY_12 ((SC_1 >> 0x06) & 0x01) ///< Set if time is to be displayed in 12h format
#define DISPLAY_REMOVE_LEADING_ZEROES ((SC_0) & 0x01) ///< Set if leading zeroes are to be removed in time and date displays

struct {
	uint8_t seconds;
	uint8_t minutes;
	uint8_t hour;
	uint8_t date;
	uint8_t month;
	uint8_t day;
	uint8_t year;
	uint8_t wp;
} typedef ds1302_data;			///< Structure representing data stored in the DS1302 clock registers

#ifndef DS1302_C_
extern ds1302_data ds1302;														///< Structure actually storing the data cached from the ds1302
extern __xdata uint8_t __at(0x00) ds1302_sram_data[DS1302_BBSRAM_SIZE];			///< Cached DS1302 BBSRAM data, stored in external RAM
extern __data uint8_t* __code const ds1302_struct_addr; 						///< DS1302 structure address, casted as a pointer to uint8_t
extern __code __at(0x3200) const ds1302_data ds1302_init;											///< ds1302 clock initialization structure
extern __code __at(0x3200 + sizeof(ds1302_init)) const uint8_t ds1302_sram_init[DS1302_BBSRAM_SIZE];	///< ds1302 sram initialization array
#else
ds1302_data ds1302;
__data uint8_t* __code const ds1302_struct_addr = (__data uint8_t*)&ds1302;
__xdata uint8_t __at(0x00) ds1302_sram_data[DS1302_BBSRAM_SIZE];
#endif

/* Primitives for DS1302 communication */
/*!
 * \brief Sets up the PORT pins for communication with the DS1302
 * \pre The MCU has experienced a POR
 * \post The PORT pins for communication with the DS1302 have been setup
 * to properly communicate with the DS1302.
 */
inline void ds1302_setup() {
	/* Set initial pin states to all low */
	PORT_P1   &= 0xf8;
	/* Set pins to appropriate modes, IO to open drain, CLK and CE to push-pull */
	PORT_P1M1 |= 0x02;	//Set high-z first before set to open drain
	PORT_P1M0 |= 0x07;
}

/*!
 * \brief Resets the DS1302 Serial Interface, zeroes out the DS1302 struct
 * \note  Should only be called once on POR of the Microcontroller
 * \test  Validated with logic analyser, chip enable pulled low for 1468ns.
 * \pre   The port used to communicate with the DS1302 has been setup
 * \post  Communications lines are left in a certain state:
 * - The CLK line is left low
 * - The CE line is left low
 * - The IO line is driven low
 */
void ds1302_reset();

/*!
 * \brief Writes a command byte to the DS1302 and start a DS1302 communication
 * cycle
 * \pre The I/O lines connected to the DS1302 must be in a predefined state
 * - The SCLK line must be left LOW
 * - The CE line must be left LOW
 *  Furthermore, the DS1302_DATA global must not be in use by any other function
 * \post The I/O lines are left in this state after communication:
 * - The CLK line is left low
 * - The CE line is left high
 * - The I/O line is undefined
 * \param[in] command the command byte to be sent to the DS1302
 */
void ds1302_start(uint8_t command);

/*!
 * \brief Reads a byte from the DS1302
 * \pre The I/O lines connected to the DS1302 must be in a predefined state
 * - The CLK line must be low
 * - The CE line must be high
 * Furthermore, the DS1302 must have a command byte already sent to it using
 * \ref ds1302_start(). The DS1302_DATA global must also not
 * be in use by any other function.
 * \post The I/O lines are left in this state after communication:
 * - The CLK line is left low
 * - The CE line is left high
 * \return the byte read from the DS1302
 */
inline uint8_t ds1302_read_byte() {
	DS1302_IO = 1;		//Stop driving I/O line

	/* Start data reception */
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_0 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_1 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_2 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_3 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_4 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_5 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_6 = DS1302_IO;

	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;
	__asm
	nop
	nop
	nop
	__endasm;
	DS1302_DATA_7 = DS1302_IO;
	DS1302_CLK = 1;
	__asm
	nop
	nop
	nop
	nop
	__endasm;
	DS1302_CLK = 0;

	return DS1302_DATA;
}

uint8_t ds1302_read_byte_slow();

/*!
 * \brief Writes a byte to the DS1302
 * \pre The I/O lines connected to the DS1302 must be in a predefined state
 * - The CLK line must be low
 * - The CE line must be high
 * Furthermore, the DS1302 must have a command byte already sent to it using
 * \ref ds1302_start(). The DS1302_DATA global must also not
 * be in use by any other function.
 * \post The I/O lines are left in this state after communication:
 * - The CLK line is left low
 * - The CE line is left high
 * \return the byte read from the DS1302
 */
inline void ds1302_write_byte(uint8_t byte) {
	DS1302_DATA = byte;

	DS1302_IO = DS1302_DATA_0;
	DS1302_CLK = 1;
	__asm__("nop\n nop\n nop\n nop");
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_1;
	DS1302_CLK = 1;
	__asm__("nop\n nop\n nop\n nop");
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_2;
	DS1302_CLK = 1;
	__asm__("nop\n nop\n nop\n nop");
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_3;
	DS1302_CLK = 1;
	__asm__("nop\n nop\n nop\n nop");
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_4;
	DS1302_CLK = 1;
	__asm__("nop\n nop\n nop\n nop");
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_5;
	DS1302_CLK = 1;
	__asm__("nop\n nop\n nop\n nop");
	DS1302_CLK = 0;
	DS1302_IO = DS1302_DATA_6;

	DS1302_CLK = 1;
	__asm__("nop\n nop\n nop\n nop");
	DS1302_CLK = 0;

	DS1302_IO = DS1302_DATA_7;
	DS1302_CLK = 1;
	__asm__("nop\n nop\n nop\n nop");
	DS1302_CLK = 0;
}

void ds1302_write_byte_slow(uint8_t byte);

/*!
 * \brief Ends communication with the ds1302.
 * \pre   The I/O lines must be in a predefined state
 * - The CLK lines must have been left low
 * - The I/O line can be left in any state
 * - The CE line must have been left high
 * \warning All communication with the ds1302 must take place 1us after
 * this function is executed. If in doubt, execute \ref ds1302_reset()
 * if the communication is to be repeated right after execution of this
 * function.
 */
inline void ds1302_end() {
	DS1302_CE = 0; //Drop CE to end communication.
}

/* High level DS1302 communication functions */
/*!
 * \brief Obtains the hour, minute, and seconds value from the DS1302.
 * \pre
 * - No other DS1302 communication function is being called at the same time
 * - No other function is modifying the DS1302 structure
 * - The DS1302 has been setup and reset.
 * \post The DS1302 structure has been modified to contain the most updated time
 * , only for the seconds, minutes, and hour fields.
 */
inline void ds1302_get_hms() {
	ds1302_start(0xbf); //Start clock burst read
	ds1302.seconds = ds1302_read_byte(); //Read in seconds register
	ds1302.minutes = ds1302_read_byte(); //Read in minutes register
	ds1302.hour    = ds1302_read_byte(); //Read in hours register
	ds1302_end();		//Terminate burst read early
}

/*!
 * \brief Obtains the full time data array from the DS1302.
 * \pre
 * - No other DS1302 communication function is being called at the same time
 * - No other function is modifying the DS1302 structure
 * - The DS1302 has been setup and reset.
 * \post The DS1302 structure has been modified to contain the most updated time
 */
inline void ds1302_get_time() {
	ds1302_start(0xbf); //Start clock burst read
	ds1302.seconds = ds1302_read_byte(); //Read in seconds register
	ds1302.minutes = ds1302_read_byte(); //Read in minutes register
	ds1302.hour    = ds1302_read_byte(); //Read in hours register
	ds1302.date    = ds1302_read_byte(); //Read in date register
	ds1302.month   = ds1302_read_byte(); //Read in month register
	ds1302.day 	   = ds1302_read_byte(); //Read in day of week register
	ds1302.year    = ds1302_read_byte(); //Read in year register
	ds1302_end();		//Terminate burst read early
}


/*!
 * \brief Sets the DS1302 with the time stored in the global ds1302 structure
 * \pre
 * - No other DS1302 communication functions is being called at the same time
 * - No other function is modifying the DS1302 structure
 * - The DS1302 has been setup and reset
 * \post The DS1302 clock registers have been updated to contain the values
 * in the global DS1302 structure
 */
void ds1302_set_time();
/*!
 * \brief Fills the DS1302 SRAM data structure in memory with the data
 * contained in the DS1302 chip.
 * \pre
 * - No other DS1302 communication function is being called at the same time
 * - No other function is modifying the cached SRAM structure
 * - The DS1302 has been setup and reset
 * \post The SRAM structure has been populated with the SRAM data stored in the
 * DS1302 chip.
 */
void ds1302_read_SRAM();


/*!
 * \brief Writes the DS1302 SRAM data structure in memory to the DS1302 chip.
 * \pre
 * - No other DS1302 communication function is being called at the same time
 * - No other function is modifying the cached SRAM structure
 * - The DS1302 has been setup and reset
 * \post The SRAM in the DS1302 chip has been populated with the data in the
 * SRAM structure in memory.
 */
void ds1302_write_SRAM();

/*!
 * \brief Converts a hour value, represented as a 24-hour value in packed BCD
 * to its 12-hour equivalent, in packed BCD.
 * @param[in] h_24 hour value, in 24-hour format and packed BCD representation.
 * @return hour value, in 12-hour format and packed BCD representation.
 */
uint8_t convert_24h_to_12h(uint8_t h_24);

/*!
 * \brief Adds two numbers in packed BCD format, where the higher nibble is the
 * most significant BCD digit, and the lowest nibble is the least significant
 * BCD digit.
 *
 * Internally uses the DA instruction to adjust for addition overflows.
 *
 * \warning Only for use on two-digit packed BCD numbers. If the result of the
 * addition overflows 0x99, no operation is performed to correct it.
 *
 * @param v1 first addition operand
 * @param v2 second addition operand
 * \return addition result in packed BCD
 */
uint8_t bcd_add(uint8_t v1,uint8_t v2);

/*!
 * \brief Performs the decimal adjust operation on a value
 * @return the state of the carry flag
 */


uint16_t bcd_add_16(uint16_t op1,uint16_t op2);
/*!
 * \brief Checks the ds1302 BBSRAM to determine whether the data inside is valid
 *
 * The data is valid if the stored CRC-CCITT value at address 0x00 and 0x01 in
 * little endian byte order
 * matches the calculated value over address 0x02 to 0x1e.
 *
 * \retval 0 data inside SRAM is not valid
 * \retval 1 data inside SRAM is valid
 */
uint8_t ds1302_check_SRAM() __reentrant;

/*!
 * \brief Calculates a new CRC value for the ds1302 BBSRAM cache and writes it to
 * the BBSRAM cache
 *
 * The CRC checksum used here is CRC-CCITT, stored at address 0x00 and 0x01 in
 * little endian byte order.
 */
void ds1302_calculate_CRC() __reentrant;

/*!
 * \brief Performs a cold-reset of the DS1302, resetting it from battery loss
 * condition to a sane state
 */
void ds1302_power_loss_reset();
#endif /* DS1302_H_ */
