# 22 - MODE_VID

`ASK 22 var`  
`SET 22, expr`  
`TOGGLE 22` - inverts value.

Video mode. This variable select the characteristics of a video page when it opened.

**0**: (default) Hardware text mode (up to 42 chars/line).  
**1**: High resolution pixel graphics.   
**2**: Software text mode (up to 84 chars/line).  
**5**: Low resolution pixel graphics.   
**15**: Attribute graphics.  

Any other values will produce an error (.VMODE) when an attempt is made to open a channel. The three graphics modes correspond to the PIXEL, LPIXEL and ATTRIBUTE modes of the NICK chip.

----

See also: [VIDEO MODE](../../../manuals/is-basic-man-en/options/man_vo-video-mode.md)