* D:\LTspiceWorldTour2009\tube.asc
c§y1 n004 n005 .25p lser=1mh rser=.1 cpar=50p
v1 n003 0 500
c5 out n003 10p
l4 out n003 6.3µ
r2 n005 0 100k
b:u1:§eat u1:at 0 v=0.636*atan(v(out,0)/15) 
b:u1:§egs u1:gs 0 v=limit(v(n001,0)/19+v(n005,0)+v(out,0)/1400,0,1e6) 
b:u1:§egs2 u1:gs2 0 v=pwrs(v(u1:gs),1.5) 
b:u1:§ecath u1:cc 0 v=v(u1:gs2)*v(u1:at) 
b:u1:§ga out 0 i=3.2e-3*v(u1:cc) 
b:u1:§escrn u1:sc 0 v=v(u1:gs2)*(1.1-v(u1:at)) 
b:u1:§gs n001 0 i=2.0e-3*v(u1:sc)*limit(v(n001,0),0,10)/10 
b:u1:§gg n005 0 i=pwr(limit(v(n005,0)+1,0,1e6),1.5)*50e-6 
c:u1:g1 n005 0 10.8p
c:u1:ak out 0 6.5p
c:u1:g1a n005 out 0.5p
c1 n004 n001 1000p
c2 n001 0 1000p
r1 n003 n002 22k
l1 n001 n002 10m
c3 n002 0 .01µ
.tran 3m startup
.end
; Total elapsed time: 44.437 seconds.
