Version 4
SymbolType BLOCK
RECTANGLE Normal -112 -64 80 129
WINDOW 0 -24 -72 Bottom 2
WINDOW 3 -12 129 Top 2
SYMATTR Value ACS723
SYMATTR Prefix X
SYMATTR ModelFile ACS723.lib
SYMATTR SpiceLine Sensitivity=400m Polarity=2
SYMATTR Description Pin selectable bandwidth: 80kHz for high bandwidth applications or 20kHz for low noise performance. Analog ratiometric output from supply voltage; nominal supply voltage 5V.
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
PINATTR PinName BW_SEL
PINATTR SpiceOrder 6
