# EXOS

**EXOS** is short for Enterprise eXpandable Operating System. An operating system is a program that attempts to enable the best and easiest possible use to be made of a computer and its facilities. It forms an interface between high-level programs (such as the BASIC language) and the computer.

The main facilities of a computer are its devices and peripherals. These are such things as the screen, the tape interface, a printer and so on. Thus the main part of an operating system handles the devices and peripherals: the input/output system. Other facilities handled by the operating system include the sharing of memory.

## INPUT/OUTPUT SYSTEM

The Enterprise microcomputer is extremely complex; to perform even simple functions like printing a string on the screen requires thousands of machine-level instructions, and to print the same string on a printer requires hundreds more instructions. The Enterprise operating system rationalizes the interface between a program and the microcomputer, making it as easy to print a string on a printer as it is to print a string on the screen. This is achieved by allowing programs to treat all input and output devices in an identical fashion. All input and output is performed through '**channels**' (a channel simply connects the program to a device). The channels are numbered from **0** to **254**. The operating system provides the following functions on channels:

|Code number|Function|
|:---------:|--------|
|0|System reset
|1|Open a channel (connect a device)
|2|Create and open a channel
|3|Close a channel (disconnect)
|4|Close and delete a channel
|5|Read a character from a channel
|6|Read a block
|7|Write a character to a channel
|8|Write a block
|9|Return the status of the channel
|10|Set and read the channel status
|11|Perform a special function
|16|Read, write or toggle a system variable
|17|Capture input from channel to channel
|18|Re-direct channel
|19|Set default device name
|20|Return system status
|21|Link device
|22|Read system boundary
|23|Set user boundary
|24|Allocate a segment
|25|Free a segment
|26|Scan extensions
|27|Allocate channel buffer
|28|Return error message
|29|Load module
|30|Load relocatable module
|31|Set time
|32|Read time
|33|Set date
|34|Read date

These functions are used by BASIC to provide input/output facilities. They are available for all languages to use, and thus provide a uniform method of communicating with devices. They are also available to the machine code programmer, making it very simple to write programs in machine code.

To call the operating system from a machine code program, a single instruction is required, followed by the code for the function. For example, to open a channel, the following code is needed:

|Machine code|Assembler code|
|:----------:|--------------|
|F7|RST 30H|
|01|DB 1|

The Enterprise operating system provides many more functions than those listed above. A full list of functions and the calling conventions can be found in the Enterprise Technical Manual.

## MEMORY USAGE

The operating system is based in Read Only Memory. This means that the program is stored in ROM but still requires RAM space to store its data. The Enterprise is capable of managing a vast amount of RAM and ROM storage.

This storage is manipulated by dividing it up into 'pages' (not to be confused with video pages); each page is **16K** bytes long, and there are **256** pages altogether, giving a maximum store capacity of **4M** bytes. The Z80 in the Enterprise can only use four of these pages at any one time (rather like reading a book, where you can only see and use two pages at once).
