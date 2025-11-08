# UNDEL (transient)

## Format

`UNDEL [d:] [path] [filename]`

## Purpose

Undeletes a previously deleted file or directory.

## Use

The files in the default or specified drive and path are undeleted if possible, the filename defaulting to `*.*`.

Files can only be undeleted if they have bean deleted using IS-DOS  or  EXDOS, and if no disk allocation has taken place since the file was originally deleted.

Each file and sub-directory reference within the directory specified by path will be undeleted if the file or sub-directory name matches the filename specified, and if undeletion is possible. **UNDEL** can therefore be used to restore a sub-directory removed with the [RMDIR](cmd-rmdir.md) or [RD](cmd-rmdir.md) commands; to restore the contents of that sub-directory, a further **UNDEL** command is required with the correct path specification.

Note that **UNDEL** is a transient command, and therefore must be loaded from disk.

## Examples

`UNDEL B:FRED.MAC`  
`UNDEL A:\BOOT`  

----

See also [ERASE](cmd-del.md) and [RMDIR](cmd-rmdir.md).