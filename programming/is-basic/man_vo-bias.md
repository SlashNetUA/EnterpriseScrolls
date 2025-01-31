# BIAS

`SET £chan:BIAS colour-code`

Establishes which group of colours will figure as numbers **8**-**15** within the palette. The number specified in the command is the standard **color-code** of any colour within the desired group; there are **32** effective values. The bias may also be specified using the [RGB](man_fn-rgb.md) function.

`SET BIAS RGB(0,.6,.4)`

The channel number defaults to **£101**. The bias is, however, applied to every palette used on the display.

----

> [!NOTE]
> BIAS is available for the whole screen, it is handled by port 80h, not the LPT, you can enter to any channels even non existing ones, it will change the bias