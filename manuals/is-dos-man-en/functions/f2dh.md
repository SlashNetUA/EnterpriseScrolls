# Function 2Dh: Set Time

## Parameters

**H** = Hours (**0**...**23**)  
**L** = Minutes (**0**...**59**)  
**D** = Seconds (**0**...**59**)  
**E** = Centiseconds (ignored)

## Results

**A** = 
 - **00h**: if time was valid
 - **FFh**: if time was invalid

## Description

This function sets EXOS's internal system clock to the specified time value. If the time is invalid, then register **A** will be returned as **FFh** to indicate an error, and the current time will be left unaltered. The centiseconds value is included for MSX-DOS compatibility, but is ignored by IS-DOS since the resolution of EXOS's internal clock is only one second.

----

See also [Get Time](f2ch.md), [Get Date](f2ah.md) and [Set Date](f2bh.md) functions.