#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <Keypad.h>
#include <SPI.h>

int x=0;
int cntr=0;

int analogpin = A1;
int mp;


const int slaveSelectPin = 53;

LiquidCrystal_I2C lcd(0x27, 16, 2);

String Protokol ;
String Protokolseans1;
String Protokolseans2;

const byte ROWS = 4;
const byte COLS = 3;



char hexaKeys[ROWS][COLS] = {
  {'1', '2', '3'},
  {'4', '5', '6'},
  {'7', '8', '9'},
  {'*', '0', '#'}
};

byte rowPins[ROWS] = {34, 32, 30, 28};
byte colPins[COLS] = {26, 24, 22};
Keypad customKeypad = Keypad(makeKeymap(hexaKeys), rowPins, colPins, ROWS, COLS);

int menu = 0;
int seviye = 4;
int seviye2 = 4;
int seviye3 = 2;
int seviye4 = 1;

int saniye = 0;
int dakika = 0;
int saat = 0;

 void setup(){
  pinMode(A1,INPUT);
pinMode(12, OUTPUT);    // sets the digital pin 13 as output
  pinMode(4, OUTPUT);    // sets the digital pin 13 as output
  pinMode(10, OUTPUT);    // sets the digital pin 13 as output
  pinMode(9, OUTPUT);    // sets the digital pin 13 as output
  pinMode(7, OUTPUT);    // sets the digital pin 13 as output
  pinMode(6, OUTPUT);    // sets the digital pin 13 as output
  pinMode(5, OUTPUT);    // sets the digital pin 13 as output
  digitalWrite(12, LOW);
  digitalWrite(4, LOW);
  digitalWrite(10, LOW);
  digitalWrite(9, LOW);
  digitalWrite(7, LOW);
  digitalWrite(6, LOW);
  digitalWrite(5, LOW);
  
 pinMode(44, OUTPUT);    // sets the digital pin 13 as output
 digitalWrite(44, LOW);
pinMode(43, OUTPUT);    // sets the digital pin 13 as output
 digitalWrite(43, LOW);

 lcd.init();
 lcd.backlight();

 Serial.begin(9600);
  pinMode(slaveSelectPin, OUTPUT);
  SPI.begin();
  
 cli();                //interruptlar durduruldu
 TCCR1A = 0;           //reg. temizlendi
 TCCR1B = 0;
 TCNT1 = 0;            // timer1 sayacı sıfırlandı
 OCR1A = 15624;        // 1 saniyede timer1 kesmeye girer
 TCCR1B |= (1<< WGM12);// CTC modu seçildi.
 TCCR1B |= (1<< CS12) | (1<< CS10); //prescaler 1024 olarak belirleme
 TIMSK1 |= (1<< OCIE1A);
 
 sei();                //interruptlar aktif.
  }

  ISR(TIMER1_COMPA_vect)
  { saniye++;
    x++;
    
  }
  

  void loop(){ 
    mp = analogRead(analogpin);
 
    
   
    menufunc();
 
    
   
  while ( Serial.available( ) )
  {
    Protokol = Serial.readString( );

    for (int i = 0; i <= 10; i++) {
      Serial.write(Protokol.charAt(i));
    }
   
  if(Protokol.charAt(1)=='1') {Protokolseans1=Protokol;}
  if(Protokol.charAt(1)=='2') {Protokolseans2=Protokol;}
  }
 

    }

    void timer()
{
    if (saniye==60){lcd.clear();dakika++;saniye=0;} 
    if (dakika==60 && saniye==0){lcd.clear();saat++;dakika=0;}
    lcd.setCursor(3, 1);
    lcd.print("<");
    lcd.setCursor(4, 1);
    lcd.print(saat);
    lcd.setCursor(6, 1);
    lcd.print('-');
    lcd.setCursor(7, 1);
    lcd.print(dakika);
    lcd.setCursor(9, 1);
    lcd.print('-');
    lcd.setCursor(10, 1);
    lcd.print(saniye);
    lcd.setCursor(12, 1);
    lcd.print(">");
}

  void digitalPotWrite(int address, int value)
{
  digitalWrite(slaveSelectPin, LOW);
  delay(100);
  SPI.transfer(address);
  SPI.transfer(value);
  delay(100);
  digitalWrite(slaveSelectPin, HIGH);
}
void Protokolfunc()
{
  
  if (Protokol.charAt(3)=='A'){digitalWrite(6, HIGH);}
  if (Protokol.charAt(3)=='B'){digitalWrite(10, HIGH);}
  if (Protokol.charAt(3)=='C'){digitalWrite(4, HIGH);}
  if (Protokol.charAt(3)=='D'){digitalWrite(12, HIGH);}
  if (Protokol.charAt(3)=='E'){digitalWrite(7, HIGH);}
  if (Protokol.charAt(4)=='F'){digitalPotWrite(0, 220);digitalPotWrite(3, 220);}
  if (Protokol.charAt(4)=='G'){digitalPotWrite(0, 165);digitalPotWrite(3, 165);}
  if (Protokol.charAt(4)=='H'){digitalPotWrite(0, 110);digitalPotWrite(3, 110);}
  if (Protokol.charAt(4)=='I'){digitalPotWrite(0, 55);digitalPotWrite(3, 55);}
  if (Protokol.charAt(5)=='J'){digitalPotWrite(1, 220);digitalPotWrite(5, 220);}
  if (Protokol.charAt(5)=='K'){digitalPotWrite(1, 165);digitalPotWrite(5, 165);}
  if (Protokol.charAt(5)=='L'){digitalPotWrite(1, 110);digitalPotWrite(5, 110);}
  if (Protokol.charAt(5)=='M'){digitalPotWrite(1, 55);digitalPotWrite(5, 55);}
  if (Protokol.charAt(6)=='N'){digitalWrite(5, HIGH);}
  if (Protokol.charAt(6)=='O'){digitalWrite(5, LOW);}
  
}

