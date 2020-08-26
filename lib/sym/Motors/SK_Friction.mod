* D:\Simulation\BLDC Motor\LTspice\TK_FRICTION.asy
* Modified LTSpice Netlist Created : 9/12/2009
* ---------------------------------------------
* Description:  Start/Kynetic Friction
* ---------------------------------------------
.subckt SK_Friction w Tx Tf
R1 Tx 0 1G
R2 w 0 1G
.param b=10 c=.01 Tfs=0.005 Tfk=0.0045
B0 Tf0 0 V=abs(V(Tx))*b/(b+c+abs(V(w)))
B1 Tf1 0 V=Tfk*(1-1/(1+Tfk*abs(V(w))))
B2 Tf2 0 V=V(Tf0)+V(Tf1)
B3 Tf 0 V=-sgn(V(w))*if(V(Tf2)>=Tfs, Tfs, V(Tf2))
.ends SK_Friction
*
* End of Subcircuit Created from : TK_FRICTION.asc


