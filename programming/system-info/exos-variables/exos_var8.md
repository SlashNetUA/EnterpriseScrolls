---
title: EXOS variable 8 - STOP_IRQ
---
# 8 - STOP_IRQ

Пристрій: [KEYBOARD](../exos-devices/keyboard.md)  

`ASK 8 var`  
`SET 8, expr`  
`TOGGLE 8` - inverts value.

**0**: STOP key causes soft IRQ (default) - [SET INTERRUPT STOP ON](../../../manuals/is-basic-man-en/options/man_mo-interrupt.md)  
**255** (**≠0**): STOP key returns [key code 3](../info_characters.md) - [SET INTERRUPT STOP OFF](../../../manuals/is-basic-man-en/options/man_mo-interrupt.md)



