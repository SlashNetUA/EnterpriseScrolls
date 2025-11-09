# Function 0Dh: Disk Reset

## Parameters

None

## Results

None

## Description

Any data which is waiting in internal buffers is written out to disk. It is not necessary to call this function in order to allow a disk change as is the case with CP/M. The disk transfer address is also set back to its default value of **80h** by this function.

----

See also [Function 1Ah](f1ah.md).
