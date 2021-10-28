EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 7
Title "KLST_SHEEP"
Date "2021-05-01"
Rev "0.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 10150 5600 2    50   ~ 0
SIGNAL_IN_LEFT
Wire Wire Line
	12450 6000 12450 6050
Text Label 10100 1650 2    50   ~ 0
SIGNAL_HEADPHONE_LEFT
Text Label 10100 1750 2    50   ~ 0
SIGNAL_HEADPHONE_RIGHT
Wire Wire Line
	5000 3400 4900 3400
Wire Wire Line
	4900 3300 5000 3300
Wire Wire Line
	4900 3200 5000 3200
Wire Wire Line
	4900 3100 5000 3100
Wire Wire Line
	4900 3000 5000 3000
Wire Wire Line
	5000 3700 3350 3700
Wire Wire Line
	5000 3600 3750 3600
$Comp
L Device:R R14
U 1 1 61166F44
P 3750 3300
F 0 "R14" H 3820 3346 50  0000 L CNN
F 1 "2.2K" H 3820 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3680 3300 50  0001 C CNN
F 3 "~" H 3750 3300 50  0001 C CNN
F 4 "0402WGF2201TCE" H 3750 3300 50  0001 C CNN "MFR.Part #"
F 5 "C25879" H 3750 3300 50  0001 C CNN "LCSC Part #"
F 6 "-" H 3750 3300 50  0001 C CNN "Extended Part"
	1    3750 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61166F4A
P 3350 3300
F 0 "R13" H 3420 3346 50  0000 L CNN
F 1 "2.2K" H 3420 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3280 3300 50  0001 C CNN
F 3 "~" H 3350 3300 50  0001 C CNN
F 4 "0402WGF2201TCE" H 3350 3300 50  0001 C CNN "MFR.Part #"
F 5 "C25879" H 3350 3300 50  0001 C CNN "LCSC Part #"
F 6 "-" H 3350 3300 50  0001 C CNN "Extended Part"
	1    3350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3450 3750 3600
Connection ~ 3750 3600
Wire Wire Line
	3750 3600 3100 3600
Wire Wire Line
	3350 3450 3350 3700
Connection ~ 3350 3700
Wire Wire Line
	3350 3700 3100 3700
Wire Wire Line
	3350 3150 3350 3050
Wire Wire Line
	3350 3050 3550 3050
Wire Wire Line
	3750 3050 3750 3150
Wire Wire Line
	3550 3050 3550 2950
Connection ~ 3550 3050
Wire Wire Line
	3550 3050 3750 3050
Wire Wire Line
	5000 3800 4900 3800
Wire Wire Line
	4900 3900 5000 3900
NoConn ~ 5000 4100
Wire Wire Line
	5000 4200 4900 4200
Wire Wire Line
	6400 4400 6500 4400
Wire Wire Line
	6500 4400 6500 4800
Wire Wire Line
	6500 4800 6600 4800
Connection ~ 6500 4400
Wire Wire Line
	6500 4400 6600 4400
$Comp
L Device:C_Small C21
U 1 1 61166FB7
P 6700 4800
F 0 "C21" V 6800 4800 50  0000 C CNN
F 1 "100nF" V 6600 4800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6700 4800 50  0001 C CNN
F 3 "~" H 6700 4800 50  0001 C CNN
F 4 "CL05B104KO5NNNC" V 6700 4800 50  0001 C CNN "MFR.Part #"
F 5 "C1525" H 6700 4800 50  0001 C CNN "LCSC Part #"
F 6 "-" H 6700 4800 50  0001 C CNN "Extended Part"
	1    6700 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C20
U 1 1 61166FBD
P 6700 4400
F 0 "C20" V 6800 4400 50  0000 C CNN
F 1 "10uF" V 6600 4400 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 6700 4400 50  0001 C CNN
F 3 "~" H 6700 4400 50  0001 C CNN
F 4 "TAJA106K016RNJ" V 6700 4400 50  0001 C CNN "MFR.Part #"
F 5 "C7171" H 6700 4400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 6700 4400 50  0001 C CNN "Extended Part"
	1    6700 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 4800 6800 4800
Wire Wire Line
	6800 4400 6900 4400
Text Label 6500 3800 0    50   ~ 0
SIGNAL_IN_RIGHT
Text Label 6500 3700 0    50   ~ 0
SIGNAL_IN_LEFT
Text Label 6500 3500 0    50   ~ 0
SIGNAL_OUT_RIGHT
Text Label 6500 3400 0    50   ~ 0
SIGNAL_OUT_LEFT
Wire Wire Line
	6400 3400 6500 3400
Wire Wire Line
	6400 3500 6500 3500
Wire Wire Line
	6400 3700 6500 3700
Wire Wire Line
	6400 3800 6500 3800
$Comp
L power:GND #PWR?
U 1 1 61166FF5
P 6900 4900
AR Path="/61166FF5" Ref="#PWR?"  Part="1" 
AR Path="/610EB2BA/61166FF5" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 6900 4650 50  0001 C CNN
F 1 "GND" H 6905 4727 50  0000 C CNN
F 2 "" H 6900 4900 50  0001 C CNN
F 3 "" H 6900 4900 50  0001 C CNN
	1    6900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4900 6900 4800
Connection ~ 6900 4800
Wire Wire Line
	6900 4800 6900 4400
Text HLabel 4900 3000 0    50   Input ~ 0
AUDIOCODEC_I2S_SDO
Text HLabel 4900 3100 0    50   Input ~ 0
AUDIOCODEC_I2S_WS
Text HLabel 4900 3200 0    50   Input ~ 0
AUDIOCODEC_I2S_SDI
Text HLabel 4900 3300 0    50   Input ~ 0
AUDIOCODEC_I2S_WS
Text HLabel 4900 3400 0    50   Input ~ 0
AUDIOCODEC_I2S_CK
Text HLabel 4900 4200 0    50   Input ~ 0
AUDIOCODEC_I2S_MCK
Text HLabel 3100 3600 0    50   Input ~ 0
AUDIOCODEC_I2C_SDA
Text HLabel 3100 3700 0    50   Input ~ 0
AUDIOCODEC_I2C_SCL
$Comp
L Device:R R?
U 1 1 61D19BF4
P 11300 5200
AR Path="/61D19BF4" Ref="R?"  Part="1" 
AR Path="/61A71A52/61D19BF4" Ref="R?"  Part="1" 
AR Path="/610EB2BA/61D19BF4" Ref="R17"  Part="1" 
F 0 "R17" V 11200 5200 50  0000 C CNN
F 1 "5.6K" V 11400 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11230 5200 50  0001 C CNN
F 3 "~" H 11300 5200 50  0001 C CNN
F 4 "0805W8F5601T5E" V 11300 5200 50  0001 C CNN "MFR.Part #"
F 5 "C4382" H 11300 5200 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11300 5200 50  0001 C CNN "Extended Part"
	1    11300 5200
	0    -1   1    0   
