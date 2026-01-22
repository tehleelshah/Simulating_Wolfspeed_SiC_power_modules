*Operating Conditions
.include "wolfspeed_v2.l"
.hdl "IITK_SiC_beta1.0_update_15112025.va"
.param Vbus = 800.00
.param Freq = 100.00k
.param Td = 500.00n
.param Tduty = 500.00m
.param NCycles = 100
.param Lbus = 3.50n
.param Rload = 5
.param Lfilter = 250.00u
.param Cfilter = 250.00n
.param Tcoolant=25
.param RSA=100m

*Gate Drive
.param RT = 10.00n
.param FT = 10.00n
.param Von = 15.00
.param Voff = -5.00
.param Rg = 3.30

*Temp Settings
.temp 25

*Circuit elements
Lbus High V+ 'Lbus'
R1 VK1 0 10Meg
R2 VK2 0 10Meg
R3 VG2 N004 'Rg'
R4 VG1 N001 'Rg'
V1 V+ 0 'Vbus'
V5 N001 VK1 PULSE('Voff' 'Von' 'Td' 'RT' 'FT' '-Td + Tduty/Freq' '1/Freq' 'NCycles')
V4 N004 VK2 PULSE('Von' 'Voff' 0 'RT' 'FT' 'Td + Tduty/Freq' '1/Freq' 'NCycles')
Lfilter N005 Vo 'Lfilter'
Rload Vo 0 'Rload'
C1 Vo 0 'Cfilter'
V2 N002 0 'Tcoolant'
V3 N003 0 'Tcoolant'
R7 Tc1 N002 'RSA'
R8 Tc2 N003 'RSA'
RBPC N006 0 1k

XU1 High N005 0 VG1 VK1 VG2 VK2 Tc1 Tc2 TjQ1 TjQ2 TjD1 TjD2 N006 CAB525F12XM3 
.SUBCKT CAB525F12XM3 V+ Mid V- G1 K1 G2 K2 Tc1 Tc2 TjQ1 TjQ2 TjD1 TjD2 Baseplate
X1 V+ G1 Mid Mid nch

+ w               = 8.800
+ l               = 900.0n
+ ngf             = 1.200MEG
+ dtemp           = (0)

r1 Mid K1 0.001
r2 V- K2 0.001

X2 Mid G2 V- V- nch
+ w               = 8.800
+ l               = 900.0
+ ngf             = 1.200MEG
+ dtemp           = (0)
.ends CAB525F12XM3





