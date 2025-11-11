# IS-Basic errors

0 — 999 User  
1000 — 1999 Overflow  
2000 — 2999 Subscript  
3008 — 3999 Mathematical  
4000 — 4999 Parameter  
5000 — 5999 Storage exhausted  
6000 — 6999 Matrix  
7000 — 7999 File use  
8000 — 8999 Input-output  
9000 — 9999 Exos  
10000 — 10999 Control  
11009 — 11999 Graphical  
12000 — 12999 Real-time  
20000 — 20999 Syntax  
30000 — System  



## EXDOS

(From [EXDOS manual](../../../manuals/exdos-man-en/exdos-a7errors.md))

9207	*** File not found
The specified file does not exist in the directory. In this context "file" can also mean a directory.

9190	*** No RAM disk
An attempt to access the RAM disk when there is no memory allocated to it. This is an Abort/Retry error.

9186	*** Not ready
The disk drive did not respond. Usually means that there is no disk in the drive. This is an Abort/Retry error.

9185	*** Verify error
Only occurs if the verify flag is on. Means that data read back from disk did not agree with what was written. This is an Abort/Retry error.

9184	*** Data error
Required sector could not be read from the disk, usually means that the disk has been damaged. This is an Abort/Retry error.


9183	*** Sector not found
Required sector could not be found on the disk. Usually means that the disk has been damaged. This is an Abort/Retry error.

9182	*** Write protected disk
Attempt to write to a disk which has the write protect tab on. This is an Abort/Retry error.

9181	*** Unformatted disk
Attempt to read or write to a disk which is completely unformatted. This is an Abort/Retry error.

9180 *** Not a DOS disk
The disk in the drive is formatted, but is not compatible with EXDOS. This is an Abort/Retry error.

9179 *** Wrong disk
When the disk in the drive has been changed when EXDOS is in the middle of a disk operation. This is an Abort/Retry error.

9178 *** Wrong disk for file
Very similar to 9179 but means that the disk has been changed since the file was opened. This is an Abort/Retry error.

9175 *** Invalid drive
Attempt to access a drive for which there is no unit handler.

9174 *** Invalid parameter
Parameter to an EXDOS CLI command did not make sense.

9173 *** Root directory full
Only the root directory can ever get full, sub-directories are extended as required.

9172 *** Disk full

9171 *** Duplicate filename
Results from a RENAME or MOVE function if it would create a duplicate filename in a directory.

9170 *** Directory not found
A sub-directory item specified in a pathname string does not exist.

9169 *** Invalid directory move
Results from an attempt to move a sub-directory into one of is own descendent sub-directories.

9168 *** Invalid pathname string
Results from any error in a pathname string such as an ambiguous item, a pathname which is too long or any spurious characters on the end of a pathname string.

9167 *** Read only file
An attempt to write to or delete a file which has its read-only attribute bit set.

9166 *** Invalid filename
An attempt to create an invalid filename. Can result from any invalid filename characters in an FCB or a RENAME which would put embedded spaces in the filename.

9165 *** Directory not empty
Attempt to remove a sub-directory which is not empty.

9164 *** Disk operation aborted
Returned if the user aborted as a result of an Abort/Retry or Ignore, retry or abort prompt.

9162 *** Invalid MAPDISK
Attempt to map a physical unit number which does not exist.

9161 *** Invalid file attributes
Attempt to access a file as a sub-directory or vice versa.

9159 *** Wrong number of parameters
Either too few parameters were given to a command, or there are characters left over after all parameters have been decoded.

9158 *** Invalid . or .. operation
An attempt to do something illegal with the special "." and ".." entries in a sub-directory, such as renaming or moving them.

9157 *** RAM disk already exists
Attempt to allocate segments to the RAM disk when it already has some. Segments must be deleted first (/D option on the RAMDISK command).

9156 *** Command too long
An EXDOS CLI command was longer than the maximum allowed length of 128 characters.

9153 *** System file exists
Attempt to create a file or directory when a system file of that name already exists.

9152 *** Directory exists
Attempt to create a file or directory when a directory of that name already exists.

9151 *** File exists
Attempt to create a sub-directory when a file of that name already exists.

9150 *** Incompatible disk
Attempt to access a valid DOS disk in a drive which is not capable of reading it. This can be a double sided disk in a single sided drive or an 80 track disk in a 40 track drive. This is an Abort/Retry error.

9149 *** File cannot be copied onto itself
Attempt to copy a file into a file of the same name in the same directory.

