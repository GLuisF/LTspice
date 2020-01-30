[AC Analysis]
{
   Npanes: 2
   {
      traces: 2 {4,0,"20*log10(mag(V(out)))"} {5,0,"dBm(V(out),50)"}
      X: ('M',0,10,0,1e+007)
      Y[0]: (' ',0,-40,5,15)
      Y[1]: ('m',1,-0.001,0.0002,0.0012)
      Log: 1 0 0
      GridStyle: 1
      PltReal: 1
      Representation: 2
      Text: "r" 1 (64.3839221338945,-6.51111111111111) ;Cartesian
   },
   {
      traces: 2 {6,0,"dbm_(V(out),50)"} {524290,0,"V(out)"}
      X: ('M',0,10,0,1e+007)
      Y[0]: (' ',0,0.01,5,5.62341325190349)
      Y[1]: (' ',0,-90,9,9)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      Text: "r" 1 (43.6011990400836,0.230469050511447) ;Bode
   }
}
