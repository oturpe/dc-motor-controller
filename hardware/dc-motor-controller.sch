EESchema Schematic File Version 2
LIBS:dc-motor-controller-rescue
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
LIBS:oturpe-kicad-lib
LIBS:dc-motor-controller-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2016-05-27"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 5739C154
P 5500 1000
F 0 "#PWR01" H 5500 750 50  0001 C CNN
F 1 "GND" H 5500 850 50  0000 C CNN
F 2 "" H 5500 1000 50  0000 C CNN
F 3 "" H 5500 1000 50  0000 C CNN
	1    5500 1000
	1    0    0    -1  
$EndComp
$Comp
L DC_motor-RESCUE-dc-motor-controller M0
U 1 1 5739C18C
P 7650 1150
F 0 "M0" H 7650 1400 60  0000 C CNN
F 1 "DC_motor" H 7650 1550 60  0001 C CNN
F 2 "Oturpe footprints:Big_green_chocolate_1x2" H 7650 1400 60  0001 C CNN
F 3 "" H 7650 1400 60  0000 C CNN
	1    7650 1150
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 5739C1EE
P 7300 900
F 0 "C4" H 7325 1000 50  0000 L CNN
F 1 "10 nF" H 7325 800 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 7338 750 50  0001 C CNN
F 3 "" H 7300 900 50  0000 C CNN
	1    7300 900 
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5739C247
P 7300 1400
F 0 "C5" H 7325 1500 50  0000 L CNN
F 1 "10 nF" H 7325 1300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 7338 1250 50  0001 C CNN
F 3 "" H 7300 1400 50  0000 C CNN
	1    7300 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5739C27A
P 7100 1150
F 0 "#PWR02" H 7100 900 50  0001 C CNN
F 1 "GND" H 7100 1000 50  0000 C CNN
F 2 "" H 7100 1150 50  0000 C CNN
F 3 "" H 7100 1150 50  0000 C CNN
	1    7100 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5739C41E
P 6400 1000
F 0 "#PWR03" H 6400 750 50  0001 C CNN
F 1 "GND" H 6550 950 50  0000 C CNN
F 2 "" H 6400 1000 50  0000 C CNN
F 3 "" H 6400 1000 50  0000 C CNN
	1    6400 1000
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR04
U 1 1 5739C484
P 6400 900
F 0 "#PWR04" H 6400 750 50  0001 C CNN
F 1 "+12V" H 6400 1040 50  0000 C CNN
F 2 "" H 6400 900 50  0000 C CNN
F 3 "" H 6400 900 50  0000 C CNN
	1    6400 900 
	1    0    0    -1  
$EndComp
$Comp
L BA6956AN U1
U 1 1 5739CBAD
P 5950 2950
F 0 "U1" H 5950 3100 60  0000 C CNN
F 1 "BA6956AN" H 5950 2950 60  0000 C CNN
F 2 "Housings_SIP:SIP9_Housing" H 5900 3000 60  0001 C CNN
F 3 "" H 5900 3000 60  0000 C CNN
	1    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5739CBBF
P 5500 3200
F 0 "#PWR05" H 5500 2950 50  0001 C CNN
F 1 "GND" H 5500 3050 50  0000 C CNN
F 2 "" H 5500 3200 50  0000 C CNN
F 3 "" H 5500 3200 50  0000 C CNN
	1    5500 3200
	1    0    0    -1  
$EndComp
$Comp
L DC_motor-RESCUE-dc-motor-controller M1
U 1 1 5739CBCB
P 7650 3350
F 0 "M1" H 7650 3600 60  0000 C CNN
F 1 "DC_motor" H 7650 3750 60  0001 C CNN
F 2 "Oturpe footprints:Big_green_chocolate_1x2" H 7650 3600 60  0001 C CNN
F 3 "" H 7650 3600 60  0000 C CNN
	1    7650 3350
	0    1    1    0   
$EndComp
$Comp
L C C6
U 1 1 5739CBD1
P 7300 3100
F 0 "C6" H 7325 3200 50  0000 L CNN
F 1 "10 nF" H 7325 3000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 7338 2950 50  0001 C CNN
F 3 "" H 7300 3100 50  0000 C CNN
	1    7300 3100
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5739CBD7
P 7300 3600
F 0 "C7" H 7325 3700 50  0000 L CNN
F 1 "10 nF" H 7325 3500 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 7338 3450 50  0001 C CNN
F 3 "" H 7300 3600 50  0000 C CNN
	1    7300 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5739CBDD
