Version 4
SymbolType CELL
RECTANGLE Normal 16 16 -319 -80
TEXT -310 -66 Left 0 Voltage Sensitivity Calculation
TEXT -309 -45 Left 0 Plot V($G_Voltage_sensitivity)
TEXT -281 -20 Left 0 Output = Volts/Delta Volts
WINDOW 39 -148 -1 Center 0
SYMATTR SpiceLine Vnom={V_nominal}
SYMATTR Prefix X
SYMATTR Value sens_calc_v
SYMATTR ModelFile sensitivity.lib
PIN 0 0 NONE 8
PINATTR PinName 0V
PINATTR SpiceOrder 1
