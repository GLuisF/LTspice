****************************************************************************
*
* WARNING : please consider following remarks before usage
*
* 1) All models are a tradeoff between accuracy and complexity (ie. simulation
*    time).
*
* 2) Macromodels are not a substitute to breadboarding, they rather confirm the
*    validity of a design approach and help to select surrounding component values.
*
* 3) A macromodel emulates the NOMINAL performance of a TYPICAL device within
*    SPECIFIED OPERATING CONDITIONS (ie. temperature, supply voltage, etc.).
*    Thus the macromodel is often not as exhaustive as the datasheet, its goal
*    is to illustrate the main parameters of the product.
*
* 4) Data issued from macromodels used outside of its specified conditions
*    (Vcc, Temperature, etc) or even worse: outside of the device operating
*    conditions (Vcc, Vicm, etc) are not reliable in any way.
*
****************************************************************************
****
***  TS185x  Spice macromodel subckt 
***  December 2008 (last update: 05-10-2010)
****                      
************ CONNECTIONS: 
****             INVERTING INPUT
****              |  NON-INVERTING INPUT
****              |   |  OUTPUT 
****              |   |   |  POSITIVE POWER SUPPLY
****              |   |   |   |  NEGATIVE POWER SUPPLY 
****              |   |   |   |   |     
****              |   |   |   |   |    
.SUBCKT TS185X   VM  VP  VS  VCCP VCCN
    M_NMOS2 VO_DIFF_MINUS VM VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
    M_NMOS1 VO_DIFF_PLUS NET194 VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
    V_OUTVLIM_LOW NET0204 NET0196 DC {Vd_compensazione}
    V_OUTVLIM_HIGH NET0234 NET0211 DC {Vd_compensazione}
    VREADIO NET0193 VS DC 0
    VVLIM_LOW_VB NET192 NET193 DC -770m
    VOS NET194 VP DC 0
    VPROT_IN_P_VCCP NET196 NET229 DC {V_DPROT}
    V_ENHANCE_VCCN VCCN_ENHANCED VCCN DC {VCCN_enhance}
    VVLIM_HIGH_VB NET217 NET203 DC -770m
    V_ENHANCE_VCCP VCCP_ENHANCED VCCP DC {VCCP_enhance}
    VPROT_IN_M_VCCN NET208 NET360 DC {V_DPROT}
    VPROT_IN_P_VCCN NET212 NET213 DC {V_DPROT}
    VPROT_IN_M_VCCP NET348 NET219 DC {V_DPROT}
    D_OUTVLIM_HIGH NET0194 NET0234 DIODE_NOVd
    D_OUTVLIM_LOW NET0196 NET0233 DIODE_NOVd
    DVLIM_HIGH_VB VB NET217 DIODE_VLIM
    DPROT_IN_M_VCCP VM NET219 DIODE_VLIM
    DVLIM_LOW_VB NET193 VB DIODE_VLIM
    DPROT_IN_M_VCCN NET208 VM DIODE_VLIM
    DILIM_SINK VB_3_SINK VB_3 DIODE_ILIM
    DPROT_IN_P_VCCP NET194 NET229 DIODE_VLIM
    DILIM_SOURCE VB_3 VB_3_SOURCE DIODE_ILIM
    DPROT_IN_P_VCCN NET212 NET194 DIODE_VLIM
    C_RO2_1 VB_2 VREF 650p
    CIN_DIFF VM VP {CIN_DIFF}
    CIN_CM_VM VM VREF {CIN_CM_VM}
    CIN_CM_VP VP VREF {CIN_CM_VP}
    CDIFF_PARASITIC VO_DIFF_PLUS VO_DIFF_MINUS 12p
    CCOMP VB VB_2 {Ccomp}
    E64 IO_VAL 0 VALUE={I(VreadIo)}
    EMEAS_VB_VREF VB_VREF 0 VB VREF 1.0
    EVLIM_LOW_VB NET192 0 VCCN 0 1.0
    E_RO1 VB_3 NET0193 VALUE={IF(I(VreadIo)>0,
+V(Ro1_Voh)*I(VreadIo),V(Ro1_Vol)*I(VreadIo))}

