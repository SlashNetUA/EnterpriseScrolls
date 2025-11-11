# Function 2Ah: Get Date

## Parameters

None

## Results

**HL** = Year **1980**...**2079**  
**D** = Month (**1**=**Jan**...**12**=**Dec**)  
**E** = Date (**1**...**31**)  
**A** = Day of week (**0**=**Sun**...**6**=**Sat**)  

## Description

This function simply returns the current value of EXOS's internal calendar in an MSX-DOS compatible format. Note that the values returned are binary rather than BCD as is the case for the EXOS date and time function calls.

----

See also [Set Date](f2bh.md), [Get Time](f2ch.md) and [Set Time](f2dh.md) functions.