P 7100 3350
F 0 "#PWR06" H 7100 3100 50  0001 C CNN
F 1 "GND" H 7100 3200 50  0000 C CNN
F 2 "" H 7100 3350 50  0000 C CNN
F 3 "" H 7100 3350 50  0000 C CNN
	1    7100 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5739CBEB
P 6400 3200
F 0 "#PWR07" H 6400 2950 50  0001 C CNN
F 1 "GND" H 6550 3150 50  0000 C CNN
F 2 "" H 6400 3200 50  0000 C CNN
F 3 "" H 6400 3200 50  0000 C CNN
	1    6400 3200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 5739CBF4
P 6400 3100
F 0 "#PWR08" H 6400 2950 50  0001 C CNN
F 1 "+12V" H 6400 3240 50  0000 C CNN
F 2 "" H 6400 3100 50  0000 C CNN
F 3 "" H 6400 3100 50  0000 C CNN
	1    6400 3100
	1    0    0    -1  
$EndComp
$Comp
L BA6956AN U2
U 1 1 5739CDF9
P 5950 5050
F 0 "U2" H 5950 5150 60  0000 C CNN
F 1 "BA6956AN" H 5950 5000 60  0000 C CNN
F 2 "Housings_SIP:SIP9_Housing" H 5900 5100 60  0001 C CNN
F 3 "" H 5900 5100 60  0000 C CNN
	1    5950 5050
	1    0    0    -1  
$EndComp
$Comp
L DC_motor-RESCUE-dc-motor-controller M2
U 1 1 5739CE17
P 7650 5450
F 0 "M2" H 7650 5700 60  0000 C CNN
F 1 "DC_motor" H 7650 5850 60  0001 C CNN
F 2 "Oturpe footprints:Big_green_chocolate_1x2" H 7650 5700 60  0001 C CNN
F 3 "" H 7650 5700 60  0000 C CNN
	1    7650 5450
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 5739CE1D
P 7300 5200
F 0 "C8" H 7325 5300 50  0000 L CNN
F 1 "10 nF" H 7325 5100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 7338 5050 50  0001 C CNN
F 3 "" H 7300 5200 50  0000 C CNN
	1    7300 5200
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5739CE23
P 7300 5700
F 0 "C9" H 7325 5800 50  0000 L CNN
F 1 "10 nF" H 7325 5600 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 7338 5550 50  0001 C CNN
F 3 "" H 7300 5700 50  0000 C CNN
	1    7300 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5739CE29
P 7100 5450
F 0 "#PWR09" H 7100 5200 50  0001 C CNN
F 1 "GND" H 7100 5300 50  0000 C CNN
F 2 "" H 7100 5450 50  0000 C CNN
F 3 "" H 7100 5450 50  0000 C CNN
	1    7100 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5739CE37
P 6400 5300
F 0 "#PWR010" H 6400 5050 50  0001 C CNN
F 1 "GND" H 6550 5250 50  0000 C CNN
F 2 "" H 6400 5300 50  0000 C CNN
F 3 "" H 6400 5300 50  0000 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR011
U 1 1 5739CE40
P 6400 5200
F 0 "#PWR011" H 6400 5050 50  0001 C CNN
F 1 "+12V" H 6400 5340 50  0000 C CNN
F 2 "" H 6400 5200 50  0000 C CNN
F 3 "" H 6400 5200 50  0000 C CNN
	1    6400 5200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 573AF3A4
P 1750 3200
F 0 "#PWR012" H 1750 3050 50  0001 C CNN
F 1 "+5V" H 1750 3340 50  0000 C CNN
F 2 "" H 1750 3200 50  0000 C CNN
F 3 "" H 1750 3200 50  0000 C CNN
	1    1750 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 573AF4BC
P 1750 5500
F 0 "#PWR013" H 1750 5250 50  0001 C CNN
F 1 "GND" H 1750 5350 50  0000 C CNN
F 2 "" H 1750 5500 50  0000 C CNN
F 3 "" H 1750 5500 50  0000 C CNN
	1    1750 5500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 573AFB8D
