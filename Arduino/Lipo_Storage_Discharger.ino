// Arduino Lipo Storage Discharger
// Project Page: https://github.com/KaeptnBalu/Arduino_Lipo_Storage_Discharger

#include <Adafruit_GFX.h>       //library for display control
#include <Adafruit_SSD1306.h>   //library for display control
#include <SPI.h>                //library for display I2C communication
#include <Wire.h>

#include <PID_v1.h>  // include the library for PID controller

#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);

// Input and Output Pin definitions
int MosfetPin = 5;      // Mosfet Pin
int BuzzerPin = 13;     // Buzzer Pin
int LedPin = 6;         // Led Pin
int Mult_CTRL_A = 4;    //4051 Multiplexer select Pin A
int Mult_CTRL_B = 3;    //4051 Multiplexer select Pin B
int Mult_CTRL_C = 2;    //4051 Multiplexer select Pin C
int SDA_Pin = A4;
int SCL_Pin = A5;

int Multiplexer = A1;   //4051 Multiplexer analog signal Pin
int Poti = A0;          //Poti signal Pin
int ACS712 = A2;        //ACS712 Current Sensor analog signal Pin

//------------------------------------------------------------------------------------------------------

//PID variables
//Define Variables we'll be connecting to
double Setpoint, Input, Output;

//Specify the links and initial tuning parameters
PID myPID(&Input, &Output, &Setpoint,2,5,1, DIRECT);


//------------------------------------------------------------------------------------------------------


double Amps = 0;                    //Current measured by the ACS712
float cell_storage_voltage = 3.8;    // the storage voltage per cell to which the battery will be discharged 
int discharging = 0;                //discharging status (1: discharging on , 0: discharging off) 
double discharge_power = 0;         //discharge Power in Watts
double max_discharge_power = 120;   //Sets the maximum discharge Power (depending on the load used. example: 4x30Watt light bulb = 120 Watts maximum)

//------------------------------------------------------------------------------------------------------

//Voltage Multiplicators because cell 2 to 6 are read through voltage dividers   (calculation example cell2: (1/(R2/(R2+R7)) )  
// values are measured against ground, so cell 2 has value of cell 1+2, cell3 has value of cell 1+2+3, cell 4 has value of cell 1+2+3+4 ...
float multiplicator1 = 1;  //cell 1 is directly measured, so no multiplicator needed
float multiplicator2 = 1.83333;
float multiplicator3 = 2.78571;
float multiplicator4 = 3.77777;
float multiplicator5 = 4.70370;
float multiplicator6 = 5.54545;

//------------------------------------------------------------------------------------------------------

//variables to control the 4051 multiplexer
int r0 = 0;      //value of select pin at the 4051 (A)
int r1 = 0;      //value of select pin at the 4051 (B)
int r2 = 0;      //value of select pin at the 4051 (C)
int count = 0;   //which X Input pin we are selecting

//variables for the multiplexer output values of cell 1 to 6
float m_cell_1 = 0;  
float m_cell_2 = 0;
float m_cell_3 = 0;
float m_cell_4 = 0;
float m_cell_5 = 0;
float m_cell_6 = 0;

//------------------------------------------------------------------------------------------------------

//variables for the calculated single cell voltages of cell 1 to 6 and total voltage
float v_cell_1 = 0;
float v_cell_2 = 0;
float v_cell_3 = 0;
float v_cell_4 = 0;
float v_cell_5 = 0;
float v_cell_6 = 0;
float v_total = 0;

//------------------------------------------------------------------------------------------------------

void setup() {
  // The setup code that runs just once
  
pinMode(MosfetPin,OUTPUT);  // set MosfetPin as Output
pinMode(BuzzerPin,OUTPUT);  // set BuzzerPin as Output
pinMode(LedPin,OUTPUT);  // set LedPin as Output
pinMode(Mult_CTRL_A,OUTPUT);  // set Mult_CTRL_A as Output
pinMode(Mult_CTRL_B,OUTPUT);  // set Mult_CTRL_B as Output
pinMode(Mult_CTRL_C,OUTPUT);  // set Mult_CTRL_C as Output
pinMode(SDA_Pin,OUTPUT);  // set SDA Pin as Output
pinMode(SCL_Pin,OUTPUT);  // set SCL Pin as Output

pinMode(Multiplexer,INPUT);  // set Multiplexer as Input
pinMode(Poti,INPUT);  // set Poti as Input
pinMode(ACS712,INPUT);  // set ACS712 as Input

//initialize the board
display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
display.clearDisplay();

digitalWrite(MosfetPin, LOW);
digitalWrite(LedPin, HIGH);
tone(BuzzerPin, 2000, 500); 
delay(1000);
digitalWrite(LedPin, LOW);

//PID Setup
 //initialize the variables we're linked to
  Input = analogRead(ACS712);
  Setpoint = 1;

  //turn the PID on
  myPID.SetMode(AUTOMATIC);
}

