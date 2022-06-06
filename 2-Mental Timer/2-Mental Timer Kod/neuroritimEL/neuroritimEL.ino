#include <SoftwareSerial.h>
SoftwareSerial HC12(0,1);
String message1[7]; String mesaj1;char pdeger[3]; String str; String str1 = "/";
int led = 13;  int pilpin = A1; const byte buton = 3; 
int pildeger; int deger = 0; int ak=0; int ak1=0;

void setup() {
  pinMode(led, OUTPUT);pinMode(buton,INPUT_PULLUP);
  Serial.begin(9600); HC12.begin(9600); digitalWrite(led, LOW);
  digitalWrite(led, HIGH);delay(200);digitalWrite(led, LOW); delay(200);
  digitalWrite(led, HIGH);delay(200);digitalWrite(led, LOW); delay(200);
  digitalWrite(led, HIGH);delay(200);digitalWrite(led, LOW); delay(200);
  message1[0] = "*"; message1[1] = "M"; message1[2] = "E"; message1[3] = "1"; message1[4] = "K";message1[5] = "XX"; message1[6] = "/";
  }
void loop() {
  digitalWrite(led, LOW);
  pildeger = analogRead(pilpin); pildeger = map(pildeger, 0, 860, 9, 99);//Serial.println(pildeger);
  str = String(pildeger); str.toCharArray(pdeger, 3); message1[5] = pdeger;
  if (pildeger < 35 ) {ak1=1;}
  if (pildeger > 35 ) {ak1=0;}
  while(ak1==1){digitalWrite(led, HIGH);delay(100);digitalWrite(led, LOW); delay(100);pildeger = analogRead(pilpin); pildeger = map(pildeger, 0, 860, 9, 99);if (pildeger > 35 ) {ak1=0;}}  
  
  mesaj1 = String(message1[0] + message1[1] + message1[2] + message1[3] + message1[4] + message1[5] + message1[6]);   
  if (digitalRead(buton) == 0) {Serial.println(mesaj1);digitalWrite(led,HIGH);
  ahmet1:delay(50);
  if (digitalRead(buton) == 0) {goto ahmet1;}
  }
}
