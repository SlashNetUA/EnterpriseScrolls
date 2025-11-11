# Chapter 6: Formatting and Using a Disk

As we have mentioned previously, before a new disk can be used it must be formatted to suit the system in which it will be working. The FORMAT command should be used with care as formatting a disk containing data will irretrievably destroy that data) EXDOS always gives a warning message and asks for confirmation before formatting a disk.

EXDOS automatically formats the disk to the maximum capacity of the disk drive used (ie. **40** or **80 track** and **single** or **double sided**). It is also possible to format a disk for a'lesser drive (ie. **40 track** on an **80 track** drive and/or **single sided** on a **double sided** drive). Further information on use of these special options is given under the heading FORMAT in the command reference section of this guide.

To format a disk to the default settings, the procedure is as follows:

Insert a new disk into the required drive (see Figures 7 or 8 for disk insertion) and close the drive doors (if fitted).

## Diagram 7: Inserting a 3.5” disk

## Diagram 8: Inserting a 5.25” disk

Enter the EXDOS command interpreter (see previous chapter).

Type:

`FORMAT x:` **\[Enter\]**

where **x** is the drive containing the disk to be formatted. Valid drives are **A:** through **D:** depending on the number of drives fitted, with **E:** being reserved for RAMDISK (see command reference section). When the FORMAT command has been entered, the message:

```
Destroy data on drive x: (Y/N)?
```

If a **Y** (YES) response is given followed by an **\[Enter\]**, the disk is formatted. An **N** (NO) response will result in the operation being canceled.

**ALWAYS USE THE FORMAT COMMAND WITH CAUTION !**

The disk will take approximately three minutes to format, if it is a full capacity (80 track, double sided) drive. You will probably be able to hear the "stepping" operations of the drive, as the disk is formatted.

Once the disk is formatted, it is ready for use. Try using a DIRectory command. Type:

`DIR` **\[Enter\]**

and the following should appear:

```
Volume in drive x: has no name
Directory of x:\

*** File not found
```

The DIRectory command gives the contents of the current directory, but in this case no files exist as the disk is freshly formatted. More information is given on the use of directories and sub-directories later in this manual.

## SAVEing and LOADing files.

With the disk interface connected, the disk system becomes the "default" filing system. This means that BASIC and word processor commands such as LOAD and SAVE automatically use the disk system. As an example we will try saving a small BASIC program. To save and load BASIC programs we must be on the BASIC editor screen, not in the EXDOS command interpreter.

To enter BASIC from EXDOS we type:

`basic` **\[Enter\]**

First we will type in this small BASIC program:

```
100 program "DISKTEST.BAS"
110 for x=1 to 10
120 print x
130 next x
```

Now [SAVE](../is-basic-man-en/commands/man_cs-save.md) this program as if you were using a tape based system. If no file name is specified then the default file name given in line **100** will be used.

The suffix "**.BAS**" is a file name extension to show that this is a BASIC program. The extension need not be used but it does simplify the recognition of files in a directory. Similarly a "**.WP**" suffix might be used for word processor files. There is no need to stick to these conventions, you can invent your own suffixes to suit the files you are creating.

The rules for filenames are slightly different when using a disk system instead of tape. When specifying file names for tape operations, they can be up to **28 characters** long. When specifying filenames for disk operations, the main name can be up to **8 characters** long, with the optional extension up to **3 characters** long. Also certain characters have a special meaning to the disk system. This is explained in detail in the command reference section.

Although the extensions are not obligatory, they do become part of the file name and so MUST be specified when attempting to load a particular file.

If we now try our DIRectory command, from BASIC:

`:dir` **\[Enter\]**

we will get the volume and directory information as shown previously followed by:

```
DISKTEST.BAS 91 00-00-80 03:4a
91 bytes in 1 file xxxK free
```

The figures following the file name represent the length of the file in bytes and the "date/time stamp" showing when the file was created. This latter information requires the system time and date to have been set correctly on power up — more of that later.

The figure "**xxx**" showing the number of bytes free will vary depending on the capacity of the disks you are using.

To load the above program we type:

`load "DISKTEST.BAS"` **\[Enter\]**

just as if we were using a tape system. Try loading without specifying the file name extension and see what happens. Remember, we can only load BASIC programs from within BASIC, so try typing:

`load DISKTEST.BAS` **\[Enter\]**

from the EXDOS screen and see what happens. While in EXDOS, file names should not be enclosed in quotes.

