#include <Arduino.h>
#include "lib/rs485/ArduinoRS485.h"  // ArduinoModbus depends on the ArduinoRS485 library
#include "lib/ArduinoModbus.h"

const int ledPin = LED_BUILTIN;

void setup() //fonction d'initialisation de la carte
{

	  Serial.println("Modbus RTU Server LED");

	  // start the Modbus RTU server, with (slave) id 1
	  if (!ModbusRTUServer.begin(1, 9600)) {
	    Serial.println("Failed to start Modbus RTU Server!");
	    while (1);
	  }

	  // configure the LED
	  pinMode(ledPin, OUTPUT);
	  digitalWrite(ledPin, LOW);

	  // configure a single coil at address 0x00
	  ModbusRTUServer.configureCoils(0x00, 1);




}
void loop() //fonction principale, elle se répète (s’exécute) à l'infini
{

	  // poll for Modbus RTU requests
	  ModbusRTUServer.poll();

	  // read the current value of the coil
	  int coilValue = ModbusRTUServer.coilRead(0x00);

	  if (coilValue) {
	    // coil value set, turn LED on
	    digitalWrite(ledPin, HIGH);


	  } else {
	    // coild value clear, turn LED off
	    digitalWrite(ledPin, LOW);

	  }



}
