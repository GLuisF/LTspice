[Noise Spectral Density - (V/Hz½ or A/Hz½)]
{
   Npanes: 2
   {
      traces: 1 {524291,0,"V(onoise)@2"}
      X: ('M',0,0.1,0,1e+007)
      Y[0]: ('µ',1,0,4e-007,4e-006)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Units: "V/Hz½" ('µ',0,0,1,0,4e-007,4e-006)
      Log: 1 0 0
      Text: "V/Hz½" 1 (24.6296973203236,2.06779661016949e-006) ;UniversalOpamp2
   },
   {
      traces: 1 {524290,0,"V(onoise)@1"}
      X: ('M',0,0.1,0,1e+007)
      Y[0]: ('m',1,0,0.0001,0.0014)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Units: "V/Hz½" ('m',0,0,1,0,0.0001,0.0014)
      Log: 1 0 0
      Text: "V/Hz½" 1 (19.7952005065668,0.00063304347826087) ;Product-specific Macro Model
   }
}
