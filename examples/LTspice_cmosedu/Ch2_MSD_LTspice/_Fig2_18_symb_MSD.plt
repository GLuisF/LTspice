[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(vin)"} {524291,0,"V(vout)"}
      X: ('M',4,500000,5e+006,2e+008)
      Y[0]: (' ',0,1.12201845430196e-005,9,1)
      Y[1]: (' ',0,-250,50,300)
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
      X: ('µ',1,0,2e-007,2e-006)
      Y[0]: (' ',1,0,0.1,1)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,0.1,1)
      Log: 0 0 0
      GridStyle: 1
   }
}
