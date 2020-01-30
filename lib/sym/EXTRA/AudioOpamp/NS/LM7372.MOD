*//////////////////////////////////////////////////////////////////////
* (C) National Semiconductor, Corporation.
* Models developed and under copyright by:
* National Semiconductor, Corporation.
*/////////////////////////////////////////////////////////////////////
* Legal Notice:
* The model may be copied, and distributed without any modifications;
* however, reselling or licensing the material is illegal.
* We reserve the right to make changes to the model without prior notice.
* Pspice Models are provided "AS IS, WITH NO WARRANTY OF ANY KIND"
*////////////////////////////////////////////////////////////////////
* For more information, and our latest models,
* please visit the models section of our website at
*       http://www.national.com/models/
*////////////////////////////////////////////////////////////////////
* LM7372 SPICE MODEL
* PINOUT IS FOR A AMPLIFIER ONLY
* PINOUT ORDER -IN +IN +V -V OUT
* PINOUT        2   3   8  4  1
.SUBCKT LM7372 2 3 8 4 1
* COMPONENTS F1,R40,C9,C10,C12,C13,V11,V12
* R43, AND MODELS QON AND QOP CHANGE VALUE
* FOR TOTAL SUPPLY VOLTAGE FROM 10 TO 30
* VOLTS
* SUPPLY VOLTS TOTAL   10     30
* F1                  -0.8   -1.0
* C9                   20P    16P
* C10                   8P     7P
* C12,13              0.7P   0.6P
* R40    SLEW         150     40
* V11,V12             2.3     3.0
* R43                 7.5     8.8
* MODEL QON BF        140     240
* MODEL QOP BF        140     240
* VALUES ARE GIVEN FOR 10 AND 30 VOLTS
* MODEL IS SET UP FOR 30 VOLTS
* START 30 VOLT GROUP
F1 40 0 V14 -1.0
R40 40 32 40
C9 30 0 16E-12
C10 29 0 7E-12
C12 18 0 0.6E-12
C13 28 0 0.6E-12
V11 34 37 3.0
V12 36 31 3.0
R43 10 46 8.8
.MODEL QON NPN VAF=150 BF=240
+ IKF=0.7 RE=1 RC=1
.MODEL QOP PNP VAF=150 BF=240
+ IKF=0.7 RE=1 RC=1
* END 30 VOLT GROUP
* START 10 VOLT GROUP
*F1 40 0 V14 -0.8
*R40 40 32 150
*C9 30 0 20E-12
*C10 29 0 8E-12
*C12 18 0 0.7E-12
*C13 28 0 0.7E-12
*V11 34 37 2.3
*V12 36 31 2.3
*R43 10 46 7.5
*.MODEL QON NPN VAF=150 BF=140
*+ IKF=0.7 RE=1 RC=1
*.MODEL QOP PNP VAF=150 BF=140
*+ IKF=0.7 RE=1 RC=1
* END 10 VOLT GROUP
Q17 4 9 10 QOP
Q21 8 11 10 QON
D5 1 8 DD
D6 4 1 DD
D7 12 0 DIN
D8 13 0 DIN
I8 0 12 0.1E-3
I9 0 13 0.1E-3
E2 14 0 4 0 1
E3 15 0 8 0 1
D9 16 0 DVN
D10 17 0 DVN
I10 0 16 0.1E-3
I11 0 17 0.1E-3
E4 18 2 16 17 6.5
G2 3 18 12 13 7.83E-4
R22 4 8 200E3
E5 19 0 15 0 1
E6 20 0 14 0 1
E7 21 0 22 0 1
R30 19 23 1E6
R31 20 24 1E6
R32 21 25 1E6
R33 0 23 100
R34 0 24 100
R35 0 25 100
E10 26 3 25 0 0.11
R36 18 22 1.6E6
R37 22 3 1.6E6
C6 19 23 1E-12
C7 20 24 1E-12
C8 21 25 2E-12
E11 27 26 24 0 0.15
E12 28 27 23 0 0.15
Q22 14 29 11 QDP
Q23 15 29 9 QDN
I12 8 4 5.04E-3
I13 15 11 1.3E-3
I14 9 14 1.3E-3
R38 0 30 10
R39 0 29 10
E15 31 32 33 0 1
E16 32 34 33 0 1
E17 35 0 32 0 1
D11 36 15 DD
D12 14 37 DD
I15 0 38 1E-3
D13 38 0 DD
V13 33 38 -0.71465
C11 32 0 6E-12
D14 39 40 DD
D15 40 41 DD
R41 0 40 1.45E6
E18 42 0 43 0 1
R42 42 44 110
E19 45 0 18 0 1
V14 44 45 0
G3 30 0 32 0 0.1
G4 29 0 30 0 0.1
C14 10 0 2E-12
L1 46 1 2E-9
R45 46 1 1E3
E20 39 35 33 0 1
E21 41 35 33 0 -1
R46 22 0 40E6
I16 18 0 2.7E-6
I17 28 0 2.6E-6
V15 43 28 4E-3
D16 18 47 DIL
D17 28 47 DIL
D18 48 18 DIL
D19 48 28 DIL
V16 15 47 2.6
V17 48 14 2.6
R47 35 0 1E12
R48 0 33 1E12
R49 31 0 1E12
R50 34 0 1E12
R51 41 0 1E12
R52 43 0 1E12
.MODEL QDP PNP
.MODEL QDN NPN
.MODEL DD D
.MODEL DIL D RS=100
.MODEL DC D IS=5.002E-16
.MODEL DVN D KF=2.5E-16
.MODEL DIN D KF=8E-17
.ENDS
