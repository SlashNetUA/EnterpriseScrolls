# VAR

## Format

`VAR number [number | ON | OFF]`

## Purpose

To set or display the value of an EXOS variable.

## Use

The first number is the [EXOS variable](../../../programming/system-info/info_exos-variables.md) which is  to be set or displayed.  If no other parameters are given, then  the  current value of the EXOS variable  will  be displayed.

If  the  second  number is given,  then  the  EXOS variable will be set to the specified number,  or to  **0** if **ON** is given and **255** if **OFF** is given.

The  EXOS variable number and the value (or **ON**  or **OFF**) may be separated by `,`,  `-`,  `.`,  `/`,  `:` or **space**,  and  spaces before and after the separator will be ignored. Leading zeros on the numbers are ignored.

Some useful EXOS variable numbers are:

 - [70](../../../programming/system-info/exos-variables/exos_var70.md): Auto-verify after write
 - [73](../../../programming/system-info/exos-variables/exos_var73.md): Disk step rate
 - [74](../../../programming/system-info/exos-variables/exos_var74.md): Full disk change checking
 - [79](../../../programming/system-info/exos-variables/exos_var79.md): [DATE](cmd-date.md) and [TIME](cmd-time.md) format
 
NOTE: Appendix F of the EXDOS manual lists some EXOS system variables which can be displayed or changed by giving the **VAR** command to EXDOS. When operating IS-DOS, you may, in addition, wish to use the following:

`VAR 69 [ON | OFF]`

This determines the "echo" state of IS-DOS batch files. If **ON** is specified (within a batch file or prior to executing it), each line in the file will be printed when implemented. The default is **OFF**. [(see more)](../../../programming/system-info/exos-variables/exos_var69.md)

`VAR 83 [ON | OFF]`

When **OFF** (the default) is given, some transient programs may overwrite part of IS-DOS in memory - making it necessary to re-load IS-DOS from disk once the program terminates. If **ON** is specified, IS-DOS cannot be overwritten.

`VAR 90 [ON | OFF]`

Specifying **ON** enables IS-DOS's internal video driver to be used for screen output in place of the normal EXOS video channel. Screen operations will then be faster, though more memory will be used. The default is **OFF**. See the Programmer's Reference Section ([Select Fast Video Driver function](../functions/f85h.md)). [(see more)](../../../programming/system-info/exos-variables/exos_var90.md)

`VAR 91 [ON | OFF]`

If **ON** is specified (the default is **OFF**), the current directory will be printed as the standard DOS prompt - for example, the prompt might be `A:\UTIL>` instead of `A>`.

This allows slightly less flexibility in the editing of lines previously entered. If you give a command in response to the `A:\UTIL>` prompt, then move the cursor back to the same line and re-press **Enter**, IS-DOS will this time treat '**UTIL**' as a command to execute a transient program file in the root directory of drive **A**.

A full list of EXOS variables which can be controlled by IS-DOS is given in [part 6 of the Programmer's Reference Section](../isdos-p3-exos-vars.md).

## Examples

`VAR 4`  
_0_

`VAR 4,10`  
`VAR 26 ON`  


