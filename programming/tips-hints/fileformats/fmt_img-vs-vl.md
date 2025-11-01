# VS/VL image from ZozoTools

## Header (27 bytes)

| Name              | Length  | Byte offset | Description                                                                                              |
| ----------------- | ------- |:-----------:| -------------------------------------------------------------------------------------------------------- |
| EXOS module type  | 2 bytes |      0      | `00 DA`                                                                                                  |
| VIDEO_Y           | 1 byte  |      2      | Image height in characters (Result image height = **video_y**\***9**)                                    |
| VIDEO_X           | 1 byte  |      3      | Image width. (**2**..**84**)<br>**video_x**\***4** for hirez mode.<br>**video_x**\***8** for lorez mode. |
| VIDEO_COLOUR      | 1 byte  |      4      | Graphics colour mode (See also [IS-Basic manual](../../is-basic_man-en/man_vo-video-col.md))             |
| VIDEO_MODE        | 1 byte  |      5      | Graphics video mode (See also [IS-Basic manual](../../is-basic_man-en/man_vo-video-mode.md))             |
| DISP_AT           | 1 byte  |      6      | See [IS-Basic manual](../../is-basic_man-en/man_cs-display.md)                                           |
| DISP_LINES        | 1 byte  |      7      | See [IS-Basic manual](../../is-basic_man-en/man_cs-display.md)                                           |
| DISP_FROM         | 1 byte  |      8      | See [IS-Basic manual](../../is-basic_man-en/man_cs-display.md)                                           |
| NO_DISP           | 1 byte  |      9      | **0**: Show image<br>**≠0**: Don't show image                                                            |
| (reserved)        | 6 bytes |     10      | `00 00 00 00 00 00`                                                                                      |
| COL0              | 1 byte  |     16      | Palette index 0 colour from global set                                                                   |
| COL1              | 1 byte  |     17      | Palette index 1 colour from global set                                                                   |
| COL2              | 1 byte  |     18      | Palette index 2 colour from global set                                                                   |
| COL3              | 1 byte  |     19      | Palette index 3 colour from global set                                                                   |
| COL4              | 1 byte  |     20      | Palette index 4 colour from global set                                                                   |
| COL5              | 1 byte  |     21      | Palette index 5 colour from global set                                                                   |
| COL6              | 1 byte  |     22      | Palette index 6 colour from global set                                                                   |
| COL7              | 1 byte  |     23      | Palette index 7 colour from global set                                                                   |
| BIAS              | 1 byte  |     24      | Bias number in Nick I/O port format                                                                      |
| 16BIT_DATA_LENGHT | 2 bytes |     25      | Length of compressed data                                                                                |

See also [colour palette information](../../system-info/info_colour-palette.md).

## Body

Compressed data.

## Software

**ZozoTools** - save/load

**Garfield slideshow**