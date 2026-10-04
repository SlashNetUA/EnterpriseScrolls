---
title: EXOS variable 129 - BAUD_COM
---
# 129 - BAUD_COM — Baud rate used for transmission/reception

Пристрій: [COM](../exos-devices/com.md)  

`ASK 129 var`  
`SET 129, expr`  
`TOGGLE 129` - inverts value.


 - **0**: 19200 baud.         
 - **1**: 9600 baud. (default)        
 - **2**: 4800 baud.         
 - **3**: 2400 baud.         
 - **4**: 1200 baud.         
 - **5**: 600 baud.         
 - **6**: 300 baud.         
 - **7**: 150 baud.         
 - **8**-**15**: 38400 baud.         

The value is reduced modulus 16 before interpretation.