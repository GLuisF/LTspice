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
***  TSV620  (WITH STAND-BY)  Spice macromodel subckt 
***  Version 2.0  (March 2010) (last update: 05-10-2010)
****                      
************ CONNECTIONS: 
****             INVERTING INPUT
****              |  NON-INVERTING INPUT
****              |   |  OUTPUT 
****              |   |   |  POSITIVE POWER SUPPLY
****              |   |   |   |  NEGATIVE POWER SUPPLY 
****              |   |   |   |   |     STAND-BY 
****              |   |   |   |   |     |
.SUBCKT TSV620   VM  VP  VS VCCP VCCN  STB
    FIOUT 0 VZOUT VREADIO 1.0
    LOUT VZOUT 0 {Lout}
    S_SW_OUT     VS_STB VS VSTB_CTRL 0     SW_OUT
    S_SW_LEAK    VS 0 VSTB_CTRL 0          SW_LEAK
    S_SW_VB2_VS  VB_2 NET0220 VSTB_CTRL 0  SW_VB2_VS
    S_SW_VB_VREF VB NET0224 VSTB_CTRL 0    SW_VB_VREF
    G_IEE_STB VEE_N VCCN_ENHANCED POLY(2) VSTB_CTRL 0 IEE_val 0 0 0 0 0 1
    G_ICC_STB VCCP VCCN POLY(2) VSTB_CTRL 0 Icc_val 0 0 0 0 0 1
    G_IOUT_SINKED VCCN 0 VALUE={IF(I(VreadIo)>0, 0, I(VreadIo))}
    G2_ICC_STB VCCP VCCN VALUE={ICC_STB*( 1-V(VSTB_ctrl) )}
    G_ICCSAT_OUTHIGH VCCP VCCN VALUE={IF(I(V_OUTVLIM_HIGH)>1u ,
+V(Icc_out_high)*V(VSTB_ctrl), 0)}
    
    *G_IIB_VP VREF VP TABLE {V(Vccp,Vccn)} = (+1.8 1p) (+3.3 1p) (+5.0 1p)
    G_IIB_VP VREF VP VALUE={1p}
    
    G_ICCSAT_OUTLOW VCCP VCCN VALUE={IF(I(V_OUTVLIM_LOW)>1u ,
+V(Icc_out_low)*V(VSTB_ctrl) , 0)}
    G_IOUT_SOURCED VCCP 0 VALUE={IF(I(VreadIo)>0, I(VreadIo),0)}
    GM1 VREF VB VOUT_DIFF__SR_VCC 0 {1/RD}
    
    *G_IIB_VM VREF VM TABLE {V(Vccp,Vccn)} = (+1.8 1p) (+3.3 1p) (+5.0 1p)
    G_IIB_VM VREF VM VALUE={1p}
    
    G_I_IO VB_2 VREF VALUE={V(VB_Vref)*GB*( 10*( 1 -
+exp(-abs(V(v_Io_val))/3m )) )  }
    G_ISTB 0 STB VALUE={ Iil_STB*(1-V(VSTB_one)) -Iih_STB*V(VSTB_one)}
    G_I_VB VB_2 VREF VB_VREF 0 {GB}
    RSTB_CTRL VSTB_CTRL VSTB_ONE {RSTB_ctrl}
    RD1 VCCP_ENHANCED VO_DIFF_PLUS {RD}
    RD2 VCCP_ENHANCED VO_DIFF_MINUS {RD}
    R1_REF NET287 NET247 1Meg
    R_ICCSAT_HIGH ICC_OUT_HIGH 0 1K
    RPROT_IN_M_VCCN VCCN NET243 15K
    R2_REF NET247 NET241 1Meg
    RPROT_IN_P_VCCN NET406 VCCN 15K
    RZOUT_IOUT_COEFF VZOUT_IOUT_COEFF NET0360 50
    RO2_2 VB_3 VB_2 {Ro2_2}
    R_ICCSAT_LOW ICC_OUT_LOW 0 1K
    RPROT_IN_M_VCCP VCCP NET253 100
    RPROT_IN_P_VCCP NET421 VCCP 100
    ROUT NET0325 VZOUT {Rout}
    RIN_CM_VP VREF VP {RIN_CM_VP}
    RIN_DIFF VP VM 1T
    RIN_CM_VM VREF VM {RIN_CM_VM}
    RO2_1 VB_2 VREF {Ro2_1}
    
    *E4 RO1_VOL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 45 , 3.3 , 25 , 5.0 , 24 )}
    E4 RO1_VOL 0 POLY(1) VCCP VCCN 92.65808823529412 -33.64583333333336
