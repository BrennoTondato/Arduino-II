#include "moose.h"

moose m(4);

void setup(){}

void loop() {
  m.dot();
  m.dot();
  m.dot();
  
  m.dash();
  m.dash();
  m.dash();
  
  m.dot();
  m.dot();
  m.dot();
  
  delay(3000);

}
