################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
..\Lib\libmodbus\modbus-rtu.cpp \
..\Lib\libmodbus\modbus-tcp.cpp 

C_SRCS += \
..\Lib\libmodbus\modbus-data.c \
..\Lib\libmodbus\modbus.c 

C_DEPS += \
.\Lib\libmodbus\modbus-data.c.d \
.\Lib\libmodbus\modbus.c.d 

LINK_OBJ += \
.\Lib\libmodbus\modbus-data.c.o \
.\Lib\libmodbus\modbus-rtu.cpp.o \
.\Lib\libmodbus\modbus-tcp.cpp.o \
.\Lib\libmodbus\modbus.c.o 

CPP_DEPS += \
.\Lib\libmodbus\modbus-rtu.cpp.d \
.\Lib\libmodbus\modbus-tcp.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
Lib\libmodbus\modbus-data.c.o: ..\Lib\libmodbus\modbus-data.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

Lib\libmodbus\modbus-rtu.cpp.o: ..\Lib\libmodbus\modbus-rtu.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

Lib\libmodbus\modbus-tcp.cpp.o: ..\Lib\libmodbus\modbus-tcp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

Lib\libmodbus\modbus.c.o: ..\Lib\libmodbus\modbus.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


