# REN / RENAME

## Format

`RENAME [d:] [path] [filename] [/H] [d:] filename`  
`REN [d:] [path] [filename] [/H] [d:] filename`  

## Purpose

Renames one or more files.

## Use

The  first  drive,  path  and  ambiguous  filename specify one or more files which are to be renamed,  and either  the  path or the filename must  be  given,  the filename  defaulting to `*.*`.  The second drive must  be the  same  as  the  first  or  not  given.  The  second ambiguous  filename  specifies  the new  name  for  the files.  A  `?`  in  the  new name  indicates  that  one character will be copied from the old name into the new name  at  the position of the `?` (a `*` just  being  a series of `?`).

If  the  new filename for any of the  files  being renamed already exists, or is an invalid filename, then the rename operation stops and an error is returned.

If the **/H** option is specified,  then hidden  files may also be renamed.

## Examples

`RENAME START EXDOS.INI`  
`REN B:\SOURCE\*.MAC/H B:*.OLD`  

----

See also [RNDIR](cmd-rndir.md).

