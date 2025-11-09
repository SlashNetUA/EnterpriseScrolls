# Function 1Ah: Set Disk Transfer Address

## Parameters

**DE** = Required Disk Transfer Address

## Results

None

## Description

This function simply records the address passed in **DE** as the disk transfer address. This address will be used for ail subsequent read and write calls, and also for the search calls to store the directory entry. The address is set back to **80h** by a '[DISK RESET](f0dh.md)' call.

