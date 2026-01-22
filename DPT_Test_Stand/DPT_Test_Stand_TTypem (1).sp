*Operating Conditions
.hdl "IITK_SiC_beta1.0_update_15112025.va"
.include "wolfspeed_v2.l"
.param Vbus = 800
.param L = 50u
.param OffPulseTime = 5u
.param ChargePulseTime = 15u

*Gate Drive
.param Von = 15
.param Voff = -4
.param Rg = 1
.param RgIcOn = 0.5
.param RgIcOff = 0.5
.param Lg = 13n

*Misc parameters
.param Lbus = 10n
.param Rshunt = 2.5m

*Gate Driving Timing
.param tOff = 'FallT2 + 1u'
.param Start = 1u
.param PulseT = 'RiseT1+ChargePulseTime'
.param FallT = 'PulseT + 10n'
.param OffT = 'FallT + OffPulseTime'
.param RiseT2 = 'OffT + 10n'
.param OnT = 'RiseT2+  5u'
.param FallT2 = 'OnT + 10n'
.param RiseT1= 'Start + 10n'

* Temperature settings
.TEMP 25

* Circuit Elements

Lbus High V+ 'Lbus'
Rlow 0 V- 'Rshunt'
LoadInd High PH 'L'
R3 N013 N012 'Rg+RgIcOn'
V1 V+ V- 'Vbus'
R1 K12 0 10Meg
R6 HS N017 100m
V2 N017 0 25
R5 N016 N012 'Rg+RgIcOff'
R2 N005 N004 'Rg+RgIcOn'
R4 K11 0 10Meg
D3 N005 N006 D1
R8 N008 N004 'Rg+RgIcOff'
Vfw N004 K11 'Voff'
D1 N006 N008 D1
D2 N013 N014 D1
D4 N014 N016 D1
L1 G11 N006 'Lg'
L2 G12 N014 'Lg'
R9 N010 N009 'Rg+RgIcOn'
Vactive N009 K14 PWL(0u 'Voff' 'Start' 'Voff' 'RiseT1' 'Von' 'PulseT' 'Von' 'FallT' 'Voff' 'offT' 'Voff' 'RiseT2' 'Von' 'OnT' 'Von' 'FallT2' 'Voff')
R10 K14 0 10Meg
R11 N015 N009 'Rg+RgIcOff'
R12 N002 N001 'Rg+RgIcOn'
R13 K13 0 10Meg
D5 N002 N003 D1
R14 N007 N001 'Rg+RgIcOff'
Von N001 K13 'Von'
D6 N003 N007 D1
D7 N010 N011 D1
D8 N011 N015 D1
L3 G13 N003 'Lg' 
L4 G14 N011 'Lg' 
Voff N012 K12 'Voff'
R7 N018 0 1e6

XU1 High 0 VD PH N018 G11 K11 G12 K12 G13 K13 G14 K14 TjQ11 TjQ12 TjQ13 TjQ14 HS HS HS HS 0

.SUBCKT CHB011M12GM4 DC+ Mid CD PH DC- G11 K11 G12 K12 G13 K13 G14 K14 TjQ11 TjQ12 TjQ13 TjQ14 TcQ11 TcQ12 TcQ13 TcQ14 Baseplate

X14 CD G14 Mid Mid nch
+ w               = 8.800
+ l               = L
+ ngf             = 1.200MEG
+ dtemp           = (0)


X13 CD K13 PH PH nch 
+ w               = 8.800
+ l               = L
+ ngf             = 1.200MEG
+ dtemp           = (0)

X11 DC+ G11 PH PH nch
+ w               = 8.800
+ l               = L
+ ngf             = 1.200MEG
+ dtemp           = (0)

X12 PH G12 DC- DC- nch 
+ w               = 8.800
+ l               = L
+ ngf             = 1.200MEG
+ dtemp           = (0)

r1 Mid K14 0.001
r2 PH G13 0.001
r3 PH K11 0.001
r4 DC- K12 0.001

.ends CHB011M12GM4

.model D1 D