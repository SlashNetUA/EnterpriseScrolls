# SAVE

## Applicable systems

**IS-DOS**: all versions  

## Format

`SAVE [number] [ K | P ] [d:] [path] filename`

## Purpose

Saves part of the TPA (Transient Program Area).

## Use

The number specifies the amount of TPA memory to save. If the **K** is given, then the number specifies the number of **Kbytes** to save. If the **P** is given, then number specifies the number of **256**-byte **pages** to save (as in the CP/M SAVE command). Otherwise, number is the actual number of bytes to save.

The filename specifies the destination file.

Note that the TPA memory may be corrupted by certain commands which require the memory, such as [COPY](cmd-copy.md).

## Examples

`SAVE 1 TEST`  
`SAVE 10K B:\UTIL\NEW.COM`  

