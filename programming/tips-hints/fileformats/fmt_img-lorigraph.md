# Lorigraph image

## Header (13 bytes)

| Name         | Length | Byte offset | Description                                                                                              |
| ------------ | ------ |:-----------:| -------------------------------------------------------------------------------------------------------- |
| VIDEO_MODE   | 1 byte |      0      | Graphics video mode (See also [IS-Basic manual](../../is-basic_man-en/man_vo-video-mode.md ))            |
| VIDEO_COLOUR | 1 byte |      1      | Graphics colour mode (See also [IS-Basic manual](../../is-basic_man-en/man_vo-video-col.md ))            |
| VIDEO_X      | 1 byte |      2      | Image width. (**2**..**84**)<br>**video_x**\***4** for hirez mode.<br>**video_x**\***8** for lorez mode. |
| VIDEO_Y      | 1 byte |      3      | Image height in characters (Result image height = **video_y**\***9**)                                    |
| COL0         | 1 byte |      4      | Palette index 0 colour from global set                                                                   |
| COL1         | 1 byte |      5      | Palette index 1 colour from global set                                                                   |
| COL2         | 1 byte |      6      | Palette index 2 colour from global set                                                                   |
| COL3         | 1 byte |      7      | Palette index 3 colour from global set                                                                   |
| COL4         | 1 byte |      8      | Palette index 4 colour from global set                                                                   |
| COL5         | 1 byte |      9      | Palette index 5 colour from global set                                                                   |
| COL6         | 1 byte |     10      | Palette index 6 colour from global set                                                                   |
| COL7         | 1 byte |     11      | Palette index 7 colour from global set                                                                   |
| BIAS         | 1 byte |     14      | Bias in basic format (See also [IS-Basic manual](../../is-basic_man-en/man_vo-bias.md))                  |

See also [global colour palette](http://ep.lgb.hu/colors.html).


## Body

Ordinary [screen dump](fmt_img-screen.md)

# Lorigraph font file

Same as usual Enterprise font memory dump