# BUFFERS

## Format

`BUFFERS [number]`

## Purpose

To display or change the number of disk buffers in the system.

## Use

If the number is not given, then the number of disk buffers currently in the system will be displayed. Otherwise the number of buffers will be increased to the number specified. The number of buffers cannot be decreased. Increasing the number of buffers may  speed up the disk accesses of some programs.

The default number of buffers in the system is **3**.

## Examples

`BUFFERS`  
_3_

`BUFFERS 5`  