//------------------------------------------------------------------------------------------------------

void loop() {
  // put your main code here, to run repeatedly:

read_cell_voltages();
calculate_single_cell_voltages();
read_amps();


cell_min_voltage_check();           //if all cells are above the storage voltage "discharging" will be set to 1. If not it will be set to 0
if (discharging == 1) PID_loop();
else  analogWrite(MosfetPin,0);


display_discharge_infos();
display_cell_voltages();

}


//------------------------------------------------------------------------------------------------------

void PID_loop() {
//PID Loop


Setpoint = (analogRead(Poti)/100);  //creates a poti reading of maximum 10 which means maximum 10 Amps
Input = Amps;  // Input of the PID control gets the actual current flow in A
myPID.Compute();
analogWrite(MosfetPin,Output);  // The Mosfet is controlled by the generated PWM signal

if (discharge_power > max_discharge_power) {
Setpoint = max_discharge_power;  //sets the target of the control loop to the declared max_discharge_power (default: 120 Watts)
Input = discharge_power;  // Input of the PID control gets the actual discharge_power in Watts
myPID.Compute();
analogWrite(MosfetPin,Output);  // The Mosfet is controlled by the generated PWM signal  
}



}

//------------------------------------------------------------------------------------------------------

void read_cell_voltages()  {    
  // The function reads the values from cell 1 to 6 trough the 4051 multiplexer

for (count=0; count<=5; count++) {

 
    // select the bit  

    r0 = bitRead(count,0);    // use this with arduino 0013 (and newer versions)     
    r1 = bitRead(count,1);    // use this with arduino 0013 (and newer versions)     
    r2 = bitRead(count,2);    // use this with arduino 0013 (and newer versions)     


    digitalWrite(Mult_CTRL_A, r0);
    digitalWrite(Mult_CTRL_B, r1);
    digitalWrite(Mult_CTRL_C, r2);

    // read the multiplexed pin here
    switch (count)  {
    case 0:
m_cell_1 = analogRead(Multiplexer);
    break;
    case 1:
m_cell_2 = (analogRead(Multiplexer)*multiplicator2);
    break;
    case 2:
m_cell_3 = (analogRead(Multiplexer)*multiplicator3);
    break;
    case 3:
m_cell_4 = (analogRead(Multiplexer)*multiplicator4);
    break;
    case 4:
m_cell_5 = (analogRead(Multiplexer)*multiplicator5);
    break;
    case 5:
m_cell_6 = (analogRead(Multiplexer)*multiplicator6);
    break;
    }
  
}

}

//------------------------------------------------------------------------------------------------------


void calculate_single_cell_voltages()  {
    //calculate the single cell voltages based on the values read from read_cell_voltages function

if (m_cell_1 < 200) v_cell_1 = 0;
else v_cell_1 = (m_cell_1*(5/1023));

if (m_cell_2 < 200) v_cell_2 = 0;                   //check if the cell is connected. if not,then the voltage value is set to zero
else v_cell_2 = ((m_cell_2 - m_cell_1)*(5/1023));   //if the cell is connected the real voltage is calculated here

if (m_cell_3 < 200) v_cell_3 = 0;
else v_cell_3 = ((m_cell_3 - m_cell_2)*(5/1023));

if (m_cell_4 < 200) v_cell_4 = 0;
else v_cell_4 = ((m_cell_4 - m_cell_3)*(5/1023));

if (m_cell_5 < 200) v_cell_5 = 0;
else v_cell_5 = ((m_cell_5 - m_cell_4)*(5/1023));

if (m_cell_6 < 200) v_cell_6 = 0;
else v_cell_6 = ((m_cell_6 - m_cell_5)*(5/1023));

v_total = (v_cell_1 + v_cell_2 + v_cell_3 + v_cell_4 + v_cell_5 + v_cell_6);  //calculate the total voltage of the connected battery
}

