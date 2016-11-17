EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduino
LIBS:psmn4r3-30pl
LIBS:acs712
LIBS:buzzer
LIBS:Lipo_Storage_Discharger-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Arduino Lipo / Liion Storage Discharger"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 4051 U5
U 1 1 5824A848
P 6800 3500
F 0 "U5" H 6900 3500 50  0000 C CNN
F 1 "4051" H 6900 3300 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 6800 3500 60  0001 C CNN
F 3 "" H 6800 3500 60  0001 C CNN
	1    6800 3500
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5824B402
P 8450 3100
F 0 "R2" V 8530 3100 50  0000 C CNN
F 1 "120k" V 8450 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8380 3100 50  0001 C CNN
F 3 "" H 8450 3100 50  0000 C CNN
	1    8450 3100
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5824B575
P 8950 3100
F 0 "R7" V 9030 3100 50  0000 C CNN
F 1 "100k" V 8950 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8880 3100 50  0001 C CNN
F 3 "" H 8950 3100 50  0000 C CNN
	1    8950 3100
	0    1    1    0   
$EndComp
$Comp
L arduino_mini U3
U 1 1 5824B704
P 4150 4150
F 0 "U3" H 4650 3200 70  0000 C CNN
F 1 "arduino_mini" H 4900 3100 70  0000 C CNN
F 2 "arduino:arduino_mini" H 4150 4100 60  0001 C CNN
F 3 "" H 4150 4150 60  0001 C CNN
	1    4150 4150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 5824BB0E
P 4150 2600
F 0 "#PWR01" H 4150 2350 50  0001 C CNN
F 1 "GND" H 4150 2450 50  0000 C CNN
F 2 "" H 4150 2600 50  0000 C CNN
F 3 "" H 4150 2600 50  0000 C CNN
	1    4150 2600
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR02
U 1 1 5824BB40
P 4150 5300
F 0 "#PWR02" H 4150 5150 50  0001 C CNN
F 1 "VCC" H 4150 5450 50  0000 C CNN
F 2 "" H 4150 5300 50  0000 C CNN
F 3 "" H 4150 5300 50  0000 C CNN
	1    4150 5300
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X07 P2
U 1 1 5824BD1B
P 9850 3400
F 0 "P2" H 9850 3800 50  0000 C CNN
F 1 "CONN_01X07" V 9950 3400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07" H 9850 3400 50  0001 C CNN
F 3 "" H 9850 3400 50  0000 C CNN
	1    9850 3400
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5824BE9B
P 8950 3350
F 0 "R8" V 9030 3350 50  0000 C CNN
F 1 "100k" V 8950 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8880 3350 50  0001 C CNN
F 3 "" H 8950 3350 50  0000 C CNN
	1    8950 3350
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5824BEE5
P 8950 3600
F 0 "R9" V 9030 3600 50  0000 C CNN
F 1 "100k" V 8950 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8880 3600 50  0001 C CNN
F 3 "" H 8950 3600 50  0000 C CNN
	1    8950 3600
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5824BF12
P 8950 3850
F 0 "R10" V 9030 3850 50  0000 C CNN
F 1 "100k" V 8950 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8880 3850 50  0001 C CNN
F 3 "" H 8950 3850 50  0000 C CNN
	1    8950 3850
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5824BF42
P 8950 4100
F 0 "R11" V 9030 4100 50  0000 C CNN
F 1 "100k" V 8950 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8880 4100 50  0001 C CNN
F 3 "" H 8950 4100 50  0000 C CNN
	1    8950 4100
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5824C088
P 8450 3350
F 0 "R3" V 8530 3350 50  0000 C CNN
F 1 "56k" V 8450 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8380 3350 50  0001 C CNN
F 3 "" H 8450 3350 50  0000 C CNN
	1    8450 3350
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5824C0BE
P 8450 3600
F 0 "R4" V 8530 3600 50  0000 C CNN
F 1 "36k" V 8450 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8380 3600 50  0001 C CNN
F 3 "" H 8450 3600 50  0000 C CNN
	1    8450 3600
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5824C122
P 8450 3850
F 0 "R5" V 8530 3850 50  0000 C CNN
F 1 "27k" V 8450 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8380 3850 50  0001 C CNN
F 3 "" H 8450 3850 50  0000 C CNN
	1    8450 3850
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5824C18C
P 8450 4100
F 0 "R6" V 8530 4100 50  0000 C CNN
F 1 "22k" V 8450 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8380 4100 50  0001 C CNN
F 3 "" H 8450 4100 50  0000 C CNN
	1    8450 4100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5824C731
