# 38 - SPRITE

Only in [EXOS 2.1](../../../software/exos/exos-versions.md) and greater.

`ASK 38 var`  
`SET 38, expr`  
`TOGGLE 38` - inverts value.

Controls the priority selection of external colour inputs from the expansion bus and may thus be used with a sprite generator.

**0**: (default)

**64**: ?  
**128**: ?  
**192**: ?  

Controls priority of external colour inputs on ECO-EC3, allowing 16 colour sprites to be implemented. 
The external colour will only be selected when the `/EXTC` input is low and the display is active (not border). 

**00b**: ECO-EC3 always select the corresponding palette colour.  
**01b**: ECO-EC3 select the corresponding palette colour if the internal display is generating a palette colour in the range COL8-COL15.   
**10b**: ECO-EC3 select the corresponding palette colour if the internal display is generating a palette colour in the range COL8-COL15 OR the external colour is in the range COL0-COL7 (EC3 low).   
**11b**: ECO-EC3 select the corresponding palette colour if the internal display is generating a palette colour in the range COL8-COL15 OR the external colour is in the ranges COL0-COL3 or COL8 - COL11 (EC2 low).  

https://enterpriseforever.com/hardver/a-nick-elfeledett-titka/msg95581/#msg95581

----

See also: [PRIORITY](../../../manuals/is-basic-man-en/options/man_vo-priority.md).