---
title: EXOS variable 143 - CDLOSS
---
# 143 - CDLOSS — Delay between loss of carrier and hangup

Пристрої: [MODEM](../exos-devices/modem.md)  

`ASK 143 var`  
`SET 143, expr`  
`TOGGLE 143` - inverts value.

Default value: **7**.

If the carrier is lost, the modem will look for a carrier for the durations of time, and if the carrier was not restored, the modem disconnects. The value is in units of 1/10 sec.

