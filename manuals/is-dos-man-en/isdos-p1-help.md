# Help Files

The [HELP](../dos-commands/cmd-help.md) command displays information about the system. If you type the word on its own, it lists the system extensions that are present. Alternatively, you may obtain information on some facility in particular, by typing (eg) `HELP WP` or `HELP EXDOS`.

Under IS-DOS, the [HELP](../dos-commands/cmd-help.md) command may also be used to display text files that you have created yourself. Suppose you have a disk in drive **B**, containing these programs:

```
1ST-PROG.COM
TEST.COM
PATZER.COM
```

To go with each of these, you can create a text file giving information on the program to the user. First, you must make a sub-directory called `HELP`, in which the three files will be placed. The `HELP` sub-directory must be contained in the root directory of the disk. So type:

`MKDIR B:\HELP` **\<Enter\>**

Now go into the Word Processor, and type the text for one of your "help" files. For example:

```
Patzer is a program that plays five-minute chess. It has the unique feature of allowing the user to type his moves in English descriptive notation.
```

Then press **Function key 3** ("PRINT"), and enter the path and filename for the help file:

`B:\HELP\PATZER.HLP` **\<Enter\>**

You can now similarly create the text files `1ST-PROG.HLP` and `TEST.HLP`. Help files are created in just the same way as batch files. Their names must always be followed by the "**HLP**" extension.

Now type:

`HELP B:` **\<Enter\>**

This specifies the drive in which help files will subsequently be searched for. Afterwards, you can type (eg)

`HELP PATZER` **\<Enter\>**

— to see the text of the corresponding file printed on the screen.

The IS-DOS disk contains help files relating to all standard IS-DOS commands. So if this disk is in drive **A**, and you now want information on (say) the [MODE](../dos-commands/cmd-mode.md) command, type:

`HELP A:` **\<Enter\>**  
`HELP MODE` **\<Enter\>**

See also the explanation of the [HELP](../dos-commands/cmd-help.md) command in the Operator's Reference Section.
