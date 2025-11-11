# PALETTE

`SET £chan:PALETTE c1,c2,c3,c4,c5,c6,c7,c8`

Sets the values of the first **8** colours in the palette, which are then used by video options such as [SET PAPER](man_vo-paper.md) and [SET INK](man_vo-ink.md). Channel number defaults to **£101**.

Only the **first four** colours can be used in colour-mode **1**, and a graphics page in colour-mode **0** can only use the **first two**. If only the first **2** or **4** colours are specified, the remainder default to colour **0**.

The colours to be placed in the palette are specified by standard **colour-code** in the range **0**-**255**, or by the [RGB](functions/man_fn-rgb.md) function (see '[Built-in Functions and Variables](man_3-functs.md)'). The 'Teletext primary' colours can be specified by name (e.g. **MAGENTA**).

The palette contains **16** colours in all, although only the first **8** can be chosen entirely freely. See the [BIAS](man_vo-bias.md) option for details on the remaining **8** colours.
