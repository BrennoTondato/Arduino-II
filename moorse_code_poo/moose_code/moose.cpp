#include "moose.h"
#include "Arduino.h"

moose::moose(int pin){
  pinMode(pin, OUTPUT);
  this->pin = pin;
}

void moose::dot(){
  digitalWrite(pin, HIGH);
  delay(250);
  digitalWrite(pin, LOW);
  delay(250);
}

void moose::dash(){
  digitalWrite(pin, HIGH);
  delay(1000);
  digitalWrite(pin, LOW);
  delay(250);
}