P 9500 2850
F 0 "#PWR03" H 9500 2600 50  0001 C CNN
F 1 "GND" H 9500 2700 50  0000 C CNN
F 2 "" H 9500 2850 50  0000 C CNN
F 3 "" H 9500 2850 50  0000 C CNN
	1    9500 2850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 5824E682
P 8300 4450
F 0 "#PWR04" H 8300 4200 50  0001 C CNN
F 1 "GND" H 8300 4300 50  0000 C CNN
F 2 "" H 8300 4450 50  0000 C CNN
F 3 "" H 8300 4450 50  0000 C CNN
	1    8300 4450
	1    0    0    -1  
$EndComp
Text GLabel 4850 4250 2    60   Input ~ 0
A1
Text GLabel 6100 2900 0    60   Input ~ 0
A1
Text GLabel 3450 3550 0    60   Input ~ 0
D2
Text GLabel 3450 3650 0    60   Input ~ 0
D3
Text GLabel 3450 3750 0    60   Input ~ 0
D4
Text GLabel 7500 4100 2    60   Input ~ 0
D2
Text GLabel 7500 4000 2    60   Input ~ 0
D3
Text GLabel 7500 3900 2    60   Input ~ 0
D4
$Comp
L POT RV1
U 1 1 58252D98
P 5650 4650
F 0 "RV1" H 5650 4570 50  0000 C CNN
F 1 "POT" H 5650 4650 50  0000 C CNN
F 2 "pots_own:RK09K1130A5R" H 5650 4650 50  0001 C CNN
F 3 "" H 5650 4650 50  0000 C CNN
	1    5650 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58253505
P 5400 4650
F 0 "#PWR05" H 5400 4400 50  0001 C CNN
F 1 "GND" H 5400 4500 50  0000 C CNN
F 2 "" H 5400 4650 50  0000 C CNN
F 3 "" H 5400 4650 50  0000 C CNN
	1    5400 4650
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR06
U 1 1 58253D3C
P 5950 4650
F 0 "#PWR06" H 5950 4500 50  0001 C CNN
F 1 "VCC" H 5950 4800 50  0000 C CNN
F 2 "" H 5950 4650 50  0000 C CNN
F 3 "" H 5950 4650 50  0000 C CNN
	1    5950 4650
	0    1    1    0   
$EndComp
$Comp
L PSMN4R3-30PL Q1
U 1 1 58255579
P 2450 3800
F 0 "Q1" H 2700 3875 50  0000 L CNN
F 1 "PSMN4R3-30PL" H 2700 3800 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Horizontal_LargePads" H 2700 3725 50  0000 L CIN
F 3 "" H 2450 3800 50  0000 L CNN
	1    2450 3800
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 58255E27
P 2350 4200
F 0 "#PWR07" H 2350 3950 50  0001 C CNN
F 1 "GND" H 2350 4050 50  0000 C CNN
F 2 "" H 2350 4200 50  0000 C CNN
F 3 "" H 2350 4200 50  0000 C CNN
	1    2350 4200
	1    0    0    -1  
$EndComp
$Comp
L 7805 U2
U 1 1 5825680A
P 4150 1200
F 0 "U2" H 4300 1004 50  0000 C CNN
F 1 "7805" H 4150 1400 50  0000 C CNN
F 2 "pots_own:TO-220_7805_Horizontal" H 4150 1200 50  0001 C CNN
F 3 "" H 4150 1200 50  0000 C CNN
	1    4150 1200
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 58256A81
P 3150 1400
F 0 "C2" H 3175 1500 50  0000 L CNN
F 1 "100nF" H 3175 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3188 1250 50  0001 C CNN
F 3 "" H 3150 1400 50  0000 C CNN
	1    3150 1400
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 58256AE4
P 4700 1400
F 0 "C4" H 4725 1500 50  0000 L CNN
F 1 "100nF" H 4725 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4738 1250 50  0001 C CNN
F 3 "" H 4700 1400 50  0000 C CNN
	1    4700 1400
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 58256C89
P 3500 1400
F 0 "C3" H 3525 1500 50  0000 L CNN
F 1 "10µF" H 3525 1300 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_6.3x5.3" H 3538 1250 50  0001 C CNN
F 3 "" H 3500 1400 50  0000 C CNN
	1    3500 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58257887
