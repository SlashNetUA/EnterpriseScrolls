# FKEY

`SET £chan:FKEY key-number string`

Sets the function key to produce the specified string each time it is pressed (a null string will cause an exception). The default channel is **105**.

The function keys are numbered **1**-**16**. Numbers **1**-**8** are the unshifted function keys; numbers **9**-**16** are the shifted equivalents of keys **1**-**8**.

The function keys are set up with default strings by the system, and re-definition of the keys will remove the default settings. To return all function keys to their default settings, use [CLEAR FKEYS](commands/man_cs-clear.md).

To create automatic 'Enter', add `&CHR$(13)` in the end.
