# MD / MKDIR

## Format

`MKDIR [d:] path`  
`MD [d:] path`  

## Purpose

Creates a new sub-directory.

## Use

The  last item in the path is the name of the  new sub-directory which is to be created on the default  or specified  drive.  Thus if this is the only item in the path  string,  the  new  directory is  created  in  the current  directory.  If  the  new directory  is  to  be hidden, then it must be separately made hidden with the [ATDIR](cmd-atdir.md) command.

The **MD** command is an abbreviated form of the **MKDIR** command    provided   for   convenience   and    MS-DOS compatibility.

## Examples

`MKDIR UTIL`  
`MKDIR A:\BOOT\RAMDISK`  

