
                       Frequency Response Analysis

These examples show to how to extract the small-signal, AC open-loop
gain from time-domain, closed-loop simulations, using the Frequency 
Response Analysis (FRA) feature introduced in LTspice 17.1. The analysis 
assumes that the input impedance of the error amplifier is infinite so
that the loop gain can be computed solely by the voltage loop gain.

Step 1: Identify a point in the SMPS feedback loop where a low impedance
source is driving a higher impedance input. Generally, two places are 
useful for this, either between the output to the top of the resistor 
divider going to the feedback pin or in series with the feedback pin of 
the SMPS controller. 

Step 2: Insert an FRA device here. This will provide time-domain 
sinusoidal stimulus and measure the response of the feedback loop.

Step 3: Configure the amplitude and frequency parameters of the FRA 
device. The SMPS FRA Configuration Wizard can help provide a good 
starting point.

Step 4: Add the .fra SPICE directive to the schematic. 

Step 5: Run the simulation. LTspice will run a special transient 
simulation, apply stimulus and measure the response, and produce a 
Bode plot with annotations for phase margin, crossover frequency, and 
gain margin.