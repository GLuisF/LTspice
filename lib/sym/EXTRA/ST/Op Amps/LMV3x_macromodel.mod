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
***  LMV3x  Spice macromodel subckt 
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
.SUBCKT    LMV3X VM  VP  VS  VCCP VCCN
    M_NMOS2 VO_DIFF_MINUS VM VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
    M_NMOS1 VO_DIFF_PLUS NET216 VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
    V_OUTVLIM_LOW NET208 NET209 DC {Vd_compensazione}
    V_OUTVLIM_HIGH NET233 NET211 DC {Vd_compensazione}
    VREADIO NET273 VS DC 0
    VVLIM_LOW_VB NET214 NET215 DC -770m
    VOS NET216 VP DC 0
    VPROT_IN_P_VCCP NET218 NET247 DC {V_DPROT}
    V_ENHANCE_VCCN VCCN_ENHANCED VCCN DC {VCCN_enhance}
    VVLIM_HIGH_VB NET237 NET223 DC -770m
    V_ENHANCE_VCCP VCCP_ENHANCED VCCP DC {VCCP_enhance}
    VPROT_IN_M_VCCN NET226 NET398 DC {V_DPROT}
    VPROT_IN_P_VCCN NET228 NET229 DC {V_DPROT}
    VPROT_IN_M_VCCP NET386 NET239 DC {V_DPROT}
    D_OUTVLIM_HIGH NET276 NET233 DIODE_NOVd
    D_OUTVLIM_LOW NET209 NET235 DIODE_NOVd
    DVLIM_HIGH_VB VB NET237 DIODE_VLIM
    DPROT_IN_M_VCCP VM NET239 DIODE_VLIM
    DVLIM_LOW_VB NET215 VB DIODE_VLIM
    DPROT_IN_M_VCCN NET226 VM DIODE_VLIM
    DILIM_SINK VB_3_SINK VB_3 DIODE_ILIM
    DPROT_IN_P_VCCP NET216 NET247 DIODE_VLIM
    DILIM_SOURCE VB_3 VB_3_SOURCE DIODE_ILIM
    DPROT_IN_P_VCCN NET228 NET216 DIODE_VLIM
    C_RO2_1 VB_2 VREF 500p
    CIN_DIFF VM VP {CIN_DIFF}
    CIN_CM_VP VP VREF {CIN_CM_VP}
    CIN_CM_VM VM VREF {CIN_CM_VM}
    CDIFF_PARASITIC VO_DIFF_PLUS VO_DIFF_MINUS 30p
    CCOMP VB VB_2 {Ccomp}
    E_RO1 VB_3 NET273 VALUE={IF(I(VreadIo)>0,
+V(Ro1_Voh)*I(VreadIo),V(Ro1_Vol)*I(VreadIo))}

* Eldo:
*    E_VOHNORL NET276 VB_3 PWL(1) VCCP VCCN ( 1.8 , 16m ) ( 3.0 , 21m ) (
*    +5.0 , 28.5m )
*    E_RO1_VOH RO1_VOH 0 PWL(1) VCCP VCCN ( 1.8 , 60 ) ( 3.0 , 57 ) ( 5.0 ,
*    +41 )
*    E_RO1_VOL RO1_VOL 0 PWL(1) VCCP VCCN ( 1.8 , 38 ) ( 3.0 , 60 ) (
*    +5.0 , 42 )
*    E_VOLNORL VB_3 NET235 PWL(1) VCCP VCCN ( 1.8 , 24m ) ( 3.0 , 26m ) ( 5.0 ,
*    +32m )
* PSpice:
*    E_VOHNORL NET276 VB_3 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 16m , 3.0 , 21m ,
*+5.0 , 28.5m )}
    E_VOHNORL NET276 VB_3 POLY(1) VCCP VCCN 0.00779687499999999
+0.0047916666666666715 -1.3020833333333404E-4
    *E_RO1_VOH RO1_VOH 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 60 , 3.0 , 57 , 5.0 ,
*+41 )}
    E_RO1_VOH RO1_VOH 0 POLY(1) VCCP VCCN 55.21875 5.75 -1.71875
    *E_VOLNORL VB_3 NET235 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 24m , 3.0 , 26m ,
*+5.0 , 32m )}
    E_VOLNORL VB_3 NET235 POLY(1) VCCP VCCN 0.02325
+-3.3333333333334427E-4 4.166666666666681E-4
    *E_RO1_VOL RO1_VOL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 38 , 3.0 , 60 , 5.0 ,
*+42 )}
    E_RO1_VOL RO1_VOL 0 POLY(1) VCCP VCCN -41.125 59.33333333333332
+-8.541666666666664

    E50 NET211 0 VCCP 0 1.0
    E_ICCSAT_HIGH ICC_OUT_HIGH 0 POLY(1) VCCP VCCN 3.9739130434782604E-5
+5.652173913043478E-6
    E51 NET208 0 VCCN 0 1.0
    E_ICCSAT_LOW ICC_OUT_LOW 0 POLY(1) VCCP VCCN 0    
    EILIM_SINK VB_3_SINK VDEP_SINK VB_3 0 1.0
    E64 IO_VAL 0 VALUE={I(VreadIo)}
    EMEAS_VB_VREF VB_VREF 0 VB VREF 1.0
    EMEAS_VOUT_DIFF VOUT_DIFF 0 VO_DIFF_PLUS VO_DIFF_MINUS 1.0
    E_VDEP_SOURCE_2 VAL_VDEP_SOURCE_FILTERED 0
