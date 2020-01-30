Version 4
SymbolType BLOCK
RECTANGLE Normal 96 112 -96 -95
TEXT 0 -104 Center 0 IP3 measrement box
TEXT -88 -48 Left 0 =>DUT in
TEXT 88 -80 Right 0 DUT out =>
TEXT -88 0 Left 0 Usrc, Rsrc
TEXT -88 -20 Left 0 f1, f2
TEXT 88 -40 Right 0 Rload
TEXT 88 100 Right 0 (dBm @50R)
SYMATTR Description IP3 measurement generator / analyzer ; Set source frequencies f1 and f2, source level Usrc, source resistance Rsrc and input resistance Rload. Set source frequencies to be an integer multiple of the spacing.
PIN -96 -64 LEFT 8
PINATTR PinName source
PINATTR SpiceOrder 1
PIN 96 -64 RIGHT 8
PINATTR PinName test
PINATTR SpiceOrder 2
PIN 96 16 RIGHT 8
PINATTR PinName amp_hl
PINATTR SpiceOrder 3
PIN 96 48 RIGHT 8
PINATTR PinName amp_12
PINATTR SpiceOrder 4
PIN 96 80 RIGHT 8
PINATTR PinName ip3
PINATTR SpiceOrder 5
