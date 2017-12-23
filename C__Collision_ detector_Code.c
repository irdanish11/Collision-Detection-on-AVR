//Irfan Danish [CIIT/FA15-BEL-012/ISB]
//Hammad Munir [CIIT/FA15-BEL-034/ISB]
#include <LiquidCrystal.h>
// initialize the library with the numbers of the interface pins
LiquidCrystal LCD(0, 1, 2, 3, 4, 5); /// REGISTER SELECT PIN,ENABLE PIN,D4 PIN,D5 PIN, D6 PIN, D7 PIN
const int trigPin = 6;
const int echoPin = 7;
int green = 8;
int red = 9;
int buzz = 10;
int motor = 11;
long duration;
int distance;

// the setup function runs once when you press reset or power the board
void setup() {
 
  // initialize digital pin 6 as an output.
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  pinMode(green, OUTPUT);
  pinMode(red, OUTPUT);
  pinMode(motor,OUTPUT);
  
  LCD.begin(16,2); //Tell Arduino to start your 16 column 2 row LCD
  //Serial.begin(9600);
}

// the loop function runs over and over again forever
void loop() 
{
  //analogWrite(motor, 250);
// Clears the trigPin
digitalWrite(trigPin, LOW);
delayMicroseconds(2);
// Sets the trigPin on HIGH state for 10 micro seconds
digitalWrite(trigPin, HIGH);
delayMicroseconds(10);
digitalWrite(trigPin, LOW);
// Reads the echoPin, returns the sound wave travel time in microseconds
duration = pulseIn(echoPin, HIGH);
// Calculating the distance
distance= duration*0.034/2;
//short int dist=distance;
//LCD Data printing
LCD.setCursor(0,0);  //Set LCD cursor to upper left corner, column 0, row 0
LCD.print("Distance:");  //Print Message on First Row
LCD.setCursor(0,1);
LCD.setCursor(0,1);
LCD.print(distance); //Print measured distance
LCD.print("cm");  //Print your units.
delay(250); //pause to let things settle
//delay(500); // Update time.

Serial.println(distance);
// Prints the distance on the Serial Monitor


if(distance>50)
{
  analogWrite(motor, 255);
}
else
{
  
}

if(distance <= 50 && distance >= 20)
{
  digitalWrite(green, HIGH); 
  analogWrite(motor, 100);
  // turn the LED on (HIGH is the voltage level)

}


else
{ 
  digitalWrite(green, LOW);    // turn the LED off by making the voltage LOW
             // wait for a second    
}


if(distance <= 20)
{
    digitalWrite(red, HIGH);
    analogWrite(motor, 0);
    tone(buzz, 2000);
    delay(100);
    noTone(buzz);
    delay(100);
    
    tone(buzz, 2000);
    delay(100);
    noTone(buzz);
    delay(100);
    
    tone(buzz, 2000);
    delay(100);
    noTone(buzz);
        
    tone(buzz, 2000);
    delay(100);
    noTone(buzz);
    delay(100);
}

else
{ 
  digitalWrite(red, LOW);    // turn the LED off by making the voltage LOW
             // wait for a second    
}
}
