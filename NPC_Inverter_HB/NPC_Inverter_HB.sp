{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red15\green111\blue1;\red0\green0\blue255;
\red135\green0\blue2;}
{\*\expandedcolortbl;;\cspthree\c0\c0\c0;\cspthree\c21414\c49031\c13018;\cspthree\c22\c0\c95960;
\cspthree\c55599\c10545\c6659;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs24 \cf2 R1 Vout N022 10\
L1 N022 0 10m\
V1 SINE_FUND 0 SINE(0 \{M\} \{sine_fr\} 0 0 0)\
V2 TRIANGLE1 0 PULSE(0 1 0 \{PWM_PER/2\} \{PWM_PER/2\} .05n \{PWM_PER\})\
V3 TRIANGLE2 0 PULSE(-1 0 0 \{PWM_PER/2\} \{PWM_PER/2\} .05n \{PWM_PER\})\
R11 N011 0 10Meg\
V4 N004 N011 \{Voff\}\
R12 GD1 N004 1m\
R13 KD1 N011 1m\
R14 N012 0 10Meg\
V5 N005 N012 \{Voff\}\
R15 GD2 N005 1m\
R16 KD2 N012 1m\
Rg3 N013 G1 \{Rg\}\
Vb1 V+ 0 \{Vbus/2\}\
Vb2 0 VBOOST \{Vbus/2\}\
Rg1 N025 G4 \{Rg\}\
Rg2 N021 G3 \{Rg\}\
Rg4 N020 G2 \{Rg\}\
A7 SINE_FUND TRIANGLE1 0 0 0 N006 N001 0 SCHMITT tripdt=10n Vt=0\
A9 0 N001 0 N003 0 0 N002 0 AND\
A13 N001 0 0 0 0 0 N003 0 BUF Td=\{DT\} Trise=10n\
A14 N006 0 0 0 0 0 N008 0 BUF Td=\{DT\} Trise=10n\
A17 N002 0 K1 K1 K1 K1 G1 K1 SCHMITT Vhigh=\{Von\} Vt=1m tripdt=10n Vlow=\{Voff\}\
A1 SINE_FUND TRIANGLE2 0 0 0 N016 N009 0 SCHMITT tripdt=10n Vt=0\
A4 N009 0 0 0 0 0 N014 0 BUF Td=\{DT\} Trise=10n\
A5 N016 0 0 0 0 0 N018 0 BUF Td=\{DT\} Trise=10n\
R5 K1 0 10Meg\
R6 K3 0 10Meg\
R7 K2 0 10Meg\
R8 K4 0 10Meg\
A6 N007 0 K3 K3 K3 K3 G3 K3 SCHMITT Vhigh=\{Von\} Vt=1m tripdt=10n Vlow=\{Voff\}\
A8 N010 0 K2 K2 K2 K2 G2 K2 SCHMITT Vhigh=\{Von\} Vt=1m tripdt=10n Vlow=\{Voff\}\
A11 N017 0 K4 K4 K4 K4 G4 K4 SCHMITT Vhigh=\{Von\} Vt=1m tripdt=10n Vlow=\{Voff\}\
RSA HS N027 100m\
VA N027 0 90\
A2 0 N006 0 N008 0 0 N007 0 AND\
A3 0 N009 0 N014 0 0 N010 0 AND\
A10 0 N016 0 N018 0 0 N017 0 AND\
R10 N026 0 1k\
R3 N019 0 1k\
R2 N023 0 1k\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf3 * Wolfspeed Power Modules (NPC_INVERTER)\cf2 \
\
XU1 V+ N015 0 N013 K1 GD1 KD1 HS HS TjQ1_Buck TjQ2_Buck TjD1_Buck TjD2_Buck N019 CAB425M12XM3 Thermals=1 BPC=0 level=3 Rp=100\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .SUBCKT CAB425M12XM3 V+ Mid V- G1 K1 G2 K2 Tc1 Tc2 TjQ1 TjQ2 TjD1 TjD2 Baseplate \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 Xq1 V+ G1 K1 K1 nch\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf5 + w               = 8.800\cf2 \
\cf5 + l               = 900.0n\cf2 \
\cf5 + ngf             = 1.200MEG\cf2 \
\cf5 + dtemp           = (0)\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 \
r1 Mid K1 0.001\
r2 V- K2 0.001\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf5 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 Xq2 Mid G2 K2 K2 nch\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf5 + w               = 8.800\cf2 \
\cf5 + l               = 900.0n\cf2 \
\cf5 + ngf             = 1.200MEG\cf2 \
\cf5 + dtemp           = (0)\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .ends CAB425M12XM3\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 \
XU2 N015 Vout N024 N020 K2 N021 K3 HS HS TjQ1_HB TjQ2_HB TjD1_HB TjD2_HB N023 CAB500M17HM3 Thermals=1 BPC=0 level=3 Rp=100\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .SUBCKT CAB500M17HM3 V+ Mid V- G1 K1 G2 K2 Tc1 Tc2 TjQ1 TjQ2 TjD1 TjD2 Baseplate \cf2 \
Xq3 V+ G1 K1 K1 nch\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf5 + w               = 8.800\cf2 \
\cf5 + l               = 900.0n\cf2 \
\cf5 + ngf             = 1.200MEG\cf2 \
\cf5 + dtemp           = (0)\cf2 \
\
r1 Mid K1 0.001\
r2 V- K2 0.001\
\
Xq4 Mid G2 K2 K2 nch\
\
\cf5 + w               = 8.800\cf2 \
\cf5 + l               = 900.0n\cf2 \
\cf5 + ngf             = 1.200MEG\cf2 \
\cf5 + dtemp           = (0)\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .ends CAB500M17HM3\
\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 XU3 0 N024 VBOOST GD2 KD2 N025 K4 HS HS TjQ1_Boost TjQ2_Boost TjD1_Boost TjD2_Boost N026 WAB300M12BM3 Thermals=1 BPC=0 level=3 Rp=100\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .SUBCKT WAB300M12BM3 V+ Mid V- G1 K1 G2 K2 Tc1 Tc2 TjQ1 TjQ2 TjD1 TjD2 Baseplate\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 Xq5 V+ G1 K1 K1 nch\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf5 + w               = 8.800\cf2 \
\cf5 + l               = 900.0n\cf2 \
\cf5 + ngf             = 1.200MEG\cf2 \
\cf5 + dtemp           = (0)\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 r1 Mid K1 0.001\
r2 V- K2 0.001\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf5 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 Xq6 Mid G2 K2 K2 nch\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf5 + w               = 8.800\cf2 \
\cf5 + l               = 900.0n\cf2 \
\cf5 + ngf             = 1.200MEG\cf2 \
\cf5 + dtemp           = (0)\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .ends WAB300M12BM3\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf3 * Include statements\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .hdl "IITK_SiC_beta1.0_update_15112025.va"\cf2 \
\cf4 .include "wolfspeed_v2.l"\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .param PWM_PER=\{1/PWM_fr\}\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf3 * TRIANGLE1 oscillates from 0 to +1\\nTRIANGLE2 oscillates from -1 to 0\cf2 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .tran 10m uic\cf2 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf3 \
* Simulation Parameters\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .param Vbus = 1.60k\cf2 \
\cf4 .param Sine_fr = 1.00k\cf2 \
\cf4 .param PWM_fr = 25.00k\cf2 \
\cf4 .param DT = 500.00n\cf2 \
\cf4 .param M = 1.00\cf2 \
\cf4 .param Rg = 3.30\cf2 \
\cf4 .param Von = 15.00\cf2 \
\cf4 .param Voff = -4.00\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf3 * Die temp\cf2 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf4 .TEMP 25}