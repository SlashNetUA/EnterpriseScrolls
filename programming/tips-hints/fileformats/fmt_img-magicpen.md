# MagicPen image

## Header (16 bytes)

| Name         | Length | Byte offset | Description                                                                                   |
| ------------ | ------ |:-----------:| --------------------------------------------------------------------------------------------- |
| HEADER       | 4 byte |      0      | `MPEN` header                                                                                 |
| FMT          | 1 byte |      4      | Format mode:<br>`00h`: Normal<br>`01h`: Extended<br>`02h`: Interlace                          |
| VIDEO_COLOUR | 1 byte |      5      | Graphics colour mode (See also [IS-Basic manual](../../is-basic_man-en/man_vo-video-col.md )) |
| Y            | 1 byte |      6      | **Y** size in pixels                                                                          |
| ???          | 1 byte |      7      | `00h`                                                                                         |
| LX_CHAR      | 1 byte |      8      | Left image border position                                                                    |
| RX_CHAR      | 1 byte |      9      | Right image border position                                                                   |
|              |        |             | (**LX_CHAR**-**RX_CHAR**)\***8** = **X** size in pixels                                       |
| ???          | 1 byte |     10      |                                                                                               |
| ???          | 1 byte |     11      |                                                                                               |
| ???          | 1 byte |     12      |                                                                                               |
| ???          | 1 byte |     13      |                                                                                               |
| ???          | 1 byte |     14      |                                                                                               |
| ???          | 1 byte |     15      |                                                                                               |

See also [global colour palette](http://ep.lgb.hu/colors.html).


## Body

Ordinary [screen dump](fmt_img-screen.md)

## Tail

Colour palette (for each line?) except 256 colour mode