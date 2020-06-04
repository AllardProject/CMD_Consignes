#include <Arduino.h>
#include "lib/rs485/ArduinoRS485.h"  // ArduinoModbus depends on the ArduinoRS485 library
#include "lib/ArduinoModbus.h"
#include <EEPROM.h>

const int P1 = 2; // broche 2 du micro-contrôleur se nomme maintenant : p1
const int P2 = 3;
const int P3 = 4;
const int P4 = 5;
const int P5 = 6;
const int P6 = 7;
const int P7 = 8;
const int P8 = 9;
const int P9 = 10;
const int P10 = 11;
const int P11 = 12;
const int P12 = 13;

int tempOuvGache = 1000;


void setup() //fonction d'initialisation de la carte
{



	  // start the Modbus RTU server, with (slave) id 1
	  if (!ModbusRTUServer.begin(1, 9600)) {
	    Serial.println("Failed to start Modbus RTU Server!");
	    while (1);
	  }

	  // configure the LED
	  pinMode(P1, OUTPUT);
	  pinMode(P2, OUTPUT);
	  pinMode(P3, OUTPUT);
	  pinMode(P4, OUTPUT);
	  pinMode(P5, OUTPUT);
	  pinMode(P6, OUTPUT);
	  pinMode(P7, OUTPUT);
	  pinMode(P8, OUTPUT);
	  pinMode(P9, OUTPUT);
	  pinMode(P10, OUTPUT);
	  pinMode(P11, OUTPUT);
	  pinMode(P12, OUTPUT);

	  // configure coil
	  ModbusRTUServer.configureCoils(0x00, 12);

	  // congigure EEPROM
int a =EEPROM.read(0);
ModbusRTUServer.coilWrite(0x00, a);

int b =EEPROM.read(1);
ModbusRTUServer.coilWrite(0x01, b);

int c =EEPROM.read(2);
ModbusRTUServer.coilWrite(0x02, c);

int d =EEPROM.read(3);
ModbusRTUServer.coilWrite(0x03, d);

int e =EEPROM.read(4);
ModbusRTUServer.coilWrite(0x04, e);

int f =EEPROM.read(5);
ModbusRTUServer.coilWrite(0x05, f);

int g =EEPROM.read(6);
ModbusRTUServer.coilWrite(0x06, g);

int h =EEPROM.read(7);
ModbusRTUServer.coilWrite(0x07, h);



}
void loop() //fonction principale, elle se répète (s’exécute) à l'infini
{


	  // poll for Modbus RTU requests
	  ModbusRTUServer.poll();

	  // read the current value of the coil
	  int coilValue0 = ModbusRTUServer.coilRead(0x00);
	  int coilValue1 = ModbusRTUServer.coilRead(0x01);
	  int coilValue2 = ModbusRTUServer.coilRead(0x02);
	  int coilValue3 = ModbusRTUServer.coilRead(0x03);
	  int coilValue4 = ModbusRTUServer.coilRead(0x04);
	  int coilValue5 = ModbusRTUServer.coilRead(0x05);
	  int coilValue6 = ModbusRTUServer.coilRead(0x06);
	  int coilValue7 = ModbusRTUServer.coilRead(0x07);


	  // enregistrement des valeur coil dans la mémoir EEPROM
	  EEPROM.write(0, coilValue0);
	  EEPROM.write(1, coilValue1);
	  EEPROM.write(2, coilValue2);
	  EEPROM.write(3, coilValue3);
	  EEPROM.write(4, coilValue4);
	  EEPROM.write(5, coilValue5);
	  EEPROM.write(6, coilValue6);
	  EEPROM.write(7, coilValue7);



	  // casier 1
	  if (EEPROM.read(0) == 0){
	    digitalWrite(P1, HIGH); //allumer L1 rouge
	    digitalWrite(P2, LOW); // Eteindre L1 vert
	  } else{
	      digitalWrite(P1, LOW); //Eteindre rouge
	      digitalWrite(P2, HIGH); // allumer  vert
	    }





	  if (EEPROM.read(1) == 1){
	    digitalWrite(P3, HIGH); //allumer ser
	    delay(tempOuvGache);
	    coilValue1 = ModbusRTUServer.coilWrite(0x01, 0);
	    digitalWrite(P3, LOW); //éteindre ser
	    EEPROM.write(1, 0);
	  }

	  // casier 2
	  if (EEPROM.read(2) == 0){
	    digitalWrite(P4, HIGH); //allumer L1 rouge
	    digitalWrite(P5, LOW); // Eteindre L1 vert
	  } else{
	      digitalWrite(P4, LOW); //Eteindre rouge
	      digitalWrite(P5, HIGH); // allumer  vert
	    }


	  if (EEPROM.read(3) == 1){
	    digitalWrite(P6, HIGH); //allumer ser
	    delay(tempOuvGache);
	    coilValue3 = ModbusRTUServer.coilWrite(0x03, 0);
	    digitalWrite(P6, LOW); //éteindre ser
	    EEPROM.write(3, 0);
	  }

	  // casier 3
	  if (EEPROM.read(4) == 0){
	    digitalWrite(P7, HIGH); //allumer L1 rouge
	    digitalWrite(P8, LOW); // Eteindre L1 vert
	  } else{
	      digitalWrite(P7, LOW); //Eteindre rouge
	      digitalWrite(P8, HIGH); // allumer  vert
	    }


	  if (EEPROM.read(5) == 1){
	    digitalWrite(P9, HIGH); //allumer ser
	    delay(tempOuvGache);
	    coilValue5 = ModbusRTUServer.coilWrite(0x05, 0);
	    digitalWrite(P9, LOW); //éteindre ser
	    EEPROM.write(5, 0);
	  }

	  // casier 4
	  if (EEPROM.read(6) == 0){
	    digitalWrite(P10, HIGH); //allumer L1 rouge
	    digitalWrite(P11, LOW); // Eteindre L1 vert
	  } else{
	      digitalWrite(P10, LOW); //Eteindre rouge
	      digitalWrite(P11, HIGH); // allumer  vert
	    }


	  if (EEPROM.read(7) == 1){
	    digitalWrite(P12, HIGH); //allumer ser
	    delay(tempOuvGache);
	    coilValue7 = ModbusRTUServer.coilWrite(0x07, 0);
	    digitalWrite(P12, LOW); //éteindre ser
	    EEPROM.write(7, 0);
	  }






}
