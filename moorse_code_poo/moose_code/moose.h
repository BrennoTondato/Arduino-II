#ifndef MOSE_H
#define MOSE_H
#include "Arduino.h"

class moose{
  public:
   moose(int pin);
   void dot();
   void dash();
   
  private:
   int pin;
};

#endif
