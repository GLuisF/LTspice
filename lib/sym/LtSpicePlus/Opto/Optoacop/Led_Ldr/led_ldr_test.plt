[Transient Analysis]
{
   Npanes: 1
   {
      traces: 3 {524290,0,"V(out1)/Ix(x1:LDR1)"} {524291,0,"V(out2)/Ix(x2:LDR1)"} {524292,0,"V(out3)/Ix(x3:LDR1)"}
      X: (' ',1,0,0.2,2)
      Y[0]: ('_',1,100,0,1e+007)
      Y[1]: ('M',1,1e+308,100000,-1e+308)
      Units: "ohm" ('_',1,0,1,100,0,1e+007)
      Log: 0 1 0
      GridStyle: 1
      Text: "Ohm" 1 (0.304721030042918,1224219.83799266) ;Transient resistance of LDR, param I_led
   }
}
