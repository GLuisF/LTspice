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
***  TSV61x  Spice macromodel subckt 
***  Version 2.0  (March 2010) (last update: 05-10-2010)
****                      
************ CONNECTIONS: 
****             INVERTING INPUT
****              |  NON-INVERTING INPUT
****              |   |  OUTPUT 
****              |   |   |  POSITIVE POWER SUPPLY
****              |   |   |   |  NEGATIVE POWER SUPPLY 
****              |   |   |   |   |      
****              |   |   |   |   |   
.SUBCKT TSV61X   VM  VP  VS VCCP VCCN
    FIOUT 0 VZOUT VREADIO 1.0
    LOUT VZOUT 0 {Lout}
    G_IIB_VM VREF VM VALUE={1p}
    G_I_IO VB_2 VREF VALUE={V(VB_Vref)*GB*( 10*( 1 -
+exp(-abs(V(v_Io_val))/3m )) )  }
    GM1 VREF VB VOUT_DIFF__SR_VCC 0 {1/RD}
    G_ICC VCCP VCCN POLY(1) VCCP VCCN 8.423161764705879E-6
+-7.29166666666657E-8 7.965686274509793E-8
    G_ICCSAT_OUTHIGH VCCP VCCN VALUE={IF(I(V_OUTVLIM_HIGH)>1u ,
+V(Icc_out_high), 0)}
    G_IIB_VP VREF VP VALUE={1p}
    G_IOUT_SINKED VCCN 0 VALUE={IF(I(VreadIo)>0, 0, I(VreadIo))}
    G_I_VB VB_2 VREF VB_VREF 0 {GB}
    G_IOUT_SOURCED VCCP 0 VALUE={IF(I(VreadIo)>0, I(VreadIo),0)}
    G_ICCSAT_OUTLOW VCCP VCCN VALUE={IF(I(V_OUTVLIM_LOW)>1u ,
+V(Icc_out_low) , 0)}
    ROUT NET0249 VZOUT {Rout}
    RZOUT_IOUT_COEFF VZOUT_IOUT_COEFF NET0286 50
    RIN_DIFF VP VM 1T
    RIN_CM_VM VREF VM {RIN_CM_VM}
    RO2_1 VB_2 VREF {Ro2_1}
    RPROT_IN_P_VCCP NET403 VCCP 100
    RPROT_IN_M_VCCP VCCP NET241 100
    RD1 VCCP_ENHANCED VO_DIFF_PLUS {RD}
    RD2 VCCP_ENHANCED VO_DIFF_MINUS {RD}
    R1_REF NET271 NET235 1Meg
    R_ICCSAT_HIGH ICC_OUT_HIGH 0 1K
    R2_REF NET235 NET229 1Meg
    RPROT_IN_M_VCCN VCCN NET231 15K
    RPROT_IN_P_VCCN NET388 VCCN 15K
    RIN_CM_VP VREF VP {RIN_CM_VP}
    R_ICCSAT_LOW ICC_OUT_LOW 0 1K
    RO2_2 VB_3 VB_2 {Ro2_2}
    EVLIM_HIGH_VOUT NET390 0 VALUE={V(VCCP) - V(Ro1_Voh)*I(VreadIo)}
    E_READIO V_IO_VAL 0 VALUE={I(VreadIo)}
    EILIM_SINK VB_3_SINK VDEP_SINK VB_3 0 1.0
    E_ICCSAT_HIGH ICC_OUT_HIGH 0 POLY(1) VCCP VCCN 0
    E_VDEP_SINK_3 VDEP_SINK 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_sink_filtered))}
    EVLIM_LOW_VOUT NET393 0 VALUE={V(VCCN) - V(Ro1_Vol)*I(VreadIo) +
+V(VOLnoRL)}
    EMEAS_VB_VREF VB_VREF 0 VB VREF 1.0
    E2_REF NET229 0 VCCN 0 1.0
    EVLIM_LOW_VB NET407 0 VCCN 0 1.0
    
    *E_RO1_VOL RO1_VOL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 45 , 3.3 , 25 , 5.0 ,
*+24 )}
    E_RO1_VOL RO1_VOL 0 POLY(1) VCCP VCCN 92.65808823529412
