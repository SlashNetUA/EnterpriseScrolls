# MAPDISK

## Applicable systems

**EXDOS**: 0.3, 1.4  
**IS-DOS**: all versions  

## Format

`MAPDISK d: d:`

## Purpose

To allow more than one disk to be used with one drive.

## Use

Accesses to the first drive will cause the disk to be accessed in the actual drive specified by the second drive name, which must exist. If a disk change is required, then IS-DOS will issue a prompt. This allows a single drive system to behave like a multi-drive system.

If the computer is able to detect that it is only a single drive system, then on start-up, IS-DOS will automatically perform an operation equivalent to `MAPDISK B: A:`.

## Example

`MAPDISK B: C:`

----

See also [ASSIGN](cmd-assign.md).
