# 13 - WAIT_SND

`ASK 13 var`  
`SET 13, expr`  
`TOGGLE 13` - invert value

**0** : Sound driver waits when queue full (default).  
**255** (**≠0**): Returns `.SQFUL` error when queue full.

See also [SET SOUND STOP ON/OFF](../is-basic/man_so-sound-stop.md).