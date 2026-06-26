# 23 - COLR_VID

`ASK 23 var`  
`SET 23, expr`  
`TOGGLE 23` - inverts value.

Colour mode. This variable select the characteristics of a video page when it opened.

**0**: *(default)* 2-colour mode  
**1**: 4-colour mode  
**2**: 16-colour mode  
**3**: 256-colour mode  

Any other values will be reduced modulo 4 and so no errors are produced. For text modes it is only useful to use two colour mode, unless the characters in the font are re-defined for doing some sort of block graphics. Also attribute mode must always be in two colour mode, although sixteen colours will actually be available on the page.

----

See also: [VIDEO COLOUR](../../../manuals/is-basic-man-en/options/man_vo-video-col.md)
