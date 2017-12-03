# MeanGreenG14
Signal generator using renesas rl78 g14

The control buttons are simple active-low input pins. I will still add the circuit diagram of how I implemented it, but there are many ways to do it. The connections are as follow:

Right:  P41
Down:   P42
Middle: P43
Up:     P137
Left:   P146

The signal generator output is just a PWM output with a passive low pass filter. I chose a cuttoff of 100kHz, but it could be made more or less. Making it less decreases noise, but limmits the frequency the signal generator can output.

Currently the only output that does anything is P12. Left button makes it a triangle wave, middle button makes it a sine wave and right makes it a square wave. Up and down changes the frequency by one Hz. This is just to test the initial concept, but many more features would still be added.

Note that the output is biased at 2.5 V. For my purposes this is actually ideal, but if you want it biased at 0 V, just add a series capacitor at the output.
