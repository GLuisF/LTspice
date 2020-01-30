Version 4
SymbolType CELL
LINE Normal -32 -32 32 0
LINE Normal -32 32 32 0
LINE Normal -32 -32 -32 32
LINE Normal -28 -16 -20 -16
LINE Normal -28 16 -20 16
LINE Normal -24 20 -24 12
LINE Normal 0 -32 0 -16
LINE Normal 0 32 0 16
LINE Normal 7 -20 11 -20
LINE Normal 9 -22 9 -18
LINE Normal 7 21 11 21
WINDOW 0 25 -24 Left 0
WINDOW 123 25 25 Left 0
SYMATTR Value paramVFBopamp DCgain=1e5 fmargin=4 GBW=
SYMATTR Value2 10MegHz
SYMATTR SpiceLine  slew=1 Rout=100 VsatPos=1.5V VsatNeg=1.5V
SYMATTR SpiceLine2 Iq=4mA curlimSource=40mA curlimSink=40mA
SYMATTR ModelFile PARAMopamps.lib
SYMATTR Prefix X
SYMATTR Description idealized voltage feedback opamp
PIN -32 16 NONE 0
PINATTR PinName In+
PINATTR SpiceOrder 1
PIN -32 -16 NONE 0
PINATTR PinName In-
PINATTR SpiceOrder 2
PIN 0 -32 NONE 0
PINATTR PinName V+
PINATTR SpiceOrder 3
PIN 0 32 NONE 0
PINATTR PinName V-
PINATTR SpiceOrder 4
PIN 32 0 NONE 0
PINATTR PinName OUT
PINATTR SpiceOrder 5