$EndComp
Wire Wire Line
	11150 5200 11050 5200
Wire Wire Line
	11050 5200 11050 5300
Wire Wire Line
	11050 5200 10650 5200
Connection ~ 11050 5200
Wire Wire Line
	10650 5200 10650 5450
Wire Wire Line
	10650 5200 10550 5200
Connection ~ 10650 5200
$Comp
L Device:CP_Small C?
U 1 1 61D19C01
P 10450 5200
AR Path="/61D19C01" Ref="C?"  Part="1" 
AR Path="/61A71A52/61D19C01" Ref="C?"  Part="1" 
AR Path="/610EB2BA/61D19C01" Ref="C22"  Part="1" 
F 0 "C22" V 10350 5200 50  0000 C CNN
F 1 "1uF" V 10550 5200 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 10450 5200 50  0001 C CNN
F 3 "~" H 10450 5200 50  0001 C CNN
F 4 "TAJA105K025RNJ" V 10450 5200 50  0001 C CNN "MFR.Part #"
F 5 "x" H 10450 5200 50  0001 C CNN "Extended Part"
F 6 "C7175" H 10450 5200 50  0001 C CNN "LCSC Part #"
	1    10450 5200
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61D19C07
P 10650 5550
AR Path="/61D19C07" Ref="C?"  Part="1" 
AR Path="/61A71A52/61D19C07" Ref="C?"  Part="1" 
AR Path="/610EB2BA/61D19C07" Ref="C23"  Part="1" 
F 0 "C23" H 10550 5500 50  0000 R CNN
F 1 "220pF" H 10550 5600 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10650 5550 50  0001 C CNN
F 3 "~" H 10650 5550 50  0001 C CNN
F 4 "CL21B221KBANNNC" H 10650 5550 50  0001 C CNN "MFR.Part #"
F 5 "C53172" H 10650 5550 50  0001 C CNN "LCSC Part #"
F 6 "-" H 10650 5550 50  0001 C CNN "Extended Part"
	1    10650 5550
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61D19C0D
P 11050 5450
AR Path="/61D19C0D" Ref="R?"  Part="1" 
AR Path="/61A71A52/61D19C0D" Ref="R?"  Part="1" 
AR Path="/610EB2BA/61D19C0D" Ref="R18"  Part="1" 
F 0 "R18" H 11120 5496 50  0000 L CNN
F 1 "5.6K" H 11120 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10980 5450 50  0001 C CNN
F 3 "~" H 11050 5450 50  0001 C CNN
F 4 "0805W8F5601T5E" H 11050 5450 50  0001 C CNN "MFR.Part #"
F 5 "C4382" H 11050 5450 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11050 5450 50  0001 C CNN "Extended Part"
	1    11050 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11050 5600 11050 5700
Wire Wire Line
	10650 5650 10650 5700
Wire Wire Line
	10350 5200 10250 5200
$Comp
L Device:R R?
U 1 1 61D56CCB
P 11300 6150
AR Path="/61D56CCB" Ref="R?"  Part="1" 
AR Path="/61A71A52/61D56CCB" Ref="R?"  Part="1" 
AR Path="/610EB2BA/61D56CCB" Ref="R19"  Part="1" 
F 0 "R19" V 11200 6150 50  0000 C CNN
F 1 "5.6K" V 11400 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11230 6150 50  0001 C CNN
F 3 "~" H 11300 6150 50  0001 C CNN
F 4 "0805W8F5601T5E" V 11300 6150 50  0001 C CNN "MFR.Part #"
F 5 "C4382" H 11300 6150 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11300 6150 50  0001 C CNN "Extended Part"
	1    11300 6150
	0    -1   1    0   
$EndComp
Wire Wire Line
	11150 6150 11050 6150
Wire Wire Line
	11050 6150 11050 6250
Wire Wire Line
	11050 6150 10650 6150
Connection ~ 11050 6150
Wire Wire Line
	10650 6150 10650 6400
Wire Wire Line
	10650 6150 10550 6150
Connection ~ 10650 6150
$Comp
L Device:CP_Small C?
U 1 1 61D56CE8
P 10450 6150
AR Path="/61D56CE8" Ref="C?"  Part="1" 
AR Path="/61A71A52/61D56CE8" Ref="C?"  Part="1" 
AR Path="/610EB2BA/61D56CE8" Ref="C24"  Part="1" 
F 0 "C24" V 10350 6150 50  0000 C CNN
F 1 "1uF" V 10550 6150 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 10450 6150 50  0001 C CNN
F 3 "~" H 10450 6150 50  0001 C CNN
F 4 "TAJA105K025RNJ" V 10450 6150 50  0001 C CNN "MFR.Part #"
F 5 "x" H 10450 6150 50  0001 C CNN "Extended Part"
F 6 "C7175" H 10450 6150 50  0001 C CNN "LCSC Part #"
	1    10450 6150
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61D56D04
P 10650 6500
AR Path="/61D56D04" Ref="C?"  Part="1" 
AR Path="/61A71A52/61D56D04" Ref="C?"  Part="1" 
AR Path="/610EB2BA/61D56D04" Ref="C25"  Part="1" 
F 0 "C25" H 10550 6450 50  0000 R CNN
F 1 "220pF" H 10550 6550 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10650 6500 50  0001 C CNN
F 3 "~" H 10650 6500 50  0001 C CNN
F 4 "CL21B221KBANNNC" H 10650 6500 50  0001 C CNN "MFR.Part #"
F 5 "C53172" H 10650 6500 50  0001 C CNN "LCSC Part #"
F 6 "-" H 10650 6500 50  0001 C CNN "Extended Part"
	1    10650 6500
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61D56D1C
P 11050 6400
AR Path="/61D56D1C" Ref="R?"  Part="1" 
AR Path="/61A71A52/61D56D1C" Ref="R?"  Part="1" 
AR Path="/610EB2BA/61D56D1C" Ref="R20"  Part="1" 
F 0 "R20" H 11120 6446 50  0000 L CNN
F 1 "5.6K" H 11120 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10980 6400 50  0001 C CNN
F 3 "~" H 11050 6400 50  0001 C CNN
F 4 "0805W8F5601T5E" H 11050 6400 50  0001 C CNN "MFR.Part #"
F 5 "C4382" H 11050 6400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11050 6400 50  0001 C CNN "Extended Part"
	1    11050 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11050 6550 11050 6650
Wire Wire Line
	10650 6600 10650 6650