+-33.64583333333336 3.9828431372549056

    E_VDEP_SOURCE_2 VAL_VDEP_SOURCE_FILTERED 0
+VALUE={IF(V(val_vdep_source)>=0, 0, V(val_vdep_source))}
    E_VDEP_SOURCE_1 VAL_VDEP_SOURCE 0 VALUE={ ( -155.26102941176467 +
+124.8958333333334*V(Vccp,Vccn) -6.188725490196091*PWR(V(Vccp,Vccn),2) ) 
+-5000*I(VreadIo)}
    E_VDEP_SOURCE_3 VDEP_SOURCE 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_source_filtered))}
    EZOUT VB_3 NET0213
+VALUE={V(VZout)*V(VZout_Iout_coeff)*V(VZout_Vcc_coeff)}
    E_VDEP_SINK_1 VAL_VDEP_SINK 0 VALUE={ ( 302.61248012718784
+-270.8887965505632*V(Vccp,Vccn) + 40.840439369851765*PWR(V(Vccp,Vccn),2)
+-2.0294358529653245*PWR(V(Vccp,Vccn),3) ) -5000*I(VreadIo)}
    EVLIM_HIGH_VB NET398 0 VCCP 0 1.0
    E1_REF NET271 0 VCCP 0 1.0
    E_R1 NET295 VREF VALUE={I(VreadI_R1)*( R1_sink
++(R1_source-R1_sink)*1/(1+exp(-alpha_switch*(V(v_Io_val)-Io_val_switch) )
+)) }

    *E_VOLNORL VOLNORL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 3m , 3.3 , 6m , 5.0 ,
*+10m )}
    E_VOLNORL VOLNORL 0 POLY(1) VCCP VCCN 5.5147058823525646E-5 0.0014375
+1.102941176470584E-4

    E_VDEP_SINK_2 VAL_VDEP_SINK_FILTERED 0
+VALUE={IF(V(val_vdep_sink)<=0 , 0 , V(val_vdep_sink))}
    E_VREF VREF 0 NET235 0 1.0
    EMEAS_VOUT_DIFF VOUT_DIFF 0 VO_DIFF_PLUS VO_DIFF_MINUS 1.0
    
    *E_RO1_VOH RO1_VOH 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 53 , 3.3 , 33 , 5.0 ,
*+27 )}
    E_RO1_VOH RO1_VOH 0 POLY(1) VCCP VCCN 95.19852941176471
+-28.958333333333357 3.0637254901960818

    EILIM_SOURCE VB_3_SOURCE VDEP_SOURCE VB_3 0 1.0
    
    *EZOUT_VCC_COEFF VZOUT_VCC_COEFF 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 1.3 , 3.3
*+, 1.2 , 5.0 , 1.0 )}
    EZOUT_VCC_COEFF VZOUT_VCC_COEFF 0 POLY(1) VCCP VCCN 1.3253676470588234
+0.014583333333333308 -0.015931372549019603

    EZOUT_IOUT_COEFF NET0286 0 VALUE={( Zout_Iout_coeff_MIN + (1.0 -
+Zout_Iout_coeff_MIN)*exp(-abs(I(VreadIo)/Iout_dc_tau)) )}
    E_ICCSAT_LOW ICC_OUT_LOW 0 POLY(1) VCCP VCCN -3.8158972691807494E-5