+3.9828431372549056

    *E_RO1_VOH RO1_VOH 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 54 , 3.3 , 30 , 5.0 ,
*+27 )}
    E_RO1_VOH RO1_VOH 0 POLY(1) VCCP VCCN 109.22426470588235
+-38.68750000000002 4.448529411764708

    *E3 VIL_STB_VAL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , {0.5/1.8} , 5.0 ,
*+{0.5/5.0} )}
    E3 VIL_STB_VAL 0 POLY(1) VCCP VCCN 0.37777777777777777
+-0.05555555555555556

    *E2 VIH_STB_VAL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , {1.3/1.8} , 5.0 ,
*+{4.5/5.0} )}
    E2 VIH_STB_VAL 0 POLY(1) VCCP VCCN 0.6222222222222219
+0.05555555555555557

    E_ICCSAT_HIGH ICC_OUT_HIGH 0 POLY(1) VCCP VCCN 0
    ESTB VSTB_ONE 0 VALUE={IF( (V(STB,Vccn)/V(Vccp,Vccn)) >=
+V(VIH_STB_val) , 1 , V(VSTB_zero) )}
    E0 VSTB_ZERO 0 VALUE={IF(  (V(STB,Vccn)/V(Vccp,Vccn)) <=
+V(VIL_STB_val) , 0 , 0.5 )}
    EREAD_VS NET0220 0 VS 0 1.0
    EREAD_VREF NET0224 0 VREF 0 1.0
    E_VDEP_SINK_2 VAL_VDEP_SINK_FILTERED 0
+VALUE={IF(V(val_vdep_sink)<=0 , 0 , V(val_vdep_sink))}
    EZOUT VB_3 NET356
+VALUE={V(VZout)*V(VZout_Iout_coeff)*V(VZout_Vcc_coeff)}
    EMEAS_VOUT_DIFF VOUT_DIFF 0 VO_DIFF_PLUS VO_DIFF_MINUS 1.0
    EZOUT_VCC_COEFF VZOUT_VCC_COEFF 0 POLY(1) VCCP VCCN 1.669117647058823
+-0.1583333333333334 0.004901960784313741
    E2_REF NET241 0 VCCN 0 1.0
    EILIM_SINK VB_3_SINK VDEP_SINK VB_3 0 1.0
    E_R1 NET311 VREF VALUE={I(VreadI_R1)*( R1_sink
++(R1_source-R1_sink)*1/(1+exp(-alpha_switch*(V(v_Io_val)-Io_val_switch) )
+)) }
    EILIM_SOURCE VB_3_SOURCE VDEP_SOURCE VB_3 0 1.0
    EVLIM_LOW_VB NET425 0 VCCN 0 1.0
    E_VREF VREF 0 NET247 0 1.0
    EVLIM_LOW_VOUT NET411 0 VALUE={V(VCCN) - V(Ro1_Vol)*I(VreadIo)}
    E_SR_VCC_MODULATION VOUT_DIFF__SR_VCC 0 VALUE={V(Vout_diff)*(
+0.700735294117647 + 0.0525*V(Vccp,Vccn) +
+0.0014705882352941194*PWR(V(Vccp,Vccn),2) )}
    EZOUT_IOUT_COEFF NET0360 0 VALUE={IF( I(VreadIo)>=0 , (
+Zout_Iout_coeff_MIN + (1.0 -
+Zout_Iout_coeff_MIN)*exp(-abs(I(VreadIo)/Iout_dc_tau__source)) ) , (
+Zout_Iout_coeff_MIN + (1.0 -
+Zout_Iout_coeff_MIN)*exp(-abs(I(VreadIo)/Iout_dc_tau__sink)) ) )}
    E_VDEP_SOURCE_2 VAL_VDEP_SOURCE_FILTERED 0
