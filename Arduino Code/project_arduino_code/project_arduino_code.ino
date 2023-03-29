#include <SoftwareSerial.h>
#include <LiquidCrystal.h>

SoftwareSerial bleSerial(2,3);

LiquidCrystal lcd(8,9,10,11,12,13); /* For 4-bit mode */
//LiquidCrystal lcd(8,9,10, 2, 3, 4, 5, 10,11,12,13); /* For 8-bit mode */
byte degree[8] =
{
0b00011,
0b00011,
0b00000,
0b00000,
0b00000,
0b00000,
0b00000,
0b00000
};

int MOISTURE_SENSOR = A0;
int MOISTURE_LED = 13;

int moisture_value = 0;
int n_value = 0;
int p_value = 0;
int k_value = 0;
int temp_value = 0;





void setup()
{
  Serial.begin(9600);
  bleSerial.begin(9600);
  
  pinMode(MOISTURE_LED,OUTPUT);

  lcd.begin(16,2);
  lcd.createChar(1, degree);
  lcd.setCursor(3,0);
  lcd.print("WELCOME TO");
  lcd.setCursor(5,1);
  lcd.print("InSoil");
  delay(2000);
  lcd.clear();
}


void loop()
{
  int moisture_reading = analogRead(MOISTURE_SENSOR);
  moisture_value = ((float)moisture_reading/1023)*100;
  moisture_value = 100 - moisture_value;

  n_value = 50;
  p_value = 60;
  k_value = 70;
  temp_value = 37;
  
  
  /*------Display Readings in Serial Monitor------*/
   Serial.print("Moisture Sensor Value: ");
   Serial.println(moisture_reading);
   Serial.print("Moisture Percentage: ");
   Serial.print(moisture_value);
   Serial.println("%");

   Serial.print("Nitrogen Percentage: ");
   Serial.print(n_value);
   Serial.println("%");

   Serial.print("Phosphorus Percentage: ");
   Serial.print(p_value);
   Serial.println("%");

   Serial.print("Potassium Percentage: ");
   Serial.print(k_value);
   Serial.println("%");

   Serial.print("Temperature Value: ");
   Serial.print(temp_value);
   Serial.println("*C");


  /*------Display Readings on LCD------*/
  lcd.clear();
  //Moisture percentage
  lcd.setCursor(0,0);
  lcd.print("Mst: 00%");
  lcd.setCursor(5,0);
  lcd.print(moisture_value);
  
  //Nitrogen percentage
  lcd.setCursor(9,0);
  lcd.print("N: 00%");
  lcd.setCursor(12,0);
  lcd.print(n_value);
  
  //Phosphorus percentage
  lcd.setCursor(1,1);
  lcd.print("P : 00%");
  lcd.setCursor(5,1);
  lcd.print(p_value);

  //Potassium percentage
  lcd.setCursor(9,1);
  lcd.print("K: 00%");
  lcd.setCursor(12,1);
  lcd.print(k_value);


  /*------Send Readings to Bluetooth App------*/
  String s1 = String("\n\n\nMoisture: " + String(moisture_value));
  s1 += String(" % \nNitrogen: " + String(n_value));
  s1 += String(" % \nPhosphorus: " + String(p_value));
  s1 += String(" % \nPotassium: " + String(k_value));
  s1 += String(" % \n\n");

  Serial.print(s1);
  bleSerial.print(s1);
  delay(2000);


}
