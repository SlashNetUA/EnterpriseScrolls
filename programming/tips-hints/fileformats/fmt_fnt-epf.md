Font file used in [EP128pal](../../../software-pc/ep128pal.md) image converter.

| Name          |       Length       | Byte offset | Description                                       |
| ------------- |:------------------:|:-----------:| ------------------------------------------------- |
| CHARS_COUNT   |       1 byte       |      0      | Total number of characters                        |
| CHARS_WIDTH   |       1 byte       |      1      | Horizontal size of characters in pixels (3-8)     |
| CHARS_HEIGHT  |       1 byte       |      2      | Vertical size of characters in pixels   (3-12)    |
| CHARS_SPACING |       1 byte       |      3      | Letter spacing in pixels                (0-10)    |
|               |                    |             |                                                   |
| CHAR_CODE     |       1 byte       |      4      | ASCII-code of the character                       |
| CHAR_BITMAP   | CHARS_HEIGHT bytes |      5      | Bitmap of the first character (one byte per line) |
|               |                    |             |                                                   |
| CHAR_CODE     |       1 byte       |             | ASCII-code of the character                       |
| CHAR_BITMAP   | CHARS_HEIGHT bytes |             | Bitmap of the first character (one byte per line) |
|               |                    |             |                                                   |
