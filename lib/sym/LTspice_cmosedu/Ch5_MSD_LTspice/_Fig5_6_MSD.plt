[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(vin)"} {524291,0,"V(vout)"}
      X: ('M',0,1e+006,2e+007,2e+008)
      Y[0]: (' ',0,3.16227766016838e-005,10,1)
      Y[1]: ('K',0,-720000,80000,80000)
      Log: 0 2 0
      GridStyle: 1
      PltMag: 1
   }
}
[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(vin)"} {524291,0,"V(vout)"}
      X: ('n',0,0,5e-008,5e-007)
      Y[0]: (' ',1,0,0.1,1.5)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,0.1,1.5)
      Log: 0 0 0
      GridStyle: 1
   }
}
