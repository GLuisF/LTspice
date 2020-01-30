[Transient Analysis]
{
   Npanes: 2
   {
      traces: 2 {524290,0,"V(peak_out)*1.01"} {524291,0,"V(peak_in)"}
      X: ('m',1,0,0.0001,0.001)
      Y[0]: (' ',1,0,0.1,1.5)
      Y[1]: ('m',1,1e+308,0.0002,-1e+308)
      Volts: (' ',0,0,2,0,0.1,1.5)
      Log: 0 0 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
   },
   {
      traces: 1 {524294,0,"V(vout)"}
      X: ('m',1,0,0.0001,0.001)
      Y[0]: (' ',1,-1.5,0.3,1.5)
      Y[1]: ('µ',0,1e+308,1e-006,-1e+308)
      Volts: (' ',0,0,1,-1.5,0.3,1.5)
      Log: 0 0 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
   }
}
