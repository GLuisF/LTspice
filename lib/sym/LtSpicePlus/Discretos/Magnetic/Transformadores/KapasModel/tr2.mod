************************************************
*  Non-Linear Transformer Model for LTSpice    *
*  Hysteretic core model by John Chan ...      * 
*  IEEE Transactions On Computer-Aided Design, *
*  Vol. 10. No. 4, April 1991                  *
*  (see Help in LTSpice /  L: Inductor) ]      *
*                                              *
*  (c) Peter KAPAS, Nov. 20, 2006, USA, CA     *
*      e-mail: pkapas@sbcglobal.net            *
************************************************
*
.subckt tmod P1 P2 S1 S2 B Hg Hf
.params Rs1=0.1
.params Rp1=10G  Cp1=1f
.params i01=0
.param u0=4*Pi*1e-7
.params Hc=16 Bs=0.44 Br=0.1 k12=1 k21=1
.params A=0.0000251  s1=0.0006858  s2=0.0198
.params N1=1000  N2=2000
.params Rs2=.1
.params Rp2=10G  Cp2=1f
.params i02=0
*
XX1 di1 is1 int params: y0={i01}
G1 P1 P2 is1 0 1
R1 P1 P2 {Rp1}
C1 P1 P2 {Cp1}
XX2 Is1 B Is2 Ld1 Ld2 Hf Hg tint params: N1={N1} N2={N2} s1={s1} s2={s2} Hc={Hc} Bs={Bs} Br={Br} A={A}
XX3 di2 is2 int params: y0={i02}
G2 S1 S2 is2 0 1
R2 S1 S2 {Rp2}
C2 S1 S2 {Cp2}
B2 di1 0 V={V(vr1)/V(Ld1)}
B1 vr1 0 V={(V(P1,P2)-Rs1*V(is1))-k12*N2*V(di2)*V(Ld1)/N1}
B3 vr2 0 V={(V(S1,S2)-Rs2*V(is2))-k21*N1*V(di1)*V(Ld2)/N2}
B4 di2 0 V={V(vr2)/V(Ld2)}
.ends tmod

.subckt int IN OUT
G1 0 O1 0 ZERO 100G
C1 ZERO O1 {1µ*Kint}
R1 ZERO IN {1Meg/Kint}
R2 O1 0 100G
B1 OUT 0 V=-V(O1)
.ic V(Zero)=0
.ic V(O1)={-y0}
.param Kint=1000
.ends int
**
.subckt tint i1 B i2 Ld1 Ld2 Hf Hg
.param u0=4*Pi*1e-7
.param N1=1000 N2=1000 s1=0.0006858  s2=0.0198  Hc=16 Bs=0.44 Br=0.1
.param A=0.0000251
*
XX1 Hf B hb params: Hc={Hc} Br={Br} Bs={Bs}
XX2 Hf dB/dH dbdh01 params: Hc={Hc} Br={Br} Bs={Bs}
B0 Hg 0 V={V(B)/u0}
B1 Hf 0 V={(V(i1)*N1+V(i2)*N2-V(Hg)*s1)/s2}
B4 Ld1 0 V={A*N1*N1/(s2/V(dB/dH)+s1/u0)}
B5 Ld2 0 V={A*N2*N2/(s2/V(dB/dH)+s1/u0)}
.ends tint
**
.subckt hb H B
.param u0=4*Pi*1e-7
.param Bs=0.44 Br=0.4 Hc=16
.param alfa={Hc*(Bs/Br-1)}
*
B1 Bu 0  V={Bs*(V(H)+Hc)/(Abs(V(H)+Hc)+alfa)+u0*V(H)}
B2 Bd 0  V={Bs*(V(H)-Hc)/(Abs(V(H)-Hc)+alfa)+u0*V(H)}
B0 B 0  V={0.5*(V(Bu)+V(Bd))}
.ends hb
**
.subckt dbdh01 H dB
.param u0=4*Pi*1e-7
.params Hc=16 Bs=0.44 Br=0.1
.param alfa={Hc*(Bs/Br-1)}
*
B1 sqr1 0 V={(Abs(V(H)+Hc)+alfa)**2}
B2 sqr2 0 V={(Abs(V(H)-Hc)+alfa)**2}
Bud dBu 0 V={Bs*alfa/V(sqr1)+u0}
Bdd dBd 0 V={Bs*alfa/V(sqr2)+u0}
B0 dB 0 V={0.5*(V(dBu)+V(dBd))}
.ends dbdh01
**
*$