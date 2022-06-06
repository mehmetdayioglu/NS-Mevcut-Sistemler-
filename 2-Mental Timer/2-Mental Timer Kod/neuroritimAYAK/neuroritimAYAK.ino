#include <SoftwareSerial.h>
SoftwareSerial HC12(0, 1);
int sagsens=3; int led=12; int ak=0;char gelen;
String mesaj1="*MA1KXX/";
void setup(){
  pinMode(sagsens, INPUT_PULLUP); pinMode(led,OUTPUT);
  Serial.begin(9600);HC12.begin(9600); 
  digitalWrite(led,HIGH);delay(200);digitalWrite(led,LOW);delay(200);
  digitalWrite(led,HIGH);delay(200);digitalWrite(led,LOW);delay(200);
  digitalWrite(led,HIGH);//Serial.println("MTR");
}
void loop(){
  // while (HC12.available()>0) { Serial.write(HC12.read());}
   while (HC12.available()>0) {ak=ak+1;gelen=HC12.read();}
   if(ak==1 && digitalRead(sagsens) == 1){Serial.write(gelen);ak=0;}
   if(ak>=1 && digitalRead(sagsens) == 1){ak=0;}
   if(ak>=1 && digitalRead(sagsens) == 0){ak=0;}
   digitalWrite(led,HIGH); 
   if (digitalRead(sagsens) == 0) {
   Serial.println(mesaj1);digitalWrite(led,LOW);
   ahmet1:delay(50);
   if (digitalRead(sagsens) == 0) {goto ahmet1;}
   }
}
