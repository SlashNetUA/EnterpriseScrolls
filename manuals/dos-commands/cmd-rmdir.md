# RD / RMDIR

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions  

## Format

`RMDIR [d:] path [/H]`  
`RD [d:] path [/H]`  

## Purpose

Removes one or more sub-directories.

## Use

If the **/H** option is given, then hidden directories may also be removed.

The last item in the path is the (possibly ambiguous) name of one or more sub-directories to be removed from the default or specified drive. If any of the directories to be deleted are not empty, then an error will be returned and the command terminated.

## Examples

`RMDIR UTIL`  
`RMDIR A:\BOOT\FRED?/H`

----

See also [ERASE](cmd-del.md) and [UNDEL](cmd-undel.md).
