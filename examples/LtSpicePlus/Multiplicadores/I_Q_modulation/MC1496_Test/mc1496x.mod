*** MC1496 BALANCED MODULATOR/DEMODULATOR ***
*    
*  MC1496  Chip without lead incuctance, lead capacitance and substrate 
*          capacitance. This gives 40% of reduction in simulation time.
*          This chip model is sufficient for frequencies below 100MHz
*  MC1496M SOIC package
*  MC1496P PDIP 
*
*
*** Basic transistor model ***
* .MODEL NPN_1496 NPN(Is=1e-14 BF=80 Cjc=1p Cje=1p tf=0.3e-9 Rb=50 VAF=100 RC=10)
*
* CA3046 NPN model from Intersil
* created using Parts release 6.3a on 02/03/97 at 15:57
* Parts is a MicroSim product.
*** RB=50Ohm added to original CA3046 model, Helmut ***
*.MODEL CA3046 NPN
.MODEL NPN_1496 NPN
+ IS=10.000E-15
+ BF=145.76
+ VAF=100
+ IKF=46.747E-3
+ ISE=114.23E-15
+ NE=1.4830
+ BR=.1001
+ VAR=100
+ IKR=10.010E-3
+ ISC=10.000E-15
+ RC=10
+ CJE=1.0260E-12
+ MJE=.33333
+ CJC=991.79E-15
+ MJC=.33333
+ TF=277.09E-12
+ XTF=309.38
+ VTF=16.364
+ ITF=1.7597
+ TR=10.000E-9
+ RB=50
 


*** Selfmade MC1496M Model (M=SOIC) ***
* Transistor model used from Intersil CA3046  
* Helmut Sennewald V1.0
*
* SUBSTRATE is at node S/14
*
* Physical pins:   8  10 1  4  2  3  14 5 6  12
* Spice Pin order: C+ C- S+ S- G2 G3 V- B O+ O-
.SUBCKT MC1496M    8  10 1  4  2  3  14 5 6  12
*
.param Cs=0.5p ; node to substrate capacitance
.param Lp=5n ; package pin inductance
.param Cp=0.5p ; package pin capacitance
*
Q1 6_ 8_ e12 0 NPN_1496
Q2 12_ 10_ e12 0 NPN_1496
Q3 6_ 10_ e34 0 NPN_1496
Q4 12_ 8_ e34 0 NPN_1496
Q5 e12 4_ 3_ 0 NPN_1496
Q6 e34 1_ 2_ 0 NPN_1496
Q7 3_ 5_ e7 0 NPN_1496
Q8 2_ 5_ e8 0 NPN_1496
Q9 5_ 5_ e9 0 NPN_1496
R7 e7 S 500
R8 e8 S 500
R9 e9 S 500
C1_2_ 1_ 2_ {Cp*1.0}
C3_4_ 4_ 3_ {Cp*0.6}
C5_6_ 6_ 5_ {Cp*0.8}
L4 4 4_ {Lp*0.5}
L1 1 1_ {Lp*1.0}
L10 10 10_ {Lp*0.6}
L8 8 8_ {Lp*1.0}
L2 2_ 2 {Lp*0.8}
L3 3_ 3 {Lp*0.6}
L6 6 6_ {Lp*0.8}
L12 12 12_ {Lp*0.6}
L5 5 5_ {Lp*0.6}
C6S e34 S {Cs}
C5S e12 S {Cs}
C7S 3_ S {Cs}
C10S 1_ S {Cs}
C11S 5_ S {Cs}
C1S 6_ S {Cs}
C2S 12_ S {Cs}
C4S 8_ S {Cs}
C3S 10_ S {Cs}
L14 14 S {Lp*1.0}
C5_4_ 4_ 5_ {Cp*0.6}
C6 6 0 {Cp*0.8}
C12 12 0 {Cp*0.6}
C54 4 5 {Cp*0.6}
C56 6 5 {Cp*0.7}
C23 2 3 {Cp*0.8}
C2_3_ 2_ 3_ {Cp*0.7}
C6_ 6_ 0 {Cp*0.8}
C12_ 12_ 0 {Cp*0.6}
C1 1 0 {Cp*1.0}
C4 4 0 {Cp*0.6}
C10 10 0 {Cp*0.6}
C5 5 0 {Cp*0.6}
C8 8 0 {Cp*1.0}
C3 3 0 {Cp*0.6}
C2 0 2 {Cp*0.8}
C10_ 10_ 0 {Cp*0.6}
C8_ 8_ 0 {Cp*1.0}
C4_ 4_ 0 {Cp*0.6}
C1_ 1_ 0 {Cp*1.0}
C5_ 5_ 0 {Cp*0.6}
C14 14 0 {Cp*1.0}
C14_ S 0 {Cp*1.0}
C3_ 3_ 0 {Cp*0.6}
C2_ 0 2_ {Cp*0.8}
C8S 2_ S {Cs}
C9S 4_ S {Cs}
C21 1 2 {Cp*1.0}
C34 3 4 {Cp*0.6}
C7 e7 S {Cs*2}
C9 e8 S {Cs*2}
C11 e9 S {Cs*2}
*
.ENDS MC1496M
*


