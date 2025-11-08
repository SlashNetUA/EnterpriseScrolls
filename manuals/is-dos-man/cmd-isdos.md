# ISDOS

## Format

`ISDOS [d:] [/command]`

## Purpose

Boots  IS-DOS from disk.

## Use

If the drive is given,  then IS-DOS is loaded  and run from the system file on the specified drive,  which then  becomes  the  "booting" drive.  If  no  drive  is specified,  then  IS-DOS  is  booted from  the  current booting  drive,   or  the  currently  logged  on  drive initially. 

The  command  (if  given)  is  passed  to   IS-DOS (without  the `/` character) which then interprets it  as though  it  had  been typed in at  the  IS-DOS  prompt. Normally,  the command, if given, will be the name of a file  which  will be loaded and executed,  although  it could  be any other valid IS-DOS or EXDOS  command.  If the command is not given, then IS-DOS will look for and execute a file called **AUTOEXEC.BAT**.

## Examples

`ISDOS`  
`ISDOS B:`  
`ISDOS A: /C:MYPROG`

