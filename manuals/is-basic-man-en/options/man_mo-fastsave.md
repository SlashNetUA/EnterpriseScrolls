# FAST SAVE

`SET FAST SAVE ON/OFF`  
`TOGGLE FAST SAVE`
`ASK FAST SAVE var`

|Setting|Baud rate|Variable value<br>(after ASK)|
|:----:|:----:|:----:|
|ON|2400|0|
|OFF|1200|255<br>(<>0)|

Sets the fast saving speed for tape operations. This speed is approximately **2400** baud, and is the default rate. If fast save is off, the speed is halved.

Loading from tape automatically copes with variations in saving speed.

Can be used with [TOGGLE](commands/man_cs-toggle.md).
