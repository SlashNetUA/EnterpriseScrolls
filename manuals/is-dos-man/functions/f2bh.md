# Function 2Bh: Set Date

## Parameters

**HL** = Year **1980**...**2079**  
**D** = Month (**1**=**Jan**...**12**=**Dec**)  
**E** = Date (**1**...**31**)  

## Results

**A** = 
 - **00h**: if date was valid
 - **FFh**: if date was invalid

## Description

The supplied date is checked for validity; if it is valid, it is stored as the new EXOS date. The validity checks include full checking for the number of days in each month and leap years. If the date is invalid then the current data will be left unaltered.

----

See also [Get Date](f2ah.md), [Get Time](f2ch.md) and [Set Time](f2dh.md) functions.