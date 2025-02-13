Version 4
SymbolType CELL
LINE Normal -19 -48 -96 -48
LINE Normal 96 -48 19 -48
LINE Normal 0 -16 0 16 2
LINE Normal 15 -58 -13 -49
LINE Normal -48 32 -48 0
LINE Normal -16 16 -48 0
LINE Normal -48 32 -16 16
LINE Normal -48 16 -96 16 2
LINE Normal 0 16 -16 16 2
RECTANGLE Normal -96 -128 96 128
CIRCLE Normal -13 -45 -19 -51
CIRCLE Normal 19 -45 13 -51
CIRCLE Normal 32 -16 -32 -80 2
TEXT 0 50 Center 2 ADI
TEXT -73 -47 Bottom 2 RF1
TEXT 72 -47 Bottom 2 RFC
TEXT -73 16 Bottom 2 IN
WINDOW 0 64 -128 Bottom 2
WINDOW 3 0 80 Center 2
SYMATTR Value ADGM1304
SYMATTR Prefix X
SYMATTR Description 0 Hz/dc to 14 GHz, Single-Pole, Four-Throw MEMS Switch with Integrated Driver (Switch shown for a logic 0 input)
SYMATTR SpiceLine time_drift=10
SYMATTR ModelFile ADGM1304.sub
PIN -96 16 NONE 8
PINATTR PinName IN
PINATTR SpiceOrder 1
PIN 96 -48 NONE 8
PINATTR PinName RFC
PINATTR SpiceOrder 2
PIN -96 -48 NONE 8
PINATTR PinName RF1
PINATTR SpiceOrder 3
PIN 0 128 BOTTOM 8
PINATTR PinName GND
PINATTR SpiceOrder 4
PIN 0 -128 TOP 8
PINATTR PinName Vdd
PINATTR SpiceOrder 5
