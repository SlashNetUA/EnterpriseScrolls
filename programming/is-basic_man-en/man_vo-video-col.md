# VIDEO COLOUR

`SET VIDEO COLOUR expr`

Sets the colour-mode for video pages that are subsequently to be opened. (Channel number is ignored.)

When defining a text video page, colour mode **0** must always be selected. For high-resolution graphics pages, the colour modes have the following significance:

| Colour mode | Max colours | HIRES<br>horizontal resolution | LORES<br>horizontal resolution |
|:-----------:|:-----------:|:------------------------------:|:------------------------------:|
|      0      |      2      |              640               |              320               |
|      1      |      4      |              320               |              160               |
|      2      |     16      |              160               |               80               |
|      3      |     256     |               80               |               40               |

On a **LORES** graphics page (using half as much memory as **HIRES**), the colour quantity for each mode is as above, but the horizontal resolution is halved.
