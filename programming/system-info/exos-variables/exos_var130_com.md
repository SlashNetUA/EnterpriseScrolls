---
title: EXOS variable 130 - FORMAT_COM
---
# 130 - FORMAT_COM — Serial format used in transmission/reception

Пристрій: [COM](../exos-devices/com.md)  

`ASK 130 var`  
`SET 130, expr`  
`TOGGLE 130` - inverts value.

 - **Bit-0: NSB**
	 - **0**: 1 stop bit
	 - **1**: 2 stop bits    
 - **Bit-1: PE** (Parity enable)
 - **Bit-2: PE/PO**
	 - **0**: odd parity
	 - **1**: even parity
 - **Bit-4 and 3: NDB**
	 - **0** + **0**: 8 data bits
	 - **0** + **1**: 7 data bits
	 - **1** + **0**: 6 data bits
	 - **1** + **1**: 5 data bits

Default value is: **1**: no parity, 8 data bits, 2 stops.
