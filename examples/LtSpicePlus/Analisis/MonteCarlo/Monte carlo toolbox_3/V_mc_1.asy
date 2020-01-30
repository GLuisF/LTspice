Version 4
SymbolType CELL
LINE Normal 16 16 16 33
LINE Normal 16 96 16 82
RECTANGLE Normal 49 82 -16 32
CIRCLE Normal 49 82 -16 33
TEXT 9 43 Left 0 +
TEXT 12 73 Left 0 -
TEXT -12 58 Left 0 V.mc
WINDOW 0 -79 57 Left 0
WINDOW 38 56 33 Left 0
WINDOW 39 57 82 Left 0
WINDOW 40 57 58 Left 0
SYMATTR SpiceModel V_min_0
SYMATTR SpiceLine V=1 Tol=1 Seed=1
SYMATTR Prefix X
SYMATTR Description Voltage source for MC analysis (drop down)
SYMATTR ModelFile VMC.lib
SYMATTR SpiceLine2 AC=1 Rser=0.1 Cpar=1p
PIN 16 16 NONE 0
PINATTR PinName A
PINATTR SpiceOrder 1
PIN 16 96 NONE 0
PINATTR PinName B
PINATTR SpiceOrder 2
