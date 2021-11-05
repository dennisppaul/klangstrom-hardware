EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 5 6
Title "KLST_SHEEP"
Date "2021-05-01"
Rev "0.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6700 4600 0    50   ~ 0
UART+I2C+SPI
Wire Notes Line
	12250 6900 12250 4600
Wire Notes Line
	6700 4600 6700 6900
Text Label 5700 5750 0    50   ~ 0
I2C_00_SCL
Text Label 5700 5850 0    50   ~ 0
I2C_00_SDA
Text Label 5700 6050 0    50   ~ 0
UART_01_RX
Text Label 5700 5950 0    50   ~ 0
UART_01_TX
Text Label 5700 5650 0    50   ~ 0
SPI_00_SCK
Text Label 5700 5450 0    50   ~ 0
SPI_00_MOSI
Text Label 5700 5550 0    50   ~ 0
SPI_00_MISO
$Comp
L power:GND #PWR?
U 1 1 61B013FD
P 8000 6250
AR Path="/61B013FD" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/61B013FD" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 8000 6000 50  0001 C CNN
F 1 "GND" V 8000 6100 50  0000 R CNN
F 2 "" H 8000 6250 50  0001 C CNN
F 3 "" H 8000 6250 50  0001 C CNN
	1    8000 6250
	0    1    1    0   
$EndComp
Text Label 8500 6250 0    50   ~ 0
UART_01_TX
Text Label 5700 6250 0    50   ~ 0
UART_00_RX
Text Label 5700 6150 0    50   ~ 0
UART_00_TX
Text HLabel 5550 6250 0    50   Input ~ 0
UART_00_RX
Text HLabel 5550 6150 0    50   Input ~ 0
UART_00_TX
Text HLabel 5550 6050 0    50   Input ~ 0
UART_01_RX
Text HLabel 5550 5950 0    50   Input ~ 0
UART_01_TX
Text HLabel 5550 5850 0    50   Input ~ 0
I2C_00_SDA
Text HLabel 5550 5750 0    50   Input ~ 0
I2C_00_SCL
Text HLabel 5550 5650 0    50   Input ~ 0
SPI_00_SCK
Text HLabel 5550 5550 0    50   Input ~ 0
SPI_00_MISO
Text HLabel 5550 5450 0    50   Input ~ 0
SPI_00_MOSI
Wire Wire Line
	5700 6250 5550 6250
Wire Wire Line
	5700 6150 5550 6150
Wire Wire Line
	5550 6050 5700 6050
Wire Wire Line
	5700 5950 5550 5950
Wire Wire Line
	5550 5850 5700 5850
Wire Wire Line
	5700 5750 5550 5750
Wire Wire Line
	5550 5650 5700 5650
Wire Wire Line
	5700 5550 5550 5550
Wire Wire Line
	5700 5450 5550 5450
$Comp
L Device:R R?
U 1 1 60802321
P 11200 5350
AR Path="/60802321" Ref="R?"  Part="1" 
AR Path="/692BDA67/60802321" Ref="R54"  Part="1" 
F 0 "R54" H 11130 5396 50  0000 R CNN
F 1 "2.2K" H 11130 5305 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 11130 5350 50  0001 C CNN
F 3 "~" H 11200 5350 50  0001 C CNN
F 4 "0402WGF2201TCE" H 11200 5350 50  0001 C CNN "MFR.Part #"
F 5 "C25879" H 11200 5350 50  0001 C CNN "LCSC Part #"
F 6 "-" H 11200 5350 50  0001 C CNN "Extended Part"
	1    11200 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60802339
P 10000 5350
AR Path="/60802339" Ref="R?"  Part="1" 
AR Path="/692BDA67/60802339" Ref="R53"  Part="1" 
F 0 "R53" H 9930 5396 50  0000 R CNN
F 1 "2.2K" H 9930 5305 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9930 5350 50  0001 C CNN
F 3 "~" H 10000 5350 50  0001 C CNN
F 4 "0402WGF2201TCE" H 10000 5350 50  0001 C CNN "MFR.Part #"
F 5 "C25879" H 10000 5350 50  0001 C CNN "LCSC Part #"
F 6 "-" H 10000 5350 50  0001 C CNN "Extended Part"
	1    10000 5350
	-1   0    0    -1  
$EndComp
Text Label 11300 5850 0    50   ~ 0
I2C_00_SDA
Text Label 9900 5850 2    50   ~ 0
I2C_00_SCL
Text Label 11300 6050 0    50   ~ 0
SPI_00_MOSI
Wire Wire Line
	10350 6050 9900 6050
Text Label 9900 6050 2    50   ~ 0
SPI_00_MISO
Text Label 11300 6150 0    50   ~ 0
SPI_00_SCK
Wire Wire Line
	10850 6050 11300 6050