Wire Wire Line
	10350 6150 10250 6150
Text Label 10150 5700 2    50   ~ 0
SIGNAL_IN_RIGHT
Text Label 6500 3100 0    50   ~ 0
SIGNAL_HEADPHONE_LEFT
Text Label 6500 3200 0    50   ~ 0
SIGNAL_HEADPHONE_RIGHT
Wire Wire Line
	6400 3100 6500 3100
Wire Wire Line
	6400 3200 6500 3200
$Comp
L Device:CP_Small C?
U 1 1 61DE95D6
P 10850 1250
AR Path="/61DE95D6" Ref="C?"  Part="1" 
AR Path="/61A71A52/61DE95D6" Ref="C?"  Part="1" 
AR Path="/610EB2BA/61DE95D6" Ref="C16"  Part="1" 
F 0 "C16" V 10750 1250 50  0000 C CNN
F 1 "220uF" V 10950 1250 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 10850 1250 50  0001 C CNN
F 3 "~" H 10850 1250 50  0001 C CNN
F 4 "RVT1A221M0605" V 10850 1250 50  0001 C CNN "MFR.Part #"
F 5 "x" H 10850 1250 50  0001 C CNN "Extended Part"
F 6 "C3345" H 10850 1250 50  0001 C CNN "LCSC Part #"
	1    10850 1250
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61DF712D
P 11100 1450
AR Path="/61DF712D" Ref="R?"  Part="1" 
AR Path="/61A71A52/61DF712D" Ref="R?"  Part="1" 
AR Path="/610EB2BA/61DF712D" Ref="R10"  Part="1" 
F 0 "R10" H 11170 1496 50  0000 L CNN
F 1 "47K" H 11170 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11030 1450 50  0001 C CNN
F 3 "~" H 11100 1450 50  0001 C CNN
F 4 "0805W8F4702T5E" H 11100 1450 50  0001 C CNN "MFR.Part #"
F 5 "C17713" H 11100 1450 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11100 1450 50  0001 C CNN "Extended Part"
	1    11100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 1650 11100 1600
Wire Wire Line
	10950 1250 11100 1250
Wire Wire Line
	11100 1250 11100 1300
Text Notes 11100 1100 2    50   ~ 0
10V electrolytic
Text Label 11900 1650 0    50   ~ 0
HEADPHONE_LEFT
Text Label 11900 1850 0    50   ~ 0
HEADPHONE_RIGHT
Connection ~ 11100 1250
$Comp
L Device:CP_Small C?
U 1 1 61E0F499
P 10850 2150
AR Path="/61E0F499" Ref="C?"  Part="1" 
AR Path="/61A71A52/61E0F499" Ref="C?"  Part="1" 
AR Path="/610EB2BA/61E0F499" Ref="C17"  Part="1" 
F 0 "C17" V 10750 2150 50  0000 C CNN
F 1 "220uF" V 10950 2150 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 10850 2150 50  0001 C CNN
F 3 "~" H 10850 2150 50  0001 C CNN
F 4 "RVT1A221M0605" V 10850 2150 50  0001 C CNN "MFR.Part #"
F 5 "x" H 10850 2150 50  0001 C CNN "Extended Part"
F 6 "C3345" H 10850 2150 50  0001 C CNN "LCSC Part #"
	1    10850 2150
	0    -1   1    0   
$EndComp
Wire Wire Line
	10250 2150 10750 2150
$Comp
L Device:R R?
U 1 1 61E0F4B6
P 11100 2400
AR Path="/61E0F4B6" Ref="R?"  Part="1" 
AR Path="/61A71A52/61E0F4B6" Ref="R?"  Part="1" 
AR Path="/610EB2BA/61E0F4B6" Ref="R11"  Part="1" 
F 0 "R11" H 11170 2446 50  0000 L CNN
F 1 "47K" H 11170 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11030 2400 50  0001 C CNN
F 3 "~" H 11100 2400 50  0001 C CNN
F 4 "0805W8F4702T5E" H 11100 2400 50  0001 C CNN "MFR.Part #"
F 5 "C17713" H 11100 2400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11100 2400 50  0001 C CNN "Extended Part"
	1    11100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 2600 11100 2550
Wire Wire Line
	10950 2150 11100 2150
Wire Wire Line
	11100 2150 11100 2250
Text Notes 11100 2000 2    50   ~ 0
10V electrolytic
Connection ~ 11100 2150
Text Notes 4500 3900 2    50   ~ 0
MODE=0 > SOFTWARE_CONTROL_INTERFACE = 2-WIRE
Text Label 5500 2800 1    50   ~ 0
DCVDD
Text Label 5600 2800 1    50   ~ 0
DBVDD
Text Label 5900 2800 1    50   ~ 0
HPVDD
Text Label 3350 8000 2    50   ~ 0
HPVDD
Text Label 5800 2800 1    50   ~ 0
AVDD
Text Label 4350 8000 2    50   ~ 0
AVDD
Text Label 6700 8000 2    50   ~ 0
DBVDD
Wire Wire Line
	5800 4600 5800 4750
Wire Wire Line
	5900 4600 5900 4750
Wire Wire Line
	5500 4600 5500 4750
$Comp
L power:GNDA #PWR041
U 1 1 61FB7176
P 11100 1650
F 0 "#PWR041" H 11100 1400 50  0001 C CNN
F 1 "GNDA" H 11105 1477 50  0000 C CNN
F 2 "" H 11100 1650 50  0001 C CNN
F 3 "" H 11100 1650 50  0001 C CNN
	1    11100 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR042
U 1 1 61FB7DD4
P 11100 2600
F 0 "#PWR042" H 11100 2350 50  0001 C CNN
F 1 "GNDA" H 11100 2450 50  0000 C CNN
F 2 "" H 11100 2600 50  0001 C CNN
F 3 "" H 11100 2600 50  0001 C CNN
	1    11100 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR049
U 1 1 61FB9C6A
P 12450 6050
F 0 "#PWR049" H 12450 5800 50  0001 C CNN
F 1 "GNDA" H 12455 5877 50  0000 C CNN
F 2 "" H 12450 6050 50  0001 C CNN
F 3 "" H 12450 6050 50  0001 C CNN
	1    12450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 5700 10650 5700
Wire Wire Line
	11050 6650 10650 6650
Wire Wire Line
	10650 5700 10650 5750
Connection ~ 10650 5700
Wire Wire Line
	10650 6650 10650 6700
Connection ~ 10650 6650
$Comp
L power:GNDA #PWR048
U 1 1 61FC94E8
P 10650 5750
F 0 "#PWR048" H 10650 5500 50  0001 C CNN
F 1 "GNDA" H 10655 5577 50  0000 C CNN
F 2 "" H 10650 5750 50  0001 C CNN
F 3 "" H 10650 5750 50  0001 C CNN
	1    10650 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR050
