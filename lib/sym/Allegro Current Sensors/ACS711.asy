Version 4
SymbolType BLOCK
RECTANGLE Normal -113 -64 80 128
WINDOW 0 -16 -64 Bottom 2
WINDOW 3 -14 128 Top 2
SYMATTR Value ACS711
SYMATTR Prefix X
SYMATTR ModelFile ACS711.lib
SYMATTR SpiceLine Sensitivity=110m IRpMAX=12.5 Polarity=2
SYMATTR Description 100 kHz bandwidth sensor with 3 to 5.5V single supply operation. Overcurrent FAULT trips and latches at 100% full scale current. Devices features a ratiometric output from supply voltage.
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
PINATTR PinName FAULT
PINATTR SpiceOrder 6
