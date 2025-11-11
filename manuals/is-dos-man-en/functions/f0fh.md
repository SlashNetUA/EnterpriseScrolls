# Function 0Fh: Open File

## Parameters

**DE** = Pointer to unopened FCB

## Results

**L**=**A** =
 - **00h**: if file is found
 - **FFh**: if file not found

## Description

The unopened FCB must contain a drive - which may be zero to indicate the default drive - and a filename and extension, which may be ambiguous. The current directory of the specified drive will be searched for a matching file, and if found it will be opened. Matching entries which are sub-directories or system files will be ignored, and if the filename is ambiguous then the first suitable matching entry will be opened.

The low byte of the extent number is not altered by this function, and a file will only be opened if it is big enough to contain the specified extent. Normally the transient program will set the extent number to zero before calling this function. The high byte of the extent number will be set to zero to ensure compatibility with CP/M.

The filename and extension in the FCB will be replaced by the actual name of the file opened from the directory entry. This will normally be the same as what was there before, but may be different if an ambiguous filename, or one containing lower case letters, was used.

The record count will be set to the number of **128-byte** records in the specified extent, which is calculated from the file size. The file size field itself, the volume-id and the 8 reserved bytes will also be set up. The current record and random record fields will not be altered by this function; it is the program's responsibility to initialize them before using the read or write functions.