*** Selfmade MC1496P Model (P=PDIP) ***
* Transistor model used from Intersil CA3046  
* Helmut Sennewald V1.0
*
* SUBSTRATE is at node S/14
*
* Physical pins:   8  10 1  4  2  3  14 5 6  12
* Spice Pin order: C+ C- S+ S- G2 G3 V- B O+ O-
.SUBCKT MC1496P    8  10 1  4  2  3  14 5 6  12
*
.param Cs=0.5p ; node to substrate capacitance
.param Lp=10n ; package pin inductance
.param Cp=0.5p ; package pin capacitance
*
Q1 6_ 8_ e12 0 NPN_1496
Q2 12_ 10_ e12 0 NPN_1496
Q3 6_ 10_ e34 0 NPN_1496
Q4 12_ 8_ e34 0 NPN_1496
Q5 e12 4_ 3_ 0 NPN_1496
Q6 e34 1_ 2_ 0 NPN_1496
Q7 3_ 5_ e7 0 NPN_1496
Q8 2_ 5_ e8 0 NPN_1496
Q9 5_ 5_ e9 0 NPN_1496
R7 e7 S 500
R8 e8 S 500
R9 e9 S 500
C1_2_ 1_ 2_ {Cp*1.0}
C3_4_ 4_ 3_ {Cp*0.6}
C5_6_ 6_ 5_ {Cp*0.8}
L4 4 4_ {Lp*0.5}
L1 1 1_ {Lp*1.0}
L10 10 10_ {Lp*0.6}
L8 8 8_ {Lp*1.0}
L2 2_ 2 {Lp*0.8}
L3 3_ 3 {Lp*0.6}
L6 6 6_ {Lp*0.8}
L12 12 12_ {Lp*0.6}
L5 5 5_ {Lp*0.6}
C6S e34 S {Cs}
C5S e12 S {Cs}
C7S 3_ S {Cs}
C10S 1_ S {Cs}
C11S 5_ S {Cs}
C1S 6_ S {Cs}
C2S 12_ S {Cs}
C4S 8_ S {Cs}
C3S 10_ S {Cs}
L14 14 S {Lp*1.0}
C5_4_ 4_ 5_ {Cp*0.6}
C6 6 0 {Cp*0.8}
C12 12 0 {Cp*0.6}
C54 4 5 {Cp*0.6}
C56 6 5 {Cp*0.7}
C23 2 3 {Cp*0.8}
C2_3_ 2_ 3_ {Cp*0.7}
C6_ 6_ 0 {Cp*0.8}
C12_ 12_ 0 {Cp*0.6}
C1 1 0 {Cp*1.0}
C4 4 0 {Cp*0.6}
C10 10 0 {Cp*0.6}
C5 5 0 {Cp*0.6}
C8 8 0 {Cp*1.0}
C3 3 0 {Cp*0.6}
C2 0 2 {Cp*0.8}
C10_ 10_ 0 {Cp*0.6}
C8_ 8_ 0 {Cp*1.0}
C4_ 4_ 0 {Cp*0.6}
C1_ 1_ 0 {Cp*1.0}
C5_ 5_ 0 {Cp*0.6}
C14 14 0 {Cp*1.0}
C14_ S 0 {Cp*1.0}
C3_ 3_ 0 {Cp*0.6}
C2_ 0 2_ {Cp*0.8}
C8S 2_ S {Cs}
C9S 4_ S {Cs}
C21 1 2 {Cp*1.0}
C34 3 4 {Cp*0.6}
C7 e7 S {Cs*2}
C9 e8 S {Cs*2}
C11 e9 S {Cs*2}
*
.ENDS MC1496P
*


*** Selfmade MC1496 Model Chip ***
* Transistor model used from Intersil CA3046  
* Helmut Sennewald V1.0
*
* SUBSTRATE is at node S/14
*
* Physical pins:   8  10 1  4  2  3  14 5 6  12
* Spice Pin order: C+ C- S+ S- G2 G3 V- B O+ O-
.SUBCKT MC1496    8_  10_ 1_  4_  2_  3_  S  5_ 6_  12_
*
Q1 6_ 8_ e12 0 NPN_1496
Q2 12_ 10_ e12 0 NPN_1496
Q3 6_ 10_ e34 0 NPN_1496
Q4 12_ 8_ e34 0 NPN_1496
Q5 e12 4_ 3_ 0 NPN_1496
Q6 e34 1_ 2_ 0 NPN_1496
Q7 3_ 5_ e7 0 NPN_1496
Q8 2_ 5_ e8 0 NPN_1496
Q9 5_ 5_ e9 0 NPN_1496
R7 e7 S 500
R8 e8 S 500
R9 e9 S 500
*
.ENDS MC1496
*