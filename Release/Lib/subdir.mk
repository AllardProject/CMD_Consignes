################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
..\Lib\ModbusClient.cpp \
..\Lib\ModbusRTUClient.cpp \
..\Lib\ModbusRTUServer.cpp \
..\Lib\ModbusServer.cpp \
..\Lib\ModbusTCPClient.cpp \
..\Lib\ModbusTCPServer.cpp 

LINK_OBJ += \
.\Lib\ModbusClient.cpp.o \
.\Lib\ModbusRTUClient.cpp.o \
.\Lib\ModbusRTUServer.cpp.o \
.\Lib\ModbusServer.cpp.o \
.\Lib\ModbusTCPClient.cpp.o \
.\Lib\ModbusTCPServer.cpp.o 

CPP_DEPS += \
.\Lib\ModbusClient.cpp.d \
.\Lib\ModbusRTUClient.cpp.d \
.\Lib\ModbusRTUServer.cpp.d \
.\Lib\ModbusServer.cpp.d \
.\Lib\ModbusTCPClient.cpp.d \
.\Lib\ModbusTCPServer.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
Lib\ModbusClient.cpp.o: ..\Lib\ModbusClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\libraries\EEPROM\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

Lib\ModbusRTUClient.cpp.o: ..\Lib\ModbusRTUClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\libraries\EEPROM\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

Lib\ModbusRTUServer.cpp.o: ..\Lib\ModbusRTUServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\libraries\EEPROM\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

Lib\ModbusServer.cpp.o: ..\Lib\ModbusServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\libraries\EEPROM\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

Lib\ModbusTCPClient.cpp.o: ..\Lib\ModbusTCPClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\libraries\EEPROM\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

Lib\ModbusTCPServer.cpp.o: ..\Lib\ModbusTCPServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\cores\arduino" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\variants\standard" -I"C:\Users\Hugo\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.2\libraries\EEPROM\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


