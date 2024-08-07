*NDT452AP at Temp. Electrical Model 
*-------------------------------------
.SUBCKT NDT452AP 20 10 30 50
*20=DRAIN 10=GATE 30=SOURCE 50=VTEMP
Rg 10 11x 1
Rdu 12x 1 1u
M1 2 1 4x 4x DMOS L=1u W=1u
.MODEL DMOS PMOS(VTO=-1.9 KP=8.46
+THETA=.1 VMAX=3E5 LEVEL=3)
Cgs 1 5x 564p
Rd 20 4 1.15E-2 
Dds 4 5x DDS
.MODEL DDS D(M=4.09E-1 VJ=7.79E-1 CJO=931p)
Dbody 20 5x DBODY
.MODEL DBODY D(IS=5.38E-13 N=1.02303 RS=.0008 TT=33.72n)
Ra 4 2 1.15E-2 
Rs 5x 5 0.5m
Ls 5 30 0.5n
M2 1 8 6 6 INTER
E2 8 6 4 1 2
.MODEL INTER PMOS(VTO=0 KP=10 LEVEL=1)
Cgdmax 7 4 1200p
Rcgd 7 4 10meg
Dgd 4 6 DGD
Rdgd 4 6 10meg
.MODEL DGD D(M=4.89E-1 VJ=2.12E-1 CJO=1200p)
M3 7 9 1 1 INTER
E3 9 1 4 1 -2
*ZX SECTION
EOUT 4x 6x poly(2) (1x,0) (3x,0) 0 0 0 0 1
FCOPY 0 3x VSENSE 1
RIN 1x 0 1G
VSENSE 6x 5x 0
RREF 3x 0 10m
*TEMP SECTION
ED 101 0 VALUE {V(50,100)}
VAMB 100 0 25
EKP 1x 0 101 0 .015
*VTO TEMP SECTION
EVTO 102 0 101 0 .003
EVT 11x 12x 102 0 1
*DIODE THEMO BREAKDOWN SECTION
EBL VB1 VB2 101 0 .08
VBLK VB2 0 30
D DB1 20 DBLK
.MODEL DBLK D(IS=1E-14 CJO=.1p RS=.1)
EDB 0 DB1 VB1 0 1
.ENDS NDT452AP
*NDT452AP (Rev.A) 7/30/02 **ST

