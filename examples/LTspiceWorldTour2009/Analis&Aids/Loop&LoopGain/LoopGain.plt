[AC Analysis]
{
   Npanes: 3
   Active Pane: 2
   {
      traces: 1 {4,0,"((I(V3)/I(V4))*(-V(x)/V(y))-1)/((I(V3)/I(V4))+(-V(x)/V(y))+2)"}
      X: ('M',0,0.1,0,1e+008)
      Y[0]: (' ',0,1e-005,20,1e+006)
      Y[1]: (' ',0,-200,20,20)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
      Text: "dB" 1 (3136.80209565088,66287.031618265) ;Loop Gain
   },
   {
      traces: 1 {3,0,"I(V3)/I(V4)"}
      X: ('M',0,0.1,0,1e+008)
      Y[0]: (' ',0,1,10,1e+006)
      Y[1]: (' ',0,-99,9,9)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
      Text: "dB" 1 (3136.80209565088,218499.044072802) ;Current Gain
   },
   {
      traces: 1 {2,0,"-V(x)/V(y)"}
      X: ('M',0,0.1,0,1e+008)
      Y[0]: (' ',0,0.1,10,1e+006)
      Y[1]: (' ',0,-108,9,18)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1
      Text: "dB" 1 (3136.80209565088,193658.711085319) ;Voltage Gain
   }
}
