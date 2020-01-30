Zip file contains:
ReadMe.txt -- this file
smith.asc  -- a schematic .asc file that can make Nyquist plots of S-parameters
smith.plt  -- plot settings for S-parameter plots
BGA616.asy -- a schematic symbol for RF amplifier BGA616
BGA616.SUB -- a spice model from the manufacturer's data sheet (Infineon/Siemens)

The S-parameter plotting is available from several sources on the web.
What I have added is circles for Smith and Polar plots, and frequency markers.

This works for AC analysis plot in Nyquist mode.

To get the circles circular, arrange the plot window so that it is square and set
the scale factors so that the s-parameter plots stay inside the largest circle.
This way, LTspice stays auto-scaled to the circle while you adjust your circuit.

Each of the four S-parameters has a scale factor, and there is a scale factor for
the chart.  In this example circuit, the amplifier has maximum gain of 8.6 (S21).
S21 has a scale factor of 0.1, so the amplifier gain of -8.6 appears as -0.86 on
the chart of V(s21).  S12 is magnified with a scale factor of 2.

The S-parameters would plot ok with any setting, but the other chart artwork
needs linear frequency steps.  Adjust the frequency with the parameters and
leave the .ac spice line as it is.

The frequency markers need closely spaced S-parameter data points, relative to
the size of the marker.  A larger marker works ok with less data.

