Version 4
SymbolType CELL
LINE Normal 44 76 36 84
LINE Normal 64 96 44 76
LINE Normal 64 96 36 84
LINE Normal 40 80 16 64
LINE Normal 16 80 16 16
LINE Normal 16 32 64 0
LINE Normal 16 48 0 48
WINDOW 0 64 24 Left 0
WINDOW 38 64 73 Left 0
WINDOW 39 27 48 Left 0
SYMATTR SpiceModel X-NPN
SYMATTR SpiceLine tol=1 seed=1
SYMATTR Prefix X
SYMATTR Description Bipolar NPN transistor subcircuit
SYMATTR SpiceLine2 EPS=1.0e-6 TOLC=TOL/50  w=2**(seed-1)  RN=if(((run-1)-(2*w)*int((run-1)/(2*w)+EPS))>(w-0.5),1,0)  minmax=(if((run==0),1,1-TOLC/2+TOLC*RN)) A1=(1+TOLC*(rand(seed*100000+run)-.5)) A2=(1+TOLC*(rand(seed*100000+10000+run)-.5)) A3=(1+TOLC*(rand(seed*100000+20000+run)-.5)) A4=(1+TOLC*(rand(seed*100000+30000+run)-.5)) A5=(1+TOLC*(rand(seed*100000+40000+run)-.5)) gaussian=(a1+a2+a2+a4+a5)/5
PIN 64 0 NONE 0
PINATTR PinName C
PINATTR SpiceOrder 1
PIN 0 48 NONE 0
PINATTR PinName B
PINATTR SpiceOrder 2
PIN 64 96 NONE 0
PINATTR PinName E
PINATTR SpiceOrder 3
