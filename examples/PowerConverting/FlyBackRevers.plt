[Transient Analysis]
{
   Npanes: 3
   {
      traces: 1 {524291,0,"I(L1)+I(L2)*10"}
      X: ('�',0,0,1e-006,1.19550564952173e-005)
      Y[0]: ('m',0,-0.05,0.05,0.2)
      Y[1]: ('m',0,1e+308,0.02,-1e+308)
      Amps: ('m',0,0,0,-0.05,0.05,0.2)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {268959746,0,"V(out)"} {269025291,0,"V(n001)"}
      X: ('�',0,0,1e-006,1.19550564952173e-005)
      Y[0]: (' ',0,-40,20,30)
      Y[1]: ('m',0,1e+308,0.04,-1e+308)
      Volts: (' ',0,0,0,-40,20,30)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {268959748,0,"V(sw)"} {268959749,0,"V(in)"}
      X: ('�',0,0,1e-006,1.19550564952173e-005)
      Y[0]: (' ',0,-2,2,6)
      Y[1]: ('m',0,1e+308,0.04,-1e+308)
      Volts: (' ',0,0,1,-2,2,6)
      Log: 0 0 0
      GridStyle: 1
   }
}