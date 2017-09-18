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
LIBS:afutub_amp-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "AfuTuB RF Amp"
Date "2017-05-05"
Rev "0.2"
Comp "AfuTuB"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Speaker LS1
U 1 1 590CA915
P 6600 3150
F 0 "LS1" H 6650 3375 50  0000 R CNN
F 1 "Speaker" H 6650 3300 50  0000 R CNN
F 2 "" H 6600 2950 50  0001 C CNN
F 3 "" H 6590 3100 50  0001 C CNN
	1    6600 3150
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 590CA970
P 6000 3650
F 0 "R2" V 6080 3650 50  0000 C CNN
F 1 "47" V 6000 3650 50  0000 C CNN
F 2 "" V 5930 3650 50  0001 C CNN
F 3 "" H 6000 3650 50  0001 C CNN
	1    6000 3650
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 590CA9BD
P 5700 4000
F 0 "R1" V 5780 4000 50  0000 C CNN
F 1 "22k" V 5700 4000 50  0000 C CNN
F 2 "" V 5630 4000 50  0001 C CNN
F 3 "" H 5700 4000 50  0001 C CNN
	1    5700 4000
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 590CAA12
P 5250 4350
F 0 "C1" H 5275 4450 50  0000 L CNN
F 1 "100n" H 5275 4250 50  0000 L CNN
F 2 "" H 5288 4200 50  0001 C CNN
F 3 "" H 5250 4350 50  0001 C CNN
	1    5250 4350
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_BEC Q1
U 1 1 590CAA67
P 5900 4350
F 0 "Q1" H 6100 4400 50  0000 L CNN
F 1 "Q_NPN_BEC" H 6100 4300 50  0000 L CNN
F 2 "" H 6100 4450 50  0001 C CNN
F 3 "" H 5900 4350 50  0001 C CNN
	1    5900 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 590CAAB6
P 6000 4750
F 0 "#PWR3" H 6000 4500 50  0001 C CNN
F 1 "GND" H 6000 4600 50  0000 C CNN
F 2 "" H 6000 4750 50  0001 C CNN
F 3 "" H 6000 4750 50  0001 C CNN
	1    6000 4750
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR2
U 1 1 590CAC9A
P 6000 2900
F 0 "#PWR2" H 6000 2750 50  0001 C CNN
F 1 "+6V" H 6000 3040 50  0000 C CNN
F 2 "" H 6000 2900 50  0001 C CNN
F 3 "" H 6000 2900 50  0001 C CNN
	1    6000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4350 5700 4350
Wire Wire Line
	6000 4150 6000 3800
Wire Wire Line
	6000 3500 6000 3250
Wire Wire Line
	6000 3250 6400 3250
Wire Wire Line
	6000 2900 6000 3150
Wire Wire Line
	6000 3150 6400 3150
Wire Wire Line
	5550 4000 5500 4000
Wire Wire Line
	5500 4000 5500 4350
Connection ~ 5500 4350
Wire Wire Line
	5850 4000 6000 4000
Connection ~ 6000 4000
Wire Wire Line
	6000 4550 6000 4750
$Comp
L CONN_01X02 J1
U 1 1 590CB014
P 4800 3100
F 0 "J1" H 4800 3250 50  0000 C CNN
F 1 "CONN_01X02" V 4900 3100 50  0000 C CNN
F 2 "" H 4800 3100 50  0001 C CNN
F 3 "" H 4800 3100 50  0001 C CNN
	1    4800 3100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR1
U 1 1 590CB05F
P 5200 3350
F 0 "#PWR1" H 5200 3100 50  0001 C CNN
F 1 "GND" H 5200 3200 50  0000 C CNN
F 2 "" H 5200 3350 50  0001 C CNN
F 3 "" H 5200 3350 50  0001 C CNN
	1    5200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3150 5200 3150
Wire Wire Line
	5200 3150 5200 3350
Text Label 5200 3050 0    60   ~ 0
SIG
Text Label 4800 4350 2    60   ~ 0
SIG
Wire Wire Line
	4800 4350 5100 4350
Wire Wire Line
	5000 3050 5200 3050
$EndSCHEMATC