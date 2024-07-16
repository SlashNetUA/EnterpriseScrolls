# SOUND

`SOUND £chan:PITCH expr,DURATION expr,LEFT expr,RIGHT expr,SOURCE expr,STYLE expr,ENVELOPE expr,SYNC expr,INTERRUPT`  

Provides overall control of a sound. The parameters may be listed in any order.

The number specified by **PITCH** may be anything from **0** to **127**, although good results are normally obtained only in the range **0**-**83**. Within that range, an increase of **1** will raise the pitch by one semitone; pitch value **37** (the default) is equivalent to **middle C**.

**DURATION** gives the duration of the sound (allocated to the non-release phases of the envelope), in 'ticks' (one tick is 1/50 second). The default is **50** ticks.

The **LEFT** and **RIGHT** parameters specify the overall volume of the sound for the two stereo output channels. The values range from **0** (no sound) to **255** (maximum volume of the machine – the default). If stereo equipment is not being used, the volume will be determined by the sum of the values given for the left and right channels.

**SOURCE** specifies the tone generator used; the values are **0**-**3** (default: **0**). Tone generator **3** is the '**noise generator**' (which ignores pitch values).

The **STYLE** parameter is in the range **0**-**255** (default: **0**); for its effects, see the '[Sound Options](man_3-souoptions.md)' section.

**ENVELOPE** specifies the number of the envelope to be applied to the sound. See the [ENVELOPE](man_cs-envelope.md) statement. **255** (the default) is a built-in envelope.

**SYNC** allows the start of the sound to be precisely synchronized with **1**, **2** or **3** other sounds from different 'sources'. If, for example, three sounds are to start together, each one can be given the instruction `SYNC 2`, causing it to be synchronized with the two others. (Default value is **0**).

**INTERRUPT**, if included, causes the new sound to replace any sound (from the same source) which may currently be going.