*Eldo:
*    E_VOHNORL NET0194 VB_3 PWL(1) VCCP VCCN ( 1.8 , 16m ) ( 3.0 , 21m ) (
*+5.0 , 28.5m )
*    E_RO1_VOH RO1_VOH 0 PWL(1) VCCP VCCN ( 1.8 , 60 ) ( 3.0 , 57 ) ( 5.0 ,
*+41 )
*    E_VOLNORL VB_3 NET0233 PWL(1) VCCP VCCN ( 1.8 , 24m ) ( 3.0 , 26m ) (
*+5.0 , 32m )
*    E_RO1_VOL RO1_VOL 0 PWL(1) VCCP VCCN ( 1.8 , 38 ) ( 3.0 , 60 ) ( 5.0 ,
*+42 )
*PSpice:
*    E_VOHNORL NET0194 VB_3 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 16m , 3.0 , 21m ,
*+5.0 , 28.5m )}
    E_VOHNORL NET0194 VB_3 POLY(1) VCCP VCCN 0.00779687499999999
+0.0047916666666666715 -1.3020833333333404E-4
    *E_RO1_VOH RO1_VOH 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 60 , 3.0 , 57 , 5.0 ,
*+41 )}
    E_RO1_VOH RO1_VOH 0 POLY(1) VCCP VCCN 55.21875 5.75 -1.71875
    *E_VOLNORL VB_3 NET0233 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 24m , 3.0 , 26m ,
*+5.0 , 32m )}
    E_VOLNORL VB_3 NET0233 POLY(1) VCCP VCCN 0.02325
+-3.3333333333334427E-4 4.166666666666681E-4
    *E_RO1_VOL RO1_VOL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 38 , 3.0 , 60 , 5.0 ,
*+42 )}
    E_RO1_VOL RO1_VOL 0 POLY(1) VCCP VCCN -41.125 59.33333333333332
+-8.541666666666664

    E50 NET0211 0 VCCP 0 1.0
    E_ICCSAT_HIGH ICC_OUT_HIGH 0 POLY(1) VCCP VCCN 7.921875E-5 -3.75E-6
+7.8125E-7
    E51 NET0204 0 VCCN 0 1.0
    E_ICCSAT_LOW ICC_OUT_LOW 0 POLY(1) VCCP VCCN 0    
    EILIM_SINK VB_3_SINK VDEP_SINK VB_3 0 1.0
    EMEAS_VOUT_DIFF VOUT_DIFF 0 VO_DIFF_PLUS VO_DIFF_MINUS 1.0
    E_VDEP_SOURCE_2 VAL_VDEP_SOURCE_FILTERED 0
+VALUE={IF(V(val_vdep_source)>=0, 0, V(val_vdep_source))}
    E_VDEP_SOURCE_1 VAL_VDEP_SOURCE 0 VALUE={IF( V(Vccp,Vccn)<=3.0 ,  (
++9.5 +75*V(Vccp,Vccn) )  -5000*I(VreadIo)  , ( +227 +2.5*V(Vccp,Vccn) ) 
+-5000*I(VreadIo) )}
    E_VDEP_SOURCE_3 VDEP_SOURCE 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_source_filtered))}
    EVLIM_HIGH_VB NET203 0 VCCP 0 1.0
    E_VDEP_SINK_1 VAL_VDEP_SINK 0 VALUE={ ( -219.1875
+-6.666666666666708*V(Vccp,Vccn) + 0.5208333333333386*PWR(V(Vccp,Vccn),2) )
+-5000*I(VreadIo)}
    E_VDEP_SINK_2 VAL_VDEP_SINK_FILTERED 0
+VALUE={IF(V(val_vdep_sink)<=0 , 0 , V(val_vdep_sink))}
    E2_REF NET362 0 VCCN 0 1.0
    E_VREF VREF 0 NET356 0 1.0
    G_ICC VCCP VCCN POLY(1) VCCP VCCN 1.3553571428571613E-5
