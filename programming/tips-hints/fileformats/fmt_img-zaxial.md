# zAxial image

## Header (16 bytes)

| Name             | Length  | Byte offset | Description                                                                                   |
| ---------------- | ------- |:-----------:| --------------------------------------------------------------------------------------------- |
| EXOS module type | 2 bytes |      0      | `00 0B`                                                                                       |
| VIDEO_MODE       | 1 byte  |      2      | `1`/`5` Graphics video mode (See also [IS-Basic manual](../../is-basic/man_vo-video-mode.md)) |
| VIDEO_COLOUR     | 1 byte  |      3      | Graphics colour mode (See also [IS-Basic manual](../../is-basic/man_vo-video-col.md))         |
| VIDEO_X          | 1 byte  |      4      | Image width in characters. (**2**..**42**) (Result image width = **video_x**\***8**)          |
| VIDEO_Y          | 1 byte  |      5      | Image height in characters (Result image height = **video_y**\***9**)                         |
| COL0             | 1 byte  |      6      | Palette index 0 colour from global set                                                        |
| COL1             | 1 byte  |      7      | Palette index 1 colour from global set                                                        |
| COL2             | 1 byte  |      8      | Palette index 2 colour from global set                                                        |
| COL3             | 1 byte  |      9      | Palette index 3 colour from global set                                                        |
| COL4             | 1 byte  |     10      | Palette index 4 colour from global set                                                        |
| COL5             | 1 byte  |     11      | Palette index 5 colour from global set                                                        |
| COL6             | 1 byte  |     12      | Palette index 6 colour from global set                                                        |
| COL7             | 1 byte  |     13      | Palette index 7 colour from global set                                                        |
| BIAS             | 1 byte  |     14      | Bias in basic format (See also [IS-Basic manual](../../is-basic/man_vo-bias.md))              |
| Z                | 1 byte  |     15      | `5A`                                                                                          |

See also [global colour palette](http://ep.lgb.hu/colors.html).