P 4150 1550
F 0 "#PWR08" H 4150 1300 50  0001 C CNN
F 1 "GND" H 4150 1400 50  0000 C CNN
F 2 "" H 4150 1550 50  0000 C CNN
F 3 "" H 4150 1550 50  0000 C CNN
	1    4150 1550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 5825812E
P 4700 1150
F 0 "#PWR09" H 4700 1000 50  0001 C CNN
F 1 "VCC" H 4700 1300 50  0000 C CNN
F 2 "" H 4700 1150 50  0000 C CNN
F 3 "" H 4700 1150 50  0000 C CNN
	1    4700 1150
	0    1    1    0   
$EndComp
Text GLabel 1000 2150 0    60   Input ~ 0
Bat+
Text GLabel 2550 1550 0    60   Input ~ 0
Bat-
$Comp
L D_Schottky D1
U 1 1 58259120
P 2850 1150
F 0 "D1" H 2850 1250 50  0000 C CNN
F 1 "1N5818" H 2850 1050 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 2850 1150 50  0001 C CNN
F 3 "" H 2850 1150 50  0000 C CNN
	1    2850 1150
	-1   0    0    1   
$EndComp
$Comp
L ACS712 U1
U 1 1 5825A878
P 1650 2400
F 0 "U1" H 1550 2850 60  0000 C CNN
F 1 "ACS712" H 1650 2400 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1550 2200 60  0001 C CNN
F 3 "" H 1550 2200 60  0001 C CNN
	1    1650 2400
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5825AFA6
P 2550 2550
F 0 "C1" H 2575 2650 50  0000 L CNN
F 1 "1nF" H 2575 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2588 2400 50  0001 C CNN
F 3 "" H 2550 2550 50  0000 C CNN
	1    2550 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 5825B096
P 2850 2550
F 0 "#PWR010" H 2850 2300 50  0001 C CNN
F 1 "GND" H 2850 2400 50  0000 C CNN
F 2 "" H 2850 2550 50  0000 C CNN
F 3 "" H 2850 2550 50  0000 C CNN
	1    2850 2550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 5825B20E
P 2150 2750
F 0 "#PWR011" H 2150 2500 50  0001 C CNN
F 1 "GND" H 2150 2600 50  0000 C CNN
F 2 "" H 2150 2750 50  0000 C CNN
F 3 "" H 2150 2750 50  0000 C CNN
	1    2150 2750
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR012
U 1 1 5825B4AD
P 2150 2100
F 0 "#PWR012" H 2150 1950 50  0001 C CNN
F 1 "VCC" H 2150 2250 50  0000 C CNN
F 2 "" H 2150 2100 50  0000 C CNN
F 3 "" H 2150 2100 50  0000 C CNN
	1    2150 2100
	0    1    1    0   
$EndComp
Text GLabel 2150 2250 2    60   Input ~ 0
A2
Text GLabel 4850 4150 2    60   Input ~ 0
A2
Text GLabel 1000 3075 0    60   Input ~ 0
LOAD+
Text GLabel 1000 3375 0    60   Input ~ 0
LOAD-
$Comp
L LED D2
U 1 1 5825F60F
P 6800 2050
F 0 "D2" H 6800 2150 50  0000 C CNN
F 1 "LED" H 6800 1950 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 6800 2050 50  0001 C CNN
F 3 "" H 6800 2050 50  0000 C CNN
	1    6800 2050
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5825FCB1
P 6450 2050
F 0 "R1" V 6530 2050 50  0000 C CNN
F 1 "200R" V 6450 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6380 2050 50  0001 C CNN
F 3 "" H 6450 2050 50  0000 C CNN
	1    6450 2050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 5825FF6B
P 7000 2050
F 0 "#PWR013" H 7000 1800 50  0001 C CNN
F 1 "GND" H 7000 1900 50  0000 C CNN
F 2 "" H 7000 2050 50  0000 C CNN
F 3 "" H 7000 2050 50  0000 C CNN
	1    7000 2050
	0    -1   -1   0   
$EndComp
Text GLabel 6300 2050 0    60   Input ~ 0
D6
Text GLabel 3450 4100 0    60   Input ~ 0
D6
$Comp
L CONN_01X04 P1
U 1 1 582628A8
P 6950 1400
F 0 "P1" H 6950 1650 50  0000 C CNN
F 1 "Display_I2C" V 7050 1400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 6950 1400 50  0001 C CNN
F 3 "" H 6950 1400 50  0000 C CNN
	1    6950 1400
	1    0    0    -1  
