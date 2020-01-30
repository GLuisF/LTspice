Version 4
SymbolType CELL
RECTANGLE Normal 80 64 -80 -31
WINDOW 0 -5 -45 Center 0
WINDOW 38 23 85 Left 0
WINDOW 39 -1 21 Center 0
SYMATTR SpiceModel SUB-NAME
SYMATTR SpiceLine tol=1 seed=1
SYMATTR Prefix X
SYMATTR Description Universal Voltage Regulator
SYMATTR SpiceLine2 EPS=1.0e-6 TOLC=TOL/50  w=2**(seed-1)  RN=if(((run-1)-(2*w)*int((run-1)/(2*w)+EPS))>(w-0.5),1,0)  minmax=(if((run==0),1,1-TOLC/2+TOLC*RN)) A1=(1+TOLC*(rand(seed*100000+run)-.5)) A2=(1+TOLC*(rand(seed*100000+10000+run)-.5)) A3=(1+TOLC*(rand(seed*100000+20000+run)-.5)) A4=(1+TOLC*(rand(seed*100000+30000+run)-.5)) A5=(1+TOLC*(rand(seed*100000+40000+run)-.5)) gaussian=(a1+a2+a2+a4+a5)/5
PIN -80 0 LEFT 8
PINATTR PinName IN
PINATTR SpiceOrder 1
PIN 0 64 BOTTOM 8
PINATTR PinName ADJ
PINATTR SpiceOrder 2
PIN 80 0 RIGHT 8
PINATTR PinName OUT
PINATTR SpiceOrder 3