+8.222916666666653E-5 -1.551388888888886E-5 9.771825396825383E-7
    E_VDEP_SINK_3 VDEP_SINK 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_sink_filtered))}
    E1_REF NET326 0 VCCP 0 1.0
    EILIM_SOURCE VB_3_SOURCE VDEP_SOURCE VB_3 0 1.0
    E_SR_VCC_MODULATION VOUT_DIFF__SR_VCC 0 VALUE={V(Vout_diff)*(
+0.4390625 + 0.22416666666666657*V(Vccp,Vccn)
+-0.022395833333333323*PWR(V(Vccp,Vccn),2) )}
    RO2_1 VB_2 VREF {Ro2_1}
    RIN_CM_VM VREF VM {RIN_CM_VM}
    R1 VB VREF {R1}
    R_ICCSAT_LOW ICC_OUT_LOW 0 1K
    RO2_2 VB_3 VB_2 {Ro2_2}
    RPROT_IN_P_VCCP NET196 VCCP {RPROT_VCCP}
    RPROT_IN_M_VCCP VCCP NET348 {RPROT_VCCP}
    RIN_CM_VP VREF VP {RIN_CM_VP}
    RD1 VCCP_ENHANCED VO_DIFF_PLUS {RD}
    RD2 VCCP_ENHANCED VO_DIFF_MINUS {RD}
    RIN_DIFF VP VM {RIN_DIFF}
    R1_REF NET326 NET356 1Meg
    R_ICCSAT_HIGH ICC_OUT_HIGH 0 1K
    RPROT_IN_M_VCCN VCCN NET360 {RPROT_VCCN}
    R2_REF NET356 NET362 1Meg
    RPROT_IN_P_VCCN NET213 VCCN {RPROT_VCCN}
    
*Eldo:    
*    G_I_VB VB_2 VREF TABLE {V(VB_Vref)} = (-2.7 {-2.7*GB*3}) (-2.0
*+{-2.0*GB*2.5}) (-1.5 {-1.5*GB*2.2}) (-0.69 {-0.69*GB*2}) (-0.65
*+{-0.65*GB*1.0}) (-0.15 {-0.15*GB*1}) (-0.050 {-0.050*GB*1}) (-0.015
*+{-0.015*GB*1}) (-0.0001 {-0.0001*GB*1}) (0 0) (+0.0001 {0.0001*GB*1})
*+(+0.015 {+0.015*GB*1}) (+0.050 {+0.050*GB*1}) (+0.15 {+0.15*GB*1}) (+0.65
*+{0.65*GB*1.0}) (+0.69 {0.69*GB*2})  (+1.5 {1.5*GB*2.2}) (+2.0
*+{2.0*GB*2.5}) (+2.7 {2.7*GB*3})  
*PSpice:
*    G_I_VB VB_2 VREF VALUE={TABLE( V(VB,Vref) , -2.7 , -2.7*GB*3 , -2.0 ,
*+ -2.0*GB*2.5 , -1.5 , -1.5*GB*2.2 , -0.69 , -0.69*GB*2 , -0.65 ,
*+ -0.65*GB*1.0 , -0.15 , -0.15*GB*1 , -0.050 , -0.050*GB*1 , -0.015 ,
*+ -0.015*GB*1 , -0.0001 , -0.0001*GB*1 , 0 , 0 , +0.0001 , 0.0001*GB*1 ,
*+ +0.015 , +0.015*GB*1 , +0.050 , +0.050*GB*1 , +0.15 , +0.15*GB*1 , +0.65,
*+ 0.65*GB*1.0 , +0.69 , 0.69*GB*2 , +1.5 , 1.5*GB*2.2 , +2.0 ,
*+ 2.0*GB*2.5 , +2.7 , 2.7*GB*3 ) }
    G_I_VB VB_2 VREF POLY(1) VB_VREF 0 2.0955964330729256E-18
+0.0064704243141362125 -2.1354856438578985E-18 0.003032922143165251
+1.7832794554106567E-19 -1.99845853108853E-4

    G_I_IO VB_2 VREF VALUE={IF(abs(V(Io_val))<50m  , V(VB_Vref)*GB*(
+abs(V(Io_val))/2m ) , V(VB_Vref)*GB*( 50m/2m ) )}

