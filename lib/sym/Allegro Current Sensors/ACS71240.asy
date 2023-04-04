Version 4
SymbolType BLOCK
RECTANGLE Normal -97 -64 96 128
WINDOW 0 -1 -64 Bottom 2
WINDOW 3 0 128 Top 2
SYMATTR Prefix X
SYMATTR Value ACS71240
SYMATTR ModelFile ACS71240.lib
SYMATTR SpiceLine Sensitivity=100m IRpMAX=20 Polarity=2 VCC_typ=5
SYMATTR Description High-bandwidth 120 kHz analog output. Single supply operation with nonratiometric output at 3.3 and 5 V options. Overcurrent FAULT available between 50% and 200% IP with 1.5 µs (typ) response time.
PIN -96 -32 LEFT 8
PINATTR PinName IP+
PINATTR SpiceOrder 1
PIN -96 96 LEFT 8
PINATTR PinName IP-
PINATTR SpiceOrder 2
PIN 96 -32 RIGHT 8
PINATTR PinName VCC
PINATTR SpiceOrder 3
PIN 96 64 RIGHT 8
PINATTR PinName Viout
PINATTR SpiceOrder 4
PIN 96 16 RIGHT 8
PINATTR PinName FAULT
PINATTR SpiceOrder 5
PIN 96 112 RIGHT 8
PINATTR PinName DUT_GND
PINATTR SpiceOrder 6