P 3350 2900
F 0 "R1" V 3430 2900 50  0000 C CNN
F 1 "1 k" V 3350 2900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3280 2900 50  0001 C CNN
F 3 "" H 3350 2900 50  0000 C CNN
	1    3350 2900
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 573AFC00
P 3000 2900
F 0 "D1" H 3000 3000 50  0000 C CNN
F 1 "LED" H 3000 2800 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 3000 2900 50  0001 C CNN
F 3 "" H 3000 2900 50  0000 C CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 573AFC89
P 2800 2900
F 0 "#PWR014" H 2800 2650 50  0001 C CNN
F 1 "GND" H 2800 2750 50  0000 C CNN
F 2 "" H 2800 2900 50  0000 C CNN
F 3 "" H 2800 2900 50  0000 C CNN
	1    2800 2900
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA88PA-P IC1
U 1 1 5739BE65
P 2650 4300
F 0 "IC1" H 2450 5550 50  0000 L BNN
F 1 "ATMEGA88PA-P" H 3050 2900 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 2650 4300 50  0000 C CIN
F 3 "" H 2650 4300 50  0000 C CNN
	1    2650 4300
	1    0    0    -1  
$EndComp
$Comp
L BA6956AN U0
U 1 1 5739BC51
P 5950 750
F 0 "U0" H 5950 900 60  0000 C CNN
F 1 "BA6956AN" H 5950 750 60  0000 C CNN
F 2 "Housings_SIP:SIP9_Housing" H 5900 800 60  0001 C CNN
F 3 "" H 5900 800 60  0000 C CNN
	1    5950 750 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 573B5AE0
P 7650 2050
F 0 "#PWR015" H 7650 1800 50  0001 C CNN
F 1 "GND" H 7650 1900 50  0000 C CNN
F 2 "" H 7650 2050 50  0000 C CNN
F 3 "" H 7650 2050 50  0000 C CNN
	1    7650 2050
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW0-1
U 1 1 573B5B14
P 7350 2050
F 0 "SW0-1" H 7550 2200 50  0000 C CNN
F 1 "SW_PUSH" H 7350 1970 50  0000 C CNN
F 2 "Oturpe footprints:Small_green_chocolade_1x2" H 7350 2050 50  0001 C CNN
F 3 "" H 7350 2050 50  0000 C CNN
	1    7350 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 573B5D1A
P 6450 2050
F 0 "#PWR016" H 6450 1800 50  0001 C CNN
F 1 "GND" H 6450 1900 50  0000 C CNN
F 2 "" H 6450 2050 50  0000 C CNN
F 3 "" H 6450 2050 50  0000 C CNN
	1    6450 2050
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW0-0
U 1 1 573B5D20
P 6150 2050
F 0 "SW0-0" H 6350 2200 50  0000 C CNN
F 1 "SW_PUSH" H 6150 1970 50  0000 C CNN
F 2 "Oturpe footprints:Small_green_chocolade_1x2" H 6150 2050 50  0001 C CNN
F 3 "" H 6150 2050 50  0000 C CNN
	1    6150 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 573B6CAA
P 7650 4200
F 0 "#PWR017" H 7650 3950 50  0001 C CNN
F 1 "GND" H 7650 4050 50  0000 C CNN
F 2 "" H 7650 4200 50  0000 C CNN
F 3 "" H 7650 4200 50  0000 C CNN
	1    7650 4200
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1-1
U 1 1 573B6CB0
P 7350 4200
F 0 "SW1-1" H 7550 4350 50  0000 C CNN
F 1 "SW_PUSH" H 7350 4120 50  0000 C CNN
F 2 "Oturpe footprints:Small_green_chocolade_1x2" H 7350 4200 50  0001 C CNN
F 3 "" H 7350 4200 50  0000 C CNN
	1    7350 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 573B6CC2
P 6450 4200
F 0 "#PWR018" H 6450 3950 50  0001 C CNN
F 1 "GND" H 6450 4050 50  0000 C CNN
F 2 "" H 6450 4200 50  0000 C CNN
F 3 "" H 6450 4200 50  0000 C CNN
	1    6450 4200
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1-0
U 1 1 573B6CC8
P 6150 4200
F 0 "SW1-0" H 6350 4350 50  0000 C CNN
F 1 "SW_PUSH" H 6150 4120 50  0000 C CNN
F 2 "Oturpe footprints:Small_green_chocolade_1x2" H 6150 4200 50  0001 C CNN
F 3 "" H 6150 4200 50  0000 C CNN
	1    6150 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 573B74E2
