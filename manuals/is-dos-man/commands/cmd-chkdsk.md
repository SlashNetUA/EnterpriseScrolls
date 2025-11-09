# CHKDSK (transient)

## Format

`CHKDSK [d:] [/F]`

## Purpose

Checks the integrity of the disk.

## Use

If **d:** is not specified, the default drive is checked.

**CHKDSK** searches the disk for errors in the disk data structures. It reports any errors found, and attempts to find means of correcting them, ensuring that the disk is in a valid state.

If the **/F** option is given, the corrections will be written to disk. Otherwise **CHKDSK** will report the corrections that could be made, but will not actually carry them out.

A prompt inquires whether lost disk space which **CHKDSK** has freed for use is to be converted into files.

Note that when a disk file is written to, but not closed by a command or program, it is possible for disk space to be "lost". It is therefore recommended that **CHKDSK** is run on disks regularly.

Note that this is a transient command, and must be loaded from disk.

## Examples

`CHKDSK`  
`CHKDSK B:/F`
