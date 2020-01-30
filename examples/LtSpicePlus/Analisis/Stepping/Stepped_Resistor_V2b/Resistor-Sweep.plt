[DC transfer characteristic]
{
   Npanes: 5
   {
      traces: 3 {589828,0,"V(x1:g_series)/1A"} {589827,0,"V(x1:series)/1A"} {589826,0,"V(x1:linear)/1A"}
      Parametric: "Vres/1A"
      X: ('K',0,1,999.9,10000)
      Y[0]: ('K',0,0,1000,10000)
      Y[1]: ('K',0,1e+308,1000,-1e+308)
      Units: "Ohm" ('K',0,0,0,0,1000,10000)
      Log: 1 0 0
      GridStyle: 1
   },
   {
      traces: 3 {589827,0,"(V(x1:linear)-V(x1:series))/V(x1:linear)"} {589828,0,"(V(x1:linear)-V(x1:g_series))/V(x1:linear)"} {524293,0,"0"}
      Parametric: "Vres/1A"
      X: ('K',0,1,999.9,10000)
      Y[0]: ('m',0,-0.2,0.04,0.2)
      Y[1]: ('m',0,1e+308,0.07,-1e+308)
      Units: "" ('m',0,0,0,-0.2,0.04,0.2)
      Log: 1 0 0
      GridStyle: 1
   },
   {
      traces: 3 {589827,0,"V(x1:d_norm)/1A"} {589828,0,"V(x1:g_d_norm)/1A"} {589826,0,"V(x1:norm)/1A"}
      Parametric: "Vres/1A"
      X: ('K',0,1,999.9,10000)
      Y[0]: (' ',1,0.9,0.9,10.8)
      Y[1]: (' ',1,1e+308,0.9,-1e+308)
      Units: "Ohm" (' ',0,0,1,0.9,0.9,10.8)
      Log: 1 0 0
      GridStyle: 1
   },
   {
      traces: 3 {589827,0,"(V(x1:norm)-V(x1:d_norm))/V(x1:norm)"} {589828,0,"(V(x1:norm)-V(x1:g_d_norm))/V(x1:norm)"} {524293,0,"0"}
      Parametric: "Vres/1A"
      X: ('K',0,1,999.9,10000)
      Y[0]: ('m',0,-0.2,0.04,0.2)
      Y[1]: ('m',0,1e+308,0.04,-1e+308)
      Units: "" ('m',0,0,0,-0.2,0.04,0.2)
      Log: 1 0 0
      GridStyle: 1
   },
   {
      traces: 2 {589828,0,"V(x1:g_d_index)/1V"} {589827,0,"V(x1:d_index)/1V"}
      Parametric: "Vres/1A"
      X: ('K',0,1,999.9,10000)
      Y[0]: (' ',0,0,1,10)
      Y[1]: (' ',1,1e+308,0.9,-1e+308)
      Units: "" (' ',0,0,0,0,1,10)
      Log: 1 0 0
      GridStyle: 1
   }
}
