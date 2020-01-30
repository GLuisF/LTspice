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

*//////////////////////////////////////////////////////////
*LM318 OPERATIONAL AMPLIFIER MACRO-MODEL
*//////////////////////////////////////////////////////////
*
* connections:      non-inverting input
*                   |   inverting input
*                   |   |   positive power supply
*                   |   |   |   negative power supply
*                   |   |   |   |   output
*                   |   |   |   |   |
*                   |   |   |   |   |
.SUBCKT LM318/NS    1   2  99  50  28
*
*Features:
*Internal frequency compensation
*High bandwidth =                    15MHz
*Minimum slew rate =                50V/uS
*Low bias current =                  250nA
*Wide supply range =         +-5V to +-20V
*
****************INPUT STAGE**************
*
IOS 2 1 30N
*^Input offset current
R1 1 3 1.5MEG
R2 3 2 1.5MEG
I1 4 50 100U
R3 99 5 517
R4 99 6 517
Q1 5 2 4 QX
Q2 6 7 4 QX
*Fp2=25 MHz
C4 5 6 6.1569P
*
***********COMMON MODE EFFECT***********
*
I2 99 50 4.9M
*^Quiescent supply current
EOS 7 1 POLY(1) 16 49 4E-3 1
*Input offset voltage.^
R8 99 49 80.2K
R9 49 50 80.2K
*
*********OUTPUT VOLTAGE LIMITING********
V2 99 8 2.63
D1 9 8 DX
D2 10 9 DX
V3 10 50 2.63
*
**************SECOND STAGE**************
*
EH 99 98 99 49 1
G1 98 9 POLY(1) 5 6 0 3.0967E-4 0 596.674E-3
*Fp1=115 Hz
R5 98 9 9.6877G
C3 98 9 1.4286P
*
************POLE/ZERO STAGE*************
*
*Fp=300 KHz, Fz=600 KHz
G2 98 13 9 49 1E-6
R10 98 13 1MEG
R11 98 14 1MEG
C6 14 13 2.6526E-13
*
***************POLE STAGE***************
*
*Fp=55 MHz
G3 98 15 13 49 1E-6
R12 98 15 1MEG
C5 98 15 2.8937E-15
*
*********COMMON-MODE ZERO STAGE*********
*
*Fpcm=3 KHz
G4 98 16 3 49 1E-8                    
L2 98 17 53.1M
R13 17 16 1K
*
**************OUTPUT STAGE**************
*
F6 50 99 POLY(1) V6 200U 1
E1 99 23 99 15 1
R16 24 23 30
D5 26 24 DX
V6 26 22 .63V
R17 23 25 30
D6 25 27 DX
V7 22 27 .63V
C9 23 22 100P
V5 22 21 0.2V
D4 21 15 DX
V4 20 22 0.2V
D3 15 20 DX
L3 22 28 100P
RL3 22 28 100K
*
***************MODELS USED**************
*
.MODEL DX D(IS=1E-15)
.MODEL QX NPN(BF=333.333)
*
.ENDS
*$
