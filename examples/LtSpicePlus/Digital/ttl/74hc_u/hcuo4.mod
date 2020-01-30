********* HCU04 SUBCIRCUIT ****************************************
**** RUNS ON PSpice, MAY NEED MODIFICATION FOR OTHER PLATFORMS ****
****** NODES:  INPUT OUTPUT VDD ***********************************

.SUBCKT XHCU04   2     3     1
MU 3 2 1 1 P1JT L=1.76u W=654U AD=5559P AS=5559P PD=1325U PS=1325U
+ NRD=6.116m NRS=6.116m
ML 3 2 0 0 N1JT L=1.76u W=182U AD=1547P AS=1547P PD=381U PS=381U NRD=22m
+ NRS=22m
.MODEL N1JT NMOS 
+ LEVEL   = 3
+ NSS     = 0.00000E+00 VTO     = 8.00000E-01 TOX     = 2.30000E-08
+ XJ      = 7.47842E-08 LD      = 0.04500E-06 RSH     = 65
+ NSUB    = 2.77696E+16 NFS     = 1.26234E+11 UO      = 5.82719E+02
+ VMAX    = 2.65458E+05 DELTA   = 8.81407E-01 THETA   = 5.29522E-02
+ ETA     = 3.52580E-02 KAPPA   = 2.15314E-01
+ CGSO    = 6.75E-11    CGDO    = 6.75E-11    CGBO    = 0.00
+ CJ      = 3.82E-04    CJSW    = 1.25E-09    PB      = 1.231
+ MJ      = 0.396       MJSW    = 0.221       TPG     = 1
+ DW      =-0.46000E-06 DL      =-0.42000E-06
+ XQC     = 1
*
.MODEL P1JT PMOS 
+ LEVEL   = 3
+ NSS     = 0.00000E+00 VTO     =-9.00000E-01 TOX     = 2.30000E-08
+ XJ      = 8.32522E-08 LD      = 0.03500E-06 RSH     = 125
+ NSUB    = 1.33990E+16 NFS     = 7.19190E+11 UO      = 1.92014E+02
+ VMAX    = 4.16775E+07 DELTA   = 5.63546E-01 THETA   = 1.22160E-01
+ ETA     = 4.96427E-02 KAPPA   = 5.00000E-02
+ CGSO    = 5.25E-11    CGDO    = 5.25E-11    CGBO    = 0.00
+ CJ      = 4.01E-04    CJSW    = 1.237E-09   PB      = 0.723   
+ MJ      = 0.452       MJSW    = 0.186       TPG     = -1
+ DW      =-0.46000E-06 DL      =-0.44000E-06
+ XQC     = 1
.ENDS XHCU04

*  James E.Thompson, P.E.      Consulting Engineer  %        mens         %
*  Analog/Mixed-Signal ASIC's and Discrete Systems  %         et          %
*  Phoenix, Arizona           Voice: (602)460-2350  %        manus        %
*  analog@primenet.com          Fax: (602)460-2142  % (Beaver Patrol '62) %
**********************************************************************


