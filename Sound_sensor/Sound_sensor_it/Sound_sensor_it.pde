import processing.serial.*;

Serial myPort;      
int xPos = (width/2);       
 
void setup () {
 size(700, 300);        
 println(Serial.list());
 myPort = new Serial(this, Serial.list()[3], 9600);
 myPort.bufferUntil('\n');
 background(70);
}
 void draw () {}
 
void serialEvent (Serial myPort) {
  String inString = myPort.readStringUntil('\n');
  if (inString != null) {
  inString = trim(inString);
  float inByte = float(inString); 
  inByte = map(inByte, 0, 1023, 0, height/2);
 
  stroke(255);
  line(xPos , height/2, xPos, height/2 - inByte);
  line(xPos , height/2, xPos, height/2 + inByte);
 
  if (xPos >= width) {
     xPos = 0;  
     background(70); 
   } 
   
   else {
     xPos+= 3;
   }
  }
 }


