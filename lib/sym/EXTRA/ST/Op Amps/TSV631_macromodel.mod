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
***  TSV631 (WITHOUT STAND-BY)  Spice macromodel subckt 
***  Version 2.0 (February 2010) (last update: 05-10-2010)
****                      
************ CONNECTIONS: 
****             INVERTING INPUT
****              |  NON-INVERTING INPUT
****              |   |  OUTPUT 
****              |   |   |  POSITIVE POWER SUPPLY
****              |   |   |   |  NEGATIVE POWER SUPPLY 
****              |   |   |   |   |      
****              |   |   |   |   |     
.SUBCKT TSV631   VM  VP  VS  VCCP VCCN
    LOUT VZOUT 0 {Lout}
    FIOUT 0 VZOUT VREADIO 1.0
    M_NMOS2 VO_DIFF_MINUS VM VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
    M_NMOS1 VO_DIFF_PLUS NET194 VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
    IEE_N VEE_N VCCN_ENHANCED DC {IEE}
    VREADI_R1 VB NET0258 DC 0
    VVLIM_LOW_VB NET192 NET193 DC -770m
    VOS NET194 VP DC 0
    VPROT_IN_P_VCCP NET196 NET229 DC {V_DPROT}
    V_ENHANCE_VCCN VCCN_ENHANCED VCCN DC {VCCN_enhance}
    VREADIO NET0329 VS DC 0
    VVLIM_HIGH_VB NET217 NET203 DC -770m
    V_ENHANCE_VCCP VCCP_ENHANCED VCCP DC {VCCP_enhance}
    V_OUTVLIM_LOW NET206 NET207 DC {Vd_compensazione}
    VPROT_IN_M_VCCN NET208 NET360 DC {V_DPROT}
    V_OUTVLIM_HIGH NET235 NET211 DC {Vd_compensazione}
    VPROT_IN_P_VCCN NET212 NET213 DC {V_DPROT}
    VPROT_IN_M_VCCP NET348 NET219 DC {V_DPROT}
    DVLIM_HIGH_VB VB NET217 DIODE_VLIM
    DPROT_IN_M_VCCP VM NET219 DIODE_VLIM
    DVLIM_LOW_VB NET193 VB DIODE_VLIM
    DPROT_IN_M_VCCN NET208 VM DIODE_VLIM
    DILIM_SINK VB_3_SINK VB_3 DIODE_ILIM
    D_OUTVLIM_LOW NET207 VB_3 DIODE_NOVd
    DPROT_IN_P_VCCP NET194 NET229 DIODE_VLIM
    DILIM_SOURCE VB_3 VB_3_SOURCE DIODE_ILIM
    DPROT_IN_P_VCCN NET212 NET194 DIODE_VLIM
    D_OUTVLIM_HIGH VB_3 NET235 DIODE_NOVd
    CZOUT_IOUT_COEFF VZOUT_IOUT_COEFF 0 1n
    COUT2 VZOUT 0 {Cout2}
    CIN_CM_VM VM VREF {CIN_CM_VM}
    CIN_CM_VP VP VREF {CIN_CM_VP}
    CIN_DIFF VM VP {CIN_DIFF}
    C_RO2_1 VB_2 VREF 700.0p
    COUT NET0410 0 {Cout}
    CDIFF_PARASITIC VO_DIFF_PLUS VO_DIFF_MINUS 30p
    CCOMP VB VB_2 {Ccomp}
    EZOUT_VCC_COEFF VZOUT_VCC_COEFF 0 POLY(1) VCCP VCCN 1.6599264705882346
+-0.0645833333333332 -0.01348039215686276
    EZOUT_IOUT_COEFF NET0295 0 VALUE={IF( I(VreadIo)>=0 , (
+Zout_Iout_coeff_MIN + (1.0 -
+Zout_Iout_coeff_MIN)*exp(-abs(I(VreadIo)/Iout_dc_tau__source)) ) , (
+Zout_Iout_coeff_MIN + (1.0 -
+Zout_Iout_coeff_MIN)*exp(-abs(I(VreadIo)/Iout_dc_tau__sink)) ) )}
    EZOUT VB_3 NET0329
