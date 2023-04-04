Version 4
SymbolType BLOCK
RECTANGLE Normal -97 -143 97 160
WINDOW 0 1 -144 Bottom 2
WINDOW 3 0 160 Top 2
SYMATTR Value ACS37002
SYMATTR Prefix X
SYMATTR ModelFile ACS37002.lib
SYMATTR SpiceLine VCC_typ=5 polarity=2 package=1 sens1=40m sens2=50m sens3=60m sens4=30m
SYMATTR Description 400 kHz typical bandwidth; non-ratiometric operation with VREF output. 2µs typical response time, with nominal supply voltage of 5V/3.3V. Features a fast and externally configurable overcurrent fault detection.
PIN -96 -128 LEFT 8
PINATTR PinName IP+
PINATTR SpiceOrder 1
PIN -96 144 LEFT 8
PINATTR PinName IP-
PINATTR SpiceOrder 2
PIN 96 -96 RIGHT 8
PINATTR PinName GAIN_SEl_0
PINATTR SpiceOrder 3
PIN 96 -32 RIGHT 8
PINATTR PinName GAIN_SEL_1
PINATTR SpiceOrder 4
PIN 96 -64 RIGHT 8
PINATTR PinName DUT_GND
PINATTR SpiceOrder 5
PIN 96 32 RIGHT 8
PINATTR PinName Viout
PINATTR SpiceOrder 6
PIN 96 128 RIGHT 8
PINATTR PinName FAULT
PINATTR SpiceOrder 7
PIN 96 96 RIGHT 8
PINATTR PinName VCC
PINATTR SpiceOrder 8
PIN 96 64 RIGHT 8
PINATTR PinName VOC
PINATTR SpiceOrder 9
PIN 96 0 RIGHT 8
PINATTR PinName VREF
PINATTR SpiceOrder 10
