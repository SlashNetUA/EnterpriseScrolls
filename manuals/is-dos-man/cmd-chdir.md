# CD / CHDIR

## Format

`CHDIR [d:] [path]`  
or  
`CD [d:] [path]`

## Purpose

Displays or changes the current directory.

## Use

If no path is specified, then the current directory path for the default or specified drive is printed. This is the directory path from the root directory to the current directory.

If a path is specified, then the current directory for the default or specified drive is changed to the directory specified by the path.

The **CD** command is an abbreviated form of the CHDIR command provided for convenience and MS-DOS compatibility.

## Examples

`CHDIR \BOOT\RAMDISK`  
`CHDIR A:UTIL`  

`CD`  
_E:\BOOT\RAMDISK_

`CHDIR A:`  
_A:\UTIL_