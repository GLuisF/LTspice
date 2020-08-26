[Transient Analysis]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(+Vo,-Vo)"}
      Parametric: "200kHz*V(f)"
      X: ('K',0,2000,19800,200000)
      Y[0]: (' ',0,-20,4,20)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,0,-20,4,20)
      Log: 1 0 0
      GridStyle: 1
   }
}
