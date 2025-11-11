# CLS

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions

## Format

`CLS`

## Purpose

Clears the screen.

## Use

**CLS** sends an ASCII Ctrl-Z to the default channel. Since this is usually an editor channel, this will have the effect of clearing the screen. The main use of this command is in the EXDOS/IS-DOS interactive mode or in an EXDOS/IS-DOS batch file.

> [!Note for EXDOS use]
> Note that in other circumstances, this command should be used with care since it could, for example, delete all the text if used from the WP.

## Examples

`CLS`

