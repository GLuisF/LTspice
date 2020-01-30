[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vout)"}
      X: ('M',0,500000,2e+007,2e+008)
      Y[0]: (' ',0,1e-005,10,1)
      Y[1]: ('K',0,-6000,600,600)
      Log: 0 2 0
      GridStyle: 1
      PltMag: 1
   }
}
[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(vout)"} {524291,0,"V(vin)"}
      X: ('n',0,0,1e-008,1e-007)
      Y[0]: (' ',1,0,0.1,1)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,0.1,1)
      Log: 0 0 0
      GridStyle: 1
   }
}
