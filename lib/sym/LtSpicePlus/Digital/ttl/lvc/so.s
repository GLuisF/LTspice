* TITLE @ SO14 lead frame. Solder Plated Pins
* SPICE format. The pins chosen are shown by the inductor and resistor names.
* L7 or R7 shows that pin 7 was chosen.  Internal subcircuit nodes are
* ordered in an IN/OUT format.  1 is the board end of the first chosen pin, 
* 2 is its die end. 3 is the board end of the 2nd chosen pin.  Etc.
*
.SUBCKT pk14 1 3 5 7 9 11 13 15 17 19
+  21 23 25 27
+  2 4 6 8 10 12 14 16 18 20
+  22 24 26 28
* pin resistors 
R1 1 1001   4.18E-02
R2 3 1003   5.01E-02
R3 5 1005   4.52E-02
R4 7 1007   4.38E-02
R5 9 1009   4.52E-02
R6 11 1011   5.01E-02
R7 13 1013   4.18E-02
R8 15 1015   4.18E-02
R9 17 1017   5.01E-02
R10 19 1019   4.52E-02
R11 21 1021   4.38E-02
R12 23 1023   4.52E-02
R13 25 1025   5.01E-02
R14 27 1027   4.18E-02

* linear inductors 
L1 1001 2   3.26N
L2 1003 4   2.30N
L3 1005 6   1.71N
L4 1007 8   1.63N
L5 1009 10   1.71N
L6 1011 12   2.30N
L7 1013 14   3.26N
L8 1015 16   3.26N
L9 1017 18   2.30N
L10 1019 20   1.71N
L11 1021 22   1.63N
L12 1023 24   1.71N
L13 1025 26   2.30N
L14 1027 28   3.26N
* mutual inductors small ones pruned
* If all the pins are in series, equivalent L = 3.23E-08 equivalent R = 6.36E-01
* If all the pins are in parallel, equivalent L = 1.53E-10 equivalent R = 3.23E-03
.ENDS pk14


* TITLE @ nSO16 lead frame Solder Plated Pins
* SPICE format. The pins chosen are shown by the inductor and resistor names.
* L7 or R7 shows that pin 7 was chosen.  Internal subcircuit nodes are
* ordered in an IN/OUT format.  1 is the board end of the first chosen pin, 
* 2 is its die end. 3 is the board end of the 2nd chosen pin.  Etc.
*
.SUBCKT pk16 1 3 5 7 9 11 13 15 17 19
+  21 23 25 27 29 31
+  2 4 6 8 10 12 14 16 18 20
+  22 24 26 28 30 32
* pin resistors 
R1 1 1001   1.99E-01
R2 3 1003   2.11E-01
R3 5 1005   1.56E-01
R4 7 1007   1.28E-01
R5 9 1009   1.28E-01
R6 11 1011   1.56E-01
R7 13 1013   2.11E-01
R8 15 1015   1.99E-01
R9 17 1017   1.99E-01
R10 19 1019   2.11E-01
R11 21 1021   1.56E-01
R12 23 1023   1.28E-01
R13 25 1025   1.28E-01
R14 27 1027   1.56E-01
R15 29 1029   2.11E-01
R16 31 1031   1.99E-01

* linear inductors 
L1 1001 2   6.26N
L2 1003 4   5.46N
L3 1005 6   4.44N
L4 1007 8   3.94N
L5 1009 10   3.94N
L6 1011 12   4.44N
L7 1013 14   5.46N
L8 1015 16   6.26N
L9 1017 18   6.26N
L10 1019 20   5.46N
L11 1021 22   4.44N
L12 1023 24   3.94N
L13 1025 26   3.94N
L14 1027 28   4.44N
L15 1029 30   5.46N
L16 1031 32   6.26N
* mutual inductors small ones pruned
.ENDS pk16


* TITLE @ SO21n Lead Frame (small pad 95x105) D 520-2260 Solder Plated Pins
* SPICE format. The pins chosen are shown by the inductor and resistor names.
* L7 or R7 shows that pin 7 was chosen.  Internal subcircuit nodes are
* ordered in an IN/OUT format.  1 is the board end of the first chosen pin, 
* 2 is its die end. 3 is the board end of the 2nd chosen pin.  Etc.
*
.SUBCKT pk21 1 3 5 7 9 11 13 15 17 19
+  21 23 25 27 29 31 33 35 37 39
+  41
+  2 4 6 8 10 12 14 16 18 20
+  22 24 26 28 30 32 34 36 38 40
+  42
* pin resistors 
R1 1 1001   5.75E-02
R2 3 1003   6.25E-02
R3 5 1005   6.59E-02
R4 7 1007   5.79E-02
R5 9 1009   5.36E-02
R6 11 1011   5.36E-02
R7 13 1013   5.79E-02
R8 15 1015   6.59E-02
R9 17 1017   6.25E-02
R10 19 1019   5.75E-02
R11 21 1021   5.75E-02
R12 23 1023   6.25E-02
R13 25 1025   6.59E-02
R14 27 1027   5.79E-02
R15 29 1029   5.36E-02
R16 31 1031   5.36E-02
R17 33 1033   5.79E-02
R18 35 1035   6.59E-02
R19 37 1037   6.25E-02
R20 39 1039   5.75E-02
R21 41 1041   5.91E-02

