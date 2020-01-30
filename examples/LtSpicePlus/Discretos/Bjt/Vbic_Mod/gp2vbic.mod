+ PNP(
+ VBBE={VBBE}
+ IBBE={IBBE}
* VBIC from GP
+ level=9
* parasitic capacitor
;+ CBE0=
;+ CBC0=
* space charge capacitors
+ AJE=-0.5
+ CJE={cje}
+ PE={vje}
+ ME={mje}
+ AJC=-0.5
+ CJC={cjc*xcjc}
;+ CJC={cjc}
+ PC={vjc}
+ MC={mjc}
+ CJEP={cjc*(1-xcjc)}
+ CJCP={cjs}
+ PS={vjs}
+ MS={mjs}
+ AJS=-0.5
+ FC={fc}
* Early modeling
;+ VEF={vaf}
;+ VER={var}
+ VEF={vaf*0.5}
+ VER={var*0.5}
* DC forward main transistor
+ IS={is}
+ NF={nf}
* forward base
+ IBEI={is/bf}
+ NEI={nf}
+ IBEN={ise}
+ NEN={ne}
;+ IKF={ikf}
+ IKF={ikf*0.9}
+ WBE=1.0
* DC reverse main Transistor
+ NR={nr}
;+ IBCI={is/bf}
+ IBCI={is/br}
+ NCI={nr}
+ IBCN={isc}
+ NCN={nc}
;+ IKR={ikr}
+ IKR={ikr*0.9}
* parasitic transistor
;+ ISP=
;+ NFP=
;+ WSP=
;+ BEIP=
;+ IBENP=
;+ IBCIP=
;+ NCIP=
;+ IBCNP=
;+ NCNP=
;+ IKP=
* avalance effect
+ AVC1=0.15
+ AVC2=20
* parasitic resistances
+ RE={re}
+ RBX={rbm}
+ RBI={rb-rbm}
;+ RS=
;+ RBP=
+ RCX={rc}
* quasi-saturation
;+ RCI=0
+ RCI={rc*10}
;+ CI=
+ GAMM=100p
+ VO=1.5
+ HRCF=33m
+ QCO=1.0f
* transist time modeling
;+ TF={tf}
+ TF={tf*0.25}
+ QTF=0.3
+ XTF={xtf}
+ ITF={itf}
+ VTF={vtf}
+ TR={tr}
* excess phase
+ TD={tf*ptf*180/Pi}
* temperature dependance
+ CTH=100p
+ RTH=200
;+ TAMB={tnom}
+ TNOM={tnom}
+ EA={eg}
;+ EAIE=
;+ EAIC=
;+ EANE=
;+ EANC=
;+ EAIE={eg}
;+ EAIC={eg}
;+ EANE={eg}
;+ EANC={eg}
;+ EAIS=
;+ EANS=
;+ XRE=
;+ XRB=
;+ XRC=
;+ XRS=
;+ XVO=
+ XIS={xti}
+ XII={xtb}
+ XIN={xtb}
;+ XII={xti-xtb}
;+ XIN={xti-xtb}
;+ TNF=
;+ TAVC=
+ KFN={kf}
+ AFN={af}
;+ BFN=
+ )
