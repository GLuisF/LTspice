[Transient Analysis]
{
   Npanes: 2
   Active Pane: 1
   {
      traces: 1 {524291,0,"V(cf)/1V"}
      Parametric: "V(vc)"
      X: (' ',0,-5,1,5)
      Y[0]: ('p',0,0,1e-011,7e-011)
      Y[1]: ('p',0,1e+308,1e-011,-1e+308)
      Units: "" ('p',0,0,0,0,1e-011,7e-011)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 1 (-3.22161422708618,5.47183098591549e-011) ;Function plot C(V)
   },
   {
      traces: 1 {524290,0,"I(Cvar)/1e6/1A"}
      Parametric: "V(vc)"
      X: (' ',0,-5,1,5)
      Y[0]: ('p',0,0,1e-011,7e-011)
      Y[1]: ('p',0,1e+308,4e-011,-1e+308)
      Units: "" ('p',0,0,0,0,1e-011,7e-011)
      Log: 0 0 0
      GridStyle: 1
      Text: "" 1 (1.51472650771389,1.28776978417266e-010) ;C-POLY equivalent capacitor 
      Text: "" 1 (-3.18740399385561,5.42105263157895e-011) ;Cvar with Q formula
   }
}
