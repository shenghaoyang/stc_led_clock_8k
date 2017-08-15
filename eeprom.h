/*
 * eeprom.h
 *
 *  Created on: 25 Jul 2017
 *      Author: shenghao
 */
/*!
 * \file eeprom.h
 * \brief Declarations for functions to access EEPROM / IAP on STC15 devices, and
 * EEPROM data storage table locations
 */

#ifndef EEPROM_H_
#define EEPROM_H_
#include <stdint.h>
#include <stc15w408as.h>

#define EEPROM_RESET_BYTE 0b11000000		///< Byte to be written into the IAP_CONTR register to enable EEPROM acess via the SFR registers \todo Change to read modify write operation and add note to change wait state length for different processors.
#define EEPROM_DISABLE_BYTE 0b10000000		///< Byte to be written into the IAP_CONTR register to disable EEPROM access via the SFR registers. Access using the MOVC instruction is still permissible on supported processors.
#define EEPROM_COMMAND_ERASE 0x03			///< Byte to be written into the IAP_CMD register to indicate an erase operation
#define EEPROM_COMMAND_WRITE 0x02			///< Byte to be written into the IAP_CMD register to indicate a write operation
#define EEPROM_COMMAND_READ  0x01			///< Byte to be written into the IAP_CMD register to indicate a read operation
#define EEPROM_COMMAND_STANDBY 0x00			///< Byte to be written into the IAP_CMD register to indicate a no-op
#define EEPROM_TRIGGER_MAGIC0 0x5a			///< First magic byte to be written into IAP_TRIG register
#define EEPROM_TRIGGER_MAGIC1 0xa5			///< Second magic byte to be written into IAP_TRIG register. A write of this byte after writing the first byte to the IAP_TRIG register triggers the IAP operation as indicated in IAP_CMD

#ifndef EEPROM_C_
extern __code __at(0x2000) uint16_t EEPROM_PWM_FROM_LDR_TABLE[1024];
extern __code __at(0x2000 + sizeof(EEPROM_PWM_FROM_LDR_TABLE)) uint16_t EEPROM_TEMP_FROM_THERMISTOR_TABLE[1024];
#endif

/*!
 * \brief Function called to start any sequence of EEPROM operations.
 *
 * Resets the EEPROM interface and sets up the appropriate wait states for
 * EEPROM operation.
 */
void eeprom_start();
/*!
 * \brief Erases an EEPROM sector, 512 bytes wide.
 * @param[in] address high byte of the EEPROM address of the first byte
 * contained by the sector to be erased. This selects which sector to be erased.
 * \todo Add error checking and proper return values
 * \note This function will block until the erase operation is complete. See
 * the datasheet for the STC part and the EEPROM_RESET_BYTE value for more
 * information regarding the exact wait time.
 * \pre \ref eeprom_end() has not been called after the previous invocation of
 * \ref eeprom_start()
 */
void eeprom_erase(uint8_t address);
/*!
 * \brief Writes a byte to EEPROM
 * @param[in] address EEPROM address of the byte to be written
 * @param[in] data data byte to be written to EEPROM
 * \todo Add error checking and proper return values
 * \note This function will block until the erase operation is complete. See
 * the datasheet for the STC part and the EEPROM_RESET_BYTE value for more
 * information regarding the exact wait time.
 * \pre \ref eeprom_end() has not been called after the previous invocation of
 * \ref eeprom_start()
 */
void eeprom_write(uint16_t address,uint8_t data);
/*!
 * \brief Reads a byte from EEPROM
 * @param[in] address EEPROM address of the byte to be read
 * @return the byte read from EEPROM
 * \todo Add error checking
 * \note This function will block until the erase operation is complete. See
 * the datasheet for the STC part and the EEPROM_RESET_BYTE value for more
 * information regarding the exact wait time. For read operations, it is
 * typically 2 clock cycles.
 * \note Also consider using the MOVC instruction when accessing EEPROM, if your
 * part supports it. It allows for much better performance.
 * \pre \ref eeprom_end() has not been called after the previous invocation of
 * \ref eeprom_start()
 */
uint8_t eeprom_read(uint16_t address);
/*!
 * \brief Ends a sequence of EEPROM operations
 *
 * Disables access to the EEPROM from the SFR interface to prevent any
 * accidental data modification via runaway software.
 */
void eeprom_end();

/*!
 * \brief Writes multiple bytes to EEPROM
 * @param address
 * @param data
 * @param count
 * \todo Implement function
 */
void eeprom_write_multiple(uint16_t address,uint8_t* data,uint8_t count);

#endif /* EEPROM_H_ */