$EndComp
Text GLabel 6750 1250 0    60   Input ~ 0
SDA
Text GLabel 6750 1350 0    60   Input ~ 0
SCL
$Comp
L VCC #PWR014
U 1 1 58263E5F
P 6450 1450
F 0 "#PWR014" H 6450 1300 50  0001 C CNN
F 1 "VCC" H 6450 1600 50  0000 C CNN
F 2 "" H 6450 1450 50  0000 C CNN
F 3 "" H 6450 1450 50  0000 C CNN
	1    6450 1450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 58263F96
P 6650 1550
F 0 "#PWR015" H 6650 1300 50  0001 C CNN
F 1 "GND" H 6650 1400 50  0000 C CNN
F 2 "" H 6650 1550 50  0000 C CNN
F 3 "" H 6650 1550 50  0000 C CNN
	1    6650 1550
	0    1    1    0   
$EndComp
Text GLabel 4850 3950 2    60   Input ~ 0
SDA
Text GLabel 4850 3850 2    60   Input ~ 0
SCL
$Comp
L Buzzer U4
U 1 1 58268BD9
P 5250 1900
F 0 "U4" H 5100 1950 60  0000 C CNN
F 1 "Buzzer" H 5100 1850 60  0000 C CNN
F 2 "Buzzer:Buzzer_12x8.2_RM6.6" H 5250 1900 60  0001 C CNN
F 3 "" H 5250 1900 60  0001 C CNN
	1    5250 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5826A5E7
P 5350 2400
F 0 "#PWR016" H 5350 2150 50  0001 C CNN
F 1 "GND" H 5350 2250 50  0000 C CNN
F 2 "" H 5350 2400 50  0000 C CNN
F 3 "" H 5350 2400 50  0000 C CNN
	1    5350 2400
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 5829D87A
P 1075 2000
F 0 "W2" H 1075 2270 50  0000 C CNN
F 1 "Bat+" H 1075 2200 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-TH_Big" H 1275 2000 50  0001 C CNN
F 3 "" H 1275 2000 50  0000 C CNN
	1    1075 2000
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W1
U 1 1 5829E61A
P 1250 3075
F 0 "W1" H 1250 3345 50  0000 C CNN
F 1 "LOAD+" H 1250 3275 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-TH_Big" H 1450 3075 50  0001 C CNN
F 3 "" H 1450 3075 50  0000 C CNN
	1    1250 3075
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W4
U 1 1 582A0487
P 2675 1550
F 0 "W4" H 2675 1820 50  0000 C CNN
F 1 "BAT-" H 2675 1750 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-TH_Big" H 2875 1550 50  0001 C CNN
F 3 "" H 2875 1550 50  0000 C CNN
	1    2675 1550
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P W3
U 1 1 5829F7DD
P 1250 3375
F 0 "W3" H 1250 3645 50  0000 C CNN
F 1 "LOAD-" H 1250 3575 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-TH_Big" H 1450 3375 50  0001 C CNN
F 3 "" H 1450 3375 50  0000 C CNN
	1    1250 3375
	0    1    1    0   
$EndComp
Text GLabel 1000 2650 0    60   Input ~ 0
Input+
Text GLabel 2550 1150 0    60   Input ~ 0
Input+
$Comp
L R R12
U 1 1 582B1692
P 2950 3850
F 0 "R12" V 3030 3850 50  0000 C CNN
F 1 "200R" V 2950 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 3850 50  0001 C CNN
F 3 "" H 2950 3850 50  0000 C CNN
	1    2950 3850
	0    1    1    0   
