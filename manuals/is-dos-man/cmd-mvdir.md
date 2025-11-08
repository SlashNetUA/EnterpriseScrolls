# MVDIR

## Format

`MVDIR [d:] [path] [/H] [d:] [path]`

## Purpose

Moves sub-directories from one directory to another  on a disk.

## Use

The  last item in the first path specifies one  or more  directories which are to be moved on the  default or  specified  drive to the directory specified by  the second path.  If the second drive is specified then  it must refer to the same drive as the first.

The   move  operation  is  stopped  and  an  error returned if an attempt is made to move a directory into another   directory  which  already  contains  a   sub-directory of the same name, or if an attempt is made to move  a  directory into one of  it's  own  descendants, since  this  would violate the tree structure  of  sub-directories.

## Examples

`MVDIR COM UTIL`  
`MVDIR E:INI?/H E:\BOOT`  
`MVDIR \RAM`  

----

See also [MOVE](cmd-move.md).

