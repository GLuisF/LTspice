[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(sense)"} {268959747,0,"V(comp)"}
      Parametric: "V($G_TEMP)/1V*1deg"
      X: (' ',0,0,10,100)
      Y[0]: (' ',1,0,0.7,7.7)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,0,0,0.7,7.7)
      Log: 0 0 0
      GridStyle: 1
   }
}
