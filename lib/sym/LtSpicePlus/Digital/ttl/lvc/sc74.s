* TITLE SC74
* SPICE format. The pins chosen are shown by the inductor and resistor names.
* L7 or R7 shows that pin 7 was chosen.  Internal subcircuit nodes are
* ordered in an IN/OUT format.  1 is the board end of the first chosen pin, 
* 2 is its die end. 3 is the board end of the 2nd chosen pin.  Etc.
*
.SUBCKT pk6 1 3 5 7 9 11
+  2 4 6 8 10 12
R1 1 1001   5.21E-02
R2 3 1003   5.86E-02
R3 5 1005   8.27E-02
R4 7 1007   9.31E-02
R5 9 1009   5.26E-02
R6 11 1011  6.77E-02

L1 1001 2   1.06E-09
L2 1003 4   1.19E-09
L3 1005 6   1.32E-09
L4 1007 8   1.44E-09
L5 1009 10  9.68E-10
L6 1011 12  1.12E-09
* mutual inductors small ones pruned
.ENDS pk6
