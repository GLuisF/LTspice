[Transient Analysis]
{
   Npanes: 2
   {
      traces: 2 {524290,0,"V(inp)"} {524291,0,"V(inm)"}
      X: ('n',0,0,5e-008,5e-007)
      Y[0]: (' ',1,1,0.2,2)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,1,0.2,2)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524292,0,"V(q)+6"} {524293,0,"V(clk)"}
      X: ('n',0,0,5e-008,5e-007)
      Y[0]: (' ',0,0,1,12)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,1,12)
      Log: 0 0 0
      GridStyle: 1
   }
}
