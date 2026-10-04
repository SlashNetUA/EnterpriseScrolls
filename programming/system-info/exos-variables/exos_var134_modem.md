---
title: EXOS variable 134 - MOD_BUF
---
# 134 - MOD_BUF — Modem receive buffer size

Пристрої: [MODEM](../exos-devices/modem.md)  

`ASK 134 var`  
`SET 134, expr`  
`TOGGLE 134` - inverts value.

Default value: **6**

This selects the total size of the modem receive buffer in no. of pages. This can be up to nearly 18 K if wanted, provided there is sufficient memory. 7 pages (1792 bytes), will in any case be available on the modem card. If less than 8 pages are requested, then a channel buffer of only 7 bytes will be allocated on the enterprise, else the no. of pages allotted will be n-7 where n is the no of pages indicated by the variable.  The variable will only have an effect when opening a channel to modem, and only when the modem is disconnected.