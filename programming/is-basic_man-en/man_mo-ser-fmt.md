# SERIAL FORMAT

`ASK SERIAL FORMAT var`  
`SET SERIAL FORMAT expr`

Defines the word format for the serial device driver. The format is controlled by the binary bits in the number, as follows:

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

Default format is **8 bits**, **no parity**, **2 stop bits**. Use of the network will always re-initialise this default.

See also [EXOS VAR 17](../system-info/exos-variables/exos_var17.md).   