# PRINTER

## Applicable systems

**IS-DOS**: all versions  

## Format

`PRINTER [ON | OFF]`

## Purpose

Turns printer echo **on** or **off**.

## Use

If '**ON**' or '**OFF**' are specified,  then printer echo is  turned on or off,  otherwise the printer echo state is toggled.

When  **PRINTER** is **ON**,  "**printer on**" appears on  the status line at the top of the screen, and screen output from command mode or programs is also sent to **LST:**  (see [MODE](cmd-mode.md)).

**Function  key  8** is programmed with  '**PRINTER**'  in command mode and **^P** when running CP/M programs, so that pressing **F8** will usually toggle the printer.

Note that, by re-directing **LST:** to a disk file with the [MODE](cmd-mode.md) command,  it is possible to use `PRINTER ON`  to cause  screen output from for example [DIR](cmd-dir.md) or [XDIR](cmd-xdir.md) to go to a disk file.

## Examples

`PRINTER`

`PRINTER ON`  
`XDIR B:`  
`PRINTER OFF`  

`MODE LST:=B:FILE`  
`PRINTER ON`  
`DIR A:`  
`PRINTER OFF`  
`MODE LST`  