P 7650 6250
F 0 "#PWR019" H 7650 6000 50  0001 C CNN
F 1 "GND" H 7650 6100 50  0000 C CNN
F 2 "" H 7650 6250 50  0000 C CNN
F 3 "" H 7650 6250 50  0000 C CNN
	1    7650 6250
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2-1
U 1 1 573B74E8
P 7350 6250
F 0 "SW2-1" H 7550 6400 50  0000 C CNN
F 1 "SW_PUSH" H 7350 6170 50  0000 C CNN
F 2 "Oturpe footprints:Small_green_chocolade_1x2" H 7350 6250 50  0001 C CNN
F 3 "" H 7350 6250 50  0000 C CNN
	1    7350 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 573B74FA
P 6450 6250
F 0 "#PWR020" H 6450 6000 50  0001 C CNN
F 1 "GND" H 6450 6100 50  0000 C CNN
F 2 "" H 6450 6250 50  0000 C CNN
F 3 "" H 6450 6250 50  0000 C CNN
	1    6450 6250
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2-0
U 1 1 573B7500
P 6150 6250
F 0 "SW2-0" H 6350 6400 50  0000 C CNN
F 1 "SW_PUSH" H 6150 6170 50  0000 C CNN
F 2 "Oturpe footprints:Small_green_chocolade_1x2" H 6150 6250 50  0001 C CNN
F 3 "" H 6150 6250 50  0000 C CNN
	1    6150 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 573C3CB2
P 3500 1850
F 0 "#PWR021" H 3500 1600 50  0001 C CNN
F 1 "GND" H 3500 1700 50  0000 C CNN
F 2 "" H 3500 1850 50  0000 C CNN
F 3 "" H 3500 1850 50  0000 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR022
U 1 1 573C3D00
P 3100 1550
F 0 "#PWR022" H 3100 1400 50  0001 C CNN
F 1 "+12V" H 3100 1690 50  0000 C CNN
F 2 "" H 3100 1550 50  0000 C CNN
F 3 "" H 3100 1550 50  0000 C CNN
	1    3100 1550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR023
U 1 1 573C3D4E
P 3900 1550
F 0 "#PWR023" H 3900 1400 50  0001 C CNN
F 1 "+5V" H 3900 1690 50  0000 C CNN
F 2 "" H 3900 1550 50  0000 C CNN
F 3 "" H 3900 1550 50  0000 C CNN
	1    3900 1550
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 573C3D9C
P 3900 1700
F 0 "C3" H 3925 1800 50  0000 L CNN
F 1 "100 nF" H 3925 1600 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2.5_P5" H 3938 1550 50  0001 C CNN
F 3 "" H 3900 1700 50  0000 C CNN
	1    3900 1700
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 573C3E13
P 3100 1700
F 0 "C2" H 3125 1800 50  0000 L CNN
F 1 "1 uF" H 3125 1600 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 3138 1550 50  0001 C CNN
F 3 "" H 3100 1700 50  0000 C CNN
	1    3100 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 57404E3E
P 1600 1600
F 0 "P1" H 1600 1750 50  0000 C CNN
F 1 "Power connector" V 1700 1600 50  0000 C CNN
F 2 "Oturpe footprints:Small_green_chocolade_1x2" H 1600 1600 50  0001 C CNN
F 3 "" H 1600 1600 50  0000 C CNN
	1    1600 1600
	-1   0    0    1   
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 5740639A
P 4450 4300
F 0 "P2" H 4450 4500 50  0000 C CNN
F 1 "ISP interface" H 4450 4100 50  0000 C CNN
F 2 "Oturpe footprints:Borg_hedged_2x03" H 4450 3100 50  0001 C CNN
F 3 "" H 4450 3100 50  0000 C CNN
	1    4450 4300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 5740688B
P 4700 4200
F 0 "#PWR024" H 4700 4050 50  0001 C CNN
F 1 "+5V" H 4700 4340 50  0000 C CNN
F 2 "" H 4700 4200 50  0000 C CNN
F 3 "" H 4700 4200 50  0000 C CNN
	1    4700 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 574068E1
P 4800 4400
F 0 "#PWR025" H 4800 4150 50  0001 C CNN
F 1 "GND" H 4800 4250 50  0000 C CNN
F 2 "" H 4800 4400 50  0000 C CNN
F 3 "" H 4800 4400 50  0000 C CNN
	1    4800 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 57421B0D
P 5500 5300
F 0 "#PWR026" H 5500 5050 50  0001 C CNN
F 1 "GND" H 5500 5150 50  0000 C CNN
F 2 "" H 5500 5300 50  0000 C CNN
F 3 "" H 5500 5300 50  0000 C CNN
	1    5500 5300
	1    0    0    -1  
