################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/TransformFunctions/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/SupportFunctions/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/StatisticsFunctions/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/MatrixFunctions/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/FilteringFunctions/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/FastMathFunctions/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/ComplexMathFunctions/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/CommonTables/subdir.mk
-include Drivers/CMSIS/DSP_Lib/Source/BasicMathFunctions/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := DSPtest
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
DSPtest.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
DSPtest.list \

OBJCOPY_BIN += \
DSPtest.bin \


# All Target
all: main-build

# Main-build Target
main-build: DSPtest.elf secondary-outputs

# Tool invocations
DSPtest.elf: $(OBJS) $(USER_OBJS) C:\Users\lucas\STM32CubeIDE\workspace_1.6.1\DSPtest\STM32F767ZITX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "DSPtest.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"C:\Users\lucas\STM32CubeIDE\workspace_1.6.1\DSPtest\STM32F767ZITX_FLASH.ld" --specs=nosys.specs -Wl,-Map="DSPtest.map" -Wl,--gc-sections -static -L"C:\Users\lucas\STM32CubeIDE\workspace_1.6.1\DSPtest\Drivers\CMSIS\Lib" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -u _printf_float -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

DSPtest.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "DSPtest.list"
	@echo 'Finished building: $@'
	@echo ' '

DSPtest.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "DSPtest.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SIZE_OUTPUT)$(OBJDUMP_LIST)$(EXECUTABLES)$(OBJS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(OBJCOPY_BIN) DSPtest.elf
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
