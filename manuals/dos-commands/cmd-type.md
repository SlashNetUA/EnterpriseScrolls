# TYPE

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions  

## Format

`TYPE [d:] [path] filename [/H] | channel | device`

## Purpose

Displays data from a file or an EXOS device or channel.

## Use

If a device is specified, then a channel is opened to that device and closed at the end of the operation. In this case, or if a channel is specified, then data is read from the channel or device and displayed.

If a disk file is specified, then the filename specifies the file to be displayed. If the filename is ambiguous, then all the files specified are displayed sequentially, with the filename printed first.

The **TYPE** command terminates when an end of file, or Ctrl-Z character is read.

The **/H** option if given indicates that it may be a hidden file that is typed.

## Examples

`TYPE MYFILE`  
`TYPE B:\BOOT\EXDOS.INI/H`  
`TYPE SERIAL:`  
`TYPE #10`  