$EndComp
NoConn ~ 3650 4050
NoConn ~ 3650 4150
NoConn ~ 3650 4250
NoConn ~ 3650 4350
NoConn ~ 3650 4450
NoConn ~ 3650 4550
NoConn ~ 3650 5000
NoConn ~ 1750 3800
$Comp
L PWR_FLAG #FLG027
U 1 1 57427172
P 1800 1550
F 0 "#FLG027" H 1800 1645 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 1730 50  0000 C CNN
F 2 "" H 1800 1550 50  0000 C CNN
F 3 "" H 1800 1550 50  0000 C CNN
	1    1800 1550
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG028
U 1 1 574325F0
P 1800 1850
F 0 "#FLG028" H 1800 1945 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 2030 50  0000 C CNN
F 2 "" H 1800 1850 50  0000 C CNN
F 3 "" H 1800 1850 50  0000 C CNN
	1    1800 1850
	-1   0    0    1   
$EndComp
$Comp
L 7805_oturpe U3
U 1 1 574C5798
P 3500 1600
F 0 "U3" H 3650 1404 50  0000 C CNN
F 1 "7805" H 3500 1800 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 3500 1600 50  0001 C CNN
F 3 "" H 3500 1600 50  0000 C CNN
	1    3500 1600
	1    0    0    -1  
$EndComp
NoConn ~ 6400 5450
NoConn ~ 6400 3350
NoConn ~ 6400 1150
$Comp
L +12V #PWR029
U 1 1 5766818D
P 5500 900
F 0 "#PWR029" H 5500 750 50  0001 C CNN
F 1 "+12V" H 5500 1040 50  0000 C CNN
F 2 "" H 5500 900 50  0000 C CNN
F 3 "" H 5500 900 50  0000 C CNN
	1    5500 900 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR030
U 1 1 576681D5
P 5500 3100
F 0 "#PWR030" H 5500 2950 50  0001 C CNN
F 1 "+12V" H 5500 3240 50  0000 C CNN
F 2 "" H 5500 3100 50  0000 C CNN
F 3 "" H 5500 3100 50  0000 C CNN
	1    5500 3100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR031
U 1 1 57668389
P 5500 5200
F 0 "#PWR031" H 5500 5050 50  0001 C CNN
F 1 "+12V" H 5500 5340 50  0000 C CNN
F 2 "" H 5500 5200 50  0000 C CNN
F 3 "" H 5500 5200 50  0000 C CNN
	1    5500 5200
	1    0    0    -1  
$EndComp
Entry Wire Line
	5200 1200 5300 1300
Entry Wire Line
	5200 1300 5300 1400
Entry Wire Line
	5200 5600 5300 5700
Entry Wire Line
	5200 5500 5300 5600
Entry Wire Line
	5200 3500 5300 3600
Entry Wire Line
	5200 3400 5300 3500
Text Label 5300 1300 0    60   ~ 0
M0F
Text Label 5300 1400 0    60   ~ 0
M0R
Text Label 5300 3500 0    60   ~ 0
M1F
Text Label 5300 3600 0    60   ~ 0
M1R
Text Label 5300 5600 0    60   ~ 0
M2F
Text Label 5300 5700 0    60   ~ 0
M2R
Entry Wire Line
	3950 3300 4050 3200
Entry Wire Line
	3950 3400 4050 3300
Entry Wire Line
	3950 5100 4050 5000
Entry Wire Line
	3950 5300 4050 5200
Entry Wire Line
	3950 5400 4050 5300
Wire Wire Line
	7300 1050 7300 1250
Wire Wire Line
	7300 1150 7100 1150
Connection ~ 7300 1150
Wire Wire Line
	7000 750  7650 750 
Wire Wire Line
	7000 750  7000 1300
Connection ~ 7300 750 
Wire Wire Line
	7000 1550 7650 1550
Connection ~ 7300 1550
Wire Wire Line
	6400 1400 7000 1400
Wire Wire Line
	7000 1400 7000 1550
Wire Wire Line
	7000 1300 6400 1300
Wire Wire Line
	7300 3250 7300 3450
Connection ~ 7300 3350
Wire Wire Line
	7000 2950 7650 2950
Wire Wire Line
	7000 2950 7000 3500
Connection ~ 7300 2950
Wire Wire Line
	7000 3750 7650 3750
Connection ~ 7300 3750
Wire Wire Line
	6400 3600 7000 3600
Wire Wire Line
	7000 3600 7000 3750
Wire Wire Line
	7000 3500 6400 3500
Wire Wire Line
	7300 5350 7300 5550
