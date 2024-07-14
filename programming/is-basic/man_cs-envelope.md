# ENVELOPE

`ENVELOPE £chan:NUMBER a;b,c,d,e;f,g,h,i;...;RELEASE;j,k;l;m;...`

Defines a sound envelope to be used in conjunction with a controlling [SOUND](man_cs-sound.md) statement. 

The number '**a**' which identifies the envelope must be in the range 0-254.

Parameters '**b**' '**c**', '**d**' and '**e**' define the first phase of the envelope; '**b**' gives the change of pitch in semitones (decimal places allowed), '**c**' and '**d**' specify the change in volume for the left and right speakers respectively, and '**e**' gives the duration of the phase, in 'ticks' (one tick is 1/50 second).

The values for '**c**' and '**d**' are in the range 0-63; they specify the change in volume as a proportion of the overall maximum volume allowed by the [SOUND](man_cs-sound.md) statement. A value of -63 will turn the sound off (any overshoot is ignored); the sound is assumed to be 'off' at the beginning of the envelope. If stereo equipment is not in use, the volume at any moment will be determined by the sum of the values (dependent on [SOUND](man_cs-sound.md) and ENVELOPE statements) for the left and right speakers.

The next phase is defined by '**f**', '**g**', '**h**' and '**i**'... For the number of possible phases, see SOUND BUFFER, under '[Sound Options](man_3-souoptions.md)'.

`RELEASE` is optional; it may be followed by any number of phases with their separate parameters. The '**release**' phases are performed after the conclusion of the previous phases, or at the expiry of the [SOUND](man_cs-sound.md) duration if there is no following sound on the same channel.
