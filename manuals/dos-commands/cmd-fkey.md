# FKEY (transient)

## Applicable systems

**IS-DOS**: all versions

## Format

`FKEY`

## Purpose

Define function keys.

## Use

The program sets the function keys as follows:

**F1**: [DIR](cmd-dir.md)  
**F2**: FAST VIDEO ON ([VAR 90 ON](../../programming/system-info/exos-variables/exos_var90.md))  
**F3**: [WP](../../software/st-wp.md)  
**F4**: [MODE 80](cmd-mode.md)  
**F5**: AUTO VERIFY ON ([VAR 70 ON](../../programming/system-info/exos-variables/exos_var70.md))  
**F6**: SPEAKER ON ([VAR 14 ON](../../programming/system-info/exos-variables/exos_var14.md))  
**F7**: CLICK ON ([VAR 7 ON](../../programming/system-info/exos-variables/exos_var7.md))  
**F8**: [PRINTER](cmd-printer.md)  

**Shift**+**F1**: [CD \\](cmd-chdir.md) (go to root folder)  
**Shift**+**F2**: FAST VIDEO OFF ([VAR 90 OFF](../../programming/system-info/exos-variables/exos_var90.md))  
**Shift**+**F3**: [BASIC](../../programming/is-basic.md)  
**Shift**+**F4**: [MODE 40](cmd-mode.md)  
**Shift**+**F5**: AUTO VERIFY OFF ([VAR 70 OFF](../../programming/system-info/exos-variables/exos_var70.md))  
**Shift**+**F6**: SPEAKER OFF ([VAR 14 OFF](../../programming/system-info/exos-variables/exos_var14.md))  
**Shift**+**F7**: CLICK OFF ([VAR 7 OFF](../../programming/system-info/exos-variables/exos_var7.md))  
**Shift**+**F8**: [CLS](cmd-cls.md)  

Note that this is a transient command, and must be loaded from disk.

## Example

`FKEY`

----

See also [WIPE](cmd-wipe.md).
