################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.o: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -D__FPU_PRESENT -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Include/dsp -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/ARM/DSP/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

