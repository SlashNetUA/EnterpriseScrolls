# HELP

## Format

`HELP d: | [<name>]`

## Purpose

Provides help text for a command.

## Use

If **\<name\>** is a **HELP** command recognized by an EXOS system extension, then the standard help text for that extension is printed in the normal way. If **\<name\>** is not recognized by an extension, then IS-DOS looks for a text file called **\<name\>.HLP** in a directory called **\HELP**. If this is found, it is printed on the screen, otherwise an error is given. The drive used for looking for the **.HLP** file is initially the drive from which IS-DOS was loaded.

If **d:** is given instead of **\<name\>**, subsequent **HELP** commands will search for **.HLP** files in the **\HELP** directory in the specified drive.

## Examples

`HELP`  
`HELP BASIC`  
`HELP PATH`  
`HELP C:`  

