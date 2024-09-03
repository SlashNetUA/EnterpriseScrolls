# 8 - STOP_IRQ

`ASK 8 var`  
`SET 8, expr`  
`TOGGLE 8` - inverts value.

**0**: STOP key causes soft IRQ (default) - [SET INTERRUPT STOP ON](../../is-basic/man_mo-interrupt.md)  
**255** (**≠0**): STOP key returns [key code 3](../info_characters.md) - [SET INTERRUPT STOP OFF](../../is-basic/man_mo-interrupt.md)


Memory address: **49101**
