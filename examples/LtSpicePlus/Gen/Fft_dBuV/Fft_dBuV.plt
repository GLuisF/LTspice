[FFT of time domain data]
{
   Npanes: 3
   Active Pane: 2
   {
      traces: 1 {4,0,"V(out)/1uV"}
      X: ('G',0,1e+006,0,3.2767e+010)
      Y[0]: (' ',0,1e-006,10,10)
      Y[1]: (' ',0,-200,40,200)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      Text: "dB" 1 (1454227.1661075,31.9153785510075) ;dBuV
   },
   {
      traces: 1 {3,0,"V(out)*1e6"}
      X: ('G',0,1e+006,0,3.2767e+010)
      Y[0]: (' ',0,1e-006,10,10)
      Y[1]: (' ',0,-200,40,200)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      Text: "dB" 1 (1422543.80997679,32.8392660838979) ;dBuV
   },
   {
      traces: 1 {524290,0,"V(out)"}
      X: ('G',0,1e+006,0,3.2767e+010)
      Y[0]: (' ',0,1e-012,10,1e-005)
      Y[1]: (' ',0,-200,40,200)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      Text: "dB" 1 (1361232.9213221,3.78889348779616e-005) ;dBV
   }
}
[Transient Analysis]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(out)"}
      X: ('�',1,0,1e-007,1e-006)
      Y[0]: ('�',0,-1e-005,2e-006,1e-005)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('�',0,0,0,-1e-005,2e-006,1e-005)
      Log: 0 0 0
      GridStyle: 1
   }
}
