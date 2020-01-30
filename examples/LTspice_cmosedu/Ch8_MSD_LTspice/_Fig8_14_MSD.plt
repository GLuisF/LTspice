[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vout)"}
      X: ('M',1,100000,1e+006,5e+007)
      Y[0]: (' ',0,0.001,10,1)
      Y[1]: ('K',0,-13000,1000,1000)
      Log: 0 2 0
      GridStyle: 1
      PltMag: 1
   }
}
[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(vinsp)-V(vinsm)"} {524291,0,"V(vout)"}
      X: ('µ',0,0,1e-006,1e-005)
      Y[0]: (' ',1,-1.8,0.3,1.8)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,-1.8,0.3,1.8)
      Log: 0 0 0
      GridStyle: 1
   }
}
