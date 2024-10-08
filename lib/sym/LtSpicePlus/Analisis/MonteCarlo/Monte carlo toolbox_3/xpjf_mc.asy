Version 4
SymbolType CELL
LINE Normal 24 16 24 80
LINE Normal 48 72 48 96
LINE Normal 24 72 48 72
LINE Normal 48 24 48 0
LINE Normal 24 24 48 24
LINE Normal 16 64 24 64
LINE Normal 16 68 0 64
LINE Normal 16 60 0 64
LINE Normal 16 60 16 68
WINDOW 0 64 24 Left 0
WINDOW 38 64 72 Left 0
WINDOW 39 64 47 Left 0
SYMATTR SpiceModel X-PJF
SYMATTR SpiceLine tol=1 seed=1
SYMATTR Prefix X
SYMATTR Description P-Channel JFET transistor
SYMATTR SpiceLine2 EPS=1.0e-6 TOLC=TOL/50  w=2**(seed-1)  RN=if(((run-1)-(2*w)*int((run-1)/(2*w)+EPS))>(w-0.5),1,0)  minmax=(if((run==0),1,1-TOLC/2+TOLC*RN)) A1=(1+TOLC*(rand(seed*100000+run)-.5)) A2=(1+TOLC*(rand(seed*100000+10000+run)-.5)) A3=(1+TOLC*(rand(seed*100000+20000+run)-.5)) A4=(1+TOLC*(rand(seed*100000+30000+run)-.5)) A5=(1+TOLC*(rand(seed*100000+40000+run)-.5)) gaussian=(a1+a2+a2+a4+a5)/5
PIN 48 0 NONE 0
PINATTR PinName D
PINATTR SpiceOrder 1
PIN 0 64 NONE 0
PINATTR PinName G
PINATTR SpiceOrder 2
PIN 48 96 NONE 0
PINATTR PinName S
PINATTR SpiceOrder 3
