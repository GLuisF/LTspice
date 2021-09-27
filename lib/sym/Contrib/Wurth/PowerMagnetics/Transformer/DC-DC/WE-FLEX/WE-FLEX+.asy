Version 4
SymbolType BLOCK
LINE Normal 64 -32 32 -32
LINE Normal 64 16 32 16
LINE Normal -32 16 -64 16
LINE Normal -32 -32 -64 -32
LINE Normal -5 16 -5 -32
LINE Normal 5 16 5 -32
RECTANGLE Normal 64 32 -64 -48
CIRCLE Normal -27 -21 -34 -28
CIRCLE Normal 35 -21 28 -28
ARC Normal -40 -16 -24 0 -32 0 -32 -16
ARC Normal -40 -32 -24 -16 -32 -16 -32 -32
ARC Normal -40 0 -24 16 -32 16 -32 0
ARC Normal 40 -16 24 0 32 -16 32 0
ARC Normal 40 -32 24 -16 32 -32 32 -16
ARC Normal 40 0 24 16 32 0 32 16
TEXT -62 -41 Left 1 PR1
TEXT -62 24 Left 1 PR2
TEXT 33 -41 Left 1 PS1
TEXT 32 24 Left 1 PS2
WINDOW 0 0 -70 Bottom 2
WINDOW 38 0 -60 Center 1
SYMATTR Description Flexible Transformer for SMPS (higher power) // The 6 identical windings can be connected in many configurations to produce the desired inductance, dc resistance and turns ratio. For configuration instructions, go to www.we-online.com/ltspice-flex or find in the LTspice folder \lib\ sym\ Contrib\ Wurth\ Transformers\ DC-DC\ WE-FLEX\ .
SYMATTR SpiceModel WE-FLEX+_ETD29_749197101
SYMATTR Prefix X
SYMATTR ModelFile WE-FLEX+.lib
SYMATTR InstName T
SYMATTR Value temp = 25
SYMATTR Value2 config_P=1 config_S=1
PIN -64 -32 NONE 8
PINATTR PinName PR1
PINATTR SpiceOrder 1
PIN -64 16 NONE 8
PINATTR PinName PR2
PINATTR SpiceOrder 2
PIN 64 -32 NONE 8
PINATTR PinName PS1
PINATTR SpiceOrder 3
PIN 64 16 NONE 8
PINATTR PinName PS2
PINATTR SpiceOrder 4
