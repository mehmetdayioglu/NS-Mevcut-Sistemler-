// LCD module connections
sbit LCD_RS at RD2_bit; sbit LCD_EN at RD3_bit; sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit; sbit LCD_D6 at RD6_bit; sbit LCD_D7 at RD7_bit;
sbit LCD_RS_Direction at TRISD2_bit; sbit LCD_EN_Direction at TRISD3_bit;
sbit LCD_D4_Direction at TRISD4_bit; sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit; sbit LCD_D7_Direction at TRISD7_bit;
int ak1=0;
sbit CS0 at RC0_bit;
sbit CS0_Direction at TRISC0_bit;
sbit CS1 at RG0_bit;
sbit CS1_Direction at TRISG0_bit;
int parlak_ayar=0; int seyans=0; int uyari1=0;int uyari2=0;int uyari3=0;int uyari4=0;
unsigned int kanal1; unsigned int kanal2; int saat=60;int saat1=120;
int tus=0; int sayac=0; char txt[7];char txt1[3];char gelen[11]; char veri[11];char veri1[11];char veri2[11]; char veri3[11];char veri4[11];
char uart_rd; int k=0;  int i; int Vpil; int sayici=0;int syc=0; int syc1=0;int balans=0;
int m;int zaman=0;int smart=0; int ak=0; int asmart=0;
int kontrol=0; int kk=0;   int yon=0; int sure=0;int sure1=0; char dd[2];
int menu_kontrol=0;  int menu=0; int parlaklik=90; int blut=0; int test=0; int gln=0; int aa=0; int nn=0;int light=0; int bslt=1;
char ii;
unsigned int lcd_adres=11; unsigned int bip_adres=12; unsigned int ear_adres=13;
unsigned int bone_adres=14; unsigned int bt_adres=15; unsigned int emn_adres=16;
int lcd_pwm=0; int bip_data=0; int ear_data=0;
int bone_data=0; int bt_data=0; int emn_data=0;
unsigned short okunan=0; unsigned short  yaz=15;
int volume; int volume1;
void eprom_oku(){
    lcd_pwm=EEPROM_Read(lcd_adres);  delay_ms(50); if (lcd_pwm==255){EEPROM_Write(lcd_adres, 90);lcd_pwm=90;}
    bip_data=EEPROM_Read(bip_adres);  delay_ms(50);  if (bip_data==255){EEPROM_Write(bip_adres, 1);bip_data=1;}
    ear_data=EEPROM_Read(ear_adres);  delay_ms(50);  if (ear_data==255){EEPROM_Write(ear_adres, 120);ear_data=120;}
    bone_data=EEPROM_Read(bone_adres);  delay_ms(50);  if (bone_data==255){EEPROM_Write(bone_adres, 120);bone_data=120;}
    bt_data=EEPROM_Read(bt_adres);  delay_ms(50);  if (bt_data==255){EEPROM_Write(bt_adres, 0);bt_data=0;}
    emn_data=EEPROM_Read(emn_adres);  delay_ms(50);  if (emn_data==255){EEPROM_Write(emn_adres,0);emn_data=0;}
   }
 void adcler(){
 kanal1 = ADC_Read(0); IntToStr(kanal1, txt);// Lcd_Out(2,4,  Ltrim(txt)); Lcd_Out_Cp("  ");
 kanal2 = ADC_Read(1); IntToStr(kanal2, txt); //Lcd_Out(1,4, Ltrim(txt)); Lcd_Out_Cp("  ");
 }
 void Interrupt(){
 if (RC1IF_bit){
 UART1_Read_Text(veri, "/", 11);
 //UART2_Read_Text(veri, "/", 11);  // reads text until 'OK' is found
 RC1IF_bit=0;k=1;
 }
 
  if (RC2IF_bit){
 UART2_Read_Text(veri, "/", 11);
 //UART2_Read_Text(veri, "/", 11);  // reads text until 'OK' is found
 ak1=1;
 RC2IF_bit=0;k=2;
 }
 
  //if (TMR1IF_bit){
  if (TMR3IF_bit){
    TMR3IF_bit = 0;
    TMR3H         = 0x3C;
    TMR3L         = 0xB0;

  /*
  TMR1IF_bit = 0;
  TMR1H         = 0x3C;
  TMR1L         = 0xB0;   */
  sayac=sayac+1;
  if(sayac==5){zaman=zaman+1;smart=smart+1; sure=sure+1; light=light+1;sayac=0;}
  if(sure==60){sure=0;sure1=sure1+1; saat1=(saat1-1); saat=(saat-1);}
  }
  if (INT0IF_bit){
  INT0IF_bit=0;
  delay_us(100);
  }
  if (RBIF_bit){delay_ms(30);
  RB1_bit=1;   RB2_bit=1;  RB3_bit=0;
  tus=portb&0b11110000;
  tus=(240-tus)/16;
  if (tus >0){
  if (tus==4){tus=3;}
  if (tus==8){tus=4;}
  goto tara;}
  RB1_bit=1;   RB2_bit=0;  RB3_bit=1;
  tus=portb&0b11110000;
  tus=(240-tus)/16;
  if (tus >0){
  if (tus==4){tus=3;}
  if (tus==8){tus=4;}
    tus=tus+4;
  goto tara;}
  RB1_bit=0;   RB2_bit=1;  RB3_bit=1;
  tus=portb&0b11110000;
  tus=(240-tus)/16;
  if (tus >0){
  if (tus==4){tus=3;}
  if (tus==8){tus=4;}
    tus=tus+8;
  goto tara;}
  tara:
   RB1_bit=0;   RB2_bit=0;  RB3_bit=0;
  switch(tus){case 0:tus=20; break; case 1: tus=11;  break; case 2: tus=7;break;
              case 3:tus=4;  break; case 4: tus=1; break; case 5: tus=0;break;
              case 6:tus=8;  break; case 7: tus=5;  break; case 8: tus=2;break;
              case 9:tus=12;  break; case 10:tus=9;  break; case 11:tus=6;break;
              case 12: tus=3; break;}
              
             //  delay_ms(250);
  RBIF_bit=0;
  }
}
void AD5206_Pot1(short channel, short value){
CS0 = 0;
SPI1_Write(channel);
SPI1_Write(value);
CS0 = 1;
}
void AD5206_Pot2(short channel, short value){
CS1 = 0;
SPI1_Write(channel);
SPI1_Write(value);
CS1 = 1;
}
const char character0[] = {14,31,17,17,17,17,17,31};
const char character1[] = {14,31,17,17,17,17,31,31};
const char character2[] = {14,31,17,17,17,31,31,31};
const char character3[] = {14,31,17,17,31,31,31,31};
const char character4[] = {14,31,17,31,31,31,31,31};
const char character5[] = {14,31,31,31,31,31,31,31};
const char character6[] = {4,12,21,14,14,21,12,4};
const char character7[] = {31,17,17,17,31,4,4,31};
const char character8[] = {14,14,14,21,10,4,4,14};
const char character9[] = {0,0,0,0,0,0,0,0};
const char character10[] = {0,10,21,10,0,4,14,4};
const char character11[] = {0,0,0,0,0,0,0,0};
/*const char character12[] = {0,0,0,0,0,0,0,0};

void CustomChar12() {
  char i;    Lcd_Cmd(95);
  for (i = 0; i<=7; i++) Lcd_Chr_CP(character12[i]);
  Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2, 2, 12);
} */
void CustomChar11() {
  char i;    Lcd_Cmd(87);
  for (i = 0; i<=7; i++) Lcd_Chr_CP(character11[i]);
  Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(1, 1, 11);
}
void CustomChar10() {
  char i;    Lcd_Cmd(79);
  for (i = 0; i<=7; i++) Lcd_Chr_CP(character10[i]);
  Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(1, 1, 10);
}
void CustomChar9() {
  char i;    Lcd_Cmd(71);
  for (i = 0; i<=7; i++) Lcd_Chr_CP(character9[i]);
  Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2, 3, 9);
}
void CustomChar8() {
  char i;   Lcd_Cmd(127);
   for (i = 0; i<=7; i++) Lcd_Chr_CP(character8[i]); 
   Lcd_Cmd(_LCD_RETURN_HOME);Lcd_Chr(2,3, 8);}

