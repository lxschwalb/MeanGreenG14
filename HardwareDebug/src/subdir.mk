################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
..\src/r_reset_program.asm 

C_SRCS += \
..\src/lcd.c \
..\src/r_cg_adc.c \
..\src/r_cg_adc_user.c \
..\src/r_cg_cgc.c \
..\src/r_cg_cgc_user.c \
..\src/r_cg_port.c \
..\src/r_cg_port_user.c \
..\src/r_cg_timer.c \
..\src/r_cg_timer_user.c \
..\src/r_cg_vector_table.c \
..\src/r_hardware_setup.c \
..\src/r_main.c 

C_DEPS += \
./src/lcd.d \
./src/r_cg_adc.d \
./src/r_cg_adc_user.d \
./src/r_cg_cgc.d \
./src/r_cg_cgc_user.d \
./src/r_cg_port.d \
./src/r_cg_port_user.d \
./src/r_cg_timer.d \
./src/r_cg_timer_user.d \
./src/r_cg_vector_table.d \
./src/r_hardware_setup.d \
./src/r_main.d 

OBJS += \
./src/lcd.o \
./src/r_cg_adc.o \
./src/r_cg_adc_user.o \
./src/r_cg_cgc.o \
./src/r_cg_cgc_user.o \
./src/r_cg_port.o \
./src/r_cg_port_user.o \
./src/r_cg_timer.o \
./src/r_cg_timer_user.o \
./src/r_cg_vector_table.o \
./src/r_hardware_setup.o \
./src/r_main.o \
./src/r_reset_program.o 

ASM_DEPS += \
./src/r_reset_program.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF ""$(@:%.o=%.d)"" -MT"$(@:%.o=%.o)" -MT""$(@:%.o=%.d)"" @"src/c.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/c.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_cg_adc.o: ../src/r_cg_adc.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_cg_adc.d" -MT"src/r_cg_adc.o" -MT"src/r_cg_adc.d" @"src/r_cg_adc.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_cg_adc.d" -MT"src/r_cg_adc.o" -MT"src/r_cg_adc.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_cg_adc.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_cg_adc_user.o: ../src/r_cg_adc_user.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_cg_adc_user.d" -MT"src/r_cg_adc_user.o" -MT"src/r_cg_adc_user.d" @"src/r_cg_adc_user.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_cg_adc_user.d" -MT"src/r_cg_adc_user.o" -MT"src/r_cg_adc_user.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_cg_adc_user.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_cg_cgc.o: ../src/r_cg_cgc.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_cg_cgc.d" -MT"src/r_cg_cgc.o" -MT"src/r_cg_cgc.d" @"src/r_cg_cgc.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_cg_cgc.d" -MT"src/r_cg_cgc.o" -MT"src/r_cg_cgc.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_cg_cgc.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_cg_cgc_user.o: ../src/r_cg_cgc_user.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_cg_cgc_user.d" -MT"src/r_cg_cgc_user.o" -MT"src/r_cg_cgc_user.d" @"src/r_cg_cgc_user.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_cg_cgc_user.d" -MT"src/r_cg_cgc_user.o" -MT"src/r_cg_cgc_user.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_cg_cgc_user.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_cg_port.o: ../src/r_cg_port.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_cg_port.d" -MT"src/r_cg_port.o" -MT"src/r_cg_port.d" @"src/r_cg_port.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_cg_port.d" -MT"src/r_cg_port.o" -MT"src/r_cg_port.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_cg_port.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_cg_port_user.o: ../src/r_cg_port_user.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_cg_port_user.d" -MT"src/r_cg_port_user.o" -MT"src/r_cg_port_user.d" @"src/r_cg_port_user.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_cg_port_user.d" -MT"src/r_cg_port_user.o" -MT"src/r_cg_port_user.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_cg_port_user.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_cg_timer.o: ../src/r_cg_timer.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_cg_timer.d" -MT"src/r_cg_timer.o" -MT"src/r_cg_timer.d" @"src/r_cg_timer.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_cg_timer.d" -MT"src/r_cg_timer.o" -MT"src/r_cg_timer.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_cg_timer.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_cg_timer_user.o: ../src/r_cg_timer_user.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_cg_timer_user.d" -MT"src/r_cg_timer_user.o" -MT"src/r_cg_timer_user.d" @"src/r_cg_timer_user.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_cg_timer_user.d" -MT"src/r_cg_timer_user.o" -MT"src/r_cg_timer_user.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_cg_timer_user.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_cg_vector_table.o: ../src/r_cg_vector_table.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_cg_vector_table.d" -MT"src/r_cg_vector_table.o" -MT"src/r_cg_vector_table.d" @"src/r_cg_vector_table.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_cg_vector_table.d" -MT"src/r_cg_vector_table.o" -MT"src/r_cg_vector_table.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_cg_vector_table.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_hardware_setup.o: ../src/r_hardware_setup.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_hardware_setup.d" -MT"src/r_hardware_setup.o" -MT"src/r_hardware_setup.d" @"src/r_hardware_setup.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_hardware_setup.d" -MT"src/r_hardware_setup.o" -MT"src/r_hardware_setup.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_hardware_setup.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_main.o: ../src/r_main.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_main.d" -MT"src/r_main.o" -MT"src/r_main.d" @"src/r_main.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_main.d" -MT"src/r_main.o" -MT"src/r_main.d" -x c   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_main.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -c -x c  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/r_reset_program.o: ../src/r_reset_program.asm
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	@rl78-elf-gcc -MM -MP -MF "src/r_reset_program.d" -MT"src/r_reset_program.o" -MT"src/r_reset_program.d" @"src/r_reset_program.depsub" "$<"
	@echo	rl78-elf-gcc -MM -MP -MF "src/r_reset_program.d" -MT"src/r_reset_program.o" -MT"src/r_reset_program.d" -Wa,-gdwarf2 -x assembler-with-cpp   -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g "$<"
	@rl78-elf-gcc -Wa,-adlhn="$(basename $(notdir $<)).lst" @"src/r_reset_program.sub" -o "$(@:%.d=%.o)" "$<"
	@echo rl78-elf-gcc -Wa,-gdwarf2 -c -x assembler-with-cpp  -Wa,-adlhn="$(basename $(notdir $<)).lst" -nostdinc -I"C:\PROGRA~2\KPIT\GNURL7~1.02-\rl78-elf/rl78-elf/optlibinc" -Wstack-usage=64 -mrl78 -g2 -g -o "$(@:%.d=%.o)" "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

