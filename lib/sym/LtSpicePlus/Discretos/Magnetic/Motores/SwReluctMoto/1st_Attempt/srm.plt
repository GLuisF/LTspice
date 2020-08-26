[Transient Analysis]
{
   Npanes: 3
   Active Pane: 2
   {
      traces: 1 {524293,0,"V(vph)"}
      Parametric: "V(theta)*180/pi/1V*1deg"
      X: (' ',0,0,40,400)
      Y[0]: (' ',1,-5.4,0.6,1.2)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,-5.4,0.6,1.2)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524292,0,"V(emf)"} {34603011,1,"I(Vs)"}
      Parametric: "V(theta)*180/pi/1V*1deg"
      X: (' ',0,0,40,400)
      Y[0]: ('m',0,-0.05,0.05,0.5)
      Y[1]: ('m',0,-0.007,0.007,0.07)
      Volts: ('m',0,0,0,-0.05,0.05,0.5)
      Amps: ('m',0,0,0,-0.007,0.007,0.07)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 1 {524290,0,"V(emf)*I(Vs)"}
      Parametric: "V(theta)*180/pi/1V*1deg"
      X: (' ',0,0,40,400)
      Y[0]: ('m',0,-0.002,0.002,0.026)
      Y[1]: ('m',0,1e+308,0.007,-1e+308)
      Units: "W" ('m',0,0,0,-0.002,0.002,0.026)
      Log: 0 0 0
      GridStyle: 1
   }
}
