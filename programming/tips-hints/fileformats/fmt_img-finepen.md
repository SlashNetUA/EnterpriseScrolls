# FinePen image

## Header (9 bytes)

| Name | Length | Byte offset | Description                            |
| ---- | ------ |:-----------:| -------------------------------------- |
| COL0 | 1 byte |      0      | Palette index 0 colour from global set |
| COL1 | 1 byte |      1      | Palette index 1 colour from global set |
| COL2 | 1 byte |      2      | Palette index 2 colour from global set |
| COL3 | 1 byte |      3      | Palette index 3 colour from global set |
| COL4 | 1 byte |      4      | Palette index 4 colour from global set |
| COL5 | 1 byte |      5      | Palette index 5 colour from global set |
| COL6 | 1 byte |      6      | Palette index 6 colour from global set |
| COL7 | 1 byte |      7      | Palette index 7 colour from global set |
| BIAS | 1 byte |      8      | Bias number in Nick I/O port format    |

See also [colour palette information](../../system-info/info_colour-palette.md).

Other defaults:

**video_x** = **64** (Image width = **64**\***4**)  
**video_y** = **20** (Image height = **20**\***8**)  
**video_colour** = **2** (16 colour mode)  
**video_mode** = **1** (hirez)  

File size always **10249** bytes.


## Body

Ordinary [screen dump](fmt_img-screen.md)

# FinePen sprite

See [Spred](fmt_img-spred.md) file format.  

## Software

**EnterSprite** - Basic extension  
**Spred** - sprite editor