Connection ~ 7300 5450
Wire Wire Line
	7000 5050 7650 5050
Wire Wire Line
	7000 5050 7000 5600
Connection ~ 7300 5050
Wire Wire Line
	7000 5850 7650 5850
Connection ~ 7300 5850
Wire Wire Line
	6400 5700 7000 5700
Wire Wire Line
	7000 5700 7000 5850
Wire Wire Line
	7000 5600 6400 5600
Wire Wire Line
	1750 5500 1750 5400
Connection ~ 1750 3200
Wire Wire Line
	3650 3200 3650 2900
Wire Wire Line
	3650 2900 3500 2900
Wire Wire Line
	3650 3600 4200 3600
Wire Wire Line
	4950 2200 5850 2200
Wire Wire Line
	5850 2200 5850 2050
Wire Wire Line
	7050 2300 7050 2050
Wire Wire Line
	5000 2300 7050 2300
Wire Wire Line
	5850 4200 5850 3900
Wire Wire Line
	5850 3900 3650 3900
Wire Wire Line
	7050 6250 7050 5900
Wire Wire Line
	7050 5900 4400 5900
Wire Wire Line
	4400 5900 4400 4800
Wire Wire Line
	4400 4800 3650 4800
Wire Wire Line
	5850 5950 5850 6250
Wire Wire Line
	1800 1850 3900 1850
Connection ~ 3500 1850
Wire Wire Line
	3100 1550 2800 1550
Wire Wire Line
	1800 1850 1800 1650
Connection ~ 3100 1850
Wire Wire Line
	3650 4650 4200 4650
Wire Wire Line
	4700 4400 4800 4400
Wire Wire Line
	4700 4300 4800 4300
Wire Wire Line
	4800 4300 4800 3500
Wire Wire Line
	7100 5450 7300 5450
Wire Wire Line
	7300 3350 7100 3350
Wire Wire Line
	1750 3500 1750 3200
Wire Wire Line
	3650 5500 4950 5500
Wire Wire Line
	4950 5500 4950 2200
Wire Wire Line
	5850 5950 5100 5950
Wire Wire Line
	5100 5950 5100 3800
Wire Wire Line
	5100 3800 3650 3800
Wire Wire Line
	3650 4900 7050 4900
Wire Wire Line
	7050 4900 7050 4200
Wire Wire Line
	4200 4300 4150 4300
Wire Wire Line
	4150 4300 4150 3700
Wire Wire Line
	4150 3700 3650 3700
Wire Wire Line
	4200 3600 4200 4200
Wire Wire Line
	4200 4650 4200 4400
Wire Wire Line
	5000 2300 5000 5150
Wire Bus Line
	5200 1200 5200 5600
Wire Wire Line
	5300 3600 5500 3600
Wire Wire Line
	5300 3500 5500 3500
Wire Wire Line
	5300 5700 5500 5700
Wire Wire Line
	5300 5600 5500 5600
Wire Wire Line
	5300 1400 5500 1400
Wire Wire Line
	5300 1300 5500 1300
Wire Bus Line
	4050 3200 4050 5300
Wire Bus Line
	4050 3200 5200 3200
Wire Wire Line
	3650 5200 3700 5200
Wire Wire Line
	3700 5200 3700 5150
Wire Wire Line
	3700 5150 5000 5150
Wire Wire Line
	3650 5100 3950 5100
Wire Wire Line
	3650 5300 3950 5300
Wire Wire Line
	3650 5400 3950 5400
Wire Wire Line
	3650 3300 3950 3300
Wire Wire Line
	3650 3400 3950 3400
Text Label 3700 5400 0    60   ~ 0
M0F
Text Label 3700 5300 0    60   ~ 0
M0R
Text Label 3700 5100 0    60   ~ 0
M2R
Text Label 3700 3300 0    60   ~ 0
M1F
Text Label 3700 3400 0    60   ~ 0
M1R
Entry Wire Line
	3950 3500 4050 3400
Wire Wire Line
	4800 3500 3650 3500
Text Label 3700 3500 0    60   ~ 0
M2R
$Comp
L SPST SW_PWR1
U 1 1 576A4F51
P 2300 1550
F 0 "SW_PWR1" H 2300 1700 50  0000 C CNN
F 1 "Power_switch" H 2300 1450 50  0000 C CNN
F 2 "" H 2300 1550 50  0000 C CNN
F 3 "" H 2300 1550 50  0000 C CNN
	1    2300 1550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
