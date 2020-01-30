Version 4
SymbolType CELL
LINE Normal -32 -32 32 0
LINE Normal -32 32 32 0
LINE Normal -28 -16 -20 -16
LINE Normal -28 16 -20 16
LINE Normal -24 20 -24 12
LINE Normal 0 -32 0 -16
LINE Normal 0 32 0 16
LINE Normal 7 -20 11 -20
LINE Normal 9 -22 9 -18
LINE Normal 7 21 11 21
LINE Normal -28 4 -36 4
LINE Normal -32 -5 -28 4
LINE Normal -36 4 -32 -5
LINE Normal -32 -32 -32 -5
LINE Normal -32 32 -32 4
WINDOW 0 24 -24 Left 0
WINDOW 123 25 24 Left 0
SYMATTR Value paramCFBopamp DCgain=1e3  Rfb=1k fmargin=3 GBW=
SYMATTR Value2 100MegHz
SYMATTR SpiceLine  Rinv=10 Linv=10n slew=5 Rout=10 VsatPos=1.5V VsatNeg=1.5V
SYMATTR SpiceLine2 Iq=10mA curlimSource=60mA curlimSink=60mA
SYMATTR ModelFile PARAMopamps.lib
SYMATTR Prefix X
SYMATTR Description idealized current feedback opamp.  Note: open loop transresistance is DCgain*Rfb.
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





