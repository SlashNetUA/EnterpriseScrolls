# ASSIGN

## Applicable systems

**EXDOS**: 0.3, 1.4  
**IS-DOS**: all versions

## Format

`ASSIGN [d: [d:]]`

## Purpose

Sets up a logical to physical translation for two drive names.

## Use

The first drive name is assigned to the second, neither of which need be drives which actually exist. If only one drive name is given, then this drive is re-assigned to itself. If no drives are given, all previous **ASSIGN** commands are canceled.

## Example

`ASSIGN C: A:`

— This causes all access to drive **C:** to go instead to drive **A:**.

----

See also [MAPDISK](cmd-mapdisk.md).