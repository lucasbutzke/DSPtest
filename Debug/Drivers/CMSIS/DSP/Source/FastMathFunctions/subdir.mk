################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctions.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.c \
../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctions.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.o \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctions.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.d \
./Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctions.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctions.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctions.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.o: ../Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.c Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

