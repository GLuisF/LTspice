Version 4
SymbolType CELL
RECTANGLE Normal 16 16 -367 -81
TEXT -361 -70 Left 0 Capacitance Sensitivity Calculation
TEXT -362 -50 Left 0 Plot V($G_Capacitance_sensitivity)
TEXT -345 -29 Left 0 Output = Volts/ Delta microferad
WINDOW 39 -192 -6 Center 0
SYMATTR SpiceLine Vnom={V_nominal}
SYMATTR Prefix X
SYMATTR Value sens_calc_c
SYMATTR ModelFile sensitivity.lib
PIN 0 0 NONE 8
PINATTR PinName 0V
PINATTR SpiceOrder 1
