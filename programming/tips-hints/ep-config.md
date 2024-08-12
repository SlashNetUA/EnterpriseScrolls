# EP machine configuration

## EXOS compatible programs

[original post](https://enterpriseforever.com/programming/how-to-begin-assembly-on-enterprise/msg38698/#msg38698)

It is very bad idea write EXOS incompatible program!  
Unfortunatelly no focus is placed about the right EXOS compatible programming at the start :cry: The Enterprise have really good, expandable operating system. (At the release time it is better than the MS-DOS!) Then many different configuration can be exist. At the start years exist a 64 and 128K, English and German machines, later these combined with EXDOS card.  
And under the many years, many-many-many... RAM, ROM and other expansion created, Hard Disk system, and in current days SD Card systems.  
In the expandable EXOS system many things are at variable address! Fix programing like as C64 or ZX Spectrum are bad idea on Enterprise!  

With the bad programmed, EXOS incompatible programs (using fix address), found many-many problems under the years. For example running only on just English or just German machine, only with 128K, not running with memory expansion. Not running from floppy. Running from hard disk destroy Hard Disk extension RAM area and generate data loss, etc...  

Many bad programs fixed, and continously fixing these. And at about the last ten years we care about all new programs are EXOS compatible then no new problem created :-)  

From the practical side:  
The most important things:  
- don't use any memory what you not allocated from EXOS! EXOS 24 call the allocation.  
- check errors (after memory allocation, or file operations) and if error use regular exit routine for step back to EXOS  
- handle variable segment numbers, at general RAM only need store to paging table, with video segments also needed to calculate video address from the segment number  
- specify warm start routine (restart program or exit)  

All of these are included in the sample.asm! You need just write the main code! :-)  

If you can specify which memory paging, and which video mode needed for you then I can modify the sample for your requirements!  


If you will write game or demo you will use New Application Program type with header 05h.  
It is loaded from 0100h...  
Under the 0100h EXOS only use 0030h-005Bh area. Then 0000h-002Fh area can be used by the user programs, usualy for RST 00h-28h routines. 005Ch-00FFh also can be used, many programs use as stack under 0100h.  

Generaly demos/games don't use EXOS during the running, use it only for file I/O, and memory allocation. EXOS IRQ routine can be replaced (placing jump to 38h) but it is needed to restored before EXOS calls used (for example load next level in the game), or exit program.  
If you directly programing the HW then need to disable EXOS interrupts, or define your own IRQ routine and replace the EXOS IRQ.  

So, generaly don't need switch of OS, just don't use it under the main program.  


## CPU

## System

### EP64 or EP128?

IF IN(**176**)=**252** THEN **EP64 machine**.  
IF IN(**176**)<=**248** THEN **EP128 machine**.

Also see [VER$](../is-basic/man_fn-ver.md) and [VERNUM](../is-basic/man_fn-vernum.md) system variables.

## Localisation extentions

See [EXOS VAR 144](../exos-info/exos-variables/exos_var144.md)

## RAM

## ROM

## Storage devices

My suggestion for the loader:  
Check EXOS variable 3 [DEF_TYPE](../exos-info/exos-variables/exos_var3.md) with EXOS 16 function call.  
-If it is 0 then tape only configuration, disable loading music.  
-If not 0 then EXDOS used or ep28emu FILE device.  
Check EXOS variable 71 [DEF_UNIT](../exos-info/exos-variables/exos_var71.md) (=current drive number)  
-If not exist, then non EXDOS configuration, ep128emu FILE device used, enable loading music.  
-If it is 5, already running from RAMDISK, enable loading music.  
-If it is 6 or more then SD or hard disk used, enable loading music.  
-if it is 1 to 4 then floppy disk used then needed:  
1)check memory size with EXOS 20. It is enough for running the program plus enough RAMDISK size?  
2)if not then disable loading music  
3)if yes then execute these EXDOS command with EXOS 26 function call:  
RAMDISK n  
COPY demofile E:  
E:  
Then enable loading music.