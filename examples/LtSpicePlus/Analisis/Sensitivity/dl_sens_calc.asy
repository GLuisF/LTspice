Version 4
SymbolType CELL
RECTANGLE Normal 16 16 -352 -80
TEXT -347 -62 Left 0 Inductance Sensitivity Calculation
TEXT -344 -38 Left 0 Plot V($G_Inductance_sensitivity)
TEXT -307 -15 Left 0 Output = volts per delta uH
WINDOW 39 -178 4 Center 0
SYMATTR SpiceLine Vnom={V_nominal}
SYMATTR Prefix X
SYMATTR Value sens_calc_L
SYMATTR ModelFile sensitivity.lib
PIN 0 0 NONE 8
PINATTR PinName 0V
PINATTR SpiceOrder 1
