[Transient Analysis]
{
   Npanes: 7
   Active Pane: 5
   {
      traces: 1 {589826,0,"V(tec_temp)"}
      X: ('K',1,0,400,3988.86803912325)
      Y[0]: (' ',0,-63,9,36)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,0,-63,9,36)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 2 (3685.27398644701,-38.0882352941176) ;(1V = 1 degree C)
      Text: "V" 2 (1453.05688218011,-4.77777777777774) ;1 Volt=1 degree C
   },
   {
      traces: 1 {524293,0,"V(tec_curr_cont)"}
      X: ('K',1,0,400,3988.86803912325)
      Y[0]: (' ',1,-0.3,0.3,3)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,-0.3,0.3,3)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 1 {524296,0,"V(int_out)"}
      X: ('K',1,0,400,3988.86803912325)
      Y[0]: (' ',1,-0.6,0.3,3)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,-0.6,0.3,3)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {589827,0,"V(tec_ramp_rate)"} {589828,0,"V(slew)"}
      X: ('K',1,0,400,3988.86803912325)
      Y[0]: (' ',0,-10,2,10)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,0,-10,2,10)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 3 (861.088973525018,5.80645161290323) ;(Note:  1Volt = 1 degree C/minute)
   },
   {
      traces: 1 {524294,0,"V(tec_error)"}
      X: ('K',1,0,400,3988.86803912325)
      Y[0]: ('m',0,-0.16,0.04,0.28)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,-0.16,0.04,0.28)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 1 {269025283,0,"V(dac1)"}
      X: ('K',1,0,400,3988.86803912325)
      Y[0]: (' ',1,0,0.5,5)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,0.5,5)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 3 (1929.00814167124,1.93548387096774) ;DAC is stepped  120mV every 40 seconds
   },
   {
      traces: 1 {589833,0,"V(disable_5v)"}
      X: ('K',1,0,400,3988.86803912325)
      Y[0]: (' ',1,0,0.5,5)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,0,0.5,5)
      Log: 0 0 0
      GridStyle: 1
      Text: "V" 9 (564.663270227732,2.20588235294118) ;Loop is Enabled at T=71 sec
      Text: "V" 1 (2739.44482263596,1.45161290322581) ;and a total DAC range of about 100 deg C
      Text: "V" 1 (1679.96770324979,1.29032258064516) ;Set point DAC is scaled so 0V=+40C
      Text: "V" 1 (1772.83023961033,2.66129032258065) ;down and ramp up profiles.  TEC hot side 
      Text: "V" 1 (2756.32892015606,2.74193548387097) ;temperature is +30 degrees C. 
      Text: "V" 1 (1743.28306895016,3.95161290322581) ;Loop Transient Response for a ramping
      Text: "V" 1 (2878.73862717678,4.03225806451613) ;DAC profile.  Simulation shows both ramp 
   }
}
