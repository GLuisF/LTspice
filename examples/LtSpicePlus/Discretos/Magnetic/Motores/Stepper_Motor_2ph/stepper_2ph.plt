[Transient Analysis]
{
   Npanes: 3
   Active Pane: 2
   {
      traces: 2 {524290,0,"V(eqp)*180/pi"} {589827,0,"V(p1)*180/pi"}
      X: (' ',1,0,0.2,1.5)
      Y[0]: (' ',0,0,6,60)
      Y[1]: ('m',0,1e+308,0.006,-1e+308)
      Volts: (' ',0,0,0,0,6,60)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 3 (0.526685393258427,43.2) ;actual & equilibrium pos., electr. frame /deg
   },
   {
      traces: 2 {589828,0,"V(omega)/2/pi"} {34668547,1,"I(Rl)"}
      X: (' ',1,0,0.2,1.5)
      Y[0]: (' ',0,-4,1,9)
      Y[1]: ('m',0,-0.008,0.002,0.018)
      Volts: (' ',0,0,0,-4,1,9)
      Amps: ('m',0,0,0,-0.008,0.002,0.018)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 3 (0.703651685393258,0.155737704918032) ;rot. speed/(rot/sec) and load torque / Nm
      Text: "V" 6 (1.12921348314607,6.65573770491803) ;<-- loss of sync.
   },
   {
      traces: 1 {589827,0,"V(phi)/2/pi"}
      X: (' ',1,0,0.2,1.5)
      Y[0]: (' ',1,0,0.4,4.8)
      Y[1]: ('m',1,1e+308,0.0009,-1e+308)
      Volts: (' ',0,0,1,0,0.4,4.8)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 3 (0.587780898876405,3.58032786885246) ;rotor position / rotations
   }
}
