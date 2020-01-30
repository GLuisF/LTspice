[Transient Analysis]
{
   Npanes: 2
   Active Pane: 1
   {
      traces: 2 {524290,0,"V(nrz)+1.25"} {524291,0,"V(clock)"}
      X: ('n',0,0,5e-008,5e-007)
      Y[0]: (' ',1,-0.2,0.2,2.4)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,-0.2,0.2,2.4)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 1 {524292,0,"V(vinvco)"}
      X: ('n',0,0,5e-008,5e-007)
      Y[0]: ('m',0,0,0.04,0.4)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,0,0.04,0.4)
      Log: 0 0 0
      GridStyle: 1
   }
}