* linear inductors 
L1 1001 2   5.91N
L2 1003 4   4.85N
L3 1005 6   3.92N
L4 1007 8   3.32N
L5 1009 10   3.07N
L6 1011 12   3.07N
L7 1013 14   3.32N
L8 1015 16   3.92N
L9 1017 18   4.85N
L10 1019 20   5.91N
L11 1021 22   5.91N
L12 1023 24   4.85N
L13 1025 26   3.92N
L14 1027 28   3.32N
L15 1029 30   3.07N
L16 1031 32   3.07N
L17 1033 34   3.32N
L18 1035 36   3.92N
L19 1037 38   4.85N
L20 1039 40   5.91N
L21 1041 42   6.69N
* mutual inductors small ones pruned
* If all the pins are in series, equivalent L = 1.11E-07 equivalent R = 1.25E+00
* If all the pins are in parallel, equivalent L = 2.08E-10 equivalent R = 2.82E-03
.ENDS pk21

* TITLE @ SO24 lead frame Solder Plated Pins
* SPICE format. The pins chosen are shown by the inductor and resistor names.
* L7 or R7 shows that pin 7 was chosen.  Internal subcircuit nodes are
* ordered in an IN/OUT format.  1 is the board end of the first chosen pin, 
* 2 is its die end. 3 is the board end of the 2nd chosen pin.  Etc.
*
.SUBCKT pk24 1 3 5 7 9 11 13 15 17 19
+  21 23 25 27 29 31 33 35 37 39
+  41 43 45 47
+  2 4 6 8 10 12 14 16 18 20
+  22 24 26 28 30 32 34 36 38 40
+  42 44 46 48
* pin resistors 
R1 1 1001   1.39E-01
R2 3 1003   1.60E-01
R3 5 1005   1.77E-01
R4 7 1007   1.45E-01
R5 9 1009   1.26E-01
R6 11 1011   1.16E-01
R7 13 1013   1.16E-01
R8 15 1015   1.26E-01
R9 17 1017   1.45E-01
R10 19 1019   1.77E-01
R11 21 1021   1.60E-01
R12 23 1023   1.39E-01
R13 25 1025   1.39E-01
R14 27 1027   1.60E-01
R15 29 1029   1.77E-01
R16 31 1031   1.45E-01
R17 33 1033   1.26E-01
R18 35 1035   1.16E-01
R19 37 1037   1.16E-01
R20 39 1039   1.26E-01
R21 41 1041   1.45E-01
R22 43 1043   1.77E-01
R23 45 1045   1.60E-01
R24 47 1047   1.39E-01

* linear inductors 
L1 1001 2   7.94N
L2 1003 4   7.06N
L3 1005 6   6.01N
L4 1007 8   4.98N
L5 1009 10   4.30N
L6 1011 12   3.95N
L7 1013 14   3.95N
L8 1015 16   4.30N
L9 1017 18   4.98N
L10 1019 20   6.01N
L11 1021 22   7.06N
L12 1023 24   7.95N
L13 1025 26   7.95N
L14 1027 28   7.06N
L15 1029 30   6.01N
L16 1031 32   4.98N
L17 1033 34   4.30N
L18 1035 36   3.95N
L19 1037 38   3.95N
L20 1039 40   4.30N
L21 1041 42   4.98N
L22 1043 44   6.01N
L23 1045 46   7.06N
L24 1047 48   7.95N
* mutual inductors small ones pruned
* If all the pins are in series, equivalent L = 1.37E-07 equivalent R = 3.45E+00
* If all the pins are in parallel, equivalent L = 2.23E-10 equivalent R = 5.88E-03
.ENDS pk24