+VALUE={V(VZout)*V(VZout_Iout_coeff)*V(VZout_Vcc_coeff)}
    E_ICCSAT_HIGH ICC_OUT_HIGH 0 POLY(1) VCCP VCCN 0

    *E_RO1_VOL RO1_VOL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 45 , 3.3 , 28 , 5.0 ,
*+23 )}
    E_RO1_VOL RO1_VOL 0 POLY(1) VCCP VCCN 80.97794117647057
+-24.708333333333343 2.6225490196078454

    E_ICCSAT_LOW ICC_OUT_LOW 0 POLY(1) VCCP VCCN -6.574632352941173E-5
+4.014583333333334E-5 -1.5931372549019734E-7
    E_READIO V_IO_VAL 0 VALUE={I(VreadIo)}
    EILIM_SINK VB_3_SINK VDEP_SINK VB_3 0 1.0
    
*    E_RO1_VOH RO1_VOH 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 54 , 3.3 , 42 , 5.0 ,
*+27 )}
    E_RO1_VOH RO1_VOH 0 POLY(1) VCCP VCCN 66.87132352941175 -6.6875
+-0.25735294117647034

    EMEAS_VB_VREF VB_VREF 0 VB VREF 1.0
    EMEAS_VOUT_DIFF VOUT_DIFF 0 VO_DIFF_PLUS VO_DIFF_MINUS 1.0
    E_VDEP_SOURCE_2 VAL_VDEP_SOURCE_FILTERED 0
+VALUE={IF(V(val_vdep_source)>=0, 0, V(val_vdep_source))}
    E_VDEP_SOURCE_1 VAL_VDEP_SOURCE 0 VALUE={ ( -95.20588235294117 +
+73.33333333333336*V(Vccp,Vccn) + 3.921568627450974*PWR(V(Vccp,Vccn),2) ) 
+-5000*I(VreadIo)}
    EVLIM_HIGH_VOUT NET211 0 VALUE={V(VCCP) - V(Ro1_Voh)*I(VreadIo)}
    EVLIM_LOW_VOUT NET206 0 VALUE={V(VCCN) - V(Ro1_Vol)*I(VreadIo)}
    E_VDEP_SOURCE_3 VDEP_SOURCE 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_source_filtered))}
    EVLIM_HIGH_VB NET203 0 VCCP 0 1.0
    E_VDEP_SINK_1 VAL_VDEP_SINK 0 VALUE={ ( 211.65808823529403
+-172.8125*V(Vccp,Vccn) + 12.316176470588244*PWR(V(Vccp,Vccn),2) )
+-5000*I(VreadIo)}
    E_VDEP_SINK_2 VAL_VDEP_SINK_FILTERED 0
+VALUE={IF(V(val_vdep_sink)<=0 , 0 , V(val_vdep_sink))}
    E_R1 NET0258 VREF VALUE={I(VreadI_R1)*( R1_sink
++(R1_source-R1_sink)*1/(1+exp(-alpha_switch*(V(v_Io_val)-Io_val_switch) )
+)) }
    EVLIM_LOW_VB NET192 0 VCCN 0 1.0
    E2_REF NET362 0 VCCN 0 1.0
    E_VREF VREF 0 NET356 0 1.0
    E_VDEP_SINK_3 VDEP_SINK 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_sink_filtered))}
    E1_REF NET326 0 VCCP 0 1.0
    EILIM_SOURCE VB_3_SOURCE VDEP_SOURCE VB_3 0 1.0
    E_SR_VCC_MODULATION VOUT_DIFF__SR_VCC 0 VALUE={V(Vout_diff)*(
+0.7286764705882351 + 0.1008333333333332*V(Vccp,Vccn)
+-0.00931372549019606*PWR(V(Vccp,Vccn),2) )}
    RZOUT_IOUT_COEFF VZOUT_IOUT_COEFF NET0295 50
    RIN_CM_VP VREF VP {RIN_CM_VP}
    RIN_DIFF VP VM 1T
    ROUT NET0410 VZOUT {Rout}
    R_ICCSAT_LOW ICC_OUT_LOW 0 1K
    RO2_2 VB_3 VB_2 {Ro2_2}
    RPROT_IN_P_VCCP NET196 VCCP 100
    RPROT_IN_M_VCCP VCCP NET348 100
    RO2_1 VB_2 VREF {Ro2_1}
    RD1 VCCP_ENHANCED VO_DIFF_PLUS {RD}
    RD2 VCCP_ENHANCED VO_DIFF_MINUS {RD}
    RIN_CM_VM VREF VM {RIN_CM_VM}
    R1_REF NET326 NET356 1Meg
    R_ICCSAT_HIGH ICC_OUT_HIGH 0 1K
    RPROT_IN_M_VCCN VCCN NET360 15K
    R2_REF NET356 NET362 1Meg
    RPROT_IN_P_VCCN NET213 VCCN 15K
    G_ICCSAT_OUTLOW VCCP VCCN VALUE={IF(I(V_OUTVLIM_LOW)>1u ,
+V(Icc_out_low) , 0)}
    G_I_VB VB_2 VREF VB_VREF 0 {GB}
    G_I_IO VB_2 VREF VALUE={V(VB_Vref)*GB*( 10*( 1 -
+exp(-abs(V(v_Io_val))/3m )) )  }
    G_IOUT_SOURCED VCCP 0 VALUE={IF(I(VreadIo)>0, I(VreadIo),0)}
    GM1 VREF VB VOUT_DIFF__SR_VCC 0 {1/RD}
    
    *G_IIB_VM VREF VM TABLE {V(Vccp,Vccn)} = (+1.8 1p) (+3.3 1p) (+5.0 1p)
    G_IIB_VM VREF VM VALUE={1p}
    
    G_ICC VCCP VCCN POLY(1) VCCP VCCN 4.027205882352942E-5
