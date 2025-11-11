# ATDIR

## Applicable systems

**EXDOS**: 0.3, 1.4  
**IS-DOS**: all versions

## Format

`ATDIR [d:] [path] [/H] [[-]|[+]H]`

## Purpose

Changes the attributes of directories, to make them **hidden** or **not hidden**.

## Use

At least one of the first two parameters must be given, to specify the directories whose attributes are to be changed.

If the **H** or **+H** option is given, then the selected directories are marked as **hidden**, and will not be affected by other directory commands or shown by a [DIR](cmd-dir.md) command unless a **/H** option is given with those commands. The **-H** option marks the selected directories as not hidden. Note that **-H** will not have any effect unless the **/H** option is also given.

Unlike files, directories cannot be made read only.

## Examples

`ATDIR BOOT H`  
`ATDIR SOURCE? H`  
`ATDIR BOOT/H -H`

----

See [ATTR](cmd-attr.md) for changing attributes of files.