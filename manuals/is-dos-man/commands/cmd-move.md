# MOVE

## Format

`MOVE [d:] [path] [filename] [/H] [d:] [path]`

## Purpose

Moves files from one directory to another on a disk.

## Use

At   least  one  of  the  first   three   optional parameters  specify the files which are to be moved  to the  directory specified by the second drive and  path. The  filename  if  not given defaults to  `*.*`.  If  the second  drive is given then it must refer to  the  same drive as the first drive.

If  the **/H** option is given,  then hidden files may be included in the move.

If  an  attempt  is made to move  a  file  into  a directory  which  already contains a file of  the  same name,  then  the  move operation stops and an error  is returned.

## Examples

`MOVE FRED \`  
`MOVE E:*.INI/H E:\BOOT`  
`MOVE \UTIL`  

----

See also [MVDIR](cmd-mvdir.md).