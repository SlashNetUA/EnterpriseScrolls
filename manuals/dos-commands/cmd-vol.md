# VOL

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions  

## Format

`VOL [d:] [volname]`

## Purpose

Displays or changes the volume name on a disk.

## Use

If no parameters are given, or if only a drive name is given, then the volume name of the current or specified drive is printed. If a volname is given, then the volume name of the default or current drive is changed to the specified volname.

Note that specified volname may contain characters not normally allowed in filenames, such as spaces.

## Examples

`VOL B:`  
_Volume in drive B: has no name_  

`VOL B:BACKUP`  

----

> [!NOTE]
> Ви не можете змінити назву диску якщо на диску присутні файли/теки з довгими назвами.