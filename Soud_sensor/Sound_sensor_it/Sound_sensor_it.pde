
 import processing.serial.*;
 
 Serial myPort;        // The serial port
 int xPos = 1;         // horizontal position of the graph
 
void setup () {
 size(800, 300);        
 println(Serial.list());
 myPort = new Serial(this, Serial.list()[3], 9600);
 myPort.bufferUntil('\n');
 background(255);
}
 void draw () {
 // everything happens in the serialEvent()
 }
 
void serialEvent (Serial myPort) {
  String inString = myPort.readStringUntil('\n');
  if (inString != null) {
  inString = trim(inString);
  float inByte = float(inString); 
  inByte = map(inByte, 0, 1023, 0, height);
 
  stroke(0,34,255);
  //beginShape();
  //curveVertex(inByte, inByte);
  //curveVertex(inByte, inByte);
  //endShape();
  line(xPos, height, xPos, height - inByte);
 
  if (xPos >= width) {
     xPos = 0;  
     background(255); 
   } 
   
   else {
     xPos++;
   }
  }
 }


