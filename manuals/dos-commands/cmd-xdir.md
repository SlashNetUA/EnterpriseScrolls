# XDIR (transient)

## Applicable systems

**IS-DOS**: all versions  

## Format

`XDIR [d:] [path] [filename] [/H]`

## Purpose

Displays the names of all the files in a directory tree.

## Use

The drive, path and ambiguous filename specify which files are to be listed, If the **/H** option is given, hidden files will also be listed.

This command is similar to [DIR](cmd-dir.md), but it displays not only the contents of one directory, but also the files within all descendant sub-directories. Thus, the command.

```
XDIR A:\
```

will display a list of all the files and directories on drive **A:** (excluding hidden files).

This directory listing gives only files, directory names  and  file attributes,  without  displaying  file dates and times.  The listing uses indentation of files to indicate their depth in the directory tree. 

Note that this is a transient command, and must therefore be loaded from disk.

## Examples

`XDIR`  
`XDIR B:\DATA`  

----

See also [DIR](cmd-dir.md).