U 1 1 61FC9839
P 10650 6700
F 0 "#PWR050" H 10650 6450 50  0001 C CNN
F 1 "GNDA" H 10650 6550 50  0000 C CNN
F 2 "" H 10650 6700 50  0001 C CNN
F 3 "" H 10650 6700 50  0001 C CNN
	1    10650 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 1250 11750 1650
Wire Wire Line
	11100 1250 11750 1250
Wire Wire Line
	11750 1850 11750 2150
Wire Wire Line
	11100 2150 11750 2150
Wire Wire Line
	11750 5200 11750 5600
Wire Wire Line
	11450 5200 11750 5200
Wire Wire Line
	11750 5800 11750 6150
Wire Wire Line
	11450 6150 11750 6150
Wire Wire Line
	10250 5600 10250 5200
Wire Wire Line
	10250 5700 10250 6150
Wire Wire Line
	10150 5600 10250 5600
Wire Wire Line
	10250 5700 10150 5700
Wire Wire Line
	10250 1250 10750 1250
Wire Wire Line
	10100 1650 10250 1650
Wire Wire Line
	10250 1650 10250 1250
Wire Wire Line
	10100 1750 10250 1750
Wire Wire Line
	10250 1750 10250 2150
$Comp
L power:GND #PWR045
U 1 1 627D7238
P 4800 3900
F 0 "#PWR045" H 4800 3650 50  0001 C CNN
F 1 "GND" H 4805 3727 50  0000 C CNN
F 2 "" H 4800 3900 50  0001 C CNN
F 3 "" H 4800 3900 50  0001 C CNN
	1    4800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3800 4900 3900
Text Label 5700 8000 2    50   ~ 0
DCVDD
Wire Wire Line
	6050 8150 5950 8150
Wire Wire Line
	5850 8150 5850 8300
$Comp
L Device:CP_Small C33
U 1 1 60260EF9
P 6050 8400
F 0 "C33" H 6138 8446 50  0000 L CNN
F 1 "10uF" H 6138 8355 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 6050 8400 50  0001 C CNN
F 3 "~" H 6050 8400 50  0001 C CNN
F 4 "TAJA106K016RNJ" H 6050 8400 50  0001 C CNN "MFR.Part #"
F 5 "C7171" H 6050 8400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 6050 8400 50  0001 C CNN "Extended Part"
	1    6050 8400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C32
U 1 1 60263690
P 5850 8400
F 0 "C32" H 5759 8354 50  0000 R CNN
F 1 "100nF" H 5759 8445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5850 8400 50  0001 C CNN
F 3 "~" H 5850 8400 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 5850 8400 50  0001 C CNN "MFR.Part #"
F 5 "C1525" H 5850 8400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 5850 8400 50  0001 C CNN "Extended Part"
	1    5850 8400
	1    0    0    1   
$EndComp
Wire Wire Line
	6050 8150 6050 8300
Wire Wire Line
	5950 8150 5950 8000
Connection ~ 5950 8150
Wire Wire Line
	5950 8150 5850 8150
Wire Wire Line
	5950 8650 5850 8650
Wire Wire Line
	5850 8650 5850 8500
Wire Wire Line
	5950 8650 6050 8650
Wire Wire Line
	6050 8650 6050 8500
Connection ~ 5950 8650
Wire Wire Line
	5700 8000 5950 8000
Connection ~ 5950 8000
Wire Wire Line
	5950 8000 5950 7850
Wire Wire Line
	7050 8150 6950 8150
Wire Wire Line
	6850 8150 6850 8300
$Comp
L Device:CP_Small C35
U 1 1 602971EB
P 7050 8400
F 0 "C35" H 7138 8446 50  0000 L CNN
F 1 "10uF" H 7138 8355 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 7050 8400 50  0001 C CNN
F 3 "~" H 7050 8400 50  0001 C CNN
F 4 "TAJA106K016RNJ" H 7050 8400 50  0001 C CNN "MFR.Part #"
F 5 "C7171" H 7050 8400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 7050 8400 50  0001 C CNN "Extended Part"
	1    7050 8400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C34
U 1 1 602971F1
P 6850 8400
F 0 "C34" H 6759 8354 50  0000 R CNN
F 1 "100nF" H 6759 8445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6850 8400 50  0001 C CNN
F 3 "~" H 6850 8400 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 6850 8400 50  0001 C CNN "MFR.Part #"
F 5 "C1525" H 6850 8400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 6850 8400 50  0001 C CNN "Extended Part"
	1    6850 8400
	1    0    0    1   
$EndComp
Wire Wire Line
	7050 8150 7050 8300
Wire Wire Line
	6950 8150 6950 8000
Connection ~ 6950 8150
Wire Wire Line
	6950 8150 6850 8150
Wire Wire Line
	6950 8650 6850 8650
Wire Wire Line
	6850 8650 6850 8500
Wire Wire Line
	6950 8650 7050 8650
Wire Wire Line
	7050 8650 7050 8500
Connection ~ 6950 8650
Wire Wire Line
	6700 8000 6950 8000
Connection ~ 6950 8000
Wire Wire Line
	6950 8000 6950 7850
Text Label 5500 4750 3    50   ~ 0
DGND
Text Label 5700 8800 2    50   ~ 0
DGND
Wire Wire Line
	5950 8650 5950 8800
Text Label 6700 8800 2    50   ~ 0
DGND
Wire Wire Line
	6950 8650 6950 8800
Text Label 5800 4750 3    50   ~ 0
AGND
Text Label 5900 4750 3    50   ~ 0
HPGND
Text Label 3350 8800 2    50   ~ 0
HPGND
Text Label 4350 8800 2    50   ~ 0
AGND
Wire Wire Line
	3700 8150 3600 8150
Wire Wire Line
	3500 8150 3500 8300
$Comp
L Device:CP_Small C29
U 1 1 602D33AE
P 3700 8400
F 0 "C29" H 3788 8446 50  0000 L CNN
F 1 "10uF" H 3788 8355 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 3700 8400 50  0001 C CNN
F 3 "~" H 3700 8400 50  0001 C CNN
F 4 "TAJA106K016RNJ" H 3700 8400 50  0001 C CNN "MFR.Part #"
F 5 "C7171" H 3700 8400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 3700 8400 50  0001 C CNN "Extended Part"
	1    3700 8400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C28
U 1 1 602D33B4
P 3500 8400
F 0 "C28" H 3409 8354 50  0000 R CNN
F 1 "100nF" H 3409 8445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3500 8400 50  0001 C CNN
F 3 "~" H 3500 8400 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 3500 8400 50  0001 C CNN "MFR.Part #"
F 5 "C1525" H 3500 8400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 3500 8400 50  0001 C CNN "Extended Part"
	1    3500 8400
	1    0    0    1   
