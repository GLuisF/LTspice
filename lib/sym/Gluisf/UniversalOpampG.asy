Version 4
SymbolType CELL
LINE Normal -32 -64 80 0
LINE Normal -32 64 80 0
LINE Normal -32 -64 -32 64
LINE Normal -28 -32 -20 -32
LINE Normal -28 32 -20 32
LINE Normal -24 36 -24 28
LINE Normal 16 -48 16 -36
LINE Normal 16 48 16 36
LINE Normal 21 -39 29 -39
LINE Normal 25 -43 25 -35
LINE Normal 23 39 31 39
WINDOW 0 45 -38 Left 2
SYMATTR SpiceModel level2
SYMATTR Prefix X
SYMATTR Description Universal Opamp model that allows 4 different levels of simulation accuracy.  See ./examples/Educational/UniversalOpamp.asc for details.  En and in are equivalent voltage and current noises.  Enk and ink are the respective corner frequencies.  Phimargin is used to set the 2nd pole or delay to the approximate phase margin for level3a and level3b.
SYMATTR Value2 Avol=1Meg GBW=10Meg Slew=10Meg
SYMATTR SpiceLine ilimit=25m rail=0 Vos=0 phimargin=45
SYMATTR SpiceLine2 en=0 enk=0 in=0 ink=0 Rin=500Meg
SYMATTR ModelFile UniversalOpamps.sub
PIN -32 32 NONE 0
PINATTR PinName In+
PINATTR SpiceOrder 1
PIN -32 -32 NONE 0
PINATTR PinName In-
PINATTR SpiceOrder 2
PIN 16 -48 NONE 0
PINATTR PinName V+
PINATTR SpiceOrder 3
PIN 16 48 NONE 0
PINATTR PinName V-
PINATTR SpiceOrder 4
PIN 80 0 NONE 0
PINATTR PinName OUT
PINATTR SpiceOrder 5
