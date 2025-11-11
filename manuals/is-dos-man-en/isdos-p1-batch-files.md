# Using Batch Files

We have seen that when a transient command is given to IS-DOS, a disk file with the corresponding name, plus the extension "**COM**" or "**BAT**", is searched for. If a **COM** file is not found, but a file with a **BAT** extension is present, the latter will be executed as a batch file.

A batch file consists of a series of DOS commands which are implemented as though they were typed one after the other at the keyboard. The EXDOS manual explains how batch files are produced.

When the computer is first powered up, or following a cold reset, an EXDOS batch file with the name **EXDOS.INI** is executed if found. This can be used to set up the machine configuration for the whole session.

Every time IS-DOS is entered (eg from BASIC), a file named **AUTOEXEC.BAT** is searched for, and executed if found. **AUTOEXEC.BAT** is therefore likely to be executed several times in one session.

The IS-DOS system disk contains an **EXDOS.INI** file (which prompts the user to enter the current date and time). It does not contain an **AUTOEXEC.BAT** file. You may find it useful to create one yourself — for example, it could contain the `MODE 40` command, to set up the 40-column screen automatically upon loading of IS-DOS.

IS-DOS batch files may contain commands for executing **COM** programs. In addition (unlike EXDOS batch files) they may have parameters passed to them.

As a simple example of this, you could create a batch file called **FVID.BAT**, containing the following single command:

```
VAR 90 %1
```

Then you would execute the file by typing its name followed by the desired parameter, eg:

```
FVID ON
```

This is equivalent to typing `VAR 90 ON`, and selects IS-DOS's fast video driver (see the [VAR](../dos-commands/cmd-var.md) command in the Operator's Reference Section). `FVID ON` is more convenient, since you don't need to remember that **90** is the relevant [EXOS variable](../../programming/system-info/info_exos-variables.md) number. On execution of the batch file, the parameter is automatically substituted for **%1**. Typing `FVID` by itself would be equivalent to `VAR 90`. The current status of the fast video driver (**0**: ON; **255**: OFF) would then be displayed.

The number of parameters passed to a batch file can be anything up to **9**. Suppose you have a file named `MISC.BAT`, and you execute it by typing its name followed by-three parameters:

```
MISC 90 ON FRED
```

Wherever **%1** occurs in the batch file, the number `90` (the first parameter on the list) will be substituted. `ON` is substituted for **%2**, and `FRED` for **%3**.

For **%0**, the name of the batch file itself is substituted, including any drive and path specification given in the command line which executes the file.

If the character following the "**%**" is not a number (**0**–**9**), it is taken as a literal character — ie no special meaning is attached to it, and nothing will be substituted for it.

One IS-DOS batch file may contain instructions to execute other batch files — which in turn may contain similar instructions. Normally, this "nesting" of batch files can be continued to a maximum depth of **10**, though this figure may be reduced if large numbers of parameters are passed. When the execution of one file ends, the file which invoked it is automatically resumed.
