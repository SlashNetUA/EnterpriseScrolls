# VSave/VLoad image

## Header (16 bytes)

| Name             | Length   | Byte offset | Description                                                                                              |
| ---------------- | -------- |:-----------:| -------------------------------------------------------------------------------------------------------- |
| EXOS module type | 2 bytes  |      0      | `00 0B`                                                                                                  |
| VIDEO_MODE       | 1 byte   |      2      | Graphics video mode (See also [IS-Basic manual](../../../manuals/is-basic-man-en/options/man_vo-video-mode.md))             |
| VIDEO_COLOUR     | 1 byte   |      3      | Graphics colour mode (See also [IS-Basic manual](../../../manuals/is-basic-man-en/options/man_vo-video-col.md))             |
| VIDEO_X          | 1 byte   |      4      | Image width. (**2**..**84**)<br>**video_x**\***4** for hirez mode.<br>**video_x**\***8** for lorez mode. |
| VIDEO_Y          | 1 byte   |      5      | Image height in characters (Result image height = **video_y**\***9**)                                    |
| (reserved)       | 10 bytes |      6      | `00 00 00 00 00 00 00 00 00 00`                                                                          |

⚠ Colours **1**-**16** are not stored in image file.

See also [colour palette information](../../system-info/info_colour-palette.md).

Used in **Enterprise SlideShow 1** (16-col) and **Col 256 Demo** (256-col).

## Header (old format) (16 bytes)

| Name              | Length  | Byte offset | Description                                                                                              |
| ----------------- | ------- |:-----------:| -------------------------------------------------------------------------------------------------------- |
| EXOS module type  | 2 bytes |      0      | `00 20`                                                                                                  |
| VIDEO_X           | 1 byte  |      2      | Image width. (**2**..**84**)<br>**video_x**\***4** for hirez mode.<br>**video_x**\***8** for lorez mode. |
| VIDEO_Y           | 1 byte  |      3      | Image height in characters (Result image height = **video_y**\***9**)                                    |
| VIDEO_MODE        | 1 byte  |      4      | Graphics video mode (See also [IS-Basic manual](../../../manuals/is-basic-man-en/options/man_vo-video-mode.md))             |
| VIDEO_COLOUR      | 1 byte  |      5      | Graphics colour mode (See also [IS-Basic manual](../../../manuals/is-basic-man-en/options/man_vo-video-col.md))             |
| 16BIT_DATA_LENGHT | 2 bytes |      6      | Length of image data                                                                                     |
| (reserved)        | 8 bytes |      8      | `00 00 00 00 00 00 00 00`                                                                                |

⚠ Colours **1**-**16** are not stored in image file.

See also [colour palette information](../../system-info/info_colour-palette.md).

Used in **Fall demo**

## Body

Ordinary [screen dump](fmt_img-screen.md)