+3.958333333333329E-6 -1.2254901960784258E-7
    G_ICCSAT_OUTHIGH VCCP VCCN VALUE={IF(I(V_OUTVLIM_HIGH)>1u ,
+V(Icc_out_high), 0)}
    
    *G_IIB_VP VREF VP TABLE {V(Vccp,Vccn)} = (+1.8 1p) (+3.3 1p) (+5.0 1p)
    G_IIB_VP VREF VP VALUE={1p}
    
    G_IOUT_SINKED VCCN 0 VALUE={IF(I(VreadIo)>0, 0, I(VreadIo))}
.ENDS
*** End of subcircuit definition.

*******************************************************************************
*
* MODELS/SUBCKTS and PARAMS used by TSV63x subckt:
*
.PARAM RINCM=2.0828E+11
.PARAM CINCM=6.6478E-12
.PARAM RIN_CM_VM={2*RINCM}
.PARAM RIN_CM_VP={2*RINCM}
.PARAM CIN_CM_VM={CINCM/2}
.PARAM CIN_CM_VP={CINCM/2}
.PARAM CINDIFF=3.5657E-12
.PARAM CIN_DIFF={CINDIFF - CINCM/2}
.PARAM RD=1k 
.PARAM VCCP_enhance=150m
.PARAM VCCN_enhance=-1100m 
.PARAM GB=141m
.PARAM Ro = 223872
.PARAM A0_source = 5.959352977968012e+7  
.PARAM A0_sink = 0.6e+6
.PARAM alpha_switch = 1e6
.PARAM Io_val_switch = -7u
.PARAM Ccomp=8.8p 
.PARAM IEE=3u
.PARAM W=1.59u
.PARAM L=1u
.PARAM gm_mos=4.887806568937801e-05
.PARAM Lout  = 230u
.PARAM Rout  = 900
.PARAM Cout  = 2n
.PARAM Cout2 = 3.7p
.PARAM Zout_Iout_coeff_MIN= 0.04
.PARAM Iout_dc_tau__source = 0.9m 
.PARAM Iout_dc_tau__sink   = 0.03m 
.PARAM Ro2_2=1e-3 
.PARAM Ro2_1={ Ro - Ro2_2} 
.PARAM R1_sink={A0_sink/(gm_mos*GB*Ro2_1)}
.PARAM R1_source={A0_source/(gm_mos*GB*Ro2_1)}
.PARAM V_DPROT=150m
.PARAM Vd_compensazione=-788.4u

.MODEL MOS_N  NMOS LEVEL=1 VTO=+0.65  KP=500E-6 
.MODEL DIODE_NOVd D LEVEL=1 IS=10E-15 N=0.001
.MODEL DIODE_VLIM D LEVEL=1 IS=0.8E-15   
.MODEL DIODE_ILIM D LEVEL=1 IS=0.8E-15  
*
*******************************************************************************
