[Transient Analysis]
{
   Npanes: 3
   Active Pane: 2
   {
      traces: 2 {524296,0,"V(osc)"} {524297,0,"V(outp)"}
      X: ('m',0,0,0.08,0.8)
      Y[0]: (' ',1,0,0.1,1)
      Y[1]: (' ',1,1e+308,0.3,-1e+308)
      Volts: (' ',0,0,1,0,0.1,1)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524292,0,"V(thr)"} {524293,0,"V(ramp)"}
      X: ('m',0,0,0.08,0.8)
      Y[0]: ('m',0,0,0.09,0.99)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,0,0.09,0.99)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 3 {524295,0,"V(p1,p2)"} {524298,0,"V(p1)+4"} {524299,0,"V(p2)+2"}
      X: ('m',0,0,0.08,0.8)
      Y[0]: (' ',1,-1.2,0.6,5.4)
      Y[1]: ('m',1,1e+308,0.0002,-1e+308)
      Volts: (' ',0,0,1,-1.2,0.6,5.4)
      Log: 0 0 0
      GridStyle: 1
   }
}
