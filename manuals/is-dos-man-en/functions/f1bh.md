# Function 1Bh: Get Allocation Information

## Parameters

**E** = Drive number (**1**...**26**, **0**=default)

## Results

**A** = Sectors per cluster  
**BC** = Sector size (always **512**)  
**DE** = Total clusters on disk  
**HL** = Free clusters on disk  

## Description

This function returns various information about the disk in the specified drive and is compatible with MSX-DOS. It is not compatible with CP/M, which uses this function number to return the address of an allocation vector.
