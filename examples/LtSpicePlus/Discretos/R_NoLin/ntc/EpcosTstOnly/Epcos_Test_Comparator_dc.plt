[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524291,0,"V(sense)"} {524290,0,"V(comp)"}
      Parametric: "V($G_TEMP)/1V*1deg"
      X: (' ',0,0,10,100)
      Y[0]: (' ',1,0,0.7,7.7)
      Y[1]: (' ',0,1e+308,10,-1e+308)
      Volts: (' ',0,0,1,0,0.7,7.7)
      Log: 0 0 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
   }
}
[DC transfer characteristic]
{
   Npanes: 1
   {
      traces: 2 {524291,0,"V(sense)"} {524290,0,"V(comp)"}
      Parametric: "V($G_TEMP)/1V*1deg"
      X: (' ',0,0,10,100)
      Y[0]: (' ',1,0,0.7,7.7)
      Y[1]: (' ',0,1e+308,10,-1e+308)
      Volts: (' ',0,0,1,0,0.7,7.7)
      Log: 0 0 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
   }
}