+3.732444733420025E-5
    E_SR_VCC_MODULATION VOUT_DIFF__SR_VCC 0 VALUE={V(Vout_diff)*( +
+0.7536764705882353 + 0.012499999999999935*V(Vccp,Vccn) +
+0.007352941176470591*PWR(V(Vccp,Vccn),2) )}
    COUT2 VZOUT 0 {Cout2}
    CIN_DIFF VM VP {CIN_DIFF}
    CIN_CM_VP VP VREF {CIN_CM_VP}
    CZOUT_IOUT_COEFF VZOUT_IOUT_COEFF 0 1n
    CCOMP VB VB_2 {Ccomp}
    CDIFF_PARASITIC VO_DIFF_PLUS VO_DIFF_MINUS 130p
    CIN_CM_VM VM VREF {CIN_CM_VM}
    C_RO2_1 VB_2 VREF 35n
    COUT NET0249 0 {Cout}
    DVLIM_HIGH_VB VB NET382 DIODE_VLIM
    DILIM_SINK VB_3_SINK VB_3 DIODE_ILIM
    D_OUTVLIM_HIGH VB_3 NET364 DIODE_NOVd
    DPROT_IN_P_VCCN NET387 NET405 DIODE_VLIM
    DPROT_IN_M_VCCP VM NET380 DIODE_VLIM
    DILIM_SOURCE VB_3 VB_3_SOURCE DIODE_ILIM
    DPROT_IN_P_VCCP NET405 NET370 DIODE_VLIM
    DPROT_IN_M_VCCN NET391 VM DIODE_VLIM
    DVLIM_LOW_VB NET408 VB DIODE_VLIM
    D_OUTVLIM_LOW NET394 VB_3 DIODE_NOVd
    VVLIM_HIGH_VB NET382 NET398 DC -770m
    VPROT_IN_P_VCCN NET387 NET388 DC {V_DPROT}
    VREADI_R1 VB NET295 DC 0
    VPROT_IN_P_VCCP NET403 NET370 DC {V_DPROT}
    VOS NET405 VP DC 0
    V_OUTVLIM_HIGH NET364 NET390 DC {Vd_compensazione}
    VPROT_IN_M_VCCP NET241 NET380 DC {V_DPROT}
    V_ENHANCE_VCCN VCCN_ENHANCED VCCN DC {VCCN_enhance}
    V_ENHANCE_VCCP VCCP_ENHANCED VCCP DC {VCCP_enhance}
    VREADIO NET0213 VS DC 0
    VPROT_IN_M_VCCN NET391 NET231 DC {V_DPROT}
    VVLIM_LOW_VB NET407 NET408 DC -770m
    V_OUTVLIM_LOW NET393 NET394 DC {Vd_compensazione}
    IEE_N VEE_N VCCN_ENHANCED DC {IEE}
    M_NMOS2 VO_DIFF_MINUS VM VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
    M_NMOS1 VO_DIFF_PLUS NET405 VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
.ENDS
*** End of subcircuit definition.


*******************************************************************************
*
* MODELS/SUBCKTS and PARAMS used by TSV61x subckt:
*
.PARAM RINCM=2.0828E+11
.PARAM CINCM=6.3492E-12
.PARAM RIN_CM_VM={2*RINCM}
.PARAM RIN_CM_VP={2*RINCM}
.PARAM CIN_CM_VM={CINCM/2}
.PARAM CIN_CM_VP={CINCM/2}
.PARAM CINDIFF=3.2785E-12
.PARAM CIN_DIFF={CINDIFF - CINCM/2}
.PARAM RD=1k
.PARAM VCCP_enhance=150m
.PARAM VCCN_enhance=-1100m 
.PARAM GB=62.16m 
.PARAM Ro = 794328
.PARAM A0_source =  158489319
.PARAM A0_sink = 1.3e+6
.PARAM Lout  = 1.8m
.PARAM Rout  = 5600
.PARAM Cout  = 333p
.PARAM Cout2 = 3.5p
.PARAM Zout_Iout_coeff_MIN= 0.01
.PARAM Iout_dc_tau = 0.05m 
.PARAM alpha_switch = 1e6
.PARAM Io_val_switch = -7u
.PARAM Ccomp=11p 
.PARAM IEE=0.45u
.PARAM W=0.31u
.PARAM L=1u
.PARAM gm_mos=8.359416242253981e-06
.PARAM Ro2_2=1e-3 
.PARAM Ro2_1={ Ro - Ro2_2 } 
.PARAM R1_sink={A0_sink/(gm_mos*GB*Ro2_1)}
.PARAM R1_source={A0_source/(gm_mos*GB*Ro2_1)}
.PARAM V_DPROT=150m
.PARAM Vd_compensazione=-788.4u

.MODEL MOS_N  NMOS LEVEL=1  VTO=+0.65  KP=500E-6 
.MODEL DIODE_NOVd D LEVEL=1  IS=10E-15 N=0.001
.MODEL DIODE_VLIM D LEVEL=1  IS=0.8E-15   
.MODEL DIODE_ILIM D LEVEL=1  IS=0.8E-15  
*
*******************************************************************************