$EndComp
Text GLabel 3450 4800 0    60   Input ~ 0
D13
Text GLabel 5100 2400 3    60   Input ~ 0
D13
$Comp
L VDD #PWR017
U 1 1 582C95B6
P 4700 1075
F 0 "#PWR017" H 4700 925 50  0001 C CNN
F 1 "VDD" H 4700 1225 50  0000 C CNN
F 2 "" H 4700 1075 50  0000 C CNN
F 3 "" H 4700 1075 50  0000 C CNN
	1    4700 1075
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR018
U 1 1 582CAB6A
P 3950 1675
F 0 "#PWR018" H 3950 1525 50  0001 C CNN
F 1 "VSS" H 3950 1825 50  0000 C CNN
F 2 "" H 3950 1675 50  0000 C CNN
F 3 "" H 3950 1675 50  0000 C CNN
	1    3950 1675
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P W6
U 1 1 582C9E3F
P 8775 1750
F 0 "W6" H 8775 2020 50  0001 C CNN
F 1 "T1" H 8775 1950 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 8975 1750 50  0001 C CNN
F 3 "" H 8975 1750 50  0000 C CNN
	1    8775 1750
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W7
U 1 1 582CBD8B
P 8775 1900
F 0 "W7" H 8775 2170 50  0001 C CNN
F 1 "T2" H 8775 2100 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 8975 1900 50  0001 C CNN
F 3 "" H 8975 1900 50  0000 C CNN
	1    8775 1900
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W8
U 1 1 582CC351
P 8775 2050
F 0 "W8" H 8775 2320 50  0001 C CNN
F 1 "T3" H 8775 2250 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 8975 2050 50  0001 C CNN
F 3 "" H 8975 2050 50  0000 C CNN
	1    8775 2050
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W9
U 1 1 582CC3B9
P 8775 2200
F 0 "W9" H 8775 2470 50  0001 C CNN
F 1 "T4" H 8775 2400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 8975 2200 50  0001 C CNN
F 3 "" H 8975 2200 50  0000 C CNN
	1    8775 2200
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W10
U 1 1 582CC421
P 8775 2350
F 0 "W10" H 8775 2620 50  0001 C CNN
F 1 "T5" H 8775 2550 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 8975 2350 50  0001 C CNN
F 3 "" H 8975 2350 50  0000 C CNN
	1    8775 2350
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W11
U 1 1 582CC489
P 8775 2500
F 0 "W11" H 8775 2770 50  0001 C CNN
F 1 "T6" H 8775 2700 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 8975 2500 50  0001 C CNN
F 3 "" H 8975 2500 50  0000 C CNN
	1    8775 2500
	0    1    1    0   
$EndComp
Text Label 7525 2900 0    60   ~ 0
Cell_1
Text Label 7525 3000 0    60   ~ 0
Cell_2
Text Label 7525 3100 0    60   ~ 0
Cell_3
Text Label 7525 3200 0    60   ~ 0
Cell_4
Text Label 7525 3300 0    60   ~ 0
Cell_5
Text Label 7525 3400 0    60   ~ 0
Cell_6
$Comp
L TEST_1P W5
U 1 1 582DC845
P 8775 1600
F 0 "W5" H 8775 1870 50  0001 C CNN
F 1 "GND" H 8775 1800 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 8975 1600 50  0001 C CNN
F 3 "" H 8975 1600 50  0000 C CNN
	1    8775 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 3100 9500 3100
Wire Wire Line
	9500 3100 9500 2850
Wire Wire Line
	9650 3300 9350 3300
Wire Wire Line
	9350 3300 9350 3100
Wire Wire Line
	9350 3100 9100 3100
Wire Wire Line
	9650 3400 9250 3400
Wire Wire Line
	9250 3400 9250 3350
Wire Wire Line
	9250 3350 9100 3350
Wire Wire Line
	9650 3500 9250 3500
Wire Wire Line
	9250 3500 9250 3600
Wire Wire Line
	9250 3600 9100 3600
Wire Wire Line
	9650 3600 9350 3600
Wire Wire Line
	9350 3600 9350 3850
Wire Wire Line
	9350 3850 9100 3850
Wire Wire Line
	9650 3700 9450 3700
Wire Wire Line
	9450 3700 9450 4100
Wire Wire Line
	9450 4100 9100 4100
Wire Wire Line
	8800 4100 8600 4100
Wire Wire Line
	8800 3850 8600 3850
Wire Wire Line
	8600 3600 8800 3600
Wire Wire Line
	8800 3350 8600 3350
Wire Wire Line
	8800 3100 8600 3100
Wire Wire Line
	8300 3100 8300 4450
Connection ~ 8300 3350
Connection ~ 8300 3600
Connection ~ 8300 3850
Connection ~ 8300 4100
Wire Wire Line
	9650 3200 9400 3200
Wire Wire Line
	9400 3200 9400 2900
Wire Wire Line
	9400 2900 7500 2900
Wire Wire Line
	8700 3100 8700 3000
