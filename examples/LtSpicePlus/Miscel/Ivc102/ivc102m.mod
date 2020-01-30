*

*

*  ------------------------------------------------------------------------ 

* |  NOTICE: THE INFORMATION PROVIDED HEREIN IS BELIEVED TO BE RELIABLE;   |

* |  HOWEVER; BURR-BROWN ASSUMES NO RESPONSIBILITY FOR INACCURACIES OR     |

* |  OMISSIONS.  BURR-BROWN ASSUMES NO RESPONSIBILITY FOR THE USE OF THIS  |

* |  INFORMATION, AND ALL USE OF SUCH INFORMATION SHALL BE ENTIRELY AT     |

* |  THE USER'S OWN RISK.  NO PATENT RIGHTS OR LICENSES TO ANY OF THE      |

* |  CIRCUITS DESCRIBED HEREIN ARE IMPLIED OR GRANTED TO ANY THIRD PARTY.  |

* |  BURR-BROWN DOES NOT AUTHORIZE OR WARRANT ANY BURR-BROWN PRODUCT FOR   |

* |  USE IN LIFE-SUPPORT DEVICES AND/OR SYSTEMS.                           |

*  ------------------------------------------------------------------------ 

*

*

*

* IVC102M (switched integrator) MULTIPLE POLE/ZERO MACROMODEL

*

* REV. A  Created 5-30-96 BCB

* REV.B  20 JUNE 97 NPA: MOVED LEGAL DISCLAIMER TO BEGINNING OF FILE

*

* 

* NOTES : 

*    1.  The transient time for the input to the switches (HOLD and 

*        RESET) should be programmed to 6V/usec.  

*        Complying with this requirment will give you greater

*        success in convergence during transient analysis and

*        a more accurate simulation of the effect of the 200nsec

*        switching speed of the actual switching transistors in 

*        the IVC102.  This is easily implemented with the PULSE

*        command in Spice.  If your input signal to the switches

*        is faster than recommended above, the R-C, low-pass filter

*        on the input of the switch will slow the signal down some-

*        what, however not enough to comply with the data sheet stated

*        switching speeds of 200nsec.

*    2.  To insure proper operation, always establish the initial 

*        bias point for the transient analysis with RESET and 

*        HOLD equal to the potential at COM

*

*

*                AGND

*                |  SWIN (SWITCH IN)

*                |  |  INM

*                |  |  |  C1

*                |  |  |  |  C2

*                |  |  |  |  |  C3

*                |  |  |  |  |  |  VM (NEGATIVE SUPPLY)

*                |  |  |  |  |  |  |  VOUT

*                |  |  |  |  |  |  |  |  S1 (HOLD)

*                |  |  |  |  |  |  |  |  |  S2 (RESET)

*                |  |  |  |  |  |  |  |  |  |  DGND

*                |  |  |  |  |  |  |  |  |  |  |  VP (POSITIVE SUPPLY)

*                |  |  |  |  |  |  |  |  |  |  |  |

.SUBCKT  IVC102M 1  2  3  4  5  6  9  10 11 12 13 14



X1  3 1 10 9 14 OPA



*Integration Capacitors

C1 10 4 CC 10E-12

C2 10 5 CC 30E-12

C3 10 6 CC 60E-12



* Switches

*

SH1 2 3 11 13 SWH

SH2  2 3 2 13 SWT

SR  3 10 12 13 SWR



.MODEL SWH VSWITCH(RON=1000G ROFF=1.7E3 VON=2 VOFF=0.8)

.MODEL SWR VSWITCH(RON=1000G ROFF=1.5E3 VON=2 VOFF=0.8)

.MODEL SWT VSWITCH(RON=1000G ROFF=10 VON=0.45 VOFF=0.55)

.MODEL CC CAP(VC1=25E-6 TC1=-25E-6)



.ENDS

*             INM

*             |  INP

*             |  |  OUT

*             |  |  |  VM

*             |  |  |  |  VP

*             |  |  |  |  |

.SUBCKT  OPA   2  3  6  4  7



* Amp input stage (2nd pole @ 35M Hz)

*

J11 15 2 14 JX

J12 16 13 14 JX

C12 15 16 18.2E-12

R13 15 7 796

R14 16 7 796

ISS 14 4 1.11E-3

VOS 13 3 0.5E-3

G1 2 30 POLY(3) (15,2) (14,2) (30,2) 0 1E-12 1E-12 1E-12

G2 13 30 POLY(3) (16,13) (14,13) (30,13) 0 1E-12 1E-12 1E-12



* Amp gain stage (130dB) and first pole (@ 4.20K HZ)

*

R27 7 21 2.45E9

R28 4 21 2.45E9

C22 7 21 100E-12

C23 4 21 100E-12

G21 7 21 POLY(1) 15 16 1.451E-3 1.256E-3

G22 21 4 POLY(1) 16 15 1.451E-3 1.256E-3

I22 7 13 2.2E-3

V21 7 22 1.885

V22 23 4 1.885

D21 21 22 DX

D22 23 21 DX



* Amp correction current and output stage

*

IPS 7 30 9E-3

RPS 7 30 100E3

R9 7 71 100E3

R10 4 71 100E3

D91 21 6 DX

D92 6 21 DX

D93 7 94 DX

D94 7 95 DX

D95 4 94 DY

D96 4 95 DY

G91 7 6 21 7 .020387

G92 4 6 21 4 .020387

G95 94 4 6 21 .020387

G96 95 4 21 6 .020387

R91 7 6 49.051

R92 4 6 49.051



* Models

.MODEL JX NJF(BETA=.788E-3 VTO=-2 IS=5E-14)

.MODEL DX D(IS=1E-15)



.MODEL DY D(IS=1E-15  BV=50)

*

.ENDS 

.ENDS IVC102M

*

*