+VALUE={IF(V(val_vdep_source)>=0, 0, V(val_vdep_source))}
    EVLIM_HIGH_VOUT NET408 0 VALUE={V(VCCP) - V(Ro1_Voh)*I(VreadIo)}
    E_ICCSAT_LOW ICC_OUT_LOW 0 POLY(1) VCCP VCCN -5.427573529411765E-5
+4.281250000000003E-5 -5.51470588235299E-7
    E_READIO V_IO_VAL 0 VALUE={I(VreadIo)}
    E_VDEP_SOURCE_3 VDEP_SOURCE 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_source_filtered))}
    E_VDEP_SOURCE_1 VAL_VDEP_SOURCE 0 VALUE={ ( -95.20588235294117 +
+73.33333333333336*V(Vccp,Vccn) + 3.921568627450974*PWR(V(Vccp,Vccn),2) ) 
+-5000*I(VreadIo)}
    E_VDEP_SINK_3 VDEP_SINK 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_sink_filtered))}
    EVLIM_HIGH_VB NET416 0 VCCP 0 1.0
    E_VDEP_SINK_1 VAL_VDEP_SINK 0 VALUE={ ( 211.65808823529403
+-172.8125*V(Vccp,Vccn) + 12.316176470588244*PWR(V(Vccp,Vccn),2) )
+-5000*I(VreadIo)}
    E1_REF NET287 0 VCCP 0 1.0
    E_ICC ICC_VAL 0 POLY(1) VCCP VCCN 2.433823529411765E-5 
+-1.0833333333333407E-6 3.4313725490196195E-7
    EMEAS_VB_VREF VB_VREF 0 VB VREF 1.0
    CZOUT_IOUT_COEFF VZOUT_IOUT_COEFF 0 1n
    CIN_CM_VM VM VREF {CIN_CM_VM}
    COUT2 VZOUT 0 {Cout2}
    CIN_DIFF VM VP {CIN_DIFF}
    COUT NET0325 0 {Cout}
    CIN_CM_VP VP VREF {CIN_CM_VP}
    CSTB_CTRL VSTB_CTRL 0 1n
    CDIFF_PARASITIC VO_DIFF_PLUS VO_DIFF_MINUS 80p
    C_RO2_1 VB_2 VREF 100p
    CCOMP VB VB_2 {Ccomp}
    DILIM_SOURCE VB_3 VB_3_SOURCE DIODE_ILIM
    DPROT_IN_P_VCCP NET423 NET388 DIODE_VLIM
    DVLIM_HIGH_VB VB NET400 DIODE_VLIM
    DPROT_IN_M_VCCP VM NET398 DIODE_VLIM
    DVLIM_LOW_VB NET426 VB DIODE_VLIM
    D_OUTVLIM_LOW NET412 VB_3 DIODE_NOVd
    D_OUTVLIM_HIGH VB_3 NET382 DIODE_NOVd
    DPROT_IN_M_VCCN NET409 VM DIODE_VLIM
    DPROT_IN_P_VCCN NET405 NET423 DIODE_VLIM
    DILIM_SINK VB_3_SINK VB_3 DIODE_ILIM
    V_IEE IEE_VAL 0 DC {IEE}
    VPROT_IN_M_VCCP NET253 NET398 DC {V_DPROT}
    VREADI_R1 VB NET311 DC 0
    VVLIM_LOW_VB NET425 NET426 DC -770m
    V_ENHANCE_VCCN VCCN_ENHANCED VCCN DC {VCCN_enhance}
    VPROT_IN_P_VCCP NET421 NET388 DC {V_DPROT}
    VOS NET423 VP DC 0
    VVLIM_HIGH_VB NET400 NET416 DC -770m
    V_OUTVLIM_LOW NET411 NET412 DC {Vd_compensazione}
    VPROT_IN_M_VCCN NET409 NET243 DC {V_DPROT}
    VREADIO NET356 VS_STB DC 0
    VPROT_IN_P_VCCN NET405 NET406 DC {V_DPROT}
    V_OUTVLIM_HIGH NET382 NET408 DC {Vd_compensazione}
    V_ENHANCE_VCCP VCCP_ENHANCED VCCP DC {VCCP_enhance}
    M_NMOS2 VO_DIFF_MINUS VM VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
    M_NMOS1 VO_DIFF_PLUS NET423 VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
