[DC transfer characteristic]
{
   Npanes: 2
   {
      traces: 4 {589826,0,"V(resistor_e6)/1A"} {589827,0,"V(resistor_e24)/1A"} {589828,0,"V(resistor_e12)/1A"} {589829,0,"V(x1:linear)/1A"}
      Parametric: "Vres/1A"
      X: ('K',0,1,999.9,10000)
      Y[0]: ('K',0,0,1000,10000)
      Y[1]: ('K',0,1e+308,1000,-1e+308)
      Units: "Ohm" ('K',0,0,0,0,1000,10000)
      Log: 1 0 0
      GridStyle: 1
   },
   {
      traces: 3 {589826,0,"1V/I(R6)"} {589827,0,"1V/I(R12)"} {589828,0,"1V/I(R24)"}
      Parametric: "Vres/1A"
      X: ('K',0,1,999.9,10000)
      Y[0]: ('K',0,0,1000,11000)
      Y[1]: ('K',0,1e+308,1000,-1e+308)
      Units: "Ohm" ('K',0,0,0,0,1000,11000)
      Log: 1 0 0
      GridStyle: 1
   }
}
