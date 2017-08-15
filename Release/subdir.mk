################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../adc.c \
../alarm.c \
../button.c \
../crc.c \
../display.c \
../ds1302.c \
../eeprom.c \
../fsm.c \
../ledfonts.c \
../main.c \
../timer.c \
../uart.c 

RELS += \
./adc.rel \
./alarm.rel \
./button.rel \
./crc.rel \
./display.rel \
./ds1302.rel \
./eeprom.rel \
./fsm.rel \
./ledfonts.rel \
./main.rel \
./timer.rel \
./uart.rel 

C_DEPS += \
./adc.d \
./alarm.d \
./button.d \
./crc.d \
./display.d \
./ds1302.d \
./eeprom.d \
./fsm.d \
./ledfonts.d \
./main.d \
./timer.d \
./uart.d 


# Each subdirectory must supply rules for building sources it contributes
%.rel: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --std-sdcc11  --data-loc 0x24 -I/usr/share/sdcc/include/mcs51 -I/usr/share/sdcc/include/ -I"/home/shenghao/workspace/TESTMCS51" --verbose --model-small --iram-size $v256 --xram-size $v256 --code-size $v8192 --stack-size $v128 -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --std-sdcc11  --data-loc 0x24 -MM -I/usr/share/sdcc/include/mcs51 -I/usr/share/sdcc/include/ -I"/home/shenghao/workspace/TESTMCS51" --verbose --model-small --iram-size $v256 --xram-size $v256 --code-size $v8192 --stack-size $v128  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


