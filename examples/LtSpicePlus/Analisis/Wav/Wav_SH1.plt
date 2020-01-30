[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(lin)"} {524291,0,"V(lsh)"}
      X: (' ',1,0,0.1,1)
      Y[0]: ('m',0,-0.8,0.1,0.8)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,-0.8,0.1,0.8)
      Log: 0 0 0
   }
}
[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(lin)"}
      X: ('K',2,1,0,8191)
      Y[0]: (' ',0,3.16227766016838e-008,10,0.1)
      Y[1]: ('K',0,-240000,20000,20000)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
   }
}
