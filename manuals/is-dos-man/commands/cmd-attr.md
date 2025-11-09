# ATTR

## Format

`ATTR [d:] [path] [filename] [/H] [[-]|[+]H] [[-]|[+]R]`

## Purpose

Changes the attributes of **files** to make them **hidden**/**not hidden** and **read only**/**not read only**.

## Use

At least one of the first three parameters must be given, to specify the files whose attributes are to be changed.

The **/H** option permits hidden files to have their attributes changed by the command.

If the **H** or **+H** option is given, then the selected files are marked as hidden, and will not be affected by most commands or be shown by the [DIR](cmd-dir.md) command unless a **/H** option is given with those commands. The **-H** option marks the selected files as not hidden. Note that **-H** will not have any effect unless the **/H** option is also given.

If the **R** or **+R** option is given, then the selected files are marked as read only. The **-R** option marks the selected files as not read only (read/write).

## Examples

`ATTR FRED R`  
`ATTR B:\BOOT\*.COM H`  
`ATTR \SOURCE/H -H -R`  

----

See [ATDIR](cmd-atdir.md) for changing attributes of directories.