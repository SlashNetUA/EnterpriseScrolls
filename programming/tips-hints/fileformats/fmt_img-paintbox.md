# PaintBox image

## Header (12 bytes)

| Name         | Length | Byte offset | Description                                                                                              |
| ------------ | ------ |:-----------:| -------------------------------------------------------------------------------------------------------- |
| VIDEO_Y      | 1 byte |      0      | Image height in characters (Result image height = **video_y**\***9**)                                    |
| VIDEO_X      | 1 byte |      1      | Image width. (**2**..**84**)<br>**video_x**\***4** for hirez mode.<br>**video_x**\***8** for lorez mode. |
| VIDEO_COLOUR | 1 byte |      2      | Graphics colour mode (See also [IS-Basic manual](../../../manuals/is-basic-man-en/options/man_vo-video-col.md ))            |
| VIDEO_MODE   | 1 byte |      3      | Graphics video mode (See also [IS-Basic manual](../../../manuals/is-basic-man-en/options/man_vo-video-mode.md ))            |
| COL0         | 1 byte |      4      | Palette index 0 colour from global set                                                                   |
| COL1         | 1 byte |      5      | Palette index 1 colour from global set                                                                   |
| COL2         | 1 byte |      6      | Palette index 2 colour from global set                                                                   |
| COL3         | 1 byte |      7      | Palette index 3 colour from global set                                                                   |
| COL4         | 1 byte |      8      | Palette index 4 colour from global set                                                                   |
| COL5         | 1 byte |      9      | Palette index 5 colour from global set                                                                   |
| COL6         | 1 byte |     10      | Palette index 6 colour from global set                                                                   |
| COL7         | 1 byte |     11      | Palette index 7 colour from global set                                                                   |

⚠ Colours **9**-**16** are not stored in image file, but default PaintBox Bias number is next:

BIAS for EXOS/BASIC: **184**  
BIAS for Nick I/O port: **23**  
Colour numbers: **184**-**191**

See also [colour palette information](../../system-info/info_colour-palette.md).

## Body

Ordinary [screen dump](fmt_img-screen.md)