$EndComp
Wire Wire Line
	3700 8150 3700 8300
Wire Wire Line
	3600 8150 3600 8000
Connection ~ 3600 8150
Wire Wire Line
	3600 8150 3500 8150
Wire Wire Line
	3600 8650 3500 8650
Wire Wire Line
	3500 8650 3500 8500
Wire Wire Line
	3600 8650 3700 8650
Wire Wire Line
	3700 8650 3700 8500
Connection ~ 3600 8650
Wire Wire Line
	3350 8000 3600 8000
Wire Wire Line
	3600 8650 3600 8800
Wire Wire Line
	5700 8800 5950 8800
Connection ~ 5950 8800
Wire Wire Line
	6700 8800 6950 8800
Connection ~ 6950 8800
Wire Wire Line
	3350 8800 3600 8800
Connection ~ 3600 8800
Wire Wire Line
	4700 8150 4600 8150
Wire Wire Line
	4500 8150 4500 8300
$Comp
L Device:CP_Small C31
U 1 1 60304C4E
P 4700 8400
F 0 "C31" H 4788 8446 50  0000 L CNN
F 1 "10uF" H 4788 8355 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 4700 8400 50  0001 C CNN
F 3 "~" H 4700 8400 50  0001 C CNN
F 4 "TAJA106K016RNJ" H 4700 8400 50  0001 C CNN "MFR.Part #"
F 5 "C7171" H 4700 8400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 4700 8400 50  0001 C CNN "Extended Part"
	1    4700 8400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C30
U 1 1 60304C54
P 4500 8400
F 0 "C30" H 4409 8354 50  0000 R CNN
F 1 "100nF" H 4409 8445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4500 8400 50  0001 C CNN
F 3 "~" H 4500 8400 50  0001 C CNN
F 4 "CL05B104KO5NNNC" H 4500 8400 50  0001 C CNN "MFR.Part #"
F 5 "C1525" H 4500 8400 50  0001 C CNN "LCSC Part #"
F 6 "-" H 4500 8400 50  0001 C CNN "Extended Part"
	1    4500 8400
	1    0    0    1   
$EndComp
Wire Wire Line
	4700 8150 4700 8300
Wire Wire Line
	4600 8150 4600 8000
Connection ~ 4600 8150
Wire Wire Line
	4600 8150 4500 8150
Wire Wire Line
	4600 8650 4500 8650
Wire Wire Line
	4500 8650 4500 8500
Wire Wire Line
	4600 8650 4700 8650
Wire Wire Line
	4700 8650 4700 8500
Connection ~ 4600 8650
Wire Wire Line
	4350 8000 4600 8000
Connection ~ 4600 8000
Wire Wire Line
	4600 8650 4600 8800
Wire Wire Line
	4350 8800 4600 8800
Connection ~ 4600 8800
Wire Wire Line
	4600 8000 4600 7850
Wire Wire Line
	5950 8800 5950 8950
Wire Wire Line
	6950 8800 6950 8950
$Comp
L power:GNDA #PWR?
U 1 1 6039810C
P 4100 9000
AR Path="/6039810C" Ref="#PWR?"  Part="1" 
AR Path="/610EB2BA/6039810C" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 4100 8750 50  0001 C CNN
F 1 "GNDA" H 4100 8850 50  0000 C CNN
F 2 "" H 4100 9000 50  0001 C CNN
F 3 "" H 4100 9000 50  0001 C CNN
	1    4100 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 8800 4600 8950
NoConn ~ 5000 4300
Wire Wire Line
	4900 3900 4800 3900
Connection ~ 4900 3900
Wire Wire Line
	11750 5600 12650 5600
Wire Wire Line
	11750 1650 11900 1650
Wire Wire Line
	12450 6000 12650 6000
NoConn ~ 12650 5500
NoConn ~ 12650 5700
$Comp
L power:+3V3 #PWR?
U 1 1 61599AE2
P 3550 2950
AR Path="/61599AE2" Ref="#PWR?"  Part="1" 
AR Path="/610EB2BA/61599AE2" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 3550 2800 50  0001 C CNN
F 1 "+3V3" H 3565 3123 50  0000 C CNN
F 2 "" H 3550 2950 50  0001 C CNN
F 3 "" H 3550 2950 50  0001 C CNN
	1    3550 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 615AA6F5
P 6450 7800
AR Path="/615AA6F5" Ref="#PWR?"  Part="1" 
AR Path="/610EB2BA/615AA6F5" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 6450 7650 50  0001 C CNN
F 1 "+3V3" H 6450 7950 50  0000 C CNN
F 2 "" H 6450 7800 50  0001 C CNN
F 3 "" H 6450 7800 50  0001 C CNN
	1    6450 7800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 61738AF7
P 4100 7800
AR Path="/61738AF7" Ref="#PWR?"  Part="1" 
AR Path="/610EB2BA/61738AF7" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 4100 7650 50  0001 C CNN
F 1 "+3.3VA" H 4100 7950 50  0000 C CNN
F 2 "" H 4100 7800 50  0001 C CNN
F 3 "" H 4100 7800 50  0001 C CNN
	1    4100 7800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 602971FB
P 6450 9000
F 0 "#PWR057" H 6450 8750 50  0001 C CNN
F 1 "GND" H 6450 8850 50  0000 C CNN
F 2 "" H 6450 9000 50  0001 C CNN
F 3 "" H 6450 9000 50  0001 C CNN
	1    6450 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 8800 3600 8950
Wire Wire Line
	5950 7850 6450 7850
Wire Wire Line
	5950 8950 6450 8950
Wire Wire Line
	6450 9000 6450 8950
Connection ~ 6450 8950
Wire Wire Line
	6450 8950 6950 8950
Wire Wire Line
	6450 7800 6450 7850
Connection ~ 6450 7850
Wire Wire Line
	6450 7850 6950 7850
Wire Wire Line
	3600 8000 3600 7850
Wire Wire Line
	3600 7850 4100 7850
Wire Wire Line
	4100 7800 4100 7850
Connection ~ 4100 7850
Wire Wire Line
	4100 7850 4600 7850
Connection ~ 3600 8000
Wire Wire Line
	3600 8950 4100 8950
Wire Wire Line
	4100 9000 4100 8950
Connection ~ 4100 8950
Wire Wire Line
	4100 8950 4600 8950
