Version 4
SymbolType CELL
RECTANGLE Normal 64 48 -64 -32
WINDOW 40 0 -20 Center 1
WINDOW 38 0 -42 Center 1
SYMATTR SpiceLine2 Tdel=1ms
SYMATTR SpiceModel DelayLaplace
SYMATTR ModelFile Delay.lib
SYMATTR Prefix X
SYMATTR Description symetrical delay
PIN -64 0 LEFT 10
PINATTR PinName In
PINATTR SpiceOrder 1
PIN 64 0 RIGHT 10
PINATTR PinName Out
PINATTR SpiceOrder 2
PIN 0 48 BOTTOM 0
PINATTR PinName COM
PINATTR SpiceOrder 3
