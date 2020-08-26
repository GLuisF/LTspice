Version 4
SymbolType CELL
RECTANGLE Normal 35 16 -335 -80
TEXT -328 -64 Left 0 Resistance Sensitivity Calculation
TEXT -330 -40 Left 0 Plot V($G_Resistance_sensitivity)
TEXT -278 -18 Left 0 Output = Volts/Delta Ohm
WINDOW 39 -159 3 Center 0
SYMATTR SpiceLine Vnom={V_nominal}
SYMATTR Prefix X
SYMATTR Value sens_calc_R
SYMATTR ModelFile sensitivity.lib
SYMATTR Description Delta resistance sensitivity probe
PIN 0 0 NONE 8
PINATTR PinName 0V
PINATTR SpiceOrder 1
