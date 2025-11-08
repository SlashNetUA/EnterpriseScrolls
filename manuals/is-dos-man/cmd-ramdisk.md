# RAMDISK

## Format

`RAMDISK [number] [/D]`

## Purpose

Creates or destroys the RAM disk.

## Use

At least one of the parameters must be given,  and the number (if given) must be non-zero.

The  specified number of **16K** RAM segments will  be allocated  and  set  up as the RAM disk,  which can  be accessed as drive **E:**. If an attempt is made to create a RAM disk when one already exists, then an error will be returned unless the **/D** option is also given,  in  which case  any  existing RAM disk (and the files on the  RAM disk) will be deleted first.

If the **/D** option is given without the number, then any  existing RAM disk will be  destroyed,  the  memory being freed for use by something else.

It  is  recommended that if the RAM disk is to  be set up in the **EXDOS.INI** initialisation file then the **/D** option is given with the command.  It is then  possible to  execute  the **EXDOS.INI** file at some point  in  time after booting up.

## Examples

`RAMDISK 5`  
`RAMDISK 10/D`  

