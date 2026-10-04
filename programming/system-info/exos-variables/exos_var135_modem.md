---
title: EXOS variable 135 - MOD_PROTOCOL
---
# 135 - MOD_PROTOCOL — Protocol used

Пристрої: [MODEM](../exos-devices/modem.md)  

`ASK 135 var`  
`SET 135, expr`  
`TOGGLE 135` - inverts value.

Default value: **0** (none)

This variable is set up prior to opening a channel to modem, and selects the protocol (if any) which is used for the transfer of data:

 - **0**: No . protocol, channel is full-duplex.
 - **1**: XMODEM protocol, 8-bit chksum is sent when transmitting data.
 - **2**: XMODEM protocol, 16-bit CRC is sent when transmitting data.
 - **3**-**255** = No protocol, reserved.

