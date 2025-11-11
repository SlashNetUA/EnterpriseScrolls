# Chapter 7: Managing Files on Disk

The primary purpose of a disk system is to save and load data. Because of the speed and random access facility of disk systems, it is possible to save and load data automatically under control of a program without causing significant interruption to the user of the program.

The result of all this is that disk drives attached to computers are used very heavily, and the disks soon fill up with files. It is a maxim that the capacity of a disk, like the RAM in a computer, is never sufficient. Files will fill whatever space is available.

To maintain control and usability of all these files requires considerable organisation. The operating system handles most of this automatically, but there are times when only the user of the computer knows what is wanted.

## Disk organisation

The first stage in managing files is to label the disks. All fresh disks come with blank label, and so the disks can be marked with a suitable description of their contents. Different disks can be kept for different purposes.

The equivalent operation in EXDOS is to give the disk a "volume" name. From the EXDOS command interpreter, with drive **A:** as the default, and your testing disk in the drive, type:

`vol Test Disk`  **\[Enter\]**

Next type:

`dir`  **\[Enter\]**

At the head of the directory listing, there will now be the line:

```
Volume in drive A: is Test Disk
```

and the disk now has an encoded "label". The volume name can be up to eleven characters long, and unlike filenames can include spaces.

However, one disk can easily contain more than fifty files, and the number could in theory be more than five hundred! One label for the whole disk is hardly sufficient when the disk contains a large number of files.

To overcome this problem, the disk can be partitioned off into separate directories. These disk areas are called directories because one finds out about a file by looking up its details in a directory, just as one might look up a telephone number in a suitable directory for the area.

EXDOS organises its directories in a "hierarchical" fashion. This means that a directory may itself be found within a directory, and may itself contain other sub-directories.

If one considers a postal address, it is possible to see that this works in an identical hierarchical fashion. For example, consider the address:

**Enterprise Computers Ltd**  
**31 Hoxton Street**  
**London N1**  
**England**  

The hierarchy of the address can be seen from the bottom upwards, and the final location is found by deductive means.

First the location of **Enterprise Computers Ltd** is seen to be in **England**. This narrows the area of search. The next step is to concentrate on **London N1**, and finally to **31 Hoxton Street**. This process could be carried on further, to specify a particular individual at Enterprise Computers.

Now try this process on your computer. In EXDOS command mode, as above, type:

`md England` **\[Enter\]**

[MD](../dos-commands/cmd-mkdir.md) is the shorter version of the command [MKDIR](../dos-commands/cmd-mkdir.md), which "makes" a directory.

Now type:

`md England\London.N1` **\[Enter\]**

Notice that the names of directories follow the same rules as for files, and we have given the "**.N1**" as the filename suffix. Notice also the use of the backslash character "`\`" — this is the dividing line between levels of the directory, just as a complete new line is used when specifying a postal address.

Now type:

`md England\London.N1\31Hoxton` **\[Enter\]**

Remember that the Enterprise screen editor can be used in these examples, to avoid having to re-type the line for each command.

Using the screen editor again, enter the line:

`cd England\London.N1\31Hoxton` **\[Enter\]**

[CD](../dos-commands/cmd-chdir.md) is the shorter version of the command [CHDIR](../dos-commands/cmd-chdir.md), which "changes" the current directory.

Now type:

`dir` **\[Enter\]**

EXDOS will respond with:

```
Volume in drive A: is Test Disk
Directory of A:\ENGLAND\LONDON.N1\31HOXTON

*** File not found
```

Now type:

`wp` **\[Enter\]**

to enter the Word Processor, and then create a document. For example, type:

```
The home of the Enterprise computer
```

Press **Fkey 2** (SAVE) and, in response to the prompt for a filename, type:

`ECL` **\[Enter\]**

You have now created a file with the "address":

`\ENGLAND\LONDON.N1\31HOXTON\ECL`

In the jargon of disk systems, this is known as a filename path. Notice that the first character in the path is a backslash — this signifies that the path starts from the original directory of the disk, known as the "root" directory. If this backslash is not given, the path starts from the current directory.

For each disk on line to EXDOS there is a current directory. This is the default directory, in the same way that there is a default disk drive, so if no disk drive or directory path is specified in an EXDOS command, it uses the current directory on the default drive. Whenever a new disk is used, the current directory is set to the root directory of that disk.

## Housekeeping

Assuming that the files on disk are well organised, it is still necessary to perform "housekeeping" operations, such as copying, deleting, renaming, and moving files.

The EXDOS command which you will possibly use most often, after [DIR](../dos-commands/cmd-dir.md), is [COPY](../dos-commands/cmd-copy.md). Disks are not 100% reliable, even though a single disk will probably perform millions of operations before it fails, and an indispensible process when using disks is to make back-up copies of files in case the originals are lost. [COPY](../dos-commands/cmd-copy.md) is also used when duplicating files onto different disks, and so for transfer of data to other computers.

A [COPY](../dos-commands/cmd-copy.md) command can be used to transfer a single file at a time. For example, to make a back-up copy of the file "ECL" created earlier, one could type:

`copy ecl ecl.bak` **\[Enter\]**

This copies the contents of "ECL" into a file named "ECL.BAK". File "ECL" would remain unchanged.

It is also possible to specify several files with a single command. For example:

`copy a:*.bas b:`

would copy all files in the current directory of **A:** which have the suffix "**.BAS**" (perhaps BASIC programs) into the current directory of **B:**. Since no filenames were specified for **B:**, the copies created would have the same filenames.

The "`*`" character is known as a "wildcard", and it signifies a match with any number of characters in the filename or filename suffix (which are considered separately when making the match).

Most commands can be used with such wildcard operations, giving an "ambiguous filename". For example, the command:

`dir` **\[Enter\]**

is really the command:

`dir *.*` **\[Enter\]**

since "`*.*`" is taken as the default parameter to the command [DIR](../dos-commands/cmd-dir.md).

One could type:

`dir *.bas` **\[Enter\]**

for a directory listing of all files in the current directory which have the suffix "**.BAS**".

The other wildcard character is "`?`", which is used as an ambiguous specification for one character of a filename. For example:

`dir test.ba?` **\[Enter\]**

might produce a directory listing containing the files "TEST.BAS" and "TEST.BAT".

For a detailed description of the disk housekeeping commands, refer to the next chapter — [the command reference section](exdos-8command-reference.md).

