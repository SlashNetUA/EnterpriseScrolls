# SERIAL BAUD

`ASK SERIAL BAUD var`  
`SET SERIAL BAUD expr`  

The parameter (in the range **0**-**15**) determines the baud rate for the RS232 port and the network, according to the code given below. Can be used with [ASK](man_cs-ask.md).

|Parameter value|Baud rate| 
|:-------------:|--------:|
|0|50 baud
|1|75 baud
|2|110 baud
|3|134.5 baud
|4|150 baud
|5|200 baud
|6|300 baud
|7|600 baud
|8|1200 baud
|9|1800 baud
|10|2400 baud
|11|3600 baud
|12|4800 baud
|13|7200 baud
|14|9600 baud
|15<br>(default)|9600 baud

Default baud rate is **9600** (value **15**).

See also [EXOS VAR 16](../exos-info/exos-variables/exos_var16.md).   