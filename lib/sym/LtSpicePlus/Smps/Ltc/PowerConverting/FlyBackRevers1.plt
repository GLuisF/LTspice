[Transient Analysis]
{
   Npanes: 3
   Active Pane: 2
   {
      traces: 1 {524291,0,"I(L1)+I(L2)*10"}
      X: ('�',0,0,1e-006,1.2e-005)
      Y[0]: ('m',0,-0.04,0.02,0.18)
      Y[1]: ('m',0,1e+308,0.02,-1e+308)
      Amps: ('m',0,0,0,-0.04,0.02,0.18)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524290,0,"V(out)"} {589835,0,"V(n001)"}
      X: ('�',0,0,1e-006,1.2e-005)
      Y[0]: (' ',0,-42,6,24)
      Y[1]: ('m',0,1e+308,0.04,-1e+308)
      Volts: (' ',0,0,0,-42,6,24)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524292,0,"V(sw)"} {524293,0,"V(in)"}
      X: ('�',0,0,1e-006,1.2e-005)
      Y[0]: (' ',1,-1.2,0.6,5.4)
      Y[1]: ('m',0,1e+308,0.04,-1e+308)
      Volts: (' ',0,0,1,-1.2,0.6,5.4)
      Log: 0 0 0
      GridStyle: 1
   }
}
