# LOAD

`LOAD £chan:filename`  
`LOAD device-name`

Loads a file from the given channel, or, if no channel is specified, from channel **106** (cassette, or disks if attached). If **LOAD** is typed without parameters it defaults to the 'boot' file (on tape, this is the first file found).

`LOAD`  
`LOAD "My_Program"`  
`LOAD "NET-0:"`  

If the file contains a BASIC program then this replaces the current program in memory. If multiple BASIC programs have been saved as one file, these will replace all programs in memory and return to program 0.

The file can contain other data and program types (such as extensions or other applications programs) which will be handled automatically by the operating system.

See [OPEN](man_cs-open.md) for a definition of a **device-name** and a **filename**.

Clears variables. Only executed in immediate mode, but see [RUN](man_cs-run.md) which can be used in a program statement.
