# DISKCOPY (transient)

## Format

`DISKCOPY [d: [d:]] [/X]`

## Purpose

To copy an entire disk, without any file processing.

## Use

The entire disk specified by the first drive is copied to the disk specified by the second. If only one drive is given, then that drive is copied on to the current drive. If neither drive is specified, the program will prompt for both drives.

If the destination disk is unformatted, then it will be automatically formatted to the same format as the source disk.

If the destination disk is already formatted, then a warning message is issued, giving the volume name of the destination disk if it is available. When the user has pressed a key to indicate that the data can be overwritten, the disk copying operation will proceed. If the destination disk has a format incompatible with the source disk, then it will be automatically reformatted.

The **/X** option suppresses the warning prompt, and will overwrite data on the destination disk without pausing for confirmation.

The result of the **DISKCOPY** operation will be two disks which are identical, with the exception that the hidden volume identity used by IS-DOS for disk checking will be different. The volume name of each disk will be the same, and even disk faults (such as lost data areas) will have been copied on to the destination disk.

Note that this is a transient command, and must be loaded from disk.

## Examples

`DISKCOPY`  
`DISKCOPY A: B:/X`

