
#include <ADXL345.h>
ADXL345 accelerometer;
String veri;  int pitch=0; int roll  = 0; int yaw = 0;
int fpitch = 0; int froll  =0; int fyaw  = 0;

void setup() {
  
  pinMode(12, OUTPUT); 
  digitalWrite(12, HIGH); delay(250); digitalWrite(12, LOW);  delay(250);            
  digitalWrite(12, HIGH); delay(250); digitalWrite(12, LOW);  delay(250);          
  digitalWrite(12, HIGH); delay(250); digitalWrite(12, LOW);  delay(250);   
  Serial.begin(9600);
  if (!accelerometer.begin()){Serial.println("ADXL345 Sensor Hatası!");} 
}

void loop() {
  digitalWrite(12, HIGH);  delay(1); 
  Vector norm = accelerometer.readNormalize();  Vector filtered = accelerometer.lowPassFilter(norm, 0.5);

  pitch = (atan2(norm.XAxis, norm.ZAxis) * 180.0) / M_PI;  roll  = (atan2(norm.YAxis, norm.ZAxis) * 180.0) / M_PI;
  yaw = (atan2(norm.XAxis, norm.YAxis) * 180.0) / M_PI;

  fpitch = (atan2(filtered.XAxis, sqrt(filtered.YAxis * filtered.YAxis + filtered.ZAxis * filtered.ZAxis)) * 180.0) / M_PI;
  froll  = (atan2(filtered.YAxis, sqrt(filtered.XAxis * filtered.XAxis + filtered.ZAxis * filtered.ZAxis)) * 180.0) / M_PI;
  fyaw  = (atan2(filtered.ZAxis, sqrt(filtered.YAxis * filtered.YAxis + filtered.XAxis * filtered.XAxis)) * 180.0) / M_PI;

  Serial.print(fpitch); Serial.print(" ");   Serial.println(froll);  
  digitalWrite(12, LOW);  delay(99); 
}
