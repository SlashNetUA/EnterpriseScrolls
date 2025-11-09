# Function 2Fh: Absolute Sector Read

## Parameters

**DE** = Sector number  
**L** = Drive number (**1**=**A:** etc)  
**H** = Number of sectors to read  

## Results

**A** = EXOS error code (**0**=> no error)  
**DE** = Next sector number  
**H** = Number of sectors read  

## Description

This function reads sectors directly from the disk without interpreting them as files. The disk must he a valid DOS disk in order for the sector number to be translated into a physical position on the disk. Details of disk layout etc can be found in the separate EXDOS documentation.

----

See also [Absolute Sector Write](f30h.md).
