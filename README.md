# stc_led_clock_8k

Firmware for chinese DIY clock kits based on STC microcontrollers, for parts using devices with 8K of flash. 

## Hardware requirements 
A DIY clock kit using the STC15W408AS microcontroller. 

Other parts having 8K of flash (exactly, support for higher capacities TODO), at least 5K of EEPROM, along with a PCA module and conventional timers T0 & T2 should work fine. 

## Getting Started

Clone or download the repository contents.

To build and flash, you will need:
1. A working copy of sdcc installed on your machine (to build the firmware)
2. stcgal (to deliver the firmware payload onto the target device)

Execute the following commands once a USB serial adapter is connected to the ISP port of the device
``` 
cd Release
make 
stcgal -o eeprom_erase_enabled=True -t 22118.4 stc_led_clock_8k.ihx
```
Since significant use of the EEPROM is present, stcgal may report a protocol error on flashing the output hex file, on devices that have already written data to the EEPROM, as the EEPROM data would not be correctly programmed due to a erase cycle for the EEPROM not being performed. In this case, flashing a blank hex file, with ``` -o eeprom_erase_enabled=True``` and then executing the stcgal flash command listed above is likely to resolve the problem, by enabling EEPROM erase before programming.

## Features
- Time & date display (Both 24h and 12h time formats, MM/DD or DD/MM date formats, configurable leading zero suppression)
- Temperature display (Centigrade temperature scale only, offset adjustable, 0.1deg C resolution) 
- Versatile alarm system
    - Maximum of seven alarms 
    - Global alarm enable / disable 
    - Individual alarm enable / disable 
    - Alarms triggering on specific days of the week 
    - Alarm length limiting
- Night light function 
- Configurable automatic display scrolling (time, date, temperature, day-of-week, year)
- Configurable automatic dimming

## Operation 
- Menu button : Topmost switch 
- Select button : Bottom switch 


## Caveats & Bugs
- Alarm triggering is only checked for once every minute, when not in the settings menu. 
- Display may exhibit slight flickering at the lowest on-time, depending on which specific seven segment display is used by the kit manufacturer.

## Porting to other devices 

Check out ``` board_config.h ``` . Simply adjust the board specific definitions and initlization functions located in that file. 

Note that a common anode display is assumed. Work to support common cathode devices is in progress.

## Acknowledgements 

- [zerog2k](https://github.com/zerog2k) (Initial progress on custom firmware for these diy clocks)
- [aFewBits](https://github.com/aFewBits) (Alternate approach to clock firmware, configuration menus, etc)
- [SparkFun Electronics](https://github.com/sparkfun) (LED font table was derived from the SevSeg project)
