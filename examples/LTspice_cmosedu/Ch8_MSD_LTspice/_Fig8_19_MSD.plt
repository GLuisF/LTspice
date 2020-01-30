[Transient Analysis]
{
   Npanes: 1
   {
      traces: 3 {524290,0,"V(inphase_f)"} {524291,0,"V(quad_f)"} {524292,0,"V(v_iq)"}
      X: ('µ',0,0,2e-006,2.5e-005)
      Y[0]: ('m',0,-0.3,0.05,0.25)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,-0.3,0.05,0.25)
      Log: 0 0 0
      GridStyle: 1
   }
}
[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(v_in_phase)"}
      X: ('G',0,40000,0,1.31068e+009)
      Y[0]: (' ',0,1e-007,10,1)
      Y[1]: (' ',0,-200,40,200)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
   }
}
