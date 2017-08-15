################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: stc_led_clock_8k.ihx

# Tool invocations
stc_led_clock_8k.ihx: $(RELS) $(USER_RELS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDCC Linker'
	sdcc --data-loc 0x24 -o "stc_led_clock_8k.ihx" $(RELS) $(USER_RELS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(RELS)$(C_DEPS) stc_led_clock_8k.ihx
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
