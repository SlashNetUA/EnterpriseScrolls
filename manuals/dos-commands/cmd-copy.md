# COPY

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions

## Format

`COPY source [/A] [/H] [dest [/A] [/T] [/V]]`

## Purpose

Copies  data from a file,  device or channel to another file, device or channel.

## Use

**Source** consists of `[d:] [path] [filename]`  (where at  least  one of the three options must be  given)  or **device/filename** or **channel**. If the first form is given, then the specified files are copied,  which may include hidden  files if the **/H** option is given.  If a  **channel number**  is given then data is copied from the  **channel**. If a **device/filename** is given, then a channel is opened to  the device,  data is read from the channel and  the channel  is  closed at the end of  the  operation.  The drive  and path default to the current drive and  path, and the filename defaults to `*.*`.

Similarly **dest** can be  a **file** on disk,  a  **channel** or  a  **device/filename**,  and is similar to  the  **source** except  that  data  is written to a channel  or  device instead of being read from it and if a  **device/filename** is specified then an EXOS "create" call is made instead of an "open".  If a filename is not given for **dest**, and **source**  is a device:filename or channel,  then an error is returned.  If,  however,  the source is a  filename, then the dest filename defaults to the file-name of the file that matched the source filename.

The  **/A**  option  controls whether the  data  being copied  is  to  be  treated  as  ASCII  or  binary,  as described below.

On  the **source**,  **/A** means that all data up to  and including  the first Ctrl-Z or until the end of file will  be  read,  although  the Ctrl-Z  will  not  be copied.  If **/A** is not given, then all data will be read from  the source until the end of file  is  read.  Note that  many  EXOS devices will never return end of  file (such  as  the  **SERIAL:**  device)  and  so  should  only generally be used with the **/A** option.

On the **dest**,  **/A** means that all data up to but not including the first Ctrl-Z will be written, and then a  single  Ctrl-Z  will be  appended  to  the  data written.  If **/A** is not given, then all the data will be written and nothing will be added.

If  an ambiguous filename is given on the  source, then  the  filenames  will be  displayed  as  they  are copied.  If  an error occurs during the copy or if  the **Stop**  key  is  pressed,  then all necessary  files  and channels will be closed and the error returned.

When copying from more than one file to a channel, then  all the data from the files will be sent  to  the channel  sequentially,  with  a Ctrl-Z between  each file  if appropriate.  When copying from more than  one file to a device/filename,  then a new channel will  be created  and closed to the device for each file copied. Thus, for example, copying multiple files to **TAPE:** will work.

When  copying  from  one  file  to  another,   the attributes are not affected,  and the destination  file is given the same attributes as the old. Similarly, the destination file is given the same date and time values as the source,  although if the **/T** option is given then the  new  file  is  given the  current  date  and  time instead.

If  the **/V** option is given, then the data will  be verified  after  writing,  although the copy  operation will then be slower.

The  speed  of operation of the copy depends  upon the  type of data transfer and the amount of  available memory.  When  a  disk file is  the  source,  the  copy command block reads as much data as it can into as much memory as it can allocate (up to a limit of **64K**) before writing  it out to the destination.  If the source is a channel  or a device/filename,  then the data is  block read  **64**  bytes  at a time into up to  **64K**  of  memory, unless  a **/A** is given on the source or the  destination is also a channel or device/filename, in which case the copy takes place by reading one byte at a time from the source and writing one byte a time to the destination.

If the destination is a disk file, then it will be deleted  if any error occurs (including the **Stop**  key being pressed) during the copy operation.  Thus it will not normally be possible to have partially copied files on disk.

It is, however, possible to copy a file to disk by copying  through the EXDOS EXOS disk  device.  In  this case,  the  channel  will  be closed but the  file  not deleted  if an error occurs.  Thus if a binary copy  is done  from the serial device to the disk  device,  then pressing  the **Stop** key will result in the  disk  file containing all the data read from the serial so far.

## Examples

`COPY FRED B:`  
`COPY A:\BOOT\EXDOS.INI B:\`  
`COPY A:\BOOT B:\BOOT`  
`COPY E:BOOT TAPE:`  
`COPY #3 FRED`  
`COPY B:`  
`COPY TAPE: DISK-2:TAPEFILE`  
