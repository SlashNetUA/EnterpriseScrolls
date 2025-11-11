# LOAD

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions  

## Format

`LOAD device:filename | channel`

## Purpose

Loads an EXOS module via EXOS.

## Use

If a device/filename is specified,  then a channel is  opened to the device and closed again at the end of the  operation.  The  EXOS  module  is  read  from  the channel, and more than one module may be loaded.

## Examples

`LOAD FORTH`  
`LOAD #10`

