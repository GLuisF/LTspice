[Transient Analysis]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(v_freq)/1V*1MegHz"}
      Parametric: "V(vmod)"
      X: (' ',1,0,0.1,1)
      Y[0]: ('M',1,1e+006,100000,2.1e+006)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Units: "Hz" ('M',0,0,1,1e+006,100000,2.1e+006)
      Log: 0 0 0
      GridStyle: 1
   }
}
