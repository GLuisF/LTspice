Texas Instruments Spice model files

TI Spice models are provided in the ".zip" compressed format.  Each .zip file
contains the following files:

(1) readme.txt (this file)

(2) ths____.lib:  a library file that should be loaded into the PSpice
simulation profile, under the "library" tab.  

(3) ths____.olb:  graphic library used by the Cadence Capture program. This
library consists of a single part, or multiple parts if more than one device
is present per package.  This library should be added using the "add library"
function under "place parts".  When the library is added, the symbol(s) within
the library should be visible.

(4) ths____.txt:  A generic Spice library file to be used in Spice model 
programs other than PSpice and Electronics Workbench.  TI supports PSpice 
with the necessary files (see below), and provides Electronics Workbench 
with models which load in their product.

Depending on the part, there may be multiple instances of .lib, and .olb
files.  Line driver products containing both a driver and receiver, for
example, require different models for the driver and receiver section of the
IC.

Spice, PSpice, OrCad, Cadence, and Electronics Workbench are registered
trademarks, the property of their owners.

Texas Instruments cannot offer technical support for third party simulation
software.

Please read the applicable disclaimer in the ths____.txt file.
