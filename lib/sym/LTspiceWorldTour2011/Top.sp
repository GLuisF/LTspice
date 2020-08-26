* D:\LTspiceWorldTour2009\Top.asc
v1 in 0 sine(0 .1 1k)
v2 n001 0 9
q:x1:1 x1:n001 x1:n002 x1:n003 0 npn
r:x1:1 n001 x1:n002 75k
c:x1:1 x1:n003 0 1µ
r:x1:2 x1:n003 0 300
r:x1:3 x1:n002 0 10k
c:x1:2 x1:n002 in .01µ
c:x1:3 out x1:n001 .1µ
r:x1:4 n001 x1:n001 3k
r1 out 0 10k
.model npn npn
.tran 3m
.end
