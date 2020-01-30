[AC Analysis]
{
   Npanes: 1
   {
      traces: 1 {524291,0,"V(sum)"}
      X: ('K',1,1,400,4000)
      Y[0]: (' ',0,3.16227766016838e-006,10,3.16227766016838)
      Y[1]: ('K',0,-22000,2000,8000)
      Volts: (' ',0,0,1,-1.2,0.2,1.2)
      Log: 0 2 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
   }
}
[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(z0)"} {524291,0,"V(sum)"}
      X: (' ',1,0,0.2,2)
      Y[0]: (' ',1,-1.2,0.2,1.2)
      Y[1]: ('K',0,1e+308,2000,-1e+308)
      Volts: (' ',0,0,1,-1.2,0.2,1.2)
      Log: 0 0 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
   }
}
