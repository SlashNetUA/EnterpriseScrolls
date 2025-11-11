# Chapter 8: Command Reference Section

The command reference section uses the following notation to specify and describe the operation of commands:

**Words in upper case**

These are keywords and must be entered as shown in any mixture of upper or lower case.

**Items in lower case**

These are parameters which must be supplied to the command at this point in the command line.

**Items in square bracket ("\[" and "\]")**

These are optional items. The brackets themselves should not be included in the command line.

**Items separated by a vertical bar ("\|")**

This indicates that one but not both of the items is required. The vertical bar itself should not be included in the command line.

The following is a list of items which can appear on a command line:

**d:**

This indicates that a drive name is required (**A:**, **B:** etc.). If not given, then the default of the current logged-on drive is specified.

Valid filename designators are **A:**...**Z:**, although only drives **A:**, **B:**, **C:** and **D:** are supported by the standard disk interface hardware, with drive **E:** reserved for the standard [RAMDISK](../dos-commands/cmd-ramdisk.md).

**path**

This indicates that a directory path is required, each directory name being separated by a backslash "`\`". A backslash at the start of the path indicates that the path starts at the root directory, otherwise the path starts at the current directory.

Two consecutive dots "`..`" signify the immediate parent directory in the path. A single dot "`.`" signifies the current directory in the path, and therefore has no value in a path specification. In both cases backslashes must be used to indicate that the dots refer to a directory.

For compatibility with Enterprise keyboards which do not support the "`\`" character, a "`!`" character may be used in its place when specifying a path.

The syntax of directory names follows that for filenames, given below.

**filename**

This indicates that the name of a file is required. An ambiguous filename is one that contains "`*`" and "`?`" characters and may match more that one file on disk, whilst one that does not contain these is an unambiguous filename.

A filename has the following syntax:

**filespec.suf**

where filespec is a sequence of up to eight characters, and suf is a suffix of up to three characters. If the suffix is given, it must be separated from the filespec by a single dot "`.`". The following characters cannot be used in the filespec or suffix:

**Control codes** and **Space** (in range **00h**-**20h**)
`:` `;` `.` `,` `=` `+` `<` `>` `\` `|` `/` `"` `[` `]` `#` `£` `!`

Normal alpha characters are turned into upper case by EXDOS, and therefore lower and upper case characters have the same meaning.

Frequently a filename follows a path, in which case the two must be separated by a backslash.

**volname**

This indicates that a volume name should be given. A volume name is a sequence of up to eleven characters, which can include the characters not valid for filenames, with the exception of control codes and "`/`" (although leading spaces will be deleted).

**channel**

This indicates that an EXOS channel number is required. The channel is assumed to be open, and thus this option on commands is provided for use with an application program that has already opened the channel. If the channel is not open, then the commands which can take a channel number generally can also take a **device:filename** (see below) in which case a channel is opened at the start of the command and closed again at the end.

**device:filename**

This indicates that a string suitable for an EXOS open/create channel call is required: ie. an optional device and optional unit number and colon, followed by an optional filename, at least one of which must be given. A channel is opened to this device/filename as described above.

## General rules

The parameters of a command must be separated from the command itself by at least one space or tab character (these two characters generally being equivalent to the command interpreter). Where two filenames are required as parameters, they too must be separated by a space or tab. Options given after a filename (after a "`/`" character) need not be separated in this way.

Although not a command as such, the currently logged-on drive can be changed by giving the command:

`d:`

which cause drive **d:** to become the currently logged-on drive, even if it does not actually exist.

In the command examples, underlined text is an example response to a command, and the other text consists of the example commands, with comments that are not part of the command in parenthesis ("`(`" and "`)`").

## Commands

[ATDIR](../dos-commands/cmd-atdir.md)  
[ASSIGN](../dos-commands/cmd-assign.md)  
[ATTR](../dos-commands/cmd-attr.md)  
[BUFFERS](../dos-commands/cmd-buffers.md)  
[CD](../dos-commands/cmd-chdir.md)  
[CHDIR](../dos-commands/cmd-chdir.md)  
[CLS](../dos-commands/cmd-cls.md)  
[COPY](../dos-commands/cmd-copy.md)  
[DATE](../dos-commands/cmd-date.md)  
[DEL](../dos-commands/cmd-del.md)  
[DIR](../dos-commands/cmd-dir.md)  
[ECHO](../dos-commands/cmd-echo.md)  
[ERA](../dos-commands/cmd-del.md)  
[ERASE](../dos-commands/cmd-del.md)  
[EXDOS](../dos-commands/cmd-exdos.md)  
[EXIT](../dos-commands/cmd-exit.md)  
[FORMAT](../dos-commands/cmd-format.md)  
[ISDOS](../dos-commands/cmd-isdos.md)  
[LOAD](../dos-commands/cmd-load.md)  
[MAPDISK](../dos-commands/cmd-mapdisk.md)
[MD](../dos-commands/cmd-mkdir.md)  
[MKDIR](../dos-commands/cmd-mkdir.md)  
[MOVE](../dos-commands/cmd-move.md)  
[MVDIR](../dos-commands/cmd-mvdir.md)  
[PAUSE](../dos-commands/cmd-pause.md)  
[RAMDISK](../dos-commands/cmd-ramdisk.md)
[RD](../dos-commands/cmd-rmdir.md)  
[REM](../dos-commands/cmd-rem.md)  
[REN](../dos-commands/cmd-rename.md)  
[RENAME](../dos-commands/cmd-rename.md)  
[RMDIR](../dos-commands/cmd-rmdir.md)  
[RNDIR](../dos-commands/cmd-rndir.md)  
[TIME](../dos-commands/cmd-time.md)  
[TYPE](../dos-commands/cmd-type.md)  
[VAR](../dos-commands/cmd-var.md)  
[VER](../dos-commands/cmd-ver.md)  
[VOL](../dos-commands/cmd-vol.md)  