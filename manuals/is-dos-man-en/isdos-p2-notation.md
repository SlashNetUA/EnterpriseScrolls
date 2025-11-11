# Notation

The following notation is used in the detailed description of commands:

**Words in upper case**

These are keywords and must be entered as shown, in any mixture of upper or lower case.

**Items in lower case**

These are parameters which must be supplied to the command at this point in the command line.

**Items in square brackets (`[` and `]`)**

These are optional items. The brackets themselves should not be included in the command line.

**Items separated by a vertical bar (`|`)**

This indicates that one, and not more than one, of the items must be given. The vertical bar itself should not be included in the command line.

----

The following is a list of items which can appear on a command line:

`d:`

This indicates that a drive name is required (**A:**, **B:** etc). If no drive is specified, the default of the current logged-on drive is assumed.

Valid filename designators are **A:**....**Z:**, although only drives **A:**, **B:**, **C:** and **D:** would be supported by the standard disk interface hardware. Drive **E:** is the standard RAM disk.

`path`

This indicates that a directory path is required, each directory name being separated from the next by a backslash `\`. A backslash at the start of the path indicates that the path starts at the root directory, otherwise it starts at the current directory.

Two consecutive dots `..` signify the immediate parent directory in the path. A single dot `.` signifies the current directory in the path, and therefore has no value in a path specification. In both cases backslashes must be used to indicate that the dots refer to a directory.

For compatibility with keyboard or character set configurations which do mot support the `\` character, a single inverted comma `'` or `!` may be used in its place when specifying a path.

The syntax of directory names follows that far filenames given below.

`filename`

This indicates that the name of a file is required. An ambiguous filename is one that contains `*` or `?` characters and may match more than one file on disk, whilst one that does not contain these is an unambiguous filename.

A filename has the following syntax:

`filespec.suf`

— where "**filespec**" is a sequence of up to eight characters, and "**suf**" is an optional suffix of up to three characters. If the suffix is given, it must be separated from the filespec by a single dot `.`.

The following characters cannot be used in the filespec or suffixs:

**Control codes**, **Space** (in range **00h**–**20h**) and `:` `;` `.` `,` `=` `+` `\` `<` `>` `|` `/` `'` `"` `[` `]` `#` `£` `!` `*` `?`

Normal alpha characters in filenames are turned into upper case by IS-DOS, and therefore lower and upper case characters have the same meaning.

Frequently a filename follows a path, in which case the two must be separated by a backslash.

`volname`

This indicates that a volume name should be given. A volume name is a sequence of up to eleven characters, which can include the characters not valid for filenames, with the exception of control codes and `/` (although leading spaces will be deleted).

`device`

A named input/output port, such as **LPT:**.
