[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(bit1)"} {524291,0,"V(bit2)"}
      X: ('n',0,0,1e-008,1e-007)
      Y[0]: ('m',0,-0.09,0.09,0.9)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,-0.09,0.09,0.9)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 1 (7.44822485207101e-008,0.67756329113924) ;Fast RC discharge, 10k*200f = 2ns 
      Text: "V" 1 (7.45562130177515e-008,0.113639240506329) ;Slow RC discharge, 1MEG*200f = 200ns 
   }
}