Wire Wire Line
	8700 3000 7500 3000
Wire Wire Line
	8700 3350 8700 3250
Wire Wire Line
	8700 3250 7950 3250
Wire Wire Line
	7950 3250 7950 3100
Wire Wire Line
	7950 3100 7500 3100
Connection ~ 8700 3350
Wire Wire Line
	8700 3600 8700 3500
Wire Wire Line
	8700 3500 7850 3500
Wire Wire Line
	7850 3500 7850 3200
Wire Wire Line
	7850 3200 7500 3200
Connection ~ 8700 3600
Wire Wire Line
	8700 3850 8700 3750
Wire Wire Line
	7500 3300 7800 3300
Connection ~ 8700 3850
Wire Wire Line
	8700 4100 8700 4000
Wire Wire Line
	7500 3400 7750 3400
Connection ~ 8700 4100
Wire Wire Line
	8700 3750 8100 3750
Wire Wire Line
	8100 3750 8100 3550
Wire Wire Line
	8100 3550 7800 3550
Wire Wire Line
	7800 3550 7800 3300
Wire Wire Line
	8700 4000 8050 4000
Wire Wire Line
	8050 4000 8050 3600
Wire Wire Line
	8050 3600 7750 3600
Wire Wire Line
	7750 3600 7750 3400
Wire Wire Line
	5950 4650 5800 4650
Wire Wire Line
	5500 4650 5400 4650
Wire Wire Line
	5650 4500 5650 4350
Wire Wire Line
	5650 4350 4850 4350
Wire Wire Line
	2350 4200 2350 4000
Wire Wire Line
	3150 1150 3150 1250
Wire Wire Line
	3500 1150 3500 1250
Connection ~ 3500 1150
Wire Wire Line
	4550 1150 4700 1150
Wire Wire Line
	4700 1075 4700 1250
Wire Wire Line
	2550 1550 4700 1550
Connection ~ 3500 1550
Wire Wire Line
	4150 1450 4150 1550
Connection ~ 4150 1550
Connection ~ 3150 1150
Connection ~ 3150 1550
Wire Wire Line
	2550 1150 2700 1150
Wire Wire Line
	3000 1150 3750 1150
Wire Wire Line
	2400 2550 2150 2550
Wire Wire Line
	2850 2550 2700 2550
Wire Wire Line
	1200 2200 1200 2100
Wire Wire Line
	1200 2150 1000 2150
Connection ~ 1200 2150
Wire Wire Line
	1200 2600 1200 2700
Wire Wire Line
	1000 2650 1200 2650
Wire Wire Line
	1100 3600 2350 3600
Connection ~ 1200 2650
Wire Wire Line
	6450 1450 6750 1450
Wire Wire Line
	6650 1550 6750 1550
Connection ~ 2675 1550
Wire Wire Line
	1100 2650 1100 3075
Wire Wire Line
	1100 3375 1100 3600
Wire Wire Line
	1000 3375 1250 3375
Wire Wire Line
	1000 3075 1250 3075
Connection ~ 1100 3375
Connection ~ 1100 3075
Connection ~ 1100 2650
Wire Wire Line
	1075 2150 1075 2000
Connection ~ 1075 2150
Wire Wire Line
	3100 3850 3450 3850
Wire Wire Line
	2800 3850 2650 3850
Connection ~ 4700 1150
Wire Wire Line
	3950 1675 3950 1550
Connection ~ 3950 1550
Connection ~ 8700 3100
Wire Wire Line
	8775 1600 8475 1600
Wire Wire Line
	8775 1750 8475 1750
Wire Wire Line
	8775 1900 8475 1900
Wire Wire Line
	8775 2050 8475 2050
Wire Wire Line
	8775 2200 8475 2200
Wire Wire Line
	8775 2350 8475 2350
Text Label 8475 1750 0    60   ~ 0
Cell_1
Text Label 8475 1900 0    60   ~ 0
Cell_2
Text Label 8475 2050 0    60   ~ 0
Cell_3
Text Label 8475 2200 0    60   ~ 0
Cell_4
Text Label 8475 2350 0    60   ~ 0
Cell_5
Text Label 8475 2500 0    60   ~ 0
Cell_6
Wire Wire Line
	8775 2500 8475 2500
Text Label 8475 1600 0    60   ~ 0
GND
Text Label 9500 3100 0    60   ~ 0
GND
$EndSCHEMATC
