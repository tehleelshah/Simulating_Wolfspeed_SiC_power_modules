*Include Statements

.hdl "IITK_SiC_beta1.0_update_15112025.va"
.include "wolfspeed_v2.l"

*Simulation Parameters

.param Vbus = 800
.param Sine_fr = 1k
.param PWM_fr = 25.00k
.param DT = 500.00n
.param M = 1.00
.param Rg = 10m
.param Lload = 1m
.param Rload=5m
.param Von = 15.00
.param Voff = -4.00

*Temp Settings
.TEMP 25

.param PWM_PER='1/PWM_fr'

*Reference Waveforms

V2 Carrier 0 PULSE(-1 1 0 'PWM_PER/2' 'PWM_PER/2' 0 'PWM_PER')
V3 A 0 SINE(0 'M' 'Sine_fr' 0 0 0)

*Circuit Elements

*Load
R1 N020 AC2 'Rload'
L1 AC1 N020 'Lload'

*Coolant
RSA HS N019 100m
VA N019 0 25

*Bus Voltage
L2 V+ N004 5n 
Vbus N004 0 PULSE(0 'Vbus' 0 10n 10n 1)

*PWM Generator
A1 A Carrier 0 0 0 N015 N010 0 SCHMITT tripdt=10n Vt=0
A7 A Carrier 0 0 0 N007 N001 0 SCHMITT tripdt=10n Vt=0
A9 0 N001 0 N003 0 0 N002 0 AND trise=10n tfall=10n
A13 N001 0 0 0 0 0 N003 0 BUF Td={DT} Trise=10n
A14 N007 0 0 0 0 0 N009 0 BUF Td={DT} Trise=10n
A4 N010 0 0 0 0 0 N012 0 BUF Td={DT} Trise=10n
A5 N015 0 0 0 0 0 N017 0 BUF Td={DT} Trise=10n
A2 0 N007 0 N009 0 0 N008 0 AND trise=10n tfall=10n
A3 0 N010 0 N012 0 0 N011 0 AND trise=10n tfall=10n
A6 0 N015 0 N017 0 0 N016 0 AND trise=10n tfall=10n
A20 N002 0 K1 K1 K1 K1 G1 K1 SCHMITT Vhigh='Von' Vt=1m tripdt=10n Vlow='Voff'
A12 N008 0 K2 K2 K2 K2 G2 K2 SCHMITT Vhigh='Von' Vt=1m tripdt=10n Vlow='Voff'
A15 N011 0 K4 K4 K4 K4 G4 K4 SCHMITT Vhigh='Von' Vt=1m tripdt=10n Vlow='Voff'
A17 N016 0 K3 K3 K3 K3 G3 K3 SCHMITT Vhigh='Von' Vt=1m tripdt=10n Vlow='Voff'
R5 K1 0 10Meg
R6 K2 0 10Meg
R7 K4 0 10Meg
R8 K3 0 10Meg
Rg5 N005 G1 'Rg'
Rg6 N014 G4 'Rg'
Rg7 N006 G3 'Rg'
Rg2 N013 G2 'Rg'

RBPC N018 0 1m

*Wolfspeed FullBridge Power Module

XU1 V+ 0 0 AC1 AC2 N005 N013 N006 N014 K1 K2 K3 K4 TjQ1 TjQ2 TjQ3 TjQ4 HS HS HS HS N018 CBB017M12FM4 Thermals=1 BPC=0 level=3 Rp=100 

.SUBCKT CBB017M12FM4 DC+ DC-1 DC-2 AC1 AC2 G1 G2 G3 G4 K1 K2 K3 K4 TjQ1 TjQ2 TjQ3 TjQ4 TcQ1 TcQ2 TcQ3 TcQ4 Baseplate
Xq1 DC+ G1 AC1 AC1 nch
+ w               = 8.800
+ l               = 900.0n
+ ngf             = 1.200MEG
+ dtemp           = (0)
Xq2 AC1 G2 DC-1 DC-1 nch
+ w               = 8.800
+ l               = 900.0n
+ ngf             = 1.200MEG
+ dtemp           = (0)
Xq3 DC+ G3 AC2 AC2 nch
+ w               = 8.800
+ l               = 900.0n
+ ngf             = 1.200MEG
+ dtemp           = (0)
Xq4 AC2 G4 DC-2 DC-2 nch
+ w               = 8.800
+ l               = 900.0n
+ ngf             = 1.200MEG
+ dtemp           = (0)

r1 AC1 K1 0.001
r2 AC2 K3 0.001
r3 DC-1 K2 0.001
r4 DC-2 K4 0.001

.ends CBB017M12FM4

.tran 50m











