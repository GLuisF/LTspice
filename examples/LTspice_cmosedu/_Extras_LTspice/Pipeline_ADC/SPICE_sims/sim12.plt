[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(voutp)-V(voutm)"} {524291,0,"V(vcip)-V(vcim)"}
      Parametric: "V(vinsp)-v(vinsm)"
      X: (' ',1,-4,0.8,4)
      Y[0]: (' ',0,-5,1,5)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,0,-5,1,5)
      Log: 0 0 0
      GridStyle: 1
   }
}