Text Label 10150 8250 2    50   ~ 0
SIGNAL_OUT_RIGHT
Text Label 10150 8150 2    50   ~ 0
SIGNAL_OUT_LEFT
$Comp
L Device:CP_Small C?
U 1 1 60C8E74C
P 10450 7600
AR Path="/60C8E74C" Ref="C?"  Part="1" 
AR Path="/61A71A52/60C8E74C" Ref="C?"  Part="1" 
AR Path="/610EB2BA/60C8E74C" Ref="C26"  Part="1" 
F 0 "C26" V 10350 7600 50  0000 C CNN
F 1 "1uF" V 10550 7600 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 10450 7600 50  0001 C CNN
F 3 "~" H 10450 7600 50  0001 C CNN
F 4 "TAJA105K025RNJ" V 10450 7600 50  0001 C CNN "MFR.Part #"
F 5 "x" H 10450 7600 50  0001 C CNN "Extended Part"
F 6 "C7175" H 10450 7600 50  0001 C CNN "LCSC Part #"
	1    10450 7600
	0    -1   1    0   
$EndComp
Wire Wire Line
	10150 8150 10250 8150
Wire Wire Line
	10250 8150 10250 7600
Wire Wire Line
	10250 7600 10350 7600
$Comp
L Device:R R?
U 1 1 60CA0275
P 11300 7600
AR Path="/60CA0275" Ref="R?"  Part="1" 
AR Path="/61A71A52/60CA0275" Ref="R?"  Part="1" 
AR Path="/610EB2BA/60CA0275" Ref="R21"  Part="1" 
F 0 "R21" V 11200 7600 50  0000 C CNN
F 1 "100R" V 11400 7600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11230 7600 50  0001 C CNN
F 3 "~" H 11300 7600 50  0001 C CNN
F 4 "0805W8F1000T5E" V 11300 7600 50  0001 C CNN "MFR.Part #"
F 5 "C17408" H 11300 7600 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11300 7600 50  0001 C CNN "Extended Part"
	1    11300 7600
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60CA0B22
P 10850 7800
AR Path="/60CA0B22" Ref="R?"  Part="1" 
AR Path="/61A71A52/60CA0B22" Ref="R?"  Part="1" 
AR Path="/610EB2BA/60CA0B22" Ref="R22"  Part="1" 
F 0 "R22" H 10920 7846 50  0000 L CNN
F 1 "47K" H 10920 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10780 7800 50  0001 C CNN
F 3 "~" H 10850 7800 50  0001 C CNN
F 4 "0805W8F4702T5E" H 10850 7800 50  0001 C CNN "MFR.Part #"
F 5 "C17713" H 10850 7800 50  0001 C CNN "LCSC Part #"
F 6 "-" H 10850 7800 50  0001 C CNN "Extended Part"
	1    10850 7800
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR053
U 1 1 60CA0F66
P 10850 7950
F 0 "#PWR053" H 10850 7700 50  0001 C CNN
F 1 "GNDA" H 10855 7777 50  0000 C CNN
F 2 "" H 10850 7950 50  0001 C CNN
F 3 "" H 10850 7950 50  0001 C CNN
	1    10850 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 8150 12650 8150
Wire Wire Line
	12450 8550 12650 8550
NoConn ~ 12650 8050
NoConn ~ 12650 8250
Wire Wire Line
	11750 8150 11750 7600
Wire Wire Line
	11750 7600 11450 7600
Wire Wire Line
	11150 7600 10850 7600
Wire Wire Line
	10850 7650 10850 7600
Connection ~ 10850 7600
Wire Wire Line
	10850 7600 10550 7600
$Comp
L power:GNDA #PWR054
U 1 1 60CC3B2E
P 12450 8600
F 0 "#PWR054" H 12450 8350 50  0001 C CNN
F 1 "GNDA" H 12455 8427 50  0000 C CNN
F 2 "" H 12450 8600 50  0001 C CNN
F 3 "" H 12450 8600 50  0001 C CNN
	1    12450 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 8550 12450 8600
$Comp
L Device:CP_Small C?
U 1 1 60CD7E07
P 10450 8350
AR Path="/60CD7E07" Ref="C?"  Part="1" 
AR Path="/61A71A52/60CD7E07" Ref="C?"  Part="1" 
AR Path="/610EB2BA/60CD7E07" Ref="C27"  Part="1" 
F 0 "C27" V 10350 8350 50  0000 C CNN
F 1 "1uF" V 10550 8350 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 10450 8350 50  0001 C CNN
F 3 "~" H 10450 8350 50  0001 C CNN
F 4 "TAJA105K025RNJ" V 10450 8350 50  0001 C CNN "MFR.Part #"
F 5 "x" H 10450 8350 50  0001 C CNN "Extended Part"
F 6 "C7175" H 10450 8350 50  0001 C CNN "LCSC Part #"
	1    10450 8350
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60CD8035
P 10850 8550
AR Path="/60CD8035" Ref="R?"  Part="1" 
AR Path="/61A71A52/60CD8035" Ref="R?"  Part="1" 
AR Path="/610EB2BA/60CD8035" Ref="R24"  Part="1" 
F 0 "R24" H 10920 8596 50  0000 L CNN
F 1 "47K" H 10920 8505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10780 8550 50  0001 C CNN
F 3 "~" H 10850 8550 50  0001 C CNN
F 4 "0805W8F4702T5E" H 10850 8550 50  0001 C CNN "MFR.Part #"
F 5 "C17713" H 10850 8550 50  0001 C CNN "LCSC Part #"
F 6 "-" H 10850 8550 50  0001 C CNN "Extended Part"
	1    10850 8550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60CE1078
P 11300 8350
AR Path="/60CE1078" Ref="R?"  Part="1" 
AR Path="/61A71A52/60CE1078" Ref="R?"  Part="1" 
AR Path="/610EB2BA/60CE1078" Ref="R23"  Part="1" 
F 0 "R23" V 11200 8350 50  0000 C CNN
F 1 "100R" V 11400 8350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11230 8350 50  0001 C CNN
F 3 "~" H 11300 8350 50  0001 C CNN
F 4 "0805W8F1000T5E" V 11300 8350 50  0001 C CNN "MFR.Part #"
F 5 "C17408" H 11300 8350 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11300 8350 50  0001 C CNN "Extended Part"
	1    11300 8350
	0    -1   1    0   
$EndComp
Wire Wire Line
	11150 8350 10850 8350
Wire Wire Line
	10850 8400 10850 8350
Connection ~ 10850 8350
Wire Wire Line
	10850 8350 10550 8350
$Comp
L power:GNDA #PWR055
U 1 1 60CFD2A5
P 10850 8700
F 0 "#PWR055" H 10850 8450 50  0001 C CNN
F 1 "GNDA" H 10855 8527 50  0000 C CNN
F 2 "" H 10850 8700 50  0001 C CNN
F 3 "" H 10850 8700 50  0001 C CNN
	1    10850 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 8250 10250 8250