void CustomChar7() {
char i;  Lcd_Cmd(120);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
    Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2, 4, 7);
    }
void CustomChar6() {
  char i; Lcd_Cmd(112);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
    Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2, 2, 6);
    }
void CustomChar0() {
  char i; Lcd_Cmd(64);
   for (i = 0; i<=7; i++) Lcd_Chr_CP(character0[i]);
   Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2,1, 0);
   }
void CustomChar1() {
  char i;    Lcd_Cmd(72);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);    Lcd_Chr(2,1, 1);
}
void CustomChar2() {
  char i;    Lcd_Cmd(80);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
    Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2,1, 2);
}
void CustomChar3() {
  char i;  Lcd_Cmd(88);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);  Lcd_Chr(2,1, 3);
}
void CustomChar4() {
  char i; Lcd_Cmd(96);
    for (i  = 0; i<=7; i++)  Lcd_Chr_CP(character4[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);  Lcd_Chr(2,1, 4);
}
 void CustomChar5() {
   char i; Lcd_Cmd(104);
   for ( i= 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
   Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2,1, 5);
 }
 void protokol(){
  if(gelen[3]=='A'){ RE3_bit=0; RE4_bit=0;RE5_bit=0; RE6_bit=0;RE7_bit=1;}
  if(gelen[3]=='B'){ RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=1;RE7_bit=0;}
  if(gelen[3]=='C'){ RE3_bit=0; RE4_bit=1; RE5_bit=0; RE6_bit=0;RE7_bit=0;}
  if(gelen[3]=='D'){ RE3_bit=0; RE4_bit=0; RE5_bit=1; RE6_bit=0;RE7_bit=0;}
  if(gelen[3]=='E'){ RE3_bit=1; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;}
  if(gelen[4]=='F'){AD5206_Pot1(0, 220);AD5206_Pot1(3, 220);}
  if(gelen[4]=='G'){AD5206_Pot1(0, 165);AD5206_Pot1(3, 165);}
  if(gelen[4]=='H'){AD5206_Pot1(0, 110);AD5206_Pot1(3, 110);}
  if(gelen[4]=='I'){AD5206_Pot1(0, 55);AD5206_Pot1(3, 55);}
  if(gelen[5]=='J'){AD5206_Pot1(1, 220);AD5206_Pot1(5, 220);}
  if(gelen[5]=='K'){AD5206_Pot1(1, 165);AD5206_Pot1(5, 165);}
  if(gelen[5]=='L'){AD5206_Pot1(1, 110);AD5206_Pot1(5, 110);}
  if(gelen[5]=='M'){AD5206_Pot1(1, 55);AD5206_Pot1(5, 55);}
 }
void main() {
  CustomChar0(); CustomChar1(); CustomChar2(); CustomChar3(); CustomChar4();CustomChar11();
  CustomChar5(); CustomChar6(); CustomChar7(); CustomChar8(); CustomChar9();CustomChar10();
  eprom_oku();
  ADCON1=0b00001101;
 
  T3CON         = 0x31;
  TMR3IF_bit         = 0;
  TMR3H         = 0x3C;
  TMR3L         = 0xB0;
  TMR3IE_bit         = 1;
  INTCON         = 0xC0;

 // TMR0IE_bit         = 1;
  /*//T1CON         = 0x21;
  T1CON         = 0x31;
  TMR1IF_bit         = 0;
  TMR1H         = 0x3C;
  TMR1L         = 0xB0;
  TMR1IE_bit         = 1;  */
  INTCON =  0b11001000;
  INTCON2=0b00000000;
  OSCCON =  0b01111111;
  PIE1=0b00100000; //PIE3=0b00100000;
  TRISA = 0b00000011; TRISB  = 0b11110001; TRISC = 0b10000000;  TRISD = 0b00000000;
  TRISE= 0b00000001;   TRISF= 0b00000001; TRISG = 0b00000100;
  UART1_Init(9600); // UART2_Init(9600);
  PWM1_Init(500);  SPI1_Init();  Lcd_Init();
  portb=0; portc=0; porte=0;  portf=0; //portg=0;
  CS0_Direction = 0; CS0 = 1; CS1_Direction = 0; CS1 = 1;
  AD5206_Pot1(0, 250);  AD5206_Pot2(0, 250);
  PWM1_Start(); PWM1_Set_Duty(lcd_pwm);
  UART1_Write(10); UART1_Write(13);
  //UART2_Write(10); UART2_Write(13);
  RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;
  RF1_bit=1; RF2_bit=0; RF3_bit=0; RF4_bit=0; RF5_bit=0; RF6_bit=0;RF7_bit=0;
  tus=portb&0b1111100;  tus=20;
  Lcd_Cmd(_LCD_CURSOR_OFF);
  Lcd_Out(1,1,"3D ZEKA YETENEK");Lcd_Out(2,4,"NEUROSOUND");delay_ms(1500);Lcd_Cmd(_LCD_CLEAR);
  Lcd_Out(1,1,"<<Versiyon 2.0>>");Lcd_Out(2,1,"<Made in TURKEY>");delay_ms(1500);Lcd_Cmd(_LCD_CLEAR);
  volume=ear_data; volume1=bone_data;    Lcd_Out(1,5,"N.SOUND");
  //UART1_Write_Text("ahmet");
 while(1){
   adcler();
   if (tus==1){RC1_bit=bip_data;delay_ms(100);RC1_bit=0;menu_kontrol=0;Lcd_Cmd(_LCD_CLEAR);Lcd_Out(1,1,"                ");Lcd_Out(1,5,"N.SOUND");}
   if(bip_data==1){CustomChar10();}
  //---------EMNÝYET BÖLÜMÜ--------------------------------------------------------------------
   if(RE0_bit==1){
    emn_data=EEPROM_Read(emn_adres);emn_data=1;
    delay_ms(100);EEPROM_Write(emn_adres,emn_data);
   }
   while(emn_data==1){
    Lcd_Cmd(_LCD_CLEAR);
   Lcd_Out(1,2,"TEKNIK SERVIS");Lcd_Out(2,2,"ILETISIME GEC");delay_ms(1000);
   PWM1_Set_Duty(0); delay_ms(100);PWM1_Set_Duty(120);delay_ms(20);
   RC1_bit=1;delay_ms(100);RC1_bit=0;
   }
//------------------------SES AYARLAMA------------------------------------------------------------
    if(tus==11){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;volume=volume+30;if(volume>240){volume=240;} }
    if(tus==12){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;volume=volume-30;if(volume<=0){volume=0;}}
    if(volume==0){Lcd_Out(1,14,"K 0");AD5206_Pot1(2, volume);}
    if(volume==30){Lcd_Out(1,14,"K 1");AD5206_Pot1(2, volume);}
    if(volume==60){Lcd_Out(1,14,"K 2");AD5206_Pot1(2, volume);}
    if(volume==90){Lcd_Out(1,14,"K 3");AD5206_Pot1(2, volume);}
    if(volume==120){Lcd_Out(1,14,"K 4");AD5206_Pot1(2, volume);}
    if(volume==150){Lcd_Out(1,14,"K 5");AD5206_Pot1(2, volume);}
    if(volume==180){Lcd_Out(1,14,"K 6");AD5206_Pot1(2, volume);}
    if(volume==210){Lcd_Out(1,14,"K 7");AD5206_Pot1(2, volume);}
    if(volume==240){Lcd_Out(1,14,"K 8");AD5206_Pot1(2, volume);}

    if(tus==4){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;volume1=volume1+30;if(volume1>240){volume1=240;}}
    if(tus==6){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;volume1=volume1-30;if(volume1<=0){volume1=0;}}
    if(volume1==0){Lcd_Out(2,14,"B 0");AD5206_Pot1(4, volume1);}
    if(volume1==30){Lcd_Out(2,14,"B 1");AD5206_Pot1(4, volume1);}
    if(volume1==60){Lcd_Out(2,14,"B 2");AD5206_Pot1(4, volume1);}
    if(volume1==90){Lcd_Out(2,14,"B 3");AD5206_Pot1(4, volume1);}
    if(volume1==120){Lcd_Out(2,14,"B 4");AD5206_Pot1(4, volume1);}
    if(volume1==150){Lcd_Out(2,14,"B 5");AD5206_Pot1(4, volume1);}
    if(volume1==180){Lcd_Out(2,14,"B 6");AD5206_Pot1(4, volume1);}
    if(volume1==210){Lcd_Out(2,14,"B 7");AD5206_Pot1(4, volume1);}
    if(volume1==240){Lcd_Out(2,14,"B 8");AD5206_Pot1(4, volume1);}

//-----------------ÞARJ UYARISI------------------------------------------------------------------
    while(kanal2<800){
    adcler();
    Lcd_Cmd(_LCD_CLEAR);CustomChar0();Lcd_Out(1,6,"SARJA");Lcd_Out(2,5,"TAKINIZ");RC1_bit=1;delay_ms(100);RC1_bit=0;
    //PWM1_Set_Duty(0); delay_ms(100);PWM1_Set_Duty(120);delay_ms(20);
    Lcd_Cmd(_LCD_CLEAR);
    }
//-------------------HABERLEÞME------------------------------------------------------------------
 if(k==1){
       delay_ms(100); UART1_Write_Text(veri);  UART1_Write('/');
       if(veri[1]=='c'&&veri[4]=='k'&&veri[7]=='r'){CustomChar7();}
      if(veri[1]=='1'){ RC1_bit=1;delay_ms(100);RC1_bit=0;
        veri1[0]=veri[0];veri1[1]=veri[1];veri1[2]=veri[2];veri1[3]=veri[3];veri1[4]=veri[4];
        veri1[5]=veri[5];veri1[6]=veri[6];veri1[7]=veri[7];veri1[8]=veri[8];veri1[9]=veri[9];
        seyans=1;
       }
      if(veri[1]=='2'){RC1_bit=1;delay_ms(100);RC1_bit=0;
        veri2[0]=veri[0];veri2[1]=veri[1];veri2[2]=veri[2];veri2[3]=veri[3];veri2[4]=veri[4];
        veri2[5]=veri[5];veri2[6]=veri[6];veri2[7]=veri[7];veri2[8]=veri[8];veri2[9]=veri[9];
          seyans=2; aa=0; Lcd_Out(1,5," SEANS  ");Lcd_Out(2,6,"HAZIR");
       }
      if(veri[1]=='3'){ RC1_bit=1;delay_ms(100);RC1_bit=0;
        veri3[0]=veri[0];veri3[1]=veri[1];veri3[2]=veri[2];veri3[3]=veri[3];veri3[4]=veri[4];
        veri3[5]=veri[5];veri3[6]=veri[6];veri3[7]=veri[7];veri3[8]=veri[8];veri3[9]=veri[9];
        nn=1;  dd[0]= veri3[1];     seyans=3; Lcd_Out(1,5,"        ");Lcd_Out(2,6,"      ");
       }
       if(veri[1]=='4'){RC1_bit=1;delay_ms(100);RC1_bit=0;
        veri4[0]=veri[0];veri4[1]=veri[1];veri4[2]=veri[2];veri4[3]=veri[3];veri4[4]=veri[4];
        veri4[5]=veri[5];veri4[6]=veri[6];veri4[7]=veri[7];veri4[8]=veri[8];veri4[9]=veri[9];
          seyans=4; aa=1; Lcd_Out(1,5," SEANS  ");Lcd_Out(2,6,"HAZIR");
       }
      k=0;
     }
     
      if(k==2){
       delay_ms(100); UART2_Write_Text(veri);  UART2_Write('/');
       if(veri[1]=='c'&&veri[4]=='k'&&veri[7]=='r'){CustomChar7();}
      if(veri[1]=='1'){ RC1_bit=1;delay_ms(100);RC1_bit=0;
        veri1[0]=veri[0];veri1[1]=veri[1];veri1[2]=veri[2];veri1[3]=veri[3];veri1[4]=veri[4];
        veri1[5]=veri[5];veri1[6]=veri[6];veri1[7]=veri[7];veri1[8]=veri[8];veri1[9]=veri[9];
        seyans=1;
       }
      if(veri[1]=='2'){RC1_bit=1;delay_ms(100);RC1_bit=0;
        veri2[0]=veri[0];veri2[1]=veri[1];veri2[2]=veri[2];veri2[3]=veri[3];veri2[4]=veri[4];
        veri2[5]=veri[5];veri2[6]=veri[6];veri2[7]=veri[7];veri2[8]=veri[8];veri2[9]=veri[9];
          seyans=2; aa=0;
       }
      if(veri[1]=='3'){ RC1_bit=1;delay_ms(100);RC1_bit=0;
        veri3[0]=veri[0];veri3[1]=veri[1];veri3[2]=veri[2];veri3[3]=veri[3];veri3[4]=veri[4];
        veri3[5]=veri[5];veri3[6]=veri[6];veri3[7]=veri[7];veri3[8]=veri[8];veri3[9]=veri[9];
        nn=1;  dd[0]= veri3[1];     seyans=3;
       }
       if(veri[1]=='4'){RC1_bit=1;delay_ms(100);RC1_bit=0;
        veri4[0]=veri[0];veri4[1]=veri[1];veri4[2]=veri[2];veri4[3]=veri[3];veri4[4]=veri[4];
        veri4[5]=veri[5];veri4[6]=veri[6];veri4[7]=veri[7];veri4[8]=veri[8];veri4[9]=veri[9];
          seyans=4; aa=1;
       }
      k=0;
     }
     
  if(tus==2 && seyans!=0 && bslt==1){delay_ms(150);gln=1; bslt=0; sure1=0;saat=60;saat1=120;RC1_bit=1;delay_ms(100);
              RC1_bit=0;uyari1=1;uyari2=1;uyari3=1;uyari4=1; sayac=0;sure=0;
              menu_kontrol=2; PIE1=0b00000000; PIE3=0b00000000;
             }
  if(gln==1 && veri1[1]!='0'){
      if(asmart==0){asmart=1; smart=0;}
       if((asmart==1) && (smart<2)){ if(kanal1>652){ RE2_bit=1; }}
       if((smart>=3) && (asmart==1)){ asmart=0; smart=0;RE2_bit=0;}
       if(zaman>8 && ak==0){
         AD5206_Pot1(2, 240); AD5206_Pot1(4, 240);AD5206_Pot1(0, 240);
         AD5206_Pot1(1, 240); AD5206_Pot1(3, 240);AD5206_Pot1(5, 240);delay_ms(1000);
         ak=1;zaman=0;
      }
       if(zaman>2 && ak==1){AD5206_Pot1(2, volume); AD5206_Pot1(4, volume1);  zaman=0;ak=0;}
      if (seyans==2 && nn==0){ IntToStr(saat, txt1);  Lcd_Out(2,6,txt1);
       if(saat>30 && saat<=60 && veri1[1]=='1'){
       if(uyari1==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari1=0;}
       gelen[2]=veri1[2];gelen[3]=veri1[3];gelen[4]=veri1[4];gelen[5]=veri1[5];
       gelen[6]=veri1[6];gelen[7]=veri1[7];gelen[8]=veri1[8];gelen[9]=veri1[9];
       protokol();
       if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
       if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
       Lcd_Out(1,4,"1/2 seans");
       }
       if(saat<=30 && veri2[1]=='2'){
       if(uyari2==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari2=0;}
       gelen[2]=veri2[2];gelen[3]=veri2[3];gelen[4]=veri2[4];gelen[5]=veri2[5];
       gelen[6]=veri2[6];gelen[7]=veri2[7];gelen[8]=veri2[8];gelen[9]=veri2[9];
       protokol();
       if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
       if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
       Lcd_Out(1,4,"2/2 seans");       
       }
      if((dd[0]!='3')&&(saat==0) && (nn!=1)){/*PWM1_Set_Duty(lcd_pwm);*/
       RE1_bit=0; RE2_bit=0;RE3_bit=0; RE4_bit=0;RE5_bit=0; RE6_bit=0;RE7_bit=0;
       gln=0; nn=0;dd[0]=0; bslt=1;
       gelen[0]='0'; gelen[1]='0';gelen[2]='0';gelen[3]='0';gelen[4]='0';
       gelen[5]='0';gelen[6]='0';gelen[7]='0';gelen[8]='0';gelen[9]='0';
       veri1[1]='0';veri2[1]='0';   RC1_bit=1; delay_ms(250);RC1_bit=0;
       sure1=0;Lcd_Cmd(_LCD_CLEAR); Lcd_Out(1,6,"SEANS");Lcd_Out(2,6,"BITTI");delay_ms(1000);Lcd_Cmd(_LCD_CLEAR);Lcd_Out(1,5,"N.SOUND");
       //asm reset;  
       PIE1=0b00100000; PIE3=0b00100000; menu_kontrol=0;
       }
      }
      if (seyans==4){
       if(asmart==0){asmart=1; smart=0;}
       if((asmart==1) && (smart<2)){ if(kanal1>652 ){ RE2_bit=1; }}
       if((smart>=3) && (asmart==1)){ asmart=0; smart=0;RE2_bit=0;}
       if(zaman>8 && ak==0){
         AD5206_Pot1(2, 240); AD5206_Pot1(4, 240);AD5206_Pot1(0, 240);
         AD5206_Pot1(1, 240); AD5206_Pot1(3, 240);AD5206_Pot1(5, 240);delay_ms(1000);
         ak=1;zaman=0;
      }
       if(zaman>2 && ak==1){AD5206_Pot1(2, volume); AD5206_Pot1(4, volume1);  zaman=0;ak=0;}
       IntToStr(saat1, txt1);  Lcd_Out(2,6,txt1);
       if(saat1>90 && saat1<=120 && veri1[1]=='1'){
       if(uyari1==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari1=0;}
       gelen[2]=veri1[2];gelen[3]=veri1[3];gelen[4]=veri1[4];gelen[5]=veri1[5];
       gelen[6]=veri1[6];gelen[7]=veri1[7];gelen[8]=veri1[8];gelen[9]=veri1[9];
       protokol();
       if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
       if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
       Lcd_Out(1,4,"1/4 seans");
       }
       if(saat1>60 && saat1<=90 && veri2[1]=='2'){
       if(uyari2==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari2=0;}
       gelen[2]=veri2[2];gelen[3]=veri2[3];gelen[4]=veri2[4];gelen[5]=veri2[5];
       gelen[6]=veri2[6];gelen[7]=veri2[7];gelen[8]=veri2[8];gelen[9]=veri2[9];
       protokol();
       if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
       if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
       Lcd_Out(1,4,"2/4 seans");
       }
       if((saat1>30) && (saat1<=60) && (nn==1) ){ Lcd_Out(1,4,"3/4 seans");
       if(uyari3==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari3=0;}
       gelen[2]=veri3[2];gelen[3]=veri3[3];gelen[4]=veri3[4];gelen[5]=veri3[5];
       gelen[6]=veri3[6];gelen[7]=veri3[7];gelen[8]=veri3[8];gelen[9]=veri3[9];
       protokol();
       if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
       if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}

       }
       
       if(saat1<=30 && nn==1 && veri4[1]=='4'){
       if(uyari4==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari4=0;}
       gelen[2]=veri4[2];gelen[3]=veri4[3];gelen[4]=veri4[4];gelen[5]=veri4[5];
       gelen[6]=veri4[6];gelen[7]=veri4[7];gelen[8]=veri4[8];gelen[9]=veri4[9];
       protokol();
       if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
       if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
        Lcd_Out(1,4,"4/4 seans");
       }
       if(saat1==0&&nn==1){/*PWM1_Set_Duty(lcd_pwm);*/
       RE1_bit=0; RE2_bit=0;RE3_bit=0; RE4_bit=0;RE5_bit=0; RE6_bit=0;RE7_bit=0;
       gln=0; dd[0]=0;nn=0; bslt=1;
       
       
       
       
       gelen[0]='0'; gelen[1]='0';gelen[2]='0';gelen[3]='0';gelen[4]='0';
       gelen[5]='0';gelen[6]='0';gelen[7]='0';gelen[8]='0';gelen[9]='0';
       veri1[1]='0';veri2[1]='0';veri3[1]='0';veri4[1]='0';RC1_bit=1; delay_ms(250);RC1_bit=0;
       sure1=0; Lcd_Cmd(_LCD_CLEAR); Lcd_Out(1,6,"SEANS");Lcd_Out(2,6,"BITTI");delay_ms(1000);Lcd_Cmd(_LCD_CLEAR);Lcd_Out(1,5,"N.SOUND");
       //asm reset;
       PIE1=0b00100000; PIE3=0b00100000;  menu_kontrol=0;
       }
      }
  }
 //----------------MÝKROFON-----------------------------------
 if(syc==0){ CustomChar9();}
 //--------EKRAN PARLAKLIK KAPATMA----------------------------------------
 //if(tus==1){delay_ms(120);PWM1_Set_Duty(lcd_pwm);sayici=sayici+1; }
 //if(sayici==2){PWM1_Set_Duty(0);sayici=0; }
 //--------------ÞARJ GÖSTERGESÝ-------------------------------------------------------
 if(kanal2>800 &&kanal2<=845){CustomChar1();}
 if(kanal2>845 &&kanal2<=890){CustomChar2();}
 if(kanal2>890 &&kanal2<=935){CustomChar3();}
 if(kanal2>935 &&kanal2<=980){CustomChar4();}
 if(kanal2>980 &&kanal2<=1023){CustomChar5();}
 //----------------BLUETOOTH ÝKON------------------------------------------------------
 //if( RF0_bit==1){CustomChar6();}
 //else {Lcd_Out(1,1," ");}
 //-----------------------------MENÜ---------------------------------------------------
 if (tus==8 && menu_kontrol==0 ){Lcd_Cmd(_LCD_CLEAR);delay_ms(100);Lcd_Cmd(_LCD_CLEAR);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;
 Lcd_Out(1,1,"* Ayar Menusu *"); Lcd_Out(2,3,"<< -  + >>");// Lcd_Out(2,5,"v-  +^");
 menu_kontrol=1;
 while(menu_kontrol==1){
 //if(menu==0){menu_kontrol=0;Lcd_Out(1,1,"* Ayar Menusu *"); Lcd_Out(2,3,"<< -  + >>");}
 if (tus==9){delay_ms(120);Lcd_Cmd(_LCD_CLEAR);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;menu=menu+1; if(menu>5){menu=5;} bekle: if (tus==6){goto bekle;}}
 if (tus==7){delay_ms(120);Lcd_Cmd(_LCD_CLEAR);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;menu=menu-1; if(menu<=1){menu=1;} bekle1: if (tus==4){goto bekle1;}}
 if (tus==1){while(tus<15){delay_us(15);}
       menu=0; RC1_bit=bip_data;delay_ms(100);RC1_bit=0;menu_kontrol=0;
       Lcd_Out(1,1,"                ");delay_ms(50);Lcd_Out(2,1,"                ");
       delay_ms(50); Lcd_Out(1,5,"N.SOUND");
       }
 if (menu==1){
    ear_data=EEPROM_Read(ear_adres);
    Lcd_Out(1,1,"KULAKLIK SES=>"); Lcd_Out(2,3,"*<  1/5  >*");
    if(tus==0){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;delay_ms(70);ear_data=ear_data+30;if(ear_data>240){ear_data=240;} volume=ear_data;}
    if(tus==5){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;delay_ms(70);ear_data=ear_data-30;if(ear_data<=0){ear_data=0;} volume=ear_data;}
    if(volume==0){Lcd_Out(1,16,"0");AD5206_Pot1(4, ear_data);}
    if(volume==30){Lcd_Out(1,16,"1");AD5206_Pot1(4, ear_data);}
    if(volume==60){Lcd_Out(1,16,"2");AD5206_Pot1(4, ear_data);}
    if(volume==90){Lcd_Out(1,16,"3");AD5206_Pot1(4, ear_data);}
    if(volume==120){Lcd_Out(1,16,"4");AD5206_Pot1(4, ear_data);}
    if(volume==150){Lcd_Out(1,16,"5");AD5206_Pot1(4, ear_data);}
    if(volume==180){Lcd_Out(1,16,"6");AD5206_Pot1(4, ear_data);}
    if(volume==210){Lcd_Out(1,16,"7");AD5206_Pot1(4, ear_data);}
    if(volume==240){Lcd_Out(1,16,"8");AD5206_Pot1(4, ear_data);}
    EEPROM_Write(ear_adres,ear_data);
    delay_ms(150);
   }
    if (menu==2){
          bone_data=EEPROM_Read(bone_adres);
    Lcd_Out(1,1,"BONE SES=>"); Lcd_Out(2,3,"*<  2/5  >*");
    if(tus==0){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;bone_data=bone_data+30;if(bone_data>240){bone_data=240;}volume1=bone_data;}
    if(tus==5){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;bone_data=bone_data-30;if(bone_data<=0){bone_data=0;}volume1=bone_data;}
    if(volume1==0){Lcd_Out(1,13,"0");AD5206_Pot1(2, bone_data);}
    if(volume1==30){Lcd_Out(1,13,"1");AD5206_Pot1(2, bone_data);}
    if(volume1==60){Lcd_Out(1,13,"2");AD5206_Pot1(2, bone_data);}
    if(volume1==90){Lcd_Out(1,13,"3");AD5206_Pot1(2, bone_data);}
    if(volume1==120){Lcd_Out(1,13,"4");AD5206_Pot1(2, bone_data);}
    if(volume1==150){Lcd_Out(1,13,"5");AD5206_Pot1(2, bone_data);}
    if(volume1==180){Lcd_Out(1,13,"6");AD5206_Pot1(2, bone_data);}
    if(volume1==210){Lcd_Out(1,13,"7");AD5206_Pot1(2, bone_data);}
    if(volume1==240){Lcd_Out(1,13,"8");AD5206_Pot1(2, bone_data);}
    EEPROM_Write(bone_adres,bone_data);
    delay_ms(150);
  }
 if (menu==3){
    lcd_pwm=EEPROM_Read(lcd_adres);
    if(tus==0){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;lcd_pwm=lcd_pwm+30;if(lcd_pwm>240){lcd_pwm=240;} }
    if(tus==5){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;lcd_pwm=lcd_pwm-30;if(lcd_pwm<=0){lcd_pwm=0;}}
    Lcd_Out(1,1,"EKRAN PARLAKLIK"); Lcd_Out(2,3,"*<  3/5  >*"); PWM1_Set_Duty(lcd_pwm);
    EEPROM_Write(lcd_adres,lcd_pwm);
    /*if(tus==3) {parlak_ayar=1;}
    if(parlak_ayar==1){PWM1_Set_Duty(lcd_pwm);parlak_ayar=0;EEPROM_Write(lcd_adres,lcd_pwm);}*/
     delay_ms(150);
  }
 /*if (menu==4){
    bt_data=EEPROM_Read(bt_adres);
    Lcd_Out(1,1,"BT=>");Lcd_Out(2,3,"*<  4/6  >*");
    if(tus==0){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;RF1_bit=1;bt_data=1;}
    if(tus==5){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;RF1_bit=0;bt_data=0;}
    EEPROM_Write(bt_adres,bt_data);
    if(bt_data==0){Lcd_Out(1,1,"BT=> kapali");}
    if(bt_data==1){Lcd_Out(1,1,"BT=>  acik");Lcd_Out(1,11," ");}
    delay_ms(150);
  } */
 if (menu==5){ Lcd_Out(1,1,"TEST BASLA > OK"); Lcd_Out(2,3,"*<  5/5  >*"); delay_ms(150);
    if(tus==3) {test=1;}
    if(test==1){Lcd_Cmd(_LCD_CLEAR);Lcd_Out(1,3,"TEST BASLADI");
    RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=1;Lcd_Out(2,2,"M1  MODU AKTIF");delay_ms(5000);
    RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=1;RE7_bit=0;Lcd_Out(2,2,"M2  MODU AKTIF");delay_ms(5000);
    RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=1; RE5_bit=0; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"M3  MODU AKTIF");delay_ms(5000);
    RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=1; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"M4  MODU AKTIF");delay_ms(5000);
    RE1_bit=0; RE2_bit=0; RE3_bit=1; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"M5  MODU AKTIF");delay_ms(5000);
    RE1_bit=0; RE2_bit=1; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"LP  MODU AKTIF");delay_ms(5000);
    RE1_bit=1; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"MIKROFON AKTIF");PWM1_Set_Duty(0);delay_ms(5000); PWM1_Set_Duty(lcd_pwm);
    test=0; menu=0; Lcd_Cmd(_LCD_CLEAR);  delay_ms(1000); Lcd_Out(1,3,"BALANS TEST");
    RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=1;
    AD5206_Pot1(0,0);AD5206_Pot1(2,0);AD5206_Pot1(4,0);
    AD5206_Pot1(1,0);AD5206_Pot1(3,0);AD5206_Pot1(5,0);
    Lcd_Out(2,3,"BALANS %0");delay_ms(2000);
    AD5206_Pot1(0,55);AD5206_Pot1(2,55);AD5206_Pot1(4,55);
    AD5206_Pot1(1,55);AD5206_Pot1(3,55);AD5206_Pot1(5,55);
    Lcd_Out(2,3,"BALANS %25");delay_ms(5000);
    AD5206_Pot1(0,110);AD5206_Pot1(2,110);AD5206_Pot1(4,110);
    AD5206_Pot1(1,110);AD5206_Pot1(3,110);AD5206_Pot1(5,110);
    Lcd_Out(2,3,"BALANS %50");delay_ms(5000);
    AD5206_Pot1(0,165);AD5206_Pot1(2,165);AD5206_Pot1(4,165);
    AD5206_Pot1(1,165);AD5206_Pot1(3,165);AD5206_Pot1(5,165);
    Lcd_Out(2,3,"BALANS %75");delay_ms(5000);
    AD5206_Pot1(0,220);AD5206_Pot1(2,220);AD5206_Pot1(4,220);
    AD5206_Pot1(1,220);AD5206_Pot1(3,220);AD5206_Pot1(5,220);
    Lcd_Out(2,3,"BALANS %100");delay_ms(5000); Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out(1,4,"TEST BITTI"); delay_ms(1000);
    AD5206_Pot1(0,0);AD5206_Pot1(2,0);AD5206_Pot1(4,0);
    AD5206_Pot1(1,0);AD5206_Pot1(3,0);AD5206_Pot1(5,0);
    while(1){Lcd_Out(1,1," CIHAZI YENIDEN ");  Lcd_Out(2,1," BASLATINIZ...  ");delay_ms(1000);Lcd_Cmd(_LCD_CLEAR);delay_ms(500);}
    }
  }
  if (menu==4){
    bip_data=EEPROM_Read(bip_adres);
    Lcd_Out(1,1,"BIP=>");Lcd_Out(2,3,"*<  4/5  >*");
    if(tus==0){delay_ms(100);bip_data=1;}
    if(tus==5){delay_ms(100);bip_data=0;}
    EEPROM_Write(bip_adres,bip_data);
    if(bip_data==0){Lcd_Out(1,1,"BIP=> kapali");}
    if(bip_data==1){Lcd_Out(1,1,"BIP=>  acik");Lcd_Out(1,12," ");}
    delay_ms(150);
  }
   //while(tus<15){delay_us(15);}
  }
 }
}
}