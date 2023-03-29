#include <LiquidCrystal.h>

// Define to which pin the Arduino Soil Moisture Sensor is connected:
int sensorPin = A0;
// Variable to store the value coming from the sensor
int sensorValue = 0;
int pumpPin = 13;
int alarmPin = 9;
// Create object named lcd of the class LiquidCrystal
LiquidCrystal lcd(12,11,5,4,3,2); /* For 4-bit mode */

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


void setup()
{
  lcd.begin(16,2);
  lcd.createChar(1, degree);
  lcd.setCursor(3,0);
  lcd.print("WELCOME TO");
  lcd.setCursor(5,1);
  lcd.print("InSoil");
  delay(2000);
  lcd.clear();

  pinMode(pumpPin, OUTPUT);
  pinMode(alarmPin, OUTPUT);
  digitalWrite(pumpPin, LOW);
  digitalWrite(alarmPin, LOW);
  // Begin serial communication at a baud rate of 9600:
  Serial.begin(9600);
}
void loop()
{
  // Get a reading from the Moisture sensor:
  sensorValue = analogRead(sensorPin);
    
  /*------Display Moisture Sensor Value in Serial Monitor------*/
   Serial.print("Moisture Sensor Value:");
   Serial.println(sensorValue);
  
   //Display the Moisture Percentage
   float moisturePercentage;
   moisturePercentage= ((float)sensorValue/1023)*100;
   Serial.print("Moisture Percentage = ");
   Serial.print(moisturePercentage);
   Serial.print("%\n");
   
   //Display the plant need
   if(sensorValue < 300){
    Serial.println("I am thirsty, please give me water");
    digitalWrite(pumpPin, HIGH);
    digitalWrite(alarmPin, HIGH);
   }
   else if(sensorValue > 300 && sensorValue < 700){
    Serial.println("I feel so comfortable");
    digitalWrite(pumpPin, LOW);
    digitalWrite(alarmPin, LOW);
   }
   if(sensorValue > 700){
    Serial.println("Too much water, I might get hurt");
    digitalWrite(pumpPin, LOW);
    digitalWrite(alarmPin, LOW);
   }
   
  Serial.print("\n");
  
  /*------Display Moisture Sensor Value in LCD------*/
  lcd.clear();
  lcd.setCursor(2,0);
  lcd.print("Soil Moisture");
  lcd.setCursor(0,1);
  lcd.print(sensorValue);
  lcd.setCursor(6,1);
  lcd.print("&");
  lcd.setCursor(8,1);
  lcd.print(moisturePercentage);
  lcd.print(" %");
  delay(500);
}