Wire Wire Line
	10250 8250 10250 8350
Wire Wire Line
	10250 8350 10350 8350
Wire Wire Line
	11450 8350 12650 8350
Wire Wire Line
	11750 5800 12650 5800
Wire Wire Line
	11750 1850 11900 1850
Text Label 12500 5800 2    50   ~ 0
LINE_IN_RIGHT
Text Label 12500 5600 2    50   ~ 0
LINE_IN_LEFT
Text Label 6500 4200 0    50   ~ 0
SIGNAL_MIC_IN
$Comp
L Audio:WM8731SEDS U?
U 1 1 61166F13
P 5700 3700
AR Path="/61166F13" Ref="U?"  Part="1" 
AR Path="/610EB2BA/61166F13" Ref="U3"  Part="1" 
F 0 "U3" H 5700 3700 50  0000 C CNN
F 1 "WM8731SEDS" H 5700 3600 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 5700 2400 50  0001 C CNN
F 3 "https://statics.cirrus.com/pubs/proDatasheet/WM8731_v4.9.pdf" H 5700 3700 50  0001 C CNN
F 4 "WM8731SEDS/RV" H 5700 3700 50  0001 C CNN "MFR.Part #"
F 5 "x" H 5700 3700 50  0001 C CNN "Extended Part"
F 6 "C323837" H 5700 3700 50  0001 C CNN "LCSC Part #"
	1    5700 3700
	1    0    0    -1  
$EndComp
Text Label 6500 4000 0    50   ~ 0
SIGNAL_MIC_BIAS
Wire Wire Line
	6500 4000 6400 4000
Wire Wire Line
	6400 4200 6500 4200
Text Label 10100 3450 2    50   ~ 0
SIGNAL_MIC_IN
Text Label 10100 3350 2    50   ~ 0
SIGNAL_MIC_BIAS
$Comp
L Device:R R?
U 1 1 605904BA
P 10800 3200
AR Path="/605904BA" Ref="R?"  Part="1" 
AR Path="/61A71A52/605904BA" Ref="R?"  Part="1" 
AR Path="/610EB2BA/605904BA" Ref="R12"  Part="1" 
F 0 "R12" V 10700 3200 50  0000 C CNN
F 1 "680R" V 10900 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10730 3200 50  0001 C CNN
F 3 "~" H 10800 3200 50  0001 C CNN
F 4 "0805W8F6800T5E" V 10800 3200 50  0001 C CNN "MFR.Part #"
F 5 "C17798" H 10800 3200 50  0001 C CNN "LCSC Part #"
F 6 "-" H 10800 3200 50  0001 C CNN "Extended Part"
	1    10800 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 3350 10250 3350
Wire Wire Line
	10250 3350 10250 3200
Wire Wire Line
	10250 3200 10650 3200
Wire Wire Line
	10100 3450 10250 3450
Wire Wire Line
	10250 3450 10250 3600
Wire Wire Line
	10900 3600 11050 3600
Wire Wire Line
	11050 3600 11050 3650
Wire Wire Line
	11050 3600 11550 3600
Wire Wire Line
	11550 3600 11550 3650
Connection ~ 11050 3600
Wire Wire Line
	11550 3600 11750 3600
Wire Wire Line
	11750 3600 11750 3400
Wire Wire Line
	11750 3400 11900 3400
Connection ~ 11550 3600
$Comp
L Device:R R?
U 1 1 605C3081
P 11550 3800
AR Path="/605C3081" Ref="R?"  Part="1" 
AR Path="/61A71A52/605C3081" Ref="R?"  Part="1" 
AR Path="/610EB2BA/605C3081" Ref="R16"  Part="1" 
F 0 "R16" H 11620 3846 50  0000 L CNN
F 1 "47K" H 11620 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11480 3800 50  0001 C CNN
F 3 "~" H 11550 3800 50  0001 C CNN
F 4 "0805W8F4702T5E" H 11550 3800 50  0001 C CNN "MFR.Part #"
F 5 "C17713" H 11550 3800 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11550 3800 50  0001 C CNN "Extended Part"
	1    11550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 3400 11750 3200
Wire Wire Line
	11750 3200 10950 3200
Connection ~ 11750 3400
$Comp
L Device:C_Small C?
U 1 1 605D7D1D
P 11050 3750
AR Path="/605D7D1D" Ref="C?"  Part="1" 
AR Path="/61A71A52/605D7D1D" Ref="C?"  Part="1" 
AR Path="/610EB2BA/605D7D1D" Ref="C19"  Part="1" 
F 0 "C19" H 10950 3700 50  0000 R CNN
F 1 "220pF" H 10950 3800 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 11050 3750 50  0001 C CNN
F 3 "~" H 11050 3750 50  0001 C CNN
F 4 "CL21B221KBANNNC" H 11050 3750 50  0001 C CNN "MFR.Part #"
F 5 "C53172" H 11050 3750 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11050 3750 50  0001 C CNN "Extended Part"
	1    11050 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	11550 3950 11550 4000
Wire Wire Line
	11050 3850 11050 4000
$Comp
L Device:R R?
U 1 1 606027FA
P 10500 3600
AR Path="/606027FA" Ref="R?"  Part="1" 
AR Path="/61A71A52/606027FA" Ref="R?"  Part="1" 
AR Path="/610EB2BA/606027FA" Ref="R15"  Part="1" 
F 0 "R15" V 10400 3600 50  0000 C CNN
F 1 "330R" V 10600 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10430 3600 50  0001 C CNN
F 3 "~" H 10500 3600 50  0001 C CNN
F 4 "0805W8F3300T5E" V 10500 3600 50  0001 C CNN "MFR.Part #"
F 5 "C17630" H 10500 3600 50  0001 C CNN "LCSC Part #"
F 6 "-" H 10500 3600 50  0001 C CNN "Extended Part"
	1    10500 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 3600 10350 3600
Wire Wire Line
	10650 3600 10700 3600
Text Label 11900 3400 0    50   ~ 0
MIC_IN
Wire Wire Line
	11050 4000 11300 4000
$Comp
L power:GNDA #PWR046
U 1 1 605E2D0C
P 11300 4050
F 0 "#PWR046" H 11300 3800 50  0001 C CNN
F 1 "GNDA" H 11300 3900 50  0000 C CNN
F 2 "" H 11300 4050 50  0001 C CNN
F 3 "" H 11300 4050 50  0001 C CNN
	1    11300 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11300 4050 11300 4000
Connection ~ 11300 4000
Wire Wire Line
	11300 4000 11550 4000
