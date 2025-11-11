# RNDIR

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions  

## Format

`RNDIR [d:] path [/H] [d:] filename`

## Purpose

Renames one or more sub-directories.

## Use

If the **/H** option is given, then hidden directories may be renamed.

The last item in path specifies one or more sub-directories on the default or specified drive (the first drive specification) which are to be renamed. The second drive must be the same as the first or not given. The file-name specifies the new name for the directories and may be ambiguous. A `?` in the filename indicates that one character is to be copied from the original name to the new name in the position of the `?` (`*` being a series of `?`).

If the new name for any of the sub-directories being renamed already exists, or is an invalid filename, then the rename operation stops and an error is returned.

## Examples

`RNDIR UTIL COM`  
`RNDIR A:\SOURCE\FRED?/H BILL?`

----

See also [RENAME](cmd-rename.md).