//------------------------------------------------------------------------------------------------------


void read_amps() {
    // read the current that the ACS712 measures

int mVperAmp = 100; // use 100 for 20A Module and 66 for 30A Module
int RawValue= 0;
int ACSoffset = 2500; 
double Voltage = 0;

RawValue = analogRead(ACS712);
Voltage = (RawValue / 1024.0) * 5000; // Gets you mV
Amps = ((Voltage - ACSoffset) / mVperAmp);
discharge_power = (v_total*Amps);
}

//------------------------------------------------------------------------------------------------------

void cell_min_voltage_check() {
    //Function to check all cell voltages are above thg storage voltage (default: 3.8V)

if (v_cell_1 == 0) //messgae: connect balancing cable !


  
if (v_cell_2 != 0)
{
 if ((v_cell_1 > cell_storage_voltage) && (v_cell_2 > cell_storage_voltage))
 discharging = 1;
 else discharging = 0;
}
else //messgae: connect balancing cable !


if (v_cell_3 != 0)
{
 if ((v_cell_1 > cell_storage_voltage) && (v_cell_2 > cell_storage_voltage) && (v_cell_3 > cell_storage_voltage))
 discharging = 1;
 else discharging = 0;
}

if (v_cell_4 != 0)
{
 if ((v_cell_1 > cell_storage_voltage) && (v_cell_2 > cell_storage_voltage) && (v_cell_3 > cell_storage_voltage) && (v_cell_4 > cell_storage_voltage))
 discharging = 1;
 else discharging = 0;
}

if (v_cell_5 != 0)
{
 if ((v_cell_1 > cell_storage_voltage) && (v_cell_2 > cell_storage_voltage) && (v_cell_3 > cell_storage_voltage) && (v_cell_4 > cell_storage_voltage) && (v_cell_5 > cell_storage_voltage))
 discharging = 1;
 else discharging = 0;
}

if (v_cell_6 != 0)
{
 if ((v_cell_1 > cell_storage_voltage) && (v_cell_2 > cell_storage_voltage) && (v_cell_3 > cell_storage_voltage) && (v_cell_4 > cell_storage_voltage) && (v_cell_5 > cell_storage_voltage) && (v_cell_6 > cell_storage_voltage))
 discharging = 1;
 else discharging = 0;
}
  
  
}

void display_discharge_infos()
{
  display.setTextSize(2);
  display.setTextColor(WHITE);

  display.setCursor(10,10);
  display.println("Batter Voltage:");
  display.setCursor(15,20);
  display.println(v_total);
  display.setCursor(40,20);
  display.println("V");

  display.setCursor(10,30);
  display.println("Discharge Current:");
  display.setCursor(15,40);
  display.println(Amps);
  display.setCursor(40,40);
  display.println("A");

  display.setCursor(10,50);
  display.println("Discharge Power:");
  display.setCursor(15,60);
  display.println(discharge_power);
  display.setCursor(40,60);
  display.println("W");

  
  display.display();
}  

void display_cell_voltages()
{
  display.setTextSize(1);
  display.setTextColor(WHITE);

  display.setCursor(80,10);
  display.println("Cell 1:");
  display.setCursor(100,10);
  display.println(v_cell_1);

  display.setCursor(80,20);
  display.println("Cell 2:");
  display.setCursor(100,20);
  display.println(v_cell_2);

  display.setCursor(80,30);
  display.println("Cell 3:");
  display.setCursor(100,30);
  display.println(v_cell_3);

  display.setCursor(80,40);
  display.println("Cell 3:");
  display.setCursor(100,40);
  display.println(v_cell_3);

  display.setCursor(80,40);
  display.println("Cell 4:");
  display.setCursor(100,40);
  display.println(v_cell_4);

  display.setCursor(80,50);
  display.println("Cell 5:");
  display.setCursor(100,50);
  display.println(v_cell_5);

  display.setCursor(80,60);
  display.println("Cell 6:");
  display.setCursor(100,60);
  display.println(v_cell_6);

  display.display();
 }