Wire Wire Line
	10850 6150 11300 6150
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 606F5BE6
P 10550 5950
AR Path="/606F5BE6" Ref="J?"  Part="1" 
AR Path="/692BDA67/606F5BE6" Ref="J14"  Part="1" 
F 0 "J14" H 10600 5300 50  0000 C CNN
F 1 "I2C_00+SPI_00" H 10600 5400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 10550 5950 50  0001 C CNN
F 3 "~" H 10550 5950 50  0001 C CNN
F 4 "DNF" H 10550 5950 50  0001 C CNN "MFR.Part #"
F 5 "DNF" H 10550 5950 50  0001 C CNN "LCSC Part #"
	1    10550 5950
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J15
U 1 1 6071F218
P 8200 6150
F 0 "J15" H 8250 5800 50  0000 C CNN
F 1 "UART_01" H 8250 5900 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Horizontal" H 8200 6150 50  0001 C CNN
F 3 "~" H 8200 6150 50  0001 C CNN
F 4 "300R-6P" H 8200 6150 50  0001 C CNN "MFR.Part #"
F 5 "C146629" H 8200 6150 50  0001 C CNN "LCSC Part #"
F 6 "-" H 8200 6150 50  0001 C CNN "Extended Part"
	1    8200 6150
	1    0    0    1   
$EndComp
Wire Wire Line
	10350 5650 10300 5650
Wire Wire Line
	10300 5650 10300 5950
Wire Wire Line
	10350 5950 10300 5950
Connection ~ 10300 5950
$Comp
L power:+3V3 #PWR?
U 1 1 6075DD3E
P 10600 5100
AR Path="/6075DD3E" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/6075DD3E" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 10600 4950 50  0001 C CNN
F 1 "+3V3" H 10615 5273 50  0000 C CNN
F 2 "" H 10600 5100 50  0001 C CNN
F 3 "" H 10600 5100 50  0001 C CNN
	1    10600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 5850 11200 5850
Wire Wire Line
	9900 5850 10000 5850
Wire Wire Line
	11200 5200 11200 5150
Wire Wire Line
	10000 5150 10000 5200
Wire Wire Line
	10000 5500 10000 5850
Connection ~ 10000 5850
Wire Wire Line
	10000 5850 10350 5850
Wire Wire Line
	11200 5500 11200 5850
Connection ~ 11200 5850
Wire Wire Line
	11200 5850 11300 5850
Wire Wire Line
	10600 5100 10600 5150
Connection ~ 10600 5150
Wire Wire Line
	10600 5150 10000 5150
Wire Wire Line
	10900 5650 10900 5950
Wire Wire Line
	10850 5650 10900 5650
Wire Wire Line
	10850 5550 11300 5550
Wire Wire Line
	10850 5750 11300 5750
Wire Wire Line
	10350 5750 9900 5750
Wire Wire Line
	10350 5550 9900 5550
Text Label 9900 5550 2    50   ~ 0
UART_00_RX
Text Label 9900 5750 2    50   ~ 0
UART_00_TX
Text Label 11300 5550 0    50   ~ 0
UART_01_RX
Text Label 11300 5750 0    50   ~ 0
UART_01_TX
Wire Notes Line
	6700 4600 12250 4600
Wire Notes Line
	6700 6900 12250 6900
Text HLabel 5550 5350 0    50   Input ~ 0
SPI_00_CS
Text Label 5700 5350 0    50   ~ 0
SPI_00_CS
Wire Wire Line
	5550 5350 5700 5350
Text Label 9900 6150 2    50   ~ 0
SPI_00_CS
Wire Wire Line
	10350 6150 9900 6150
$Comp
L power:GND #PWR?
U 1 1 60A18F92
P 8000 5550
AR Path="/60A18F92" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/60A18F92" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 8000 5300 50  0001 C CNN
F 1 "GND" V 8000 5400 50  0000 R CNN
F 2 "" H 8000 5550 50  0001 C CNN
F 3 "" H 8000 5550 50  0001 C CNN
	1    8000 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A18F98
P 8500 5350
AR Path="/60A18F98" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/60A18F98" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 8500 5100 50  0001 C CNN
F 1 "GND" V 8500 5200 50  0000 R CNN
F 2 "" H 8500 5350 50  0001 C CNN
F 3 "" H 8500 5350 50  0001 C CNN
	1    8500 5350
	0    -1   -1   0   
$EndComp
Text Label 8500 5550 0    50   ~ 0
UART_00_TX
Wire Wire Line
	9000 5650 9000 5450
Wire Wire Line
	9000 5450 8500 5450
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J13
U 1 1 60A18F8C
P 8200 5450
F 0 "J13" H 8250 5100 50  0000 C CNN
F 1 "UART_00" H 8250 5200 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Horizontal" H 8200 5450 50  0001 C CNN
F 3 "~" H 8200 5450 50  0001 C CNN
F 4 "300R-6P" H 8200 5450 50  0001 C CNN "MFR.Part #"
F 5 "C146629" H 8200 5450 50  0001 C CNN "LCSC Part #"
F 6 "-" H 8200 5450 50  0001 C CNN "Extended Part"
	1    8200 5450
	1    0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 605426F1
