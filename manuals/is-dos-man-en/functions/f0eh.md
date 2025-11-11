# Function 0Eh: Select Disk

## Parameters

**E** = Drive number.
 - **0**: **A:**
 - **1**: **B:**
 - etc

## Results

**L**=**A** = Number of drives (**1**...**26**)

## Description

This function simply selects the specified drive as the default drive. The default drive is stored internally as an EXOS variable called '[DEF_UNIT](../../../programming/system-info/exos-variables/exos_var71.md)'. The current drive is also stored at address **0004h** for CP/M compatibility.

The number of drives is returned in register **A** for compatibility with MSX-DOS, although this feature is not present in CP/M. It is calculated by counting the number of set bits in the login vector (see [function call 18h](f18h.md)). Note that the system does not in general know how many drives are connected, only the number of drives for which unit handlers exist. This means that the system will always think it has at least five drives (four floppy drives and a single RAM-disk).

