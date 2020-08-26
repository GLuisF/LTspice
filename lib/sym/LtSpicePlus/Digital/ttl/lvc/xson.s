* TITLE XSON6
* SPICE format. The pins chosen are shown by the inductor and resistor names.
* L7 or R7 shows that pin 7 was chosen.  Internal subcircuit nodes are
* ordered in an IN/OUT format.  1 is the board end of the first chosen pin, 
* 2 is its die end. 3 is the board end of the 2nd chosen pin.  Etc.
*
.SUBCKT pk6 1 3 5 7 9 11
+  2 4 6 8 10 12
R1 1 1001   289.9e-3
R2 3 1003   263.2e-3
R3 5 1005   289.9e-3
R4 7 1007   313.1e-3
R5 9 1009   222.5e-3
R6 11 1011  324.7e-3

L1 1001 2   0.50e-9
L2 1003 4   0.71e-9
L3 1005 6   0.48e-9
L4 1007 8   0.51e-9
L5 1009 10  0.61e-9
L6 1011 12  0.62e-9
* mutual inductors small ones pruned
.ENDS pk6

* TITLE XSON8
* SPICE format. The pins chosen are shown by the inductor and resistor names.
* L7 or R7 shows that pin 7 was chosen.  Internal subcircuit nodes are
* ordered in an IN/OUT format.  1 is the board end of the first chosen pin, 
* 2 is its die end. 3 is the board end of the 2nd chosen pin.  Etc.
*
.SUBCKT pk8 1 3 5 7  9 11 13 15
+           2 4 6 8 10 12 14 16
R1  1 1001  3.2885E-02
R2  3 1003  1.8490E-02
R3  5 1005  2.8891E-02
R4  7 1007  4.4891E-02
R5  9 1009  3.4490E-02
R6 11 1011  2.0890E-02
R7 13 1013  4.0888E-02
R8 15 1015  4.2489E-02

L1 1001  2  4.8959E-10
L2 1003  4  2.7353E-10
L3 1005  6  4.2954E-10
L4 1007  8  6.6960E-10
L5 1009 10  5.1358E-10
L6 1011 12  3.0952E-10
L7 1013 14  6.0952E-10
L8 1015 16  6.3358E-10
.ENDS pk8
