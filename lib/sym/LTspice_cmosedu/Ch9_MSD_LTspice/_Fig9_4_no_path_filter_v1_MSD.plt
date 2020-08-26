[Transient Analysis]
{
   Npanes: 2
   Active Pane: 1
   {
      traces: 1 {524290,0,"V(vout)"}
      X: ('µ',1,0,3e-007,2.9999992e-006)
      Y[0]: (' ',1,0,0.1,1)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,0.1,1)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524291,0,"V(vin)"} {524292,0,"V(voutf)"}
      X: ('µ',1,0,3e-007,2.9999992e-006)
      Y[0]: ('m',0,0,0.09,0.99)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,0,0.09,0.99)
      Log: 0 0 0
      GridStyle: 1
   }
}
[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vout)"}
      X: ('G',0,100000,0,3276700000)
      Y[0]: (' ',0,3.16227766016838e-008,10,1)
      Y[1]: (' ',0,-200,40,200)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
   }
}
