# DEL / ERASE / ERA

## Format

`DEL [d:] [path] [filename] [/H]`  
`ERASE [d:] [path] [filename] [/H]`  
`ERA [d:] [path] [filename] [/H]`  

## Purpose

Deletes all files which match the path/filename.

## Use

At   least   one  of  the  first  three   optional parameters must be given. If the filename is ambiguous, then more than one file may be deleted.  If no filename is given, then the filename defaults to `*.*`, indicating that  all files in the current or  specified  directory are to be deleted.

If  the **/H** option is given,  then hidden files may also be deleted.

If any of the files specified have been marked  as read only, then these files will not be deleted and the delete  operation  will  continue.  An  error  will  be returned if no files were deleted.

If the filename is `*.*`, then the prompt:

```
Erase all files (Y/N) ?
```

is printed,  and a reply is waited for. If the reply is anything other than '**Y**' or '**y**',  then the file deletion does not take place.  This is a safety feature designed to prevent accidental loss of all files in a directory.

## Examples

`ERASE TEST.BAK`  
`DEL *.COM/H`  
`DEL B:\BOOT\EXDOS.INI`

`DEL B:\BOOT`  
_Erase all files (Y/N) ?_

----

See also [RMDIR](cmd-rmdir.md) and [UNDEL](cmd-undel.md).
