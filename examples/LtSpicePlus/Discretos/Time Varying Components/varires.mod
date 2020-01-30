.subckt VARIRES 1 2 CTRL
R1 1 2 1E10
G1 1 2 Value = { V(1,2)/(V(CTRL)+1u) }
.ENDS