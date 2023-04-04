Version 4
SymbolType BLOCK
RECTANGLE Normal -112 -64 80 129
WINDOW 0 -15 -64 Bottom 2
WINDOW 3 -15 128 Top 2
SYMATTR Value ACS725
SYMATTR Prefix X
SYMATTR ModelFile ACS725.lib
SYMATTR Description High-bandwidth 120 kHz analog output with filter pin used to filter the output for improved resolution at lower bandwidth. Nominal supply voltage of 3.3V.
SYMATTR SpiceLine sensitivity=33m Polarity=2
PIN -112 -32 LEFT 8
PINATTR PinName IP+
PINATTR SpiceOrder 1
PIN -112 96 LEFT 8
PINATTR PinName IP-
PINATTR SpiceOrder 2
PIN 80 112 RIGHT 8
PINATTR PinName DUT_GND
PINATTR SpiceOrder 3
PIN 80 -32 RIGHT 8
PINATTR PinName VCC
PINATTR SpiceOrder 4
PIN 80 16 RIGHT 8
PINATTR PinName Viout
PINATTR SpiceOrder 5
PIN 80 64 RIGHT 8
PINATTR PinName Filter
PINATTR SpiceOrder 6
