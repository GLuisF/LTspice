Version 4
SymbolType CELL
CIRCLE Normal -12 -31 -21 -39
ARC Normal -16 -24 16 8 -12 4 -12 -20
ARC Normal -16 0 16 32 0 32 -12 4
ARC Normal -16 -48 16 -16 -12 -20 0 -48
WINDOW 0 22 -36 Left 0
SYMATTR Prefix X
SYMATTR Value Hc=16 Bs=0.44 Br=0.1
SYMATTR Value2 N=1000 A=0.0000251 s1=0.0006858 s2=0.0198
SYMATTR SpiceLine i0=0
SYMATTR Description Non-Linear Inductor Model
SYMATTR ModelFile Lbeh.sub
SYMATTR SpiceModel Lmod
SYMATTR SpiceLine2 Rs=1f Rp=10Meg Cp=1f
PIN 0 -48 NONE 0
PINATTR PinName P1
PINATTR SpiceOrder 1
PIN 0 32 NONE 0
PINATTR PinName P2
PINATTR SpiceOrder 2
PIN -32 -16 NONE 8
PINATTR PinName B
PINATTR SpiceOrder 3
PIN -32 0 NONE 8
PINATTR PinName Hf
PINATTR SpiceOrder 4
PIN -32 16 NONE 8
PINATTR PinName Hg
PINATTR SpiceOrder 5
