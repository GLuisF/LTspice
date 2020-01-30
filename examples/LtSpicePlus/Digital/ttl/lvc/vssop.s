* TITLE VSSOP8
* SPICE format. The pins chosen are shown by the inductor and resistor names.
* L7 or R7 shows that pin 7 was chosen.  Internal subcircuit nodes are
* ordered in an IN/OUT format.  1 is the board end of the first chosen pin, 
* 2 is its die end. 3 is the board end of the 2nd chosen pin.  Etc.
*
.SUBCKT pk8 1 3 5 7  9 11 13 15
+           2 4 6 8 10 12 14 16
R1  1 1001  4.24E-02
R2  3 1003  3.40E-02
R3  5 1005  3.40E-02
R4  7 1007  4.24E-02
R5  9 1009  3.40E-02
R6 11 1011  3.40E-02
R7 13 1013  4.24E-02
R8 15 1015  1.00E-06

L1 1001  2  1.145E-09
L2 1003  4  1.018E-09
L3 1005  6  1.016E-09
L4 1007  8  1.15E-09 
L5 1009 10  9.89E-10 
L6 1011 12  1.037E-09
L7 1013 14  1.184E-09
L8 1015 16  1.00E-12 
.ENDS pk8
