[Transient Analysis]
{
   Npanes: 2
   {
      traces: 3 {524291,0,"V(vout)"} {524290,0,"V(vin)"} {524294,0,"V(vout_error)"}
      X: ('�',0,0,1e-006,1e-005)
      Y[0]: (' ',1,0,0.1,1)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,0.1,1)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524293,0,"V(qe_error)"} {524292,0,"V(qe_no_error)"}
      X: ('�',0,0,1e-006,1e-005)
      Y[0]: ('m',0,-0.15,0.03,0.15)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,-0.15,0.03,0.15)
      Log: 0 0 0
      GridStyle: 1
   }
}
