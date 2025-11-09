# Starting IS-DOS

Your system should be set up as described in the EXDOS manual. We will assume you have just powered up the computer or performed a "cold reset" (two quick presses on the **Reset** button). Press a key to enter BASIC. Insert the IS-DOS disk into drive **A**. Then, from the BASIC screen, type:

`:ISDOS` **\<Enter\>**

IS-DOS will now load. The status line at the top of the screen will display "**IS-DOS**", and you will be given the prompt:

`A>`

Any of the [IS-DOS commands](isdos-p2-commands.md), as listed in the Operator's Reference Section of this manual, may now be used.

Once in IS-DOS, the screen will default to **80**-column mode. This will be difficult to read if you are using a TV receiver. To obtain a **40**-column screen, type:

`MODE 40` **\<Enter\>**

Now try typing:

`DIR` **\<Enter\>**

to get the directory of the disk contents.

You will note that a number of files are present, including:

```
IS-DOS.SYS
BACKUP.COM
CHKDSK.COM
DISKCOPY.COM
UNDEL.COM
XDIR.COM
```

The first of these, **ISDOS.SYS**, is the system file containing the IS-DOS operating system; this is the file that had to be loaded for IS-DOS to operate. The files with the suffix "**COM**" are command files containing utility programs.  We shall now briefly describe their use.

There are three kinds of command which IS-DOS recognizes: internal, external and transient.

To execute internal commands, IS-DOS does not need to load any additional program data from the system disk (or any other disk). The command [ATTR](commands/cmd-attr.md) is one example; you could remove the system disk from the drive, insert a different one, then type the following (which will convert all files on the disk into "read only" files):

`ATTR a: R` **\<Enter\>**

External commands are those which are passed, for implementation, to EXOS system extensions such as EXDOS. The commands described in the EXDOS manual come into this category. Any of them can be entered on the IS-DOS screen. Again IS-DOS has no need to load further program data.

A transient command, however, is treated as an instruction to load and execute a program contained in a disk file. On receiving the command, IS-DOS will search for a file with a name consisting of the command word plus the extension "**COM**" or "**BAT**". The file is loaded and executed if found.

The [Programmer's Reference Section](isdos-p3.md) explains to the machine code programmer how to configure his own programs as transient command files. The utilities supplied on the system disk, which we have listed, are also examples of transient command programs, and are labeled as such in the [Operator's Reference Section](isdos-p2.md).

Your first use of these utilities should be to make a backup copy of the system disk itself. Replace this disk in drive **A** (if you have removed it). If you have a multi-drive system, insert a new disk (or one containing no files that you want to preserve) into drive **B**. Then type:

`BACKUP a: b:/F` **\<Enter\>**

This will execute the **BACKUP.COM** program. Notice that the command is the same as the file name — without the suffix, but followed by an appropriate set of parameters. On receiving the command, IS-DOS searches for the file in the current directory of the logged-on drive. (It is possible to make it search other directories too; for this, see the [PATH](commands/cmd-path.md) command in the Operator's Reference Section).

If you are using a single-drive system, the computer will prompt you each time you need to change disks.

Note that if you wish to back up onto an Apricot disk, you should first format the disk using an Apricot.

----

You can exit from IS-DOS by typing (for example) `BASIC` **\<Enter\>**, or `WP` **\<Enter\>**. To return to IS-DOS later, you will have to reload the system from disk as before. You may load it from a drive other than the default drive, by specifying (eg)

`:ISDOS b:` **\<Enter\>**

If you type the command from the EXDOS screen, the initial colon should be omitted. For full information on the options when loading IS-DOS, see the description of the ISDOS command in the EXDOS manual.

----

⚠ Увага: для локалізованих комп'ютерів які не мають деяких спеціальних символів, можна використовувати їх аналоги:

|   UK   |            BRD            | Значення                                                                                   |
|:------:|:-------------------------:| ------------------------------------------------------------------------------------------ |
| **\\** | **!** або **'** або **ö** | Розділювач шляху: `A:\HELP\TYPE.HLP` ➡ `A:!HELP!TYPE.HLP` або `A:'HELP'TYPE.HLP`           |
| **~**  |           **β**           | Символ що використовується для файлів/тек із довгою назвою `LONGNA~1.TXT` ➡ `LONGNAβ1.TXT` |
| **\|** |          **Ö**           | (потребує перевірки)                                                                       |
 