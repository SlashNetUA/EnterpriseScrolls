# Appendix 1: Summary of Commands

The following is a list of all the commands available and a summary of their syntax and purpose.

----

`ASSIGN [d: [d:]]`

Sets up a logical to physical translation for two drive names. [(see more)](../dos-commands/cmd-assign.md)

----

`ATDIR [d:] [path] [/H] [[-]|[+]H]`

Changes the attributes of directories to make them hidden/not hidden. [(see more)](../dos-commands/cmd-atdir.md)

----

`ATTR [d:] [path] [filename] [/H] [[-]|[+]H] [[-]|[+]R]`

Changes the attributes of files to make them hidden/not hidden and read only/not read only. [(see more)](../dos-commands/cmd-attr.md)

----

`BACKUP [source] [dest] [/D] [/M] [/F] [/X] [/T] [/V]` (transient)

Makes a backup copy of a disk or files. [(see more)](../dos-commands/cmd-backup.md)

----

`BUFFERS [number]`

Displays or changes the number of disk buffers in the system. [(see more)](../dos-commands/cmd-buffers.md)

----

`CD [d:] [path]`  
`CHDIR [d:] [path]`

Displays or changes the current directory. [(see more)](../dos-commands/cmd-chdir.md)

----

`CHKDSK [d:] [/F]` (transient)

Checks the integrity of the disk. [(see more)](../dos-commands/cmd-chkdsk.md)

----

`CLS`

Clears the screen. [(see more)](../dos-commands/cmd-cls.md)

----

`COPY source [/A] [/H] [dest [/A] [/T]] [/V]`

Copies data from a file or device to another file or device. [(see more)](../dos-commands/cmd-copy.md)

----

`DATE [date]`

Displays or sets the current date. [(see more)](../dos-commands/cmd-date.md)

----

`DEL [d:] [path] [filename] [/H]`

Deletes all files which match the path/filename. [(see more)](../dos-commands/cmd-del.md)

----

`DIR [d:] [path] [filename] [/H] [/W]`

Displays the names of files on disk. [(see more)](../dos-commands/cmd-dir.md)

----

`DISKCOPY [d: [d:]] [/X]` (transient)

Copies one disk to another. [(see more)](../dos-commands/cmd-diskcopy.md)

----

`ECHO [text]`

Prints text (comments, instructions etc) in a batch file. [(see more)](../dos-commands/cmd-echo.md)

----

`ERA [d:] [path] [filename] [/H]`  
`ERASE [d:] [path] [filename] [/H]`  

Deletes all files which match the path/filename. [(see more)](../dos-commands/cmd-del.md)

----

`EXDOS [device:filename | channel]`

Initializes the EXDOS system and runs simple batch files. [(see more)](../dos-commands/cmd-exdos.md)

----

`FORMAT [d:] [volname] [/1] [/H] [/8]`

Formats a disk. [(see more)](../dos-commands/cmd-format.md)

----

`HELP d: | <name>`

Provides help text for a command. [(see more)](../dos-commands/cmd-help.md)

----

`ISDOS [d:] [/command]`

Boots IS-DOS from disk. [(see more)](../dos-commands/cmd-isdos.md)

----

`LOAD device:filLename | channel`

Loads an EXOS module via EXOS. [(see more)](../dos-commands/cmd-load.md)

----

`MAPDISK d: d:`

Allows more than one disk to be used with one drive. [(see more)](../dos-commands/cmd-mapdisk.md)

----

`MD [d:] path`  
`MKDIR [d:] path`

Creates a new sub-directory. [(see more)](../dos-commands/cmd-mkdir.md)

----

`MODE [[80] | [40] | [logical-device:=EXOS-device]]`

Sets the screen mode or assigns an EXOS device to an IS-DOS logical device. [(see more)](../dos-commands/cmd-mode.md)

----

`MOVE [d:] [path] [filename] [/H] [d:] [path]`

Moves files from one sub-directory to another on a disk. [(see more)](../dos-commands/cmd-move.md)

----

`MVDIR [d:] [path] [/H] [d:] [path]`

Moves sub-directories from one directory to another on a disk. [(see more)](../dos-commands/cmd-mvdir.md)

----

`PATH [item [;item]... ]`

Displays or sets the transient command search path. [(see more)](../dos-commands/cmd-path.md)

----

`PAUSE [text]`

Suspends execution of a batch file until a key is pressed. [(see more)](../dos-commands/cmd-pause.md)

----

`PRINTER [ON | OFF]`

Switches the printer on or off. [(see more)](../dos-commands/cmd-printer.md)

----

`RAMDISK [number] [/D]`

Creates or destroys the RAM disk. [(see more)](../dos-commands/cmd-ramdisk.md)

----

`RD [d:] path [/H]`

Removes one or more sub-directories. [(see more)](../dos-commands/cmd-rmdir.md)

----

`REM [characters]`

Allows comments to be put in batch files. [(see more)](../dos-commands/cmd-rem.md)

----

`REN [d:] [path] [filename] [/H] [d:] filename`  
`RENAME [d:] [path] [filename] [/H] [d:] filename`  

Renames one or more files. [(see more)](../dos-commands/cmd-rename.md)

----

`RMDIR [d:] path [/H]`

Removes one or more sub-directories. [(see more)](../dos-commands/cmd-rmdir.md)

----

`RNDIR [d:] path [/H] [d:] filename`

Renames one or more sub-directories. [(see more)](../dos-commands/cmd-rndir.md)

----

`SAVE [number] [K | P] [d:] [path] filename`

Saves part of the TPA. [(see more)](../dos-commands/cmd-save.md)

----

`TIME [time]`

Displays or sets the current time. [(see more)](../dos-commands/cmd-time.md)

----

`TYPE [[d:] [path] filename [/H]] | [channel] | [device]`

Displays data from a file or device. [(see more)](../dos-commands/cmd-type.md)

----

`UNDEL [d:] [path] [filename]` (transient)

Undeletes previously deleted files. [(see more)](../dos-commands/cmd-undel.md)

----

`VAR number [[number] | [ON] | [OFF]]`

Displays or sets the value of an IS-DOS variable. [(see more)](../dos-commands/cmd-var.md)

----

`VER`

Prints the IS-DOS version number. [(see more)](../dos-commands/cmd-ver.md)

----

`VOL [d:] [filename]`

Displays or changes the volume name on a disk. [(see more)](../dos-commands/cmd-vol.md)

----

`XDIR [d:] [path] [filename] [/H]` (transient)

Displays the names of all the files in a directory tree. [(see more)](../dos-commands/cmd-xdir.md)
