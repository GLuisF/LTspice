Version 4
SymbolType CELL
LINE Normal 0 44 -4 48
LINE Normal 32 44 36 40
LINE Normal 0 44 32 44
LINE Normal 0 20 32 20
LINE Normal 32 20 16 44
LINE Normal 0 20 16 44
LINE Normal 16 0 16 20
LINE Normal 16 44 16 64
WINDOW 0 39 0 Left 0
WINDOW 38 38 64 Left 0
WINDOW 39 40 31 Left 0
SYMATTR SpiceModel X-Z-DIODE
SYMATTR SpiceLine tol=1 seed=1
SYMATTR Prefix X
SYMATTR Description Zener Diode
SYMATTR SpiceLine2 EPS=1.0e-6 TOLC=TOL/50  w=2**(seed-1)  RN=if(((run-1)-(2*w)*int((run-1)/(2*w)+EPS))>(w-0.5),1,0)  minmax=(if((run==0),1,1-TOLC/2+TOLC*RN)) A1=(1+TOLC*(rand(seed*100000+run)-.5)) A2=(1+TOLC*(rand(seed*100000+10000+run)-.5)) A3=(1+TOLC*(rand(seed*100000+20000+run)-.5)) A4=(1+TOLC*(rand(seed*100000+30000+run)-.5)) A5=(1+TOLC*(rand(seed*100000+40000+run)-.5)) gaussian=(a1+a2+a2+a4+a5)/5
PIN 16 0 NONE 0
PINATTR PinName +
PINATTR SpiceOrder 1
PIN 16 64 NONE 0
PINATTR PinName -
PINATTR SpiceOrder 2
