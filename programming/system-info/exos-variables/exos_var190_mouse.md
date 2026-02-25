# 190 - (MOUSE.XR)

`ASK 190 var`  
`SET 190, expr`  
`TOGGLE 190` - inverts value.

Status of secondary button and spare buttons if present, counter of wheel if present.

| Bits | Button                                               |
|:----:| ---------------------------------------------------- |
| 0-3  | signed nibble of the wheel counter (**7** -> **-8**) |
|  4   | wheel (third) button                                 |
| 5, 6 | spare buttons                                        |
|  7   | secondary button                                     |

Bit values:

**0**: off.  
**1**: on.