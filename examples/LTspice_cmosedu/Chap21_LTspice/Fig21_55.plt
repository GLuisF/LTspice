[Transient Analysis]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vinout)"}
      X: ('m',1,0,0.0002,0.002)
      Y[0]: (' ',1,-1,0.2,1)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,-1,0.2,1)
      Log: 0 0 0
      GridStyle: 1
   }
}
[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vinout)"}
      X: ('M',0,500,0,4.0955e+006)
      Y[0]: (' ',0,1e-015,30,1)
      Y[1]: ('K',0,-27000,3000,6000)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
   }
}
