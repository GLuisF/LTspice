Version 4
SymbolType CELL
LINE Normal 0 80 0 16
LINE Normal 0 48 -16 48
LINE Normal 0 32 48 0
LINE Normal 24 80 0 64
LINE Normal 28 74 20 86
LINE Normal 48 96 28 74
LINE Normal 20 86 48 96
LINE Normal 80 128 80 64
LINE Normal 80 80 128 48
LINE Normal 104 128 80 112
LINE Normal 108 122 100 134
LINE Normal 128 144 108 122
LINE Normal 100 134 128 144
LINE Normal 80 96 48 96
LINE Normal 128 0 48 0
LINE Normal 128 48 128 0
WINDOW 0 128 80 Left 0
WINDOW 38 128 112 Left 0
WINDOW 39 6 38 Left 0
SYMATTR SpiceModel D-NPN
SYMATTR SpiceLine tol=1 seed=1
SYMATTR Prefix X
SYMATTR Description Bipolar NPN Darlington
SYMATTR SpiceLine2 EPS=1.0e-6 TOLC=TOL/50  w=2**(seed-1)  RN=if(((run-1)-(2*w)*int((run-1)/(2*w)+EPS))>(w-0.5),1,0)  minmax=(if((run==0),1,1-TOLC/2+TOLC*RN)) A1=(1+TOLC*(rand(seed*100000+run)-.5)) A2=(1+TOLC*(rand(seed*100000+10000+run)-.5)) A3=(1+TOLC*(rand(seed*100000+20000+run)-.5)) A4=(1+TOLC*(rand(seed*100000+30000+run)-.5)) A5=(1+TOLC*(rand(seed*100000+40000+run)-.5)) gaussian=(a1+a2+a2+a4+a5)/5
PIN 128 0 NONE 0
PINATTR PinName C
PINATTR SpiceOrder 1
PIN -16 48 NONE 0
PINATTR PinName B
PINATTR SpiceOrder 2
PIN 128 144 NONE 0
PINATTR PinName E
PINATTR SpiceOrder 3
