[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(vinsp)-V(vinsm)"} {524291,0,"V(vout)"}
      X: ('µ',1,0,1e-007,1e-006)
      Y[0]: (' ',1,-1.2,0.2,1.2)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,-1.2,0.2,1.2)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 1 (4.97803806734993e-007,1.1046357615894) ;Output osillates at 25 MHz 
   }
}
[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(vout)"}
      X: ('G',4,100000,1e+006,5e+007)
      Y[0]: (' ',0,0.001,10,1)
      Y[1]: ('K',0,-13000,1000,1000)
      Log: 0 2 0
      GridStyle: 1
      PltMag: 1
   }
}
