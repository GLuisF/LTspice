[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vout)"}
      X: ('M',0,1e+006,1e+007,2e+008)
      Y[0]: (' ',0,1e-006,8,0.0630957344480193)
      Y[1]: (' ',0,-280,40,200)
      Log: 0 2 0
      GridStyle: 1
      PltMag: 1
   }
}
[Transient Analysis]
{
   Npanes: 2
   Active Pane: 1
   {
      traces: 2 {524290,0,"V(voutsh)"} {524291,0,"V(vin)"}
      X: ('µ',1,0,1e-007,1e-006)
      Y[0]: (' ',1,0,0.2,1.6)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,0.2,1.6)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 1 {524292,0,"V(vout)"}
      X: ('µ',1,0,1e-007,1e-006)
      Y[0]: ('m',0,-0.15,0.03,0.15)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,1,-0.15,0.03,0.15)
      Log: 0 0 0
      GridStyle: 1
   }
}