.ENDS
*** End of subcircuit definition.


*******************************************************************************
*
* MODELS/SUBCKTS and PARAMS used by TSV62x subckt:
*
.PARAM RINCM=2.0828E+11
.PARAM CINCM=6.3491E-12
.PARAM RIN_CM_VM={2*RINCM}
.PARAM RIN_CM_VP={2*RINCM}
.PARAM CIN_CM_VM={CINCM/2}
.PARAM CIN_CM_VP={CINCM/2}
.PARAM CINDIFF=3.3573E-12
.PARAM CIN_DIFF={CINDIFF - CINCM/2}
.PARAM RD=1k
.PARAM VCCP_enhance=150m
.PARAM VCCN_enhance=-1100m
.PARAM GB=92m
.PARAM Ro = 4e5
.PARAM A0_source = 5.959352977968012e+7  
.PARAM A0_sink = 1.0e+6
.PARAM alpha_switch = 1e6
.PARAM Io_val_switch = -7u
.PARAM Ccomp=10.7p 
.PARAM IEE=1.5u
.PARAM W=1.07u
.PARAM L=1u
.PARAM gm_mos=2.835519773730752e-05
.PARAM Lout  = 700u
.PARAM Rout  = 1.75k
.PARAM Cout  = 750p
.PARAM Cout2 = 3.5p
.PARAM Zout_Iout_coeff_MIN= 0.02
.PARAM Iout_dc_tau__source = 0.21m 
.PARAM Iout_dc_tau__sink   = 0.03m 
.PARAM Ro2_2=1e-3
.PARAM Ro2_1={ Ro - Ro2_2 } 
.PARAM R1_sink={A0_sink/(gm_mos*GB*Ro2_1)}
.PARAM R1_source={A0_source/(gm_mos*GB*Ro2_1)}
.PARAM V_DPROT=150m
.PARAM Vd_compensazione=-788.4u
.PARAM ICC_STB = 5n
.PARAM VIL_STB = 100m
.PARAM VIH_STB = 900m
.PARAM Iout_leak_STB = 50p
.PARAM RSTB_ctrl = 51
.PARAM Iil_STB = 10p
.PARAM Iih_STB = 10p

.MODEL MOS_N  NMOS LEVEL=1  VTO=+0.65  KP=500E-6 
.MODEL DIODE_NOVd D LEVEL=1  IS=10E-15 N=0.001
.MODEL DIODE_VLIM D LEVEL=1  IS=0.8E-15   
.MODEL DIODE_ILIM D LEVEL=1  IS=0.8E-15  
.MODEL SW_OUT  VSWITCH    VON={VIH_STB} VOFF={VIL_STB} RON=1m ROFF=1T
.MODEL SW_LEAK VSWITCH    VON={VIH_STB} VOFF={VIL_STB} RON=1T ROFF={2.5/Iout_leak_STB -2e3}
.MODEL SW_VB2_VS VSWITCH  VON={VIH_STB} VOFF={VIL_STB} RON=1T ROFF=1m
.MODEL SW_VB_VREF VSWITCH VON={VIH_STB} VOFF={VIL_STB} RON=1T ROFF=1m
*
*******************************************************************************