*    G_IIB_VP VREF VP TABLE {V(Vccp,Vccn)} = (+1.8 10n) (+3.0 10n) (+5.0
*+16n)    
*    G_IIB_VM VREF VM TABLE {V(Vccp,Vccn)} = (+1.8 10n) (+3.0 10n) (+5.0
*+16n)
    G_IIB_VM VREF VM POLY(1) VCCP VCCN 7.5625E-9 1.1666666666666626E-9
+1.0416666666666735E-10
    G_IIB_VP VREF VP POLY(1) VCCP VCCN 7.5625E-9 1.1666666666666626E-9
+1.0416666666666735E-10

    G_ICCSAT_OUTLOW VCCP VCCN VALUE={IF(I(V_OUTVLIM_LOW)>1u ,
+V(Icc_out_low) , 0)}
    G_IOUT_SOURCED VCCP 0 VALUE={IF(I(VreadIo)>0, I(VreadIo),0)}
    GM1 VREF VB VOUT_DIFF__SR_VCC 0 {1/RD}
    IEE VEE_N VCCN_ENHANCED {IEE}
    G_ICCSAT_OUTHIGH VCCP VCCN VALUE={IF(I(V_OUTVLIM_HIGH)>1u ,
+V(Icc_out_high) , 0)}
    G_IOUT_SINKED VCCN 0 VALUE={IF(I(VreadIo)>0, 0, I(VreadIo))}
.ENDS
*** End of subcircuit definition.

*******************************************************************************
*
* MODELS/SUBCKTS and PARAMS used by TS185x subckt:
*
.PARAM RINCM=6.4777e+7
.PARAM CINCM=1.4646e-11
.PARAM RIN_CM_VM={2*RINCM}
.PARAM RIN_CM_VP={2*RINCM}
.PARAM CIN_CM_VM={CINCM/2}
.PARAM CIN_CM_VP={CINCM/2}
.PARAM RINDIFF=2.3412e+5
.PARAM CINDIFF=9.2768e-12
.PARAM RIN_DIFF={(2*RINCM*RINDIFF)/(2*RINCM - RINDIFF)}
.PARAM CIN_DIFF={CINDIFF - CINCM/2}
.PARAM RD=1k
.PARAM VCCP_enhance=150m
.PARAM VCCN_enhance=-1100m 
.PARAM A0 = 1.0597e+6
.PARAM Ro = 6.5024e+4
.PARAM Ccomp=11.5p 
.PARAM IEE=3u
.PARAM W=1.45u
.PARAM L=1u
.PARAM gm_mos=4.667416947578759e-05
.PARAM GB=6m 
.PARAM Ro1=50
.PARAM Ro2_2=1e-3 
.PARAM Ro2_1={Ro - Ro2_2 - Ro1} 
.PARAM R1={A0/(gm_mos*GB*Ro2_1)}
.PARAM V_DPROT=150m
.PARAM RPROT_VCCP=100
.PARAM RPROT_VCCN=15k
.PARAM Vd_compensazione=-788.4u

*Eldo:
*.MODEL MOS_N  NMOS LEVEL=1 MODTYPE=ELDO VTO=+0.65  KP=500E-6 
*.MODEL DIODE_NOVd D LEVEL=1 MODTYPE=ELDO IS=10E-15 N=0.001
*.MODEL DIODE_VLIM D LEVEL=1 MODTYPE=ELDO IS=0.8E-15   
*.MODEL DIODE_ILIM D LEVEL=1 MODTYPE=ELDO IS=0.8E-15  
*.MODEL DX D LEVEL=1 MODTYPE=ELDO IS=1E-14 
*PSpice:
.MODEL MOS_N  NMOS LEVEL=1 VTO=+0.65  KP=500E-6 
.MODEL DIODE_NOVd D LEVEL=1 IS=10E-15 N=0.001
.MODEL DIODE_VLIM D LEVEL=1 IS=0.8E-15   
.MODEL DIODE_ILIM D LEVEL=1 IS=0.8E-15  
.MODEL DX D LEVEL=1 IS=1E-14  
*******************************************************************************
