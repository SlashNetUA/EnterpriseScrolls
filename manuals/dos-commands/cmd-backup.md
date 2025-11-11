# BACKUP (transient)

## Applicable systems

**IS-DOS**: all versions

## Format

`BACKUP source [dest] [/D] [/M] [/F] [/X] [/T] [/V]`

## Purpose

To make a backup copy of a disk or a sub-set of files on a disk.

## Use

**source** consists of `[d:] [path] [filename]`  
**dest** consists of `[d:] [path]`

If only one of the above is given, it is assumed to be the source, and the destination is taken to be the default drive. If neither source nor destination is specified, the program will prompt for both drives.

The drives specified in the command are the logical drive names. If [ASSIGN](cmd-assign.md) has been used with the effect that both source and destination refer to the same physical drive, then an error will be given. Operations of [MAPDISK](cmd-mapdisk.md) continue as normal, with prompts issued by the system if the backup involves two disks utilizing the same actual drive.

If no filename is given for the source, or if an ambiguous filename is specified which includes a match with a directory name, then all descendant sub-directories will be included within the backup operation. (This is an advantage of **BACKUP** over the [COPY](cmd-copy.md) command provided by EXDOS).

It is not possible to specify names of files and directories to be created on the destination disk, as these are given the same names as on the source disk. Following the backup operation, the destination disk will have the same sub-directory structure as the source disk, starting from the paths specified (although specifying a path on the destination disk will cause an error if the **/F** option is given — see below).

Files are copied by **BACKUP** irrespective of their file attributes (system, hidden or read only).

If the **/D** option is given, the backup operation is confined to files in the directory which the source path specifies — i.e. files in descendant directories are not copied.

The **/F** option has the effect of deleting all files on the destination disk, irrespective of any file attributes, and formatting the disk if it is not already formatted as a valid DOS disk. This option is designed to facilitate creating backups of complete disks. The default operation preserves existing files on the destination disk.

If a file on the destination disk has a name matching that of a file being copied into the same directory, then the original file will be deleted if it does not have its read only attribute set. If the backup operation attempts to create a new directory with a name matching that of an existing file, then an error will be generated, and the backup process will continue without copying that directory or its descendant sub-directories.

The **/M** option is selected when the backup is used as a formal archive operation. Files backed-up when the **/M** option is set are marked to indicate that they have been archived. The next time that a backup of this disk takes place, the same files will not be copied if they have remained unchanged since the last backup **/M** operation. IS-DOS always removes the archive marking if a file is written to.

The **/X** option is used to exclude all warning prompts. If the destination disk contains data and the **/F** option was specified, a prompt is issued to prevent accidental overwriting of the wrong disk, unless suppressed by the **/X** option.

When backing up from one file to another, the attributes are not affected, and the destination file is given the same attributes as the old. Similarly, the destination file is given the same date and time values as the source — unless the **/T** option is specified, when the new file is given the current date and time instead.

The **/V** option is used to verify that the data was written correctly.

**BACKUP** has the advantage over [DISKCOPY](cmd-diskcopy.md) that it will be quicker if the source disk is only partly full, and that it consolidates all files into contiguous blocks on the destination disk; it also does not promulgate the disk errors of the source disk, and can be used to backup onto media of a different format (number of tracks etc).

Note that this is a transient command, and must be loaded from disk.

## Examples

`BACKUP`  
`BACKUP A: B:/X`  
`BACKUP A:\DATA B:\DATABACK/D/M/P`  
