int value = 0;

void setup() {
 Serial.begin(9600);
 pinMode(2, OUTPUT);
}

void loop() {
  value = analogRead(0);
  Serial.println(value);
  digitalWrite(2, HIGH);
  delay(100);
}
