# TAPE LEVEL

`SET TAPE LEVEL expr`

Controls the volume level used when saving to tape. Acceptable tape levels are in the range **1**-**6**, with volume doubling for each level. Level **1** is equivalent to about **40 mV** peak-to-peak. Default level is **2**.

|Parameter value|Tape level (mV)|
|:-------------:|:-------------:|
|0 or 1|20|
|2 (default)|40|
|3|80|
|4|170|
|5|350|
|6 - 255|700|

----

See also [EXOS VAR 35 - LV_TAPE](../../../programming/system-info/exos-variables/exos_var35.md)