---
title: EXOS variable 128 - MOD_SLOT
---
# 128 - MOD_SLOT — Slot position of serial/modem card

Пристрої: [MODEM](../exos-devices/modem.md), [COM](../exos-devices/com.md)  

`ASK 128 var`  
`SET 128, expr`  
`TOGGLE 128` - inverts value.

This is the slot no. indicated when the [modem](../exos-devices/modem.md) and [com](../exos-devices/com.md) drivers were linked in. This value can be changed if wanted to possibly switch to another modem card, but care should be taken with this.