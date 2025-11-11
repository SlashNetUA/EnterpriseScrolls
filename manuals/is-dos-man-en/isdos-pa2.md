# Appendix 2: Error Messages

For details of the error messages issued by EXDOS, see Appendix G of the EXDOS manual. The following additional messages are specific to IS-DOS:

## *** Invalid PATH string

An invalid specification for a drive and path was given as a parameter in a [PATH](../dos-commands/cmd-path.md) command.

## *** Unrecognised command

A transient command was given to IS-DOS, but no corresponding file (with suffix "**COM**" or "**BAT**") was found.

## *** Batch files nested too deeply

A batch file may contain instructions to execute other batch files, which in turn may contain similar instructions. Normally, this "nesting" of batch files can be continued to a maximum depth of **10**, though this figure may be reduced if large numbers of parameters are passed. An attempt to exceed the maximum produces the above error message.

## *** Program terminated

Normally, a press on the **Stop** key during execution of a transient program delivers the prompt `Terminate program (Y/N)?`. If **N** is pressed, execution is resumed; if **Y** is pressed, the program ends and the above message is printed. Then the standard DOS prompt (`A>`) is given.

## *** File for HELP not found

A [HELP](../dos-commands/cmd-help.md) command was entered, but the corresponding text file (containing a "**HLP**" suffix and residing in the **\HELP** sub-directory) was not found.
