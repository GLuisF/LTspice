[Transient Analysis]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vqe)"}
      X: ('n',0,0,5e-008,5e-007)
      Y[0]: ('m',1,-0.002,0.0004,0.002)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,-0.002,0.0004,0.002)
      Log: 0 0 0
      GridStyle: 1
   }
}
[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vqe)"}
      X: ('M',3,2e+006,1e+007,1e+008)
      Y[0]: (' ',0,1e-010,10,0.001)
      Y[1]: ('K',0,-120000,10000,10000)
      Log: 0 2 0
      GridStyle: 1
      PltMag: 1
   }
}
