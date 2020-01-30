[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(vin)"} {524291,0,"V(vout)"}
      X: ('G',0,5e+006,0,1.63835e+011)
      Y[0]: (' ',0,3.16227766016838e-008,10,1)
      Y[1]: (' ',0,-200,40,200)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      Text: "dB" 1 (25373409.1640267,0.366576524112149) ;40 MHz alias
   }
}
[Transient Analysis]
{
   Npanes: 1
   {
      traces: 4 {524290,0,"V(vin)"} {524291,0,"V(vout)"} {524292,0,"V(voutf)"} {524293,0,"V(valias)"}
      X: ('n',0,0,2e-008,2e-007)
      Y[0]: (' ',1,0,0.1,1)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,0.1,1)
      Log: 0 0 0
      GridStyle: 1
   }
}
