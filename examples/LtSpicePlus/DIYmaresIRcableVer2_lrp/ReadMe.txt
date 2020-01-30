  Homemade Serial MARES I.R.I.S. to AirLab Dive Computer Interface Cable

       Mike Engelhardt           Version 2               01/22/07

This is the documentation for a DIY infrared interface cable for use the
Mares dive computers that use IR instead of wire connection.  The design
is based in part on information obtained from http://www.ektm.de and
http://www.cardew.org/edward.  Inasmuch as some of that is copylefted,
that would impact this design.  I have no interest in any copyright of
this material.  I only claim that I wrote it, build it and it works.  I'm
posting it because someone else might find it useful or interesting.

I didn't follow those designs mentioned above exactly because they used
parts that I would have had to have mail ordered and are increasing
difficult to obtain in through-hole versions.  For example, instead of
using high voltage CMOS for the transmitter logic, I used a couple of
cross-coupled 2N3904's which also eliminated a crystal.

The IR xmit diode was taken from a remote control from a defunct piece
of consumer audio equipment.  I think the most critical part of the design
is to use a receiver diode that doesn't have too much capacitance.  The
first one I found had 1nF which is a lot but still works.  This design
uses a Vishay device I received as a sample.

The schematic and layout are drawn in LTspice/SwitcherCAD III, an unlimited,
free high performance SPICE program that you can get from Linear's home
page, http://www.linear.com.  Put all of the files in the same directory
to be able to view the layout in LTspice and run the simulations.

                Distribution File Contents

   Application.jpg    A photo using the cable with an AirLab
   BOM.txt            The Bill Of Materials
   CircuitNotes.txt   Design notes
   CommTest.cpp       Source code for CommTest.exe
   CommTest.exe       A program to test IR communication with the cable
   Cstray.asc         A simulation schematic that shows the waveform from
                      the stray capacitance that allows the cable to echo
   Cstray.jpg         An oscillogram of Q4's collector voltage with the Tx
                      pin keyed.  The horizonal scale is 5us/div.  Vertical
                      scale is 50mV/div.
   Cstray.plt         An LTspice file used to plot Q4's collector voltage
                      when Cstray.asc is run in LTspice.
   Eavesdrop.txt      A log of the communication of to IRIS for an AirLab
                      with the factory dummy dive log in the computer.
   LGcap.asy          A symbol used in Layout.asc
   LT1018dip.asy      A symbol used in Layout.asc
   Layout.asc         A layout that you can simulate.
   Layout.plt         An LTspice file used to plot V(Tx) and V(Rx) when
                      Layout.asc is run in LTspice.
   Photo.jpg          A photograph of the completed circuit
   RN55.asy           A symbol used in Layout.asc
   RN55upright.asy    A symbol used in Layout.asc
   ReadMe.txt         This file
   SMcap.asy          A symbol used in Layout.asc
   SMdiode.asy        A symbol used in Layout.asc
   Schematic.asc      An LTspice schematic file that simulates.
   Schematic.plt      An LTspice file used to plot V(Tx) and V(Rx) when
                      Schematic.asc is run in LTspice.
   Schematic.wmf      A Windows Meta File image of the schematic
   TO92.asy           A symbol used in Layout.asc
   Timing.asc         An LTspice schematic file that compares the timing
                      of this interface cable to the one that inspired it.
   Timing.plt         An LTspice file used setup the plotted waveforms of
                      the above schematic file.
   coaxCap.asy        A symbol used in Layout.asc
   header9.asy        A symbol used in Layout.asc
   ird.asy            A symbol used in Layout.asc
   irxmitter.asy      A symbol used in Layout.asc
   smDiodeUpright.asy A symbol used in Layout.asc

