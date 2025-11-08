# 1. Introduction

This section describes the environment which IS-DOS provides for transient programs on the Enterprise computer. It is intended as a guide for writing new programs to run under IS-DOS and also to assist in converting existing CP/M programs.

A transient program interfaces with the operating system primarily by making function calls. Under IS-DOS there are four distinct types of call which can be made. These are as follows:

 1. EXOS calls using "**RST 30h**".
 2. Direct calls to the EXDOS ROM (**FISH** or **DISKIO**).
 3. IS-DOS function calls using "**CALL 5**".
 4. CP/M compatible "BIOS" calls.

IS-DOS itself is an EXOS application program, and a transient program is run effectively as as subroutine of IS-DOS. This means that a transient program has full use of the EXOS function calls as described in the separate EXOS technical documentation. However if the transient program wants eventually to return control to IS-DOS, care must be taken with how EXOS is used.

The second type of function call (direct calls to **FISH** or **DISKIO** in the EXDOS ROM) is mainly intended for specialist programs such as the utilities provided with IS-DOS. The details of **FISH** and **DISKIO** function calls are described in the separate EXDOS technical documentation and so are not included here.

The bulk of the Programmer's Reference Section describes in some detail the function calls of the third type — IS-DOS function calls. These are designed to be compatible with CP/M 2.2 and MSX-DOS 1.0, with a few additional functions most of which are specific to the Enterprise/EXOS environment.

The fourth type of function call (CP/M compatible BIOS calls) is not described in detail, since it will normally only be used by converted CP/M programs. Certain points relating to the use of these calls are mentioned in section 2.4.

