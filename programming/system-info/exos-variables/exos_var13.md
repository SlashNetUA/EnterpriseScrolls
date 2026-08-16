---
title: EXOS variable 13 - WAIT_SND
---
# 13 - WAIT_SND

Пристрій: [SOUND](../exos-devices/sound.md)

`ASK 13 var`  
`SET 13, expr`  
`TOGGLE 13` - invert value

**0** : Sound driver waits when queue full (default).  
**255** (**≠0**): Returns [.SQFUL](../errors/err-sqful.md) error when queue full.

----

See also [SET SOUND STOP ON/OFF](../../../manuals/is-basic-man-en/options/man_so-sound-stop.md).