NoConn ~ 12600 2400
NoConn ~ 12600 2200
Wire Wire Line
	12250 2600 12600 2600
$Comp
L power:GNDA #PWR043
U 1 1 60547A48
P 12250 2750
F 0 "#PWR043" H 12250 2500 50  0001 C CNN
F 1 "GNDA" H 12255 2577 50  0000 C CNN
F 2 "" H 12250 2750 50  0001 C CNN
F 3 "" H 12250 2750 50  0001 C CNN
	1    12250 2750
	1    0    0    -1  
$EndComp
Text Label 12600 2500 2    50   ~ 0
HEADPHONE_RIGHT
Text Label 12600 2300 2    50   ~ 0
HEADPHONE_LEFT
$Comp
L Connector:AudioJack4_SwitchTR1 J6
U 1 1 60532414
P 12800 2500
F 0 "J6" H 12420 2383 50  0000 R CNN
F 1 "HEADPHONES+MIC" H 12420 2474 50  0000 R CNN
F 2 "KLST_SHEEP:Korean_Hroparts_Elec_PJ-316A-6A" H 12750 2500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810121710_Korean-Hroparts-Elec-PJ-316A-6A_C128987.pdf" H 12750 2500 50  0001 C CNN
F 4 "PJ-316A-6A" H 12800 2500 50  0001 C CNN "MFR.Part #"
F 5 "C128987" H 12800 2500 50  0001 C CNN "LCSC Part #"
F 6 "x" H 12800 2500 50  0001 C CNN "Extended Part"
	1    12800 2500
	-1   0    0    1   
$EndComp
Text Notes 9850 4550 0    50   ~ 0
MIC GAIN 1ST STAGE:\n\n- R=0 > x5.0 > 14dB(?)\n- R=0.33K > x3.75 > 12dB\n- R=40K > x1.0 > 0dB\n- R=90K > x0.5 > -6dB\n\nG1 = 50k/ (Rmic + 10k)\n( from WM8731 datasheet p24 )
$Comp
L Device:CP_Small C?
U 1 1 605A9EBA
P 10800 3600
AR Path="/605A9EBA" Ref="C?"  Part="1" 
AR Path="/61A71A52/605A9EBA" Ref="C?"  Part="1" 
AR Path="/610EB2BA/605A9EBA" Ref="C18"  Part="1" 
F 0 "C18" V 10700 3600 50  0000 C CNN
F 1 "1uF" V 10900 3600 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 10800 3600 50  0001 C CNN
F 3 "~" H 10800 3600 50  0001 C CNN
F 4 "TAJA105K025RNJ" V 10800 3600 50  0001 C CNN "MFR.Part #"
F 5 "x" H 10800 3600 50  0001 C CNN "Extended Part"
F 6 "C7175" H 10800 3600 50  0001 C CNN "LCSC Part #"
	1    10800 3600
	0    -1   1    0   
$EndComp
$Comp
L Connector:AudioJack4_SwitchTR1 J7
U 1 1 60699AE6
P 12850 5800
F 0 "J7" H 12470 5683 50  0000 R CNN
F 1 "LINE_IN" H 12470 5774 50  0000 R CNN
F 2 "KLST_SHEEP:Korean_Hroparts_Elec_PJ-316A-6A" H 12800 5800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810121710_Korean-Hroparts-Elec-PJ-316A-6A_C128987.pdf" H 12800 5800 50  0001 C CNN
F 4 "PJ-316A-6A" H 12850 5800 50  0001 C CNN "MFR.Part #"
F 5 "C128987" H 12850 5800 50  0001 C CNN "LCSC Part #"
F 6 "x" H 12850 5800 50  0001 C CNN "Extended Part"
	1    12850 5800
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack4_SwitchTR1 J8
U 1 1 6069B3C1
P 12850 8350
F 0 "J8" H 12470 8233 50  0000 R CNN
F 1 "LINE_OUT" H 12470 8324 50  0000 R CNN
F 2 "KLST_SHEEP:Korean_Hroparts_Elec_PJ-316A-6A" H 12800 8350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810121710_Korean-Hroparts-Elec-PJ-316A-6A_C128987.pdf" H 12800 8350 50  0001 C CNN
F 4 "PJ-316A-6A" H 12850 8350 50  0001 C CNN "MFR.Part #"
F 5 "C128987" H 12850 8350 50  0001 C CNN "LCSC Part #"
F 6 "x" H 12850 8350 50  0001 C CNN "Extended Part"
	1    12850 8350
	-1   0    0    1   
$EndComp
Text Label 12500 8150 2    50   ~ 0
LINE_OUT_LEFT
Text Label 12500 8350 2    50   ~ 0
LINE_OUT_RIGHT
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6092EF88
P 1850 1500
AR Path="/6092EF88" Ref="#FLG?"  Part="1" 
AR Path="/610EB2BA/6092EF88" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 1850 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 1673 50  0000 C CNN
F 2 "" H 1850 1500 50  0001 C CNN
F 3 "~" H 1850 1500 50  0001 C CNN
	1    1850 1500
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR0106
U 1 1 609398E7
P 1850 1500
F 0 "#PWR0106" H 1850 1250 50  0001 C CNN
F 1 "GNDA" H 1850 1350 50  0000 C CNN
F 2 "" H 1850 1500 50  0001 C CNN
F 3 "" H 1850 1500 50  0001 C CNN
	1    1850 1500
	-1   0    0    1   
$EndComp
Text HLabel 12500 9050 2    50   Output ~ 0
LINE_OUT_LEFT
Text Label 12500 9050 2    50   ~ 0
LINE_OUT_LEFT
Text HLabel 12500 9150 2    50   Output ~ 0
LINE_OUT_RIGHT
Text Label 12500 9150 2    50   ~ 0
LINE_OUT_RIGHT
Text HLabel 12500 6500 2    50   Input ~ 0
LINE_IN_LEFT
Text HLabel 12500 6600 2    50   Input ~ 0
LINE_IN_RIGHT
Text Label 12500 6500 2    50   ~ 0
LINE_IN_LEFT
Text Label 12500 6600 2    50   ~ 0
LINE_IN_RIGHT
Text Notes 12750 2950 0    50   ~ 0
@note(American Headset Jack (AHJ) standard \n( i.e MIC_IN=S + GNDA=R2))
Text Label 12600 2700 2    50   ~ 0
MIC_IN
Wire Wire Line
	12250 2600 12250 2750
Wire Wire Line
	12650 5900 12450 5900
Wire Wire Line
	12450 5900 12450 6000
Connection ~ 12450 6000
Wire Wire Line
	12650 8450 12450 8450
Wire Wire Line
	12450 8450 12450 8550
Connection ~ 12450 8550
$EndSCHEMATC