P 7200 5450
AR Path="/605426F1" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/605426F1" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 7200 5300 50  0001 C CNN
F 1 "+3V3" V 7200 5600 50  0000 L CNN
F 2 "" H 7200 5450 50  0001 C CNN
F 3 "" H 7200 5450 50  0001 C CNN
	1    7200 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky_Small D18
U 1 1 605A6604
P 7300 5450
F 0 "D18" H 7300 5657 50  0000 C CNN
F 1 "D_Schottky" H 7300 5566 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 7300 5450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Changjiang-Electronics-Tech-CJ-B5819W_C8598.pdf" V 7300 5450 50  0001 C CNN
F 4 "B5819W" H 7300 5450 50  0001 C CNN "MFR.Part #"
F 5 "C8598" H 7300 5450 50  0001 C CNN "LCSC Part #"
F 6 "-" H 7300 5450 50  0001 C CNN "Extended Part"
	1    7300 5450
	1    0    0    1   
$EndComp
Text Label 8000 5350 2    50   ~ 0
UART_00_RX
$Comp
L power:+3V3 #PWR?
U 1 1 615FB4DC
P 7200 6150
AR Path="/615FB4DC" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/615FB4DC" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 7200 6000 50  0001 C CNN
F 1 "+3V3" V 7200 6300 50  0000 L CNN
F 2 "" H 7200 6150 50  0001 C CNN
F 3 "" H 7200 6150 50  0001 C CNN
	1    7200 6150
	0    -1   1    0   
$EndComp
$Comp
L Device:D_Schottky_Small D19
U 1 1 607F5B7F
P 7300 6150
F 0 "D19" H 7300 6357 50  0000 C CNN
F 1 "D_Schottky" H 7300 6266 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 7300 6150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Changjiang-Electronics-Tech-CJ-B5819W_C8598.pdf" V 7300 6150 50  0001 C CNN
F 4 "B5819W" H 7300 6150 50  0001 C CNN "MFR.Part #"
F 5 "C8598" H 7300 6150 50  0001 C CNN "LCSC Part #"
F 6 "-" H 7300 6150 50  0001 C CNN "Extended Part"
	1    7300 6150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B0140A
P 8500 6050
AR Path="/61B0140A" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/61B0140A" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 8500 5800 50  0001 C CNN
F 1 "GND" V 8500 5900 50  0000 R CNN
F 2 "" H 8500 6050 50  0001 C CNN
F 3 "" H 8500 6050 50  0001 C CNN
	1    8500 6050
	0    -1   -1   0   
$EndComp
Text Label 8000 6050 2    50   ~ 0
UART_01_RX
Wire Wire Line
	9000 6350 9000 6150
Wire Wire Line
	9000 6150 8500 6150
Wire Wire Line
	7600 6350 7600 6150
Wire Wire Line
	7600 6350 9000 6350
Wire Wire Line
	7400 6150 7600 6150
Wire Wire Line
	7600 6150 8000 6150
Connection ~ 7600 6150
Wire Wire Line
	7600 5450 7600 5650
Wire Wire Line
	7400 5450 7600 5450
Connection ~ 7600 5450
Wire Wire Line
	7600 5450 8000 5450
Wire Wire Line
	7600 5650 9000 5650
Wire Wire Line
	10600 5150 11200 5150
Connection ~ 10900 5950
Wire Wire Line
	10900 5950 10900 6400
Wire Wire Line
	10300 5950 10300 6400
Wire Wire Line
	10850 5950 10900 5950
Wire Wire Line
	10850 6250 11300 6250
Wire Wire Line
	10350 6250 9900 6250
$Comp
L power:+3V3 #PWR?
U 1 1 623DA709
P 11300 6250
AR Path="/623DA709" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/623DA709" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 11300 6100 50  0001 C CNN
F 1 "+3V3" V 11300 6350 50  0000 L CNN
F 2 "" H 11300 6250 50  0001 C CNN
F 3 "" H 11300 6250 50  0001 C CNN
	1    11300 6250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 623DDA01
P 9900 6250
AR Path="/623DDA01" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/623DDA01" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 9900 6100 50  0001 C CNN
F 1 "+5V" V 9900 6400 50  0000 L CNN
F 2 "" H 9900 6250 50  0001 C CNN
F 3 "" H 9900 6250 50  0001 C CNN
	1    9900 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60587316
P 10600 6450
AR Path="/60587316" Ref="#PWR?"  Part="1" 
AR Path="/692BDA67/60587316" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 10600 6200 50  0001 C CNN
F 1 "GND" H 10600 6300 50  0000 C CNN
F 2 "" H 10600 6450 50  0001 C CNN
F 3 "" H 10600 6450 50  0001 C CNN
	1    10600 6450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 6400 10600 6400
Wire Wire Line
	10600 6450 10600 6400
Connection ~ 10600 6400
Wire Wire Line
	10600 6400 10900 6400
$EndSCHEMATC