void menufunc() {
  char customKey = customKeypad.getKey();
  if (customKey == '*'){lcd.clear();lcd.setCursor(0, 1);menu=0;}
  if (customKey == '8'){ menu++; delay(100);if (menu >= 5){ menu=5;}}
  if (customKey == '2'){ menu--; delay(100);if (menu <= 1){ menu=1;}}
  if (menu == 0){lcd.setCursor(3, 0);lcd.print("NEUROSOUND");}
  if (menu == 1){ 
    lcd.setCursor(0, 0);lcd.print("KULAKLIK SES:   ");
    lcd.setCursor(0, 1);lcd.print("SEVIYE:");lcd.setCursor(9, 1);lcd.print(seviye);
    if (customKey == '6'){ seviye++; delay(100);if(seviye >= 8){seviye=8;}}
    if (customKey == '4'){ seviye--; delay(100);if (seviye <= 1){ seviye=1;}}
  }
  if (menu == 2){ 
    lcd.setCursor(0, 0);lcd.print("BONE SES:       ");
    lcd.setCursor(0, 1);lcd.print("SEVIYE:");lcd.setCursor(9, 1);lcd.print(seviye2);
    if (customKey == '6'){ seviye2++; delay(100);if(seviye2 >= 8){seviye2=8;}}
    if (customKey == '4'){ seviye2--; delay(100);if (seviye2 <= 1){ seviye2=1;}}
  }    
  if (menu == 3){ lcd.setCursor(0, 0);lcd.print("EKRAN PARLAKLIGI");
   lcd.setCursor(0, 1);lcd.print("SEVIYE:");lcd.setCursor(9, 1);lcd.print(seviye3);
   if (customKey == '6'){ seviye3++; delay(100);if(seviye3 >= 4){seviye3=4;}}
   if (customKey == '4'){ seviye3--; delay(100);if (seviye3 <= 0){ seviye3=0;}}
  }
  if (menu == 4){ lcd.setCursor(0, 0);lcd.print("UYARI SESI:     ");
  lcd.setCursor(0, 1);lcd.print("SEVIYE:");lcd.setCursor(9, 1);lcd.print(seviye4);
   if (customKey == '6'){ seviye4++; delay(100);if(seviye4 >= 1){seviye4=1;}}
   if (customKey == '4'){ seviye4--; delay(100);if (seviye4 <= 0){ seviye4=0;}}
  }
  
  if (menu == 5){
   
    lcd.setCursor(0, 0);lcd.print("TEST MODU       ");lcd.setCursor(0, 1);lcd.print("                ");
    if (customKey == '5'){
       lcd.clear();
  lcd.print("TEST MODU AKTIF");
  delay(1500);
digitalPotWrite(0, 230);digitalPotWrite(1, 230);digitalPotWrite(2, 230);digitalPotWrite(3, 230);digitalPotWrite(4, 230);digitalPotWrite(5, 230);
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("mode 1");
  lcd.setCursor(0, 1);
  lcd.print("FULLBAND");
  digitalWrite(6, HIGH); // sets the digital pin 13 on
  delay(5000);            // waits for a second
  digitalWrite(6, LOW);  // sets the digital pin 13 off
  delay(1000);            // waits for a second

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("mode 2");
  lcd.setCursor(0, 1);
  lcd.print("2kH HIGHPASS");
  digitalWrite(10, HIGH); // sets the digital pin 13 on
  delay(5000);            // waits for a second
  digitalWrite(10, LOW);  // sets the digital pin 13 off
  delay(1000);            // waits for a second

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("mode 3");
  lcd.setCursor(0, 1);
  lcd.print("4kH HIGHPASS");
  digitalWrite(4, HIGH); // sets the digital pin 13 on
  delay(5000);            // waits for a second
  digitalWrite(4, LOW);  // sets the digital pin 13 off
  delay(1000);            // waits for a second

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("mode 4");
  lcd.setCursor(0, 1);
  lcd.print("6kH HIGHPASS");
  digitalWrite(12, HIGH); // sets the digital pin 13 on
  delay(5000);            // waits for a second
  digitalWrite(12, LOW);  // sets the digital pin 13 off
  delay(1000);            // waits for a second

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("mode 5");
  lcd.setCursor(0, 1);
  lcd.print("8kH HIGHPASS");
  digitalWrite(7, HIGH); // sets the digital pin 13 on
  delay(5000);            // waits for a second
  digitalWrite(7, LOW);  // sets the digital pin 13 off
  delay(1000);            // waits for a second

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("mode 6");
  lcd.setCursor(0, 1);
  lcd.print("2kH LOWPASS");
  digitalWrite(9, HIGH); // sets the digital pin 13 on
  delay(5000);            // waits for a second
  digitalWrite(9, LOW);  // sets the digital pin 13 off
  delay(1000);            // waits for a second

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("mode 7");
  lcd.setCursor(0, 1);
  lcd.print("MIKROFON");
  digitalWrite(5, HIGH); // sets the digital pin 13 on
  delay(5000);            // waits for a second
  digitalWrite(5, LOW);  // sets the digital pin 13 off
  delay(1000);  

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("BALANS TESTI");
  lcd.setCursor(0, 1);
  lcd.print("BALANS %0");  
  digitalPotWrite(0, 0);digitalPotWrite(1, 0);digitalPotWrite(2, 0);digitalPotWrite(3, 0);digitalPotWrite(4, 0);digitalPotWrite(5, 0);
  delay(3000); 
  digitalWrite(6, HIGH);
  lcd.clear(); 
  lcd.print("BALANS %25");  
  digitalPotWrite(0, 55);digitalPotWrite(1, 55);digitalPotWrite(2, 55);digitalPotWrite(3, 55);digitalPotWrite(4, 55);digitalPotWrite(5, 55);
  delay(3000);
  lcd.clear();
  lcd.print("BALANS %50");  
  digitalPotWrite(0, 110);digitalPotWrite(1, 110);digitalPotWrite(2, 110);digitalPotWrite(3, 110);digitalPotWrite(4, 110);digitalPotWrite(5, 110);
  delay(3000);
  lcd.clear();
  lcd.print("BALANS %75");  
  digitalPotWrite(0, 165);digitalPotWrite(1, 165);digitalPotWrite(2, 165);digitalPotWrite(3, 165);digitalPotWrite(4, 165);digitalPotWrite(5, 165);
  delay(3000);
  lcd.clear();      
  lcd.print("BALANS %100");  
  digitalPotWrite(0, 230);digitalPotWrite(1, 230);digitalPotWrite(2, 230);digitalPotWrite(3, 230);digitalPotWrite(4, 230);digitalPotWrite(5, 230);
  delay(3000); 
  digitalPotWrite(0, 0);digitalPotWrite(1, 0);digitalPotWrite(2, 0);digitalPotWrite(3, 0);digitalPotWrite(4, 0);digitalPotWrite(5, 0);  
      lcd.clear();
      lcd.print("TEST BITTI");
      delay(3000); 
      digitalWrite(6, LOW);
      }
  }
  if (Protokolseans1.charAt(1) == '1'&&Protokolseans2.charAt(1) == '2'&&cntr==0){ 
  Serial.end();
  
   menu=7;
 lcd.setCursor(0, 0);
lcd.print("SEANS HAZIR     ");
    if (customKey == '5'){ cntr=1;saniye=0;dakika=0;saat=0;x=0;Protokol= Protokolseans1;Protokolfunc();lcd.setCursor(0, 0);lcd.print("PART1UYGULANIYOR");}}

 if (saniye==0&&dakika==1&&saat==0&&cntr==1){ x=0;cntr=2;Protokol= Protokolseans2;Protokolfunc();lcd.setCursor(0, 0);lcd.print("PART2UYGULANIYOR");}




if (saniye==0&&dakika==2&&saat==0&&cntr==2){bitir();}   //*11EFJOPRY/   *21BIMNPRY/
    
     if (cntr==2||cntr==1){timer(); if (x==8){digitalWrite(9, HIGH);digitalWrite(43, HIGH);}
    if (x==10){digitalWrite(9, LOW);x=0;digitalWrite(43, LOW);}
      
    if(mp>100){digitalWrite(6, HIGH);digitalWrite(44, HIGH);delay(200);}
    if(mp<=100&&Protokol.charAt(3)!='A'){digitalWrite(6, LOW);digitalWrite(44, LOW);}}

    
  

    
    
   
    


 }
 void bitir(){
 menu=8;
  digitalWrite(12, LOW);
  digitalWrite(4, LOW);
  digitalWrite(10, LOW);
  digitalWrite(9, LOW);
  digitalWrite(7, LOW);
  digitalWrite(6, LOW);
  digitalWrite(5, LOW);
  digitalPotWrite(0, 0);digitalPotWrite(1, 0);digitalPotWrite(2, 0);digitalPotWrite(3, 0);digitalPotWrite(4, 0);digitalPotWrite(5, 0);
 
  for( ; ; ) {
lcd.setCursor(0, 0);
lcd.print("CIHAZI YENIDEN  ");
lcd.setCursor(0, 1);
lcd.print("BASLATINIZ...   ");
}

 
}

  
