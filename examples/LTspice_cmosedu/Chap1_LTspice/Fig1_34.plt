[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(vin)"} {524291,0,"V(vout)"}
      X: ('m',0,0,0.001,0.01)
      Y[0]: (' ',1,-1.2,0.2,1)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,-1.2,0.2,1)
      Log: 0 0 0
      GridStyle: 1
   }
}
[AC Analysis]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vout)"}
      X: ('K',0,1,0,10000)
      Y[0]: (' ',0,0.01,8,630.957344480194)
      Y[1]: (' ',4,89.9991,0.0009,90.0099)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
   }
}
