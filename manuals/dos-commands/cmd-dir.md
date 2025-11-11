# DIR

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions  

## Format

`DIR [d:] [path] [filename] [/H] [/W]`

## Purpose

Displays the names of files on disk.

## Use

The  drive,  path and ambiguous  filename  specify which  files  are  to be listed.  If the **/H**  option  is given, then hidden files will also be listed. 

There  are two formats of the listing.  If the  **/W** option is given, then a "wide" listing is printed, with six  filenames output per line.  The output  format  is such that in 40 column mode the line will be split in a suitable  place to show three filenames per line.  Sub- directory names, file attributes, and the date and time each file was created are not displayed.

If the **/W** option is not given,  then the filenames are printed with one filename per line,  together  with the attributes,  the file size and the date and time of creation. The display of this is designed to fit within 38  characters,  thus  avoiding word wrap on an  editor channel with a 40 column video display.  At the  bottom of  this  display is the total number of files  listed, the  total number of bytes in the files listed and  the remaining free bytes on the disk.

## Examples

`DIR`  
`DIR B:/W`  
`DIR A:\BOOT`  
`DIR A:BOOT\EXDOS.INI/H`  
`DIR E:*.COM`

----

See also [XDIR](cmd-xdir.md).