# Function 0Ch: Get CP/M Version Number

## Parameters

None

## Results

**L**=**A** = **22h**  
**H**=**B** = **00h**

## Description

This function simply returns the CP/M version number which is being emulated. This is always version **2.2** in current systems. The IS-DOS and EXDOS version numbers can be found using [function call 87h](f87h.md).