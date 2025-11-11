# Chapter 4: What is a Disk Operating System?

The job of an operating system is to control the standard functions of a computer, and to provide a simple means for programs to work within the computer.

Each Enterprise contains EXOS — the operating system used by IS-BASIC and other Enterprise programs. In addition to controlling the computer, EXOS provides special routines for graphics and sound features, and also enables the use of cassette tapes for saving and loading programs or other data.

Each disk interface contains EXDOS — an extension of EXOS which fully integrates the use of floppy disks with normal computer operations. Since disks add a significant extra capability to the computer, the operating system has to be made more powerful to take advantage of this capability.

The principal job of the disk section of the operating system is to control and assist data storage and retrieval. To do this, data is split up into units known as "files".

Each program stored on disk, for example, is contained in a file, and is given a unique "filename". The program can therefore be loaded from disk by specifying the filename. This operation is identical to loading files from tape.

Files may also contain documents from a word processor, numbers from a spreadsheet, or the image of a graphics screen — any data can be stored in a file.

Most EXDOS operations are connected with the handling of files, and most occasions when you use EXDOS directly it will be in order to manipulate files.

It is the responsibility of EXDOS to organize files stored on disk. As mentioned in the previous chapter, the magnetic signals on the disk are separated into tracks and sectors. EXDOS uses these sectors to store data, but it is very unlikely that you will ever be concerned with the organization of the disk at this level.

When using the disk system, you will be concerned with the partitioning of the disk into directories, each one of which can contain a number of files. By this means you will be able to keep a large number of files on one disk, but you will be able to avoid confusion by keeping groups of files in separate directories — like placing real document files in separate drawers of a filing cabinet.

Most operations of the disk operating system will be unseen by you in your use of the Enterprise computer, but EXDOS also provides a number of extension commands. These can be used from BASIC, or through the use of a special "command interpreter" provided by EXDOS. The command interpreter is a simple way of giving a sequence of extension commands without disturbing your BASIC program or word processor document.

Full details of the facilities of EXDOS, and guidance to its use, are given later in the manual.