*
* TITLE @ SO28 lead frame
*SPICE format. The pins chosen are shown by the inductor and resistor names.
* L7 or R7 shows that pin 7 was chosen.  Internal subcircuit nodes are
* ordered in an IN/OUT format.  1 is the board end of the first chosen pin, 
* 2 is its die end. 3 is the board end of the 2nd chosen pin.  Etc.
*
.SUBCKT pk28 1 3 5 7 9 11 13 15 17 19
+  21 23 25 27 29 31 33 35 37 39
+  41 43 45 47 49 51 53 55
+  2 4 6 8 10 12 14 16 18 20
+  22 24 26 28 30 32 34 36 38 40
+  42 44 46 48 50 52 54 56
* pin resistors SI units, bondwire diameter, resistivity =  2.54E-05,  2.44E-08
* leadframe thickness, resistivity =  3.50E-05,  2.87E-08
R1 1 1001   1.04E-01
R2 3 1003   1.08E-01
R3 5 1005   1.17E-01
R4 7 1007   1.28E-01
R5 9 1009   1.49E-01
R6 11 1011   1.24E-01
R7 13 1013   1.03E-01
R8 15 1015   1.03E-01
R9 17 1017   1.24E-01
R10 19 1019   1.49E-01
R11 21 1021   1.28E-01
R12 23 1023   1.17E-01
R13 25 1025   1.08E-01
R14 27 1027   1.04E-01
R15 29 1029   1.04E-01
R16 31 1031   1.08E-01
R17 33 1033   1.17E-01
R18 35 1035   1.28E-01
R19 37 1037   1.49E-01
R20 39 1039   1.24E-01
R21 41 1041   1.03E-01
R22 43 1043   1.03E-01
R23 45 1045   1.24E-01
R24 47 1047   1.49E-01
R25 49 1049   1.28E-01
R26 51 1051   1.17E-01
R27 53 1053   1.08E-01
R28 55 1055   1.04E-01

* linear inductors leadframe thickness, resistivity =  3.50E-05,  2.87E-08
L1 1001 2   9.01N
L2 1003 4   7.76N
L3 1005 6   6.68N
L4 1007 8   5.79N
L5 1009 10   5.24N
L6 1011 12   4.61N
L7 1013 14   4.10N
L8 1015 16   4.10N
L9 1017 18   4.61N
L10 1019 20   5.24N
L11 1021 22   5.79N
L12 1023 24   6.68N
L13 1025 26   7.76N
L14 1027 28   9.01N
L15 1029 30   9.01N
L16 1031 32   7.76N
L17 1033 34   6.68N
L18 1035 36   5.79N
L19 1037 38   5.24N
L20 1039 40   4.61N
L21 1041 42   4.10N
L22 1043 44   4.10N
L23 1045 46   4.61N
L24 1047 48   5.24N
L25 1049 50   5.79N
L26 1051 52   6.68N
L27 1053 54   7.76N
L28 1055 56   9.01N
* mutual inductors small ones pruned
*K1 L2 L1   4.66E-01
*K2 L3 L1   3.13E-01
*K3 L3 L2   4.51E-01
*K4 L4 L1   2.22E-01
*K5 L4 L2   2.91E-01
*K6 L4 L3   4.23E-01
*K7 L5 L1   1.60E-01
*K8 L5 L2   2.05E-01
*K9 L5 L3   2.79E-01
*K10 L5 L4   4.16E-01
*K11 L6 L3   1.89E-01
*K12 L6 L4   2.52E-01
*K13 L6 L5   3.54E-01
*K14 L7 L5   1.93E-01
*K15 L7 L6   2.99E-01
*K16 L8 L7   2.73E-01
*K17 L9 L8   2.99E-01
*K18 L10 L9   3.54E-01
*K19 L11 L9   2.52E-01
*K20 L11 L10   4.16E-01
*K21 L12 L10   2.79E-01
*K22 L12 L11   4.23E-01
*K23 L13 L11   2.91E-01
*K24 L13 L12   4.51E-01
*K25 L14 L12   3.13E-01
*K26 L14 L13   4.66E-01
*K27 L15 L14   2.30E-01
*K28 L16 L15   4.66E-01
*K29 L17 L15   3.13E-01
*K30 L17 L16   4.51E-01
*K31 L18 L15   2.22E-01
*K32 L18 L16   2.91E-01
*K33 L18 L17   4.23E-01
*K34 L19 L15   1.60E-01
*K35 L19 L16   2.05E-01
*K36 L19 L17   2.79E-01
*K37 L19 L18   4.16E-01
*K38 L20 L17   1.89E-01
*K39 L20 L18   2.52E-01
*K40 L20 L19   3.54E-01
*K41 L21 L19   1.93E-01
*K42 L21 L20   2.99E-01
*K43 L22 L21   2.73E-01
*K44 L23 L22   2.99E-01
*K45 L24 L23   3.54E-01
*K46 L25 L23   2.52E-01
*K47 L25 L24   4.16E-01
*K48 L26 L24   2.79E-01
*K49 L26 L25   4.23E-01
*K50 L27 L25   2.91E-01
*K51 L27 L26   4.51E-01
*K52 L28 L1   2.30E-01
*K53 L28 L26   3.13E-01
*K54 L28 L27   4.66E-01
.ENDS pk28
