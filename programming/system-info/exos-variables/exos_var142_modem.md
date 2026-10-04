---
title: EXOS variable 142 - MAXCD
---
# 142 - MAXCD — Maximum wait time for a carrier

Пристрої: [MODEM](../exos-devices/modem.md)  

`ASK 142 var`  
`SET 142, expr`  
`TOGGLE 142` - inverts value.

Default value: **20** seconds.

This selects the maximum wait time for a carrier. If the time elapses the modem disconnects. The value is used by the modem when dialing has been completed. Value is in units of seconds.
