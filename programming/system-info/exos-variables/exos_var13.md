# 13 - WAIT_SND

`ASK 13 var`  
`SET 13, expr`  
`TOGGLE 13` - invert value

**0** : Sound driver waits when queue full (default).  
**255** (**≠0**): Returns `.SQFUL` error when queue full.

Memory address: **49106**


See also [SET SOUND STOP ON/OFF](../../is-basic_man-en/man_so-sound-stop.md).