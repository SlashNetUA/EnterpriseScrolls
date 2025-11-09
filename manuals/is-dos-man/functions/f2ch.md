# Function 2Ch: Get Time

## Parameters

None

## Results

**H** = Hours (**0**...**23**)  
**L** = Minutes (**0**...**59**)  
**D** = Seconds (**0**...**59**)  
**E** = Centiseconds (always zero)  

## Description

This function returns the current value of EXOS's internal clock in an MSX-DOS compatible format. The clock is updated by a **1Hz** interrupt, and at midnight the date is incremented. Note that the centiseconds value returned is always zero because the resolution of EXOS's clock is only one second.

----

See also [Set Time](f2dh.md), [Get Date](f2ah.md) and [Set Date](f2bh.md) functions.