+VALUE={IF(V(val_vdep_source)>=0, 0, V(val_vdep_source))}
    E_VDEP_SOURCE_1 VAL_VDEP_SOURCE 0 VALUE={ (217.76086956521732      +
+4.347826086956525*V(Vccp,Vccn))  -5000*I(VreadIo) }
    E_VDEP_SOURCE_3 VDEP_SOURCE 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_source_filtered))}
    EVLIM_HIGH_VB NET223 0 VCCP 0 1.0
    E_VDEP_SINK_1 VAL_VDEP_SINK 0 VALUE={ ( -217.76086956521732
+-4.347826086956525*V(Vccp,Vccn) ) -5000*I(VreadIo)}
    E_VDEP_SINK_2 VAL_VDEP_SINK_FILTERED 0
+VALUE={IF(V(val_vdep_sink)<=0 , 0 , V(val_vdep_sink))}
    EVLIM_LOW_VB NET214 0 VCCN 0 1.0
    E2_REF NET400 0 VCCN 0 1.0
    E_VREF VREF 0 NET394 0 1.0
    G_ICC VCCP VCCN POLY(1) VCCP VCCN 1.2204347826086958E-4
+7.3913043478260745E-6
    E_VDEP_SINK_3 VDEP_SINK 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_sink_filtered))}
    E1_REF NET368 0 VCCP 0 1.0
    EILIM_SOURCE VB_3_SOURCE VDEP_SOURCE VB_3 0 1.0
    E_SR_VCC_MODULATION VOUT_DIFF__SR_VCC 0 VALUE={V(Vout_diff)*(
+0.5869565217391304 + 0.0826086956521739*V(Vccp,Vccn) )}
    R1 VB VREF {R1}
    RIN_CM_VM VREF VM {RIN_CM_VM}
    RO2_1 VB_2 VREF {Ro2_1}
    RIN_DIFF VP VM {RIN_DIFF}
    R_ICCSAT_LOW ICC_OUT_LOW 0 1K
    RPROT_IN_P_VCCP NET218 VCCP {RPROT_VCCP}
    RPROT_IN_M_VCCP VCCP NET386 {RPROT_VCCP}
    RO2_2 VB_3 VB_2 {Ro2_2}
    RIN_CM_VP VREF VP {RIN_CM_VP}
    RD1 VCCP_ENHANCED VO_DIFF_PLUS {RD}
    RD2 VCCP_ENHANCED VO_DIFF_MINUS {RD}
    R1_REF NET368 NET394 1Meg
    R_ICCSAT_HIGH ICC_OUT_HIGH 0 1K
    RPROT_IN_M_VCCN VCCN NET398 {RPROT_VCCN}
    R2_REF NET394 NET400 1Meg
    RPROT_IN_P_VCCN NET229 VCCN {RPROT_VCCN}

*Eldo:
*    G_IIB_VM VREF VM TABLE {V(Vccp,Vccn)} = (+2.7 10n) (+5.0 16n)
*    G_IIB_VP VREF VP TABLE {V(Vccp,Vccn)} = (+2.7 10n) (+5.0 16n)
*PSpice:
*    G_IIB_VM VREF VM VALUE={TABLE( V(VCCP,VCCN) , +2.7 , 10n , +5.0 , 16n)}
*    G_IIB_VP VREF VP VALUE={TABLE( V(VCCP,VCCN) , +2.7 , 10n , +5.0 , 16n)}
    G_IIB_VM VREF VM POLY(1) VCCP VCCN 2.956521739130429E-9
+2.6086956521739144E-9
    G_IIB_VP VREF VP POLY(1) VCCP VCCN 2.956521739130429E-9
+2.6086956521739144E-9

    G_ICCSAT_OUTLOW VCCP VCCN VALUE={IF(I(V_OUTVLIM_LOW)>1u ,
+V(Icc_out_low) , 0)}
    G_I_IO VB_2 VREF VALUE={IF(abs(V(Io_val))<50m  , V(VB_Vref)*GB*(
+abs(V(Io_val))/3m ) , V(VB_Vref)*GB*( 50m/3m ) )}
    G_IOUT_SOURCED VCCP 0 VALUE={IF(I(VreadIo)>0, I(VreadIo),0)}
    GM1 VREF VB VOUT_DIFF__SR_VCC 0 {1/RD}    
    IEE VEE_N VCCN_ENHANCED {IEE}
    G_ICCSAT_OUTHIGH VCCP VCCN VALUE={IF(I(V_OUTVLIM_HIGH)>1u ,
+V(Icc_out_high) , 0)}
    G_IOUT_SINKED VCCN 0 VALUE={IF(I(VreadIo)>0, 0, I(VreadIo))}
    
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

.ENDS
*** End of subcircuit definition.

*******************************************************************************
*
* MODELS/SUBCKTS and PARAMS used by LMV3x subckt:
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
.PARAM A0 = 1.0597e+006
.PARAM Ro = 6.5024e+004
.PARAM Ccomp=5.4p 
.PARAM IEE=3u
.PARAM W=1.37u
.PARAM L=1u
.PARAM gm_mos=4.536705600382889e-05
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
