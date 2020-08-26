Version 4
SymbolType CELL
LINE Normal -64 0 -80 0
LINE Normal 64 0 80 0
RECTANGLE Normal 64 32 -64 -32
WINDOW 40 0 20 Center 0
WINDOW 0 0 -47 Center 0
WINDOW 38 0 48 Center 0
SYMATTR SpiceLine2 f=400Hz
SYMATTR SpiceModel pwm-modulator
SYMATTR Prefix X
SYMATTR Description PWM-Modulator
SYMATTR ModelFile PWM-Modulator.sub
PIN -80 0 LEFT 20
PINATTR PinName Mod
PINATTR SpiceOrder 1
PIN 80 0 RIGHT 20
PINATTR PinName Out
PINATTR SpiceOrder 2
