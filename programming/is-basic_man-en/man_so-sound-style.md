# SOUND STYLE

The values for the **STYLE** parameter in a [SOUND](man_cs-sound.md) statement have the following effects.

On **tone channel 0**:

|Value|Description|
|:---:|-----------|
|16|Low distortion
|32|Medium distortion
|48|High distortion
|64|Use high pass filter. **Tone channel 1** is clock
|128|Ring modulation with **channel 2**

On **tone channel 1**:

As **channel 0**, but high pass filter uses **tone channel 2**; ring modulator uses **noise channel (channel 3)**.

On **tone channel 2**:

As **channel 0**, but high pass filter uses **noise channel (channel 3)**; ring modulator uses **tone channel 0**.

On **channel 3 (noise channel)**:

|Value|Description|
|:---:|-----------|
|1, 2, 3|Use tone **channel 0**, **1** or **2** as clock frequency, instead of the standard **31.25 KHz** frequency
|4, 8, 12|Select noise frequency from **15**, **11** or **9-bit** polynomial counters, instead of standard **17-bit** counter
|16|Substitute a **7-bit** polynomial counter for the **17-bit counter**
|32|Use low pass filter on noise channel, using **tone channel 2** as the clock
|64|Use high pass filter on noise channel, using **tone channel 0** as the clock
|128|Use ring modulator with **tone channel 1**

To select a combination of sound style options, add together the values for the individual options and specify the resulting number as the **STYLE** parameter.