You will have noticed (if you have more than one drive) that all disk operations so far have operated on drive **A:**, this is because drive **A:** is the "default" drive. To [SAVE](../is-basic-man-en/commands/man_cs-save.md) a file to drive **B:** we must specify:

`save "B:DISKTEST.BAS"`

and the full filename must be included after the specified drive. Similarly to [LOAD](../is-basic-man-en/commands/man_cs-load.md) a file from drive **B:** we type:

`load "B:DISKTEST.BAS"` **\[Enter\]**

While a DIRectory of **B:** would require the command:

`:dir B:`  **\[Enter\]**

to be entered from BASIC (`dir B:` from EXDOS).

It is also possible to change the default or "logged" drive. This is done by typing:

`:B:`  **\[Enter\]**  
or  
`B:`  **\[Enter\]**

depending on whether you are in BASIC or in EXDOS.

## Using EXDOS from within BASIC programs

It is not possible to use a colon to specify an EXDOS command from within a BASIC program. In order to pass a command to EXDOS, or any other system extension, we must use the [EXT](../is-basic-man-en/commands/man_cs-ext.md) function.

The [EXT](../is-basic-man-en/commands/man_cs-ext.md) function requires the commands and parameters to be passed to be included in a "string", no preceding colon is required. Let us try the following small program, which assumes that you have a disk containing files in drive **A:**.

```
100 program "EXT_TEST.BAS"
110 ext "dir a:"
```

Having typed in this program, [RUN](../is-basic-man-en/commands/man_cs-run.md) it and see what happens. You will find that a DIRectory of the disk in drive **A:** is displayed on the screen.

Try using some other EXDOS commands (not FORMAT!) from within a BASIC program to get used to the [EXT](../is-basic-man-en/commands/man_cs-ext.md) function. But note that when using BASIC versions **2.0** and **2.1** it is necessary to do a [GOTO](../is-basic-man-en/commands/man_cs-goto.md) following an [EXT](../is-basic-man-en/commands/man_cs-ext.md) command, so that BASIC is correctly re-initialised when returning from a system extension. For example, the program above could be re-written as:

```
100 program "EXT_TEST.BAS"
110 ext "dir a:"
120 goto 130
130 print "That was a directory of drive A:"
```

Refer to the reference section of this manual to see what all the EXDOS commands will do.

## Using the tape filing system

Although the disk is now the default filing system, this does not mean that files cannot be [SAVE](../is-basic-man-en/commands/man_cs-save.md)d and [LOAD](../is-basic-man-en/commands/man_cs-load.md)ed from tape. To load a program from tape we can type:

`LOAD "tape:"` **\[Enter\]**

and, similarly, to save a program on tape we would type:

`SAVE "tape:filename"` **\[Enter\]**

It is also possible to COPY from one filing system to the other. Refer to the command reference section for details. NOTE: Protected files cannot be copied.

## Disks and the word processor

SAVE and LOAD operations on word processor files behave in the same way as on the tape system.

It is possible to pass commands to EXDOS and to enter the command screen from the word processor. Let us try some examples. First we must enter word processor mode.

Type:

`:wp` **\[Enter\]**

from BASIC or use **Shift**+**Fkey 8** followed by **\[Enter\]**.

Type some text on the screen or load up a previously saved file. Remember to use "`tape:`" before the filename if loading from cassette.

In order to enter the EXDOS command screen from the word processor, we must first press **Fkey 8** (EXIT). When the message:

`Press ENTER to enter BASIC`

appears, DO NOT press  **\[Enter\]** but type:

`exdos` **\[Enter\]**

and the EXDOS command screen will appear. Commands can now be entered in the normal way. Try the DIRectory command, and you will see that the directory appears on the command screen. To return to the word processor screen, press the **Escape** key, and you will find that your text is intact.

It is also possible to execute an EXDOS command without entering the command screen. In this case, however, the results will appear IN the word processor text. Try pressing **Fkey 8** (EXIT) again, but, this time type:

`dir`  **\[Enter\]**

when the message appears. You will notice that the directory is now included within your text.

When using the word processor to create files for use by other programs, or to operate as batch files (see appendix E), you will find it most convenient to use the PRINT function of the word processor.

With your text on the word processor screen, press **Fkey 3** (PRINT) and the following prompt will appear:

`Press ENTER for parallel printer, or type device-name:`

When you see this prompt, give a filename and then press **\[Enter\]**. Your word processor text will be saved on disk, under the filename specified, in "ASCII" format. This format will allow the text to be used by other programs, or by the TYPE command (see the reference section).
