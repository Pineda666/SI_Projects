const int pin13 = 13;
const int pin12 = 12;
void setup() {
   Serial.begin(9600);
   pinMode(pin13,OUTPUT);
   pinMode(pin12,OUTPUT);

}

void loop() {
  if(Serial.available()>0){
   char caracter = Serial.read();
if(caracter == 'e'){
digitalWrite(pin13,HIGH);
digitalWrite(pin12,HIGH);

}
 if(caracter == 'x'){
digitalWrite(pin13,HIGH);
digitalWrite(pin12,LOW);

} 
 if(caracter == 'y'){
digitalWrite(pin13,LOW);
digitalWrite(pin12,HIGH);

} 
 if(caracter == 'a'){
digitalWrite(pin13,LOW);
digitalWrite(pin12,LOW);

} 

  }



}