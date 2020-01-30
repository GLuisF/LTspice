Version 4
SymbolType CELL
LINE Normal 177 -498 29 -498
LINE Normal 127 -288 33 -288
LINE Normal 177 -81 32 -81
LINE Normal 158 206 32 206
LINE Normal 177 -502 29 -502
LINE Normal 128 -293 34 -293
LINE Normal 177 -85 32 -85
LINE Normal 160 212 34 212
RECTANGLE Normal 1264 467 -17 -558
TEXT 34 -361 Left 0 Libraries RMC.lib/CMC.lib/LMC.lib/VMC.lib must be included with this symbol type.
TEXT 32 -273 Left 0 subckt N1 to N5 are repeats of named subckts for use with parametised switch {M}
TEXT 33 -246 Left 0 M=0 Min tolerance value
TEXT 33 -224 Left 0 M=1 Nomonal tolerance value
TEXT 33 -200 Left 0 M=2 Max tolerance value
TEXT 34 -177 Left 0 M=3 Uniform  distribution of values
TEXT 34 -152 Left 0 M=4 Binary min max distribution of values
TEXT 34 -129 Left 0 M=5 Gausian distribution (average of 5)
TEXT 32 247 Left 0 Seed= random number seed value: choose seed value in order from 1 to N
TEXT 32 371 Left 0 Corner(min/max binary) case simulation requires ".step param run ..." from 1 to 2^N.
TEXT 32 393 Left 0 In MinMax_bin-mode, run=0 can be used to simulate with nominal values too.
TEXT 34 -303 Left 0 Libraries:
TEXT 34 -407 Left 0 Symbols R_mc_2.asy, C_mc_2.asy, L_mc_2.asy, V_mc_2.asy
TEXT 32 -335 Left 0 Symbol MonteCarlo_Help.asc is used to place this help info on the schematic.
TEXT 34 -513 Left 0 Symbol types:
TEXT 34 -455 Left 0 are drop down menu. Tolerance distribution  is selected from
TEXT 33 -481 Left 0 Symbols R_mc_1.asy, C_mc_1.asy, L_mc_1.asy, V_mc_1.asy
TEXT 35 -431 Left 0 the menu on each componant. Librarys are automatically included.
TEXT 33 -385 Left 0 allow tolerance distribution to beselected globally with parameter {M}.
TEXT 33 -95 Left 0 File locations:
TEXT 33 -64 Left 0 There are 2 options availabe:
TEXT 33 -38 Left 0 (1) Copy all required symbols & libraries into your working  project directory:
TEXT 35 -15 Left 0 This has the advantage that it is easy to share your project with others,
TEXT 34 33 Left 0 (2) Copy all the symbol.asy files into a new  folder in the path:...SwCADIII\Lib\sym\Montecarlo
TEXT 34 64 Left 0 (2) Copy all the Library.lib files into the folder:...SwCADIII\Lib\sub
TEXT 34 90 Left 0 This method has the advantage that the motecarlo componats are easily available from the symbol browser,
TEXT 33 112 Left 0 without copying the symbol & library files into your working folder ech timer you start a new project.
TEXT 32 138 Left 0 The disadvantage of this method is: It is harder to share the project with others,
TEXT 33 9 Left 0 because all the required files are in 1 folder.
TEXT 33 162 Left 0 because all  the files are not in one folder.
TEXT 34 194 Left 0 Parameters:
TEXT 33 225 Left 0 Tol = tolerance %   Tol = 1 = 1%  componant tolerance
TEXT 33 273 Left 0 C,L,R,V = componant nominal value
TEXT 32 299 Left 0 Run = simulation run number.
TEXT 33 323 Left 0 Randomisation is a function of Run number , seed value and componant type,
TEXT 32 345 Left 0 to ensure truely random distribution for all componants.
SYMATTR Prefix X
