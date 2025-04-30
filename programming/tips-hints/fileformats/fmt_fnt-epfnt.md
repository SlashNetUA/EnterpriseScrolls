# Enterprise font
Binary font used at Enterprise computers.


## 1152 bytes font file
Size: **1152** bytes.  
Character width: **8** pixels (**1** byte)  
Character height: **9** pixels  
Contain **128** symbols with EP ASCII codes: **20h**-**9Fh** (**32**-**159**)

| Name                 | Length | Byte offset | Description                   |
| -------------------- |:------:|:-----------:| ----------------------------- |
| PIXEL_LINE_1 CHR_32  | 1 byte |      0      | Upper line of character #32   |
| ..                   |   ..   |     ..      | ..                            |
| PIXEL_LINE_1 CHR_159 | 1 byte |     127     | Upper line of character #159  |
|                      |        |             |                               |
| PIXEL_LINE_2 CHR_32  | 1 byte |     128     | Second line of character #32  |
| ..                   |   ..   |     ..      | ..                            |
| PIXEL_LINE_2 CHR_159 | 1 byte |     255     | Second line of character #159 |
|                      |        |             |                               |
| ..                   |   ..   |     ..      | ..                            |
|                      |        |             |                               |
| PIXEL_LINE_9 CHR_32  | 1 byte |    1024     | Bottom line of character #32  |
| ..                   |   ..   |     ..      | ..                            |
| PIXEL_LINE_9 CHR_159 | 1 byte |    1151     | Bottom line of character #159 |
