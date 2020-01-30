Version 4
SymbolType CELL
LINE Normal 48 52 48 96
LINE Normal 16 80 48 80
LINE Normal 40 52 48 52
LINE Normal 16 52 40 48
LINE Normal 16 52 40 56
LINE Normal 40 48 40 56
LINE Normal 16 16 16 88
LINE Normal 0 80 8 80
LINE Normal 8 56 8 80
LINE Normal 48 24 16 24
LINE Normal 48 0 48 24
LINE Normal 8 48 8 24
LINE Normal 8 16 8 16
LINE Normal 0 48 8 48
WINDOW 0 64 24 Left 0
WINDOW 38 65 72 Left 0
WINDOW 39 64 48 Left 0
SYMATTR SpiceModel X-DG-NMOS
SYMATTR SpiceLine tol=1 seed=1
SYMATTR Prefix X
SYMATTR Description N-Channel  DG MOSFET transistor
SYMATTR SpiceLine2 EPS=1.0e-6 TOLC=TOL/50  w=2**(seed-1)  RN=if(((run-1)-(2*w)*int((run-1)/(2*w)+EPS))>(w-0.5),1,0)  minmax=(if((run==0),1,1-TOLC/2+TOLC*RN)) A1=(1+TOLC*(rand(seed*100000+run)-.5)) A2=(1+TOLC*(rand(seed*100000+10000+run)-.5)) A3=(1+TOLC*(rand(seed*100000+20000+run)-.5)) A4=(1+TOLC*(rand(seed*100000+30000+run)-.5)) A5=(1+TOLC*(rand(seed*100000+40000+run)-.5)) gaussian=(a1+a2+a2+a4+a5)/5
PIN 48 96 NONE 0
PINATTR PinName S
PINATTR SpiceOrder 1
PIN 48 0 NONE 0
PINATTR PinName D
PINATTR SpiceOrder 2
PIN 0 48 NONE 0
PINATTR PinName G2
PINATTR SpiceOrder 3
PIN 0 80 NONE 0
PINATTR PinName G1
PINATTR SpiceOrder 4
