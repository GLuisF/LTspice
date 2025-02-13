* (C) ACME Semiconductor, Inc. 2009
*
*              ,non-inverting input
*              |   ,inverting input
*              |   |   ,positive power supply
*              |   |   |   ,negative power supply
*              |   |   |   |   ,output
*              |   |   |   |   |
.SUBCKT ACME1 IN+ IN-  V+  V- Out
RC1 V+ 80 6631
RC2 V+ 90 6631
Q1 80 102 10 QM1
Q2 90 103 11 QM2
RB1 IN- 102 500
RB2 IN+ 103 500
DDM1 102 104 DM2
DDM3 104 103 DM2
DDM2 103 105 DM2
DDM4 105 102 DM2
C1 80 90 8.66e-12
RE1 10 12 1409
RE2 11 12 1409
IEE 12 V- 9.901e-6
RE 12 0 20200000
CE 12 0 1.579E-12
GCM 0 8 12 0 7.558E-11
GA 8 0 80 90 1.508E-04
R2 8 0 100000
C2 1 8 3e-11
GB 1 0 8 0 1538
RO1 1 Out 25.75
RO2 1 0 34.25
RC 17 0 4.228e-6
GC 0 17 Out 0 236500
D1 1 17 DM1
D2 17 1 DM1
D3 Out 13 DM2
D4 14 Out DM2
VC V+ 13 1.803
VE 14 V- 1.803
IP V+ V- 0.00159
DSUB V- V+ DM2
.MODEL QM1 NPN(IS=8e-16 BF=5500)
.MODEL QM2 NPN(IS=8.006E-16 BF=9900)
.MODEL DM1 D(IS=2.331e-8)
.MODEL DM2 D(IS=8e-16)
.ENDS ACME1