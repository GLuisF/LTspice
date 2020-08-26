[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(vout)"} {524291,0,"V(vinsp)-V(vinsm)"}
      X: ('n',0,0,5e-008,5e-007)
      Y[0]: (' ',0,-20,4,20)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,0,-20,4,20)
      Log: 0 0 0
      GridStyle: 1
   }
}
[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vout)"}
      X: ('G',4,500000,2e+006,5e+007)
      Y[0]: (' ',0,1e-006,10,1)
      Y[1]: ('K',0,-55000,5000,5000)
      Log: 0 2 0
      GridStyle: 1
      PltMag: 1
   }
}
