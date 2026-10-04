---
title: EXOS variable 131 - MOD_BAUD
---
# 131 - MOD_BAUD — Baud rate used

Пристрої: [MODEM](../exos-devices/modem.md)  

`ASK 131 var`  
`SET 131, expr`  
`TOGGLE 131` - inverts value.

 - **0**: 19200 baud.         
 - **1**: 9600 baud.
 - **2**: 4800 baud.         
 - **3**: 2400 baud.         
 - **4**: 1200 baud. (default)  
 - **5**: 600 baud.         
 - **6**: 300 baud.         
 - **7**: 150 baud.         
 - **8**-**15**: 38400 baud.         

The value is reduced modulus 16 before interpretation.

When running **V21/Bell 103** only the following baud rates can be used: **6** and **7** for 300 and 150 respectively.  
When running **V22/Bell 212a** only the following baud rates can be used: **4** and **5** for 1200 and 600 bps respectively.  
When running **V22bis**, **3**, **4** and **5** can be used for 600, 1200 and 2400 bsp, respectively.


