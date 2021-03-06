EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6450 3650 2    50   Input ~ 0
BUTTON_PIN
$Comp
L Switch:SW_Push SW?
U 1 1 60596300
P 5500 4100
AR Path="/60596300" Ref="SW?"  Part="1" 
AR Path="/6058FDA0/60596300" Ref="SW6"  Part="1" 
F 0 "SW6" V 5550 4050 50  0000 R CNN
F 1 "BUTTON" V 5450 4050 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 5500 4300 50  0001 C CNN
F 3 "~" H 5500 4300 50  0001 C CNN
F 4 "SKRKAEE020" V 5500 4100 50  0001 C CNN "MFR.Part #"
F 5 "C115357" V 5500 4100 50  0001 C CNN "LCSC Part #"
F 6 "x" H 5500 4100 50  0001 C CNN "Extended Part"
	1    5500 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6059D173
P 5850 4400
AR Path="/60628872/6059D173" Ref="#PWR?"  Part="1" 
AR Path="/6067FDCF/6059D173" Ref="#PWR?"  Part="1" 
AR Path="/606B66E6/6059D173" Ref="#PWR?"  Part="1" 
AR Path="/6075A95B/6059D173" Ref="#PWR?"  Part="1" 
AR Path="/607910C2/6059D173" Ref="#PWR?"  Part="1" 
AR Path="/6058FDA0/6059D173" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 5850 4150 50  0001 C CNN
F 1 "GND" H 5850 4250 50  0000 C CNN
F 2 "" H 5850 4400 50  0001 C CNN
F 3 "" H 5850 4400 50  0001 C CNN
	1    5850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6059D1CD
P 5500 3400
AR Path="/60628872/6059D1CD" Ref="R?"  Part="1" 
AR Path="/6067FDCF/6059D1CD" Ref="R?"  Part="1" 
AR Path="/606B66E6/6059D1CD" Ref="R?"  Part="1" 
AR Path="/6075A95B/6059D1CD" Ref="R?"  Part="1" 
AR Path="/607910C2/6059D1CD" Ref="R?"  Part="1" 
AR Path="/6058FDA0/6059D1CD" Ref="R45"  Part="1" 
F 0 "R45" H 5600 3350 50  0000 L CNN
F 1 "10K" H 5600 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5430 3400 50  0001 C CNN
F 3 "~" H 5500 3400 50  0001 C CNN
F 4 "0402WGF1002TCE" H 5500 3400 50  0001 C CNN "MFR.Part #"
F 5 "C25744" H 5500 3400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 5500 3400 50  0001 C CNN "Extended Part"
	1    5500 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6059D1D6
P 6200 3950
AR Path="/60628872/6059D1D6" Ref="C?"  Part="1" 
AR Path="/6067FDCF/6059D1D6" Ref="C?"  Part="1" 
AR Path="/606B66E6/6059D1D6" Ref="C?"  Part="1" 
AR Path="/6075A95B/6059D1D6" Ref="C?"  Part="1" 
AR Path="/607910C2/6059D1D6" Ref="C?"  Part="1" 
AR Path="/6058FDA0/6059D1D6" Ref="C3"  Part="1" 
F 0 "C3" H 6292 3996 50  0000 L CNN
F 1 "100nF" H 6292 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6200 3950 50  0001 C CNN
F 3 "~" H 6200 3950 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 6200 3950 50  0001 C CNN "MFR.Part #"
F 5 "C1525" H 6200 3950 50  0001 C CNN "LCSC Part #"
F 6 "-" H 6200 3950 50  0001 C CNN "Extended Part"
	1    6200 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 3550 5500 3650
$Comp
L Device:R R?
U 1 1 6059D1E5
P 5750 3650
AR Path="/60628872/6059D1E5" Ref="R?"  Part="1" 
AR Path="/6067FDCF/6059D1E5" Ref="R?"  Part="1" 
AR Path="/606B66E6/6059D1E5" Ref="R?"  Part="1" 
AR Path="/6075A95B/6059D1E5" Ref="R?"  Part="1" 
AR Path="/607910C2/6059D1E5" Ref="R?"  Part="1" 
AR Path="/6058FDA0/6059D1E5" Ref="R46"  Part="1" 
F 0 "R46" V 5650 3650 50  0000 C CNN
F 1 "1K" V 5850 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5680 3650 50  0001 C CNN
F 3 "~" H 5750 3650 50  0001 C CNN
F 4 "0402WGF1001TCE" V 5750 3650 50  0001 C CNN "MFR.Part #"
F 5 "C11702" H 5750 3650 50  0001 C CNN "LCSC Part #"
F 6 "-" H 5750 3650 50  0001 C CNN "Extended Part"
	1    5750 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3650 5500 3650
Connection ~ 5500 3650
Wire Wire Line
	6200 3650 6200 3850
Wire Wire Line
	5500 3650 5500 3900
$Comp
L power:+3V3 #PWR?
U 1 1 6059D204
P 5500 3250
AR Path="/6059D204" Ref="#PWR?"  Part="1" 
AR Path="/60628872/6059D204" Ref="#PWR?"  Part="1" 
AR Path="/6075A95B/6059D204" Ref="#PWR?"  Part="1" 
AR Path="/607910C2/6059D204" Ref="#PWR?"  Part="1" 
AR Path="/6058FDA0/6059D204" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 5500 3100 50  0001 C CNN
F 1 "+3V3" H 5515 3423 50  0000 C CNN
F 2 "" H 5500 3250 50  0001 C CNN
F 3 "" H 5500 3250 50  0001 C CNN
	1    5500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4050 6200 4400
Wire Wire Line
	5500 4400 5500 4300
Wire Wire Line
	5900 3650 6200 3650
Connection ~ 5850 4400
Wire Wire Line
	5850 4400 6200 4400
Wire Wire Line
	5500 4400 5850 4400
Connection ~ 6200 3650
Wire Wire Line
	6200 3650 6450 3650
$EndSCHEMATC
