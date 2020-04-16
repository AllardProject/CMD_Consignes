#include <Arduino.h>
#include "lib/rs485/ArduinoRS485.h"  // ArduinoModbus depends on the ArduinoRS485 library
#include "lib/ArduinoModbus.h"

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

void setup() //fonction d'initialisation de la carte
{

	  Serial.println("Modbus RTU Server LED");

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

	  // configure a single coil at address 0x00
	  ModbusRTUServer.configureCoils(0x00, 1);
	  ModbusRTUServer.configureCoils(0x01, 1);
	  /*ModbusRTUServer.configureCoils(0x02, 1);
	  ModbusRTUServer.configureCoils(0x03, 1);
	  ModbusRTUServer.configureCoils(0x04, 1);
	  ModbusRTUServer.configureCoils(0x05, 1);
	  ModbusRTUServer.configureCoils(0x06, 1);
	  ModbusRTUServer.configureCoils(0x07, 1);
	  ModbusRTUServer.configureCoils(0x08, 1);
	  ModbusRTUServer.configureCoils(0x09, 1);
	  ModbusRTUServer.configureCoils(0x10, 1);
	  ModbusRTUServer.configureCoils(0x11, 1);
	  ModbusRTUServer.configureCoils(0x12, 1);
	  ModbusRTUServer.configureCoils(0x13, 1);
	  ModbusRTUServer.configureCoils(0x14, 1);
	  ModbusRTUServer.configureCoils(0x15, 1);*/




}
void loop() //fonction principale, elle se répète (s’exécute) à l'infini
{

	  // poll for Modbus RTU requests
	  ModbusRTUServer.poll();

	  // read the current value of the coil
	  int coilValue0 = ModbusRTUServer.coilRead(0x00); //led
	  int coilValue1 = ModbusRTUServer.coilRead(0x01); //gâche
	  /*int coilValue2 = ModbusRTUServer.coilRead(0x02); //led
	  int coilValue3 = ModbusRTUServer.coilRead(0x03); //gache
	  int coilValue4 = ModbusRTUServer.coilRead(0x04);	//l
	  int coilValue5 = ModbusRTUServer.coilRead(0x05);	//g
	  int coilValue6 = ModbusRTUServer.coilRead(0x06);	//l
	  int coilValue7 = ModbusRTUServer.coilRead(0x07);	//g
	  int coilValue8 = ModbusRTUServer.coilRead(0x08); //l
	  int coilValue9 = ModbusRTUServer.coilRead(0x09); //g
	  int coilValue10 = ModbusRTUServer.coilRead(0x10);	//l
	  int coilValue11 = ModbusRTUServer.coilRead(0x11);	//g
	  int coilValue12 = ModbusRTUServer.coilRead(0x12);	//l
	  int coilValue13 = ModbusRTUServer.coilRead(0x13);	//g
	  int coilValue14 = ModbusRTUServer.coilRead(0x14);	//l
	  int coilValue15 = ModbusRTUServer.coilRead(0x15);	//g*/

	  if (coilValue0 == 0){
	    digitalWrite(P1, HIGH); //allumer L1 rouge
	    digitalWrite(P2, LOW); // Eteindre L1 vert
	  } else{
	      digitalWrite(P1, LOW); //Eteindre rouge
	      digitalWrite(P2, HIGH); // allumer  vert
	    }





	  if (coilValue1 == 1){
	    digitalWrite(P3, HIGH); //allumer ser

	  }
	  Serial.println(coilValue0);
	  Serial.println(coilValue1);

	  /*
	  if (Led2 == 1){
	      digitalWrite(P3, LOW); //Eteindre rouge
	      digitalWrite(P4, HIGH); // allumer  vert
	    }
	 Led3 = 0;

	  if (Led3 == 0){
	    digitalWrite(P5, HIGH); //allumer L1 rouge
	    digitalWrite(P6, LOW); // Eteindre L1 vert
	  }
	  if (Led3 == 1){
	      digitalWrite(P5, LOW); //Eteindre rouge
	      digitalWrite(P6, HIGH); // allumer  vert
	    }


	  Led4 = 1;

	  if (Led4 == 0){
	    digitalWrite(P7, HIGH); //allumer L1 rouge
	    digitalWrite(P8, LOW); // Eteindre L1 vert
	  }
	  if (Led4 == 1){
	      digitalWrite(P7, LOW); //Eteindre rouge
	      digitalWrite(P8, HIGH); // allumer  vert
	    }

	  Ser1 = 1;

	  if(Ser1 == 1){
	    digitalWrite(P9, HIGH); //ouvrir serrure 1
	    }

	  Ser2 = 1;

	  if(Ser2 == 1){
	    digitalWrite(P10, HIGH);
	    }

	     Ser3 = 1;

	  if(Ser3 == 1){
	    digitalWrite(P11, HIGH);
	    }


	     Ser4 = 1;

	  if(Ser4 == 1){
	    digitalWrite(P12, HIGH);
	    }*/


}
