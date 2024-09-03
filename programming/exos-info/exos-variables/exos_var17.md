# 17 - FORM_SER

`ASK 17 var`  
`SET 17, expr`  
`TOGGLE 17` - inverts value.

Defines serial word format.

|Bit|Value|Effect|Notes|
|:-:|:---:|------|-----|
|0|0|8 bits||
|0|1|7 bits||
|1|0|no parity||
|1|1|parity on||
|2|0|even parity|(ignored if bit 1 is 0)|
|2|1|odd parity|(ignored if bit 1 is 0)|
|3|0|two stop bits||
|3|1|one stop bit||

Bits **4 and upwards** must be **0**.

Default format is **8 bits**, **no parity**, **2 stop bits** (**0**). Use of the network will always re-initialise this default.

Memory address: **49110**

See also [SET SERIAL FORMAT](../../is-basic/man_mo-ser-fmt.md).