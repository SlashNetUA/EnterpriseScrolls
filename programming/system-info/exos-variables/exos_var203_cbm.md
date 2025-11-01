# 203 (BV+3) - (CBM-MFT)

`ASK 203 var`  
`SET 203, expr`  
`TOGGLE 203` - inverts value.

Used with **CBM Multi File Transfer**.  
Last used device number. It can be set to any value between **4** and **255**. Its value takes the value of **x** for every reference to `CBMx:`.  

Setting this value for version numbers lower than **1.7** is only relevant for the `$` - disk catalog request - command, because it requests a catalog from the same number of devices as the value here. Of course, requesting a catalog from the printer will cause an error!  

With version numbers **1.7** or higher, access to the last used peripheral, i.e. the number equal to **BV+3**, is allowed with the `CBM:` device name link.
