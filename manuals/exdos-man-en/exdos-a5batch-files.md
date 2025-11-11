# Appendix E: Batch and start-up-files

EXDOS provides simple handling of batch command files. These batch files are used to automatically issue a sequence of command instructions, and any command which is valid when using the EXDOS command interpreter can also be used in an EXDOS batch file.

One particularly useful application of batch files is to create a start-up file, which runs whenever a computer is turned on. This is the basis of the so-called "turn-key" systems.

EXDOS will recognize a file with the filename **EXDOS.INI** and will run this on power up. INI files contain a list of EXDOS commands and are produced on the [Word Processor](../../software/st-wp.md). This file must reside in the "root" directory.

A simple INI file can be produced as follows:

First press **Shift**+**Fkey 8** (TYPE) **\[Enter\]** to enter the Word Processor, now type in the following, ending each line **Enter**:

```
echo "This is a start up message."
date
time
dir
wp
```

Now press **Fkey 3** (PRINT), when the prompt message appears type:

`a:\exdos.ini` **\[Enter\]**

and the file will be saved in the root directory (specified by `\` ) on disk **A:**.

The batch file created above will cause the system to display the "[echo](../dos-commands/cmd-echo.md)" message on the EXDOS command screen, followed by prompts for [DATE](../dos-commands/cmd-date.md) and [TIME](../dos-commands/cmd-time.md), the [DIR](../dos-commands/cmd-dir.md)ectory is then displayed and the system then calls the Word Processor. EXDOS command files must always be PRINTed to disk, not SAVEd. A SAVEd file contains hidden control codes which will cause EXDOS to give an error message.

(Note that the word processor may not tell you about a disk error, if this occurs while it thinks it is sending the file to the printer).

## The START file

A **START** file is usually a file containing a BASIC or machine code program which can be auto RUN by pressing **Fkey 1** (START). This works in a similar way to the tape filing system and no other program should be resident in memory or this will [RUN](../is-basic-man-en/commands/man_cs-run.md) instead.

The [START](../is-basic-man-en/commands/man_cs-start.md) command must be given from the BASIC editor screen, not from EXDOS. A **START** file is produced by giving the program you wish to run the file name "START". There may be several **START** files on disk, but they must be in separate directories.

(This feature can only be used with EXOS version **2.1** and beyond. See [appendix D](exdos-a4ep64.md).)