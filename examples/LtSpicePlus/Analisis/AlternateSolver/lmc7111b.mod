*//////////////////////////////////////////////////////////////////////
* (C) National Semiconductor, Inc.
* Models developed and under copyright by:
* National Semiconductor, Inc.  

*/////////////////////////////////////////////////////////////////////
* Legal Notice: This material is intended for free software support.
* The file may be copied, and distributed; however, reselling the 
*  material is illegal

*////////////////////////////////////////////////////////////////////
* For ordering or technical information on these models, contact:
* National Semiconductor's Customer Response Center
*                 7:00 A.M.--7:00 P.M.  U.S. Central Time
*                                (800) 272-9959
* For Applications support, contact the Internet address:
*  amps-apps@galaxy.nsc.com

*/////////////////////////////////////////////////
*LMC7111B  Operational Amplifier Macro-Model
*/////////////////////////////////////////////////
*
* connections:      non-inverting input
*                   |      inverting input
*                   |      |      positive power supply
*                   |      |      |       negative power supply
*                   |      |      |       |      output
*                   |      |      |       |      |
*                   |      |      |       |      |
.SUBCKT LM7111B/NS  3      2      4       5      6
*
*Features
*Tiny SOT23-5 Package  
*Wide Common Mode Input Range
*50 KHz Gain-Bandwidth at 5V
*
EOX 120 10 31 32 2.0
RCX 120 121 1K
RDX 121 10 1K
RBX 120 122 1K
GOS 10 57 122 121 1.0
RVOS 31 32 1K
RINB 2 18 1000
RINA 3 19 1000
DIN1 5 18 DMOD2
DIN2 18 4 DMOD2
DIN3 5 19 DMOD2
DIN4 19 4 DMOD2
EXX 10 5 17 5 1.0
EEE 10 50 17 5 1.0
ECC 40 10 4 17 1.0
RAA 4 17 100MEG
RBB 17 5 100MEG
ISET 10 24 1e-3
DA1 24 23 DMOD1
RBAL 23 22 1000
ESUPP 22 21 4 5 1.0
VOFF 21 10 -1.25
DA2 24 25 DMOD1
VSENS1 25 26 DC 0
RSET 26 10 1K
CSET 26 10 1e-10
FSET 10 31 VSENS1 1.0
R001 34 10 1K
FTEMP 10 27 VSENS1 1.0
DTA 27 10 DMOD2
DTB 28 29 DMOD2
VTEMP 29 10 DC 0
ECMR 38 10 11 10 1.0
VCMX 38 39 DC 0
RCM2 41 10 1MEG
EPSR 42 10 4 10 1.0
CDC1 43 42 10U
VPSX 43 44 DC 0
RPSR2 45 10 1MEG
FCXX 57 10 VCXX 100
DCX1 98 97 DMOD1
DCX2 95 94 DMOD1
RCX1 99 98 100
RCX2 94 99 100
VCXX 99 96 DC 0
ECMX 96 10 11 10 1.0
DLIM1 52 57 DMOD1
DLIM2 57 51 DMOD1
ELIMP 51 10 26 10 99.3
GDM 10 57 3 2 1
C1 58 59 1e-10
DCLMP2 59 40 DMOD1
DCLMP1 50 59 DMOD1
RO2 59 10 1K
GO3 10 71 59 10 1
RO3 71 10 1
DDN1 73 74 DMOD1
DDN2 73 710 DMOD1
DDP1 75 72 DMOD1
DDP2 71 720 DMOD1
RDN2 710 71 100
RDP 720 72 100
VOOP 40 76 DC 0
VOON 77 50 DC 0
QNO 76 73 78 NPN1
QNP 77 72 79 PNP1
RNO 78 81 1
RPO 79 81 1
VOX 86 6 DC 0
RNT 76 81 100MEG
RPT 81 77 1MEG
FX 10 93 VOX 1.0
DFX1 93 91 DMOD1
VFX1 91 10 DC 0
DFX2 92 93 DMOD1
VFX2 10 92 DC 0
FPX 4 10 VFX1 1.0
FNX 10 5 VFX2 1.0
RAX 122 10 MRAX 1.014000e+03
* Input Offset Voltage
.MODEL MRAX RES (TC1=4e-06)
FIN1 18 5 VTEMP 0.99
FIN2 19 5 VTEMP 1.01
* Input Bias Currents
CIN1 2 10 1e-12
CIN2 3 10 1e-12
* Common Mode Input Capacitance
RD1 18 11 5e+11
RD2 19 11 5e+11
* Diff. Input Resistance
RCM 11 10 9.75e+12
* Common Mode Input Resistance
FCMR 10 57 VCMX 56.2341
* Low Freq. CMRR
FPSR 10 57 VPSX 200
* Low Freq. PSRR
RSLOPE 4 5 2e+06
* Slope of Supp. Curr. vs. Supp. Volt.
GPWR 4 5 26 10 1.75e-05
* Quiescent Supply Current
ETEMP 27 28 32 33 0.553186
RIB 32 33 MRIB 1K
* Temp. Co. of Input Currents
.MODEL MRIB RES (TC1=0.000554971)
RISC 33 34 MRISC 1K
.MODEL MRISC RES (TC1=-0.001)
RCM1 39 41 177.828
CCM 41 10 1.59155e-09
* CMRR vs. Freq.
RPSR1 44 45 316.228
CPSR 45 10 1.59155e-09
* PSRR vs. Freq.
ELIMN 10 52 26 10 124.3
RDM 57 10 1813.8
C2 57 10 8.77467e-10
ECMP 40 97 26 10 0.5
ECMN 95 50 26 10 0
G2 58 10 57 10 2e-08
R2 58 10 27566.4
GO2 59 10 58 10 500
* Avol and Slew-Rate Settings
EPOS 40 74 26 10 0
ENEG 75 50 26 10 0.2
* Output Voltage Swing Settings
GSOURCE 74 73 33 34 7e-05
GSINK 72 75 33 34 7e-05
* Output Current Settings
ROO 81 86 27.5
.MODEL DMOD1 D
*-- DMOD1 DEFAULT PARAMETERS
*IS=1e-14 RS=0 N=1 TT=0 CJO=0
*VJ=1 M=0.5 EG=1.11 XTI=3 FC=0.5
*KF=0 AF=1 BV=inf IBV=1e-3 TNOM=27
.MODEL DMOD2 D  (IS=1e-17)
*-- DMOD2 DEFAULT PARAMETERS
*RS=0 N=1 TT=0 CJO=0
*VJ=1 M=0.5 EG=1.11 XTI=3 FC=0.5
*KF=0 AF=1 BV=inf IBV=1e-3 TNOM=27
.MODEL NPN1 NPN (BF=100 IS=1e-15)
*-- NPN1 DEFAULT PARAMETERS
*NF=1 VAF=inf IKF=inf ISE=0 NE=1.5
*BR=1 NR=1 VAR=inf IKR=inf ISC=0
*NC=2 RB=0 IRB=inf RBM=0 RE=0 RC=0
*CJE=0 VJE=0.75 MJE=0.33 TF=0 XTF=0
*VTF=inf ITF=0 PTF=0 CJC=0 VJC=0.75
*MJC=0.33 XCJC=1 TR=0 CJS=0 VJS=0.75
*MJS=0 XTB=0 EG=1.11 XTI=3 KF=0 AF=1
*FC=0.5 TNOM=27
.MODEL PNP1 PNP (BF=100 IS=1e-15)
*-- PNP1 DEFAULT PARAMETERS
*NF=1 VAF=inf IKF=inf ISE=0 NE=1.5
*BR=1 NR=1 VAR=inf IKR=inf ISC=0
*NC=2 RB=0 IRB=inf RBM=0 RE=0 RC=0
*CJE=0 VJE=0.75 MJE=0.33 TF=0 XTF=0
*VTF=inf ITF=0 PTF=0 CJC=0 VJC=0.75
*MJC=0.33 XCJC=1 TR=0 CJS=0 VJS=0.75
*MJS=0 XTB=0 EG=1.11 XTI=3 KF=0 AF=1
*FC=0.5 TNOM=27
.ENDS 
*$
