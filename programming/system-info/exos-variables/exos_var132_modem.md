---
title: EXOS variable 132 - MOD_FORMAT
---
# 132 - MOD_FORMAT — Format used

Пристрої: [MODEM](../exos-devices/modem.md)  

`ASK 132 var`  
`SET 132, expr`  
`TOGGLE 132` - inverts value.

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

Default value is: **0**: no parity, 8 data bits, 2 stops.

When running **V22/Bell 212a** or **V22bis**, only **8** to **11** bits/character are allowed. The character length includes the start bit, data bits, any parity bit and stop bit(s).  
