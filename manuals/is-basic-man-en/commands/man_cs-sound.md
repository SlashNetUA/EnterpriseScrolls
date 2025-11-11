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

----

Значення PITCH які відповідають нотам

|   нота    |              | Pitch  |
|:---------:|:------------:|:------:|
|    ДО     |    **C**     |   37   |
|  ДО-дієз  |    **C#**    | 38 (?) |
|    РЕ     |    **D**     |   39   |
|  РЕ-дієз  |    **D#**    | 40 (?) |
|    МІ     |    **E**     |   41   |
|    ФА     |    **F**     |   42   |
|  ФА-дієз  |    **F#**    | 43 (?) |
|   СОЛЬ    |    **G**     |   44   |
| СОЛЬ-дієз |    **G#**    | 45 (?) |
|    ЛЯ     |    **A**     |   46   |
|  ЛЯ-дієз  |    **A#**    | 47 (?) |
|    СІ     | **H**(**B**) |   48   |
|           |    1    C    |   49   |
|           |   1    C#    | 50 (?) |
|           |    1    D    |   51   |
|           |   1    D#    |   52   |
|           |    1    E    |   53   |
|           |    1    F    |   54   |
|           |   1    F#    |   55   |
|           |    1    G    |   56   |
|           |   1    G#    |   57   |
|           |    1    A    |   58   |
|           |   1    A#    |   59   |
|           |    1    B    |   60   |
|           |    2    C    |   61   |
|           |   2    C#    |   62   |
|           |    2    D    |   63   |
|           |   2    D#    |   64   |
|           |    2    E    |   65   |
|           |    2    F    |   66   |
|           |   2    F#    |   67   |
|           |    2    G    |   68   |
|           |   2    G#    |   69   |
|           |    2    A    |   70   |
|           |   2    A#    |   71   |
|           |    2    B    |   72   |
|           |   3     C    |   73   |
|           |   3     C#   |   74   |
|           |   3     D    |   75   |
|           |   3     D#   |   76   |

