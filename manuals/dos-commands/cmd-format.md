# FORMAT

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions  

## Format

`FORMAT [d:] [volname] [/1] [/H] [/8]`

## Purpose

Formats a disk.

## Use

The  drive  formatted is the default or  specified drive.  The **volname** (if given) is the volume name that will be given to the disk. 

The  **/1**  option (if given) causes the disk  to  be formatted  as  a  single  sided  disk  (default  double sided),  the **/H** option (if given) causes the disk to be formatted with **40** tracks per side in an **80** track  drive (default  80 tracks) and the **/8** option causes the  disk to  be formatted with **8** sectors per track (default  **9**). 

Disks in a single sided drive will always be formatted as single sided disks, and disks in a **40** track drive will always be formatted as **40** track disks.

Before  formatting starts,  a press of the "**Y**" key is prompted for as a safety feature.

## Examples

`FORMAT B:`  
_Destroy data on drive B: (Y/N)? _

`FORMAT B:SOURCE/1/H/8`
