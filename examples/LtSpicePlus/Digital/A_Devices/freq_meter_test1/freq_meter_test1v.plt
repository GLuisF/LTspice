[Transient Analysis]
{
   Npanes: 1
   {
      traces: 1 {524292,0,"V(freq)/1V*1MegHz"}
      Parametric: "V(Vmod)"
      X: ('m',0,0,0.005,0.05)
      Y[0]: ('M',3,1e+006,5000,1.05e+006)
      Y[1]: ('m',1,1e+308,0.0001,-1e+308)
      Units: "Hz" ('M',0,0,3,1e+006,5000,1.05e+006)
      Log: 0 0 0
      GridStyle: 1
   }
}
