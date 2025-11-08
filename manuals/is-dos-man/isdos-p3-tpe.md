# 2. Transient Program Environment

## 2.1. Entry from IS-DOS

A transient program will be loaded at address **0100h** and CALLed by IS-DOS with the stack pointer set to a small stack within IS-DOS. This stack is sufficient for making IS-DOS or EXOS calls, and for allowing EXOS interrupts. If more stack is required (as it normally will be) then the transient program must set up its own stack in the **TPA** (Transient Program Area).

The contents of the Z-80 registers when a transient program is entered are undefined. The first **254 bytes** of RAM will have been set up with various parameters and code as described in section **2.3**.

Interrupts are enabled when a transient program is entered and should generally be left enabled. IS-DOS function calls will generally re-enable interrupts if the transient program has disabled them.

## 2.2 Return to IS-DOS

A transient program can terminate itself in any of the following four ways:

 1. Returning, with the original stack pointer.
 2. Jump to location **0000h**.
 3. IS-DOS function call **00h**.
 4. IS-DOS function call **80h**.

The first three of these methods are identical as far as IS-DOS is concerned, and are compatible with CP/M and MSX-DOS. The fourth method (function call **80h**) is an addition which allows the program to return an error code to IS-DOS. The first three methods always return error code zero.

A transient program can also be terminated by the user typing '**Ctrl-C**' at the console (depending on the type of I/O being done), or by the user selecting "Abort" as the response to an "Abort/Retry/Ignore" message during a disk operation. In both of these cases an error code will be returned to IS-DOS.

A transient program can define an "abort routine". This will be called when the program is terminated by **Ctrl-C**, by an abort after a disk error or by a function call **80h**. The method of defining this routine, and its uses, are explained in section 4.44.

## 2.3 Page Zero Usage

On entry, various parameter areas are set up for the transient program in the first **256** bytes of RAM. The layout of this area is as below and is compatible with CP/M, apart from the area reserved for EXOS entry code.

```
      +------+------+------+------+------+------+------+------+
0000h |    Reboot entry    |  Reserved   |   IS-DOS entry     |
      +------+------+------+------+------+------+------+------+
0008h |                                                       |
0010h |                                                       |
0018h |        Unused.   Available for transient programs     |
0020h |                                                       |
0028h |                                                       |
      +------+------+------+------+------+------+------+------+
0030h |   EXOS system call entry code .....................   |
      +------+------+------+------+------+------+------+------+
0038h |  Interrupt vector  |  Soft ISR address  |             |
      +------+------+------+------+------+------+             +
0040h |                                                       |
      +                                                       +
0048h |      Reserved for EXOS entry and return code          |
      +                                                       +
0050h |                                                       |
      +                           +------+------+------+------+
0058h |                           |                           |
      +------+------+------+------+                           +
0060h |         Unopened CP/M FCB for first filename          |
      +                           +------+------+------+------+
0068h |                           |                           |
      +------+------+------+------+                           +
0070h |         Unopened CP/M FCB for second filename         |
      +                           +------+------+------+------+
0078h |                           |    Space for end of FCB   |
      +------+------+------+------+------+------+------+------+
0080h |                                                       |
  .   .                                                       .
  .   .   Default Disk transfer address.  Initialised to      .
  .   .   original command line parameters.                   .
  .   .                                                       .
00F8h |                                                       |
      +------+------+------+------+------+------+------+------+
```

At address **0000h** is a jump instruction which can he used for terminating the transient program. The destination of this jump can also be used to locate the BIOS jump vector (see section 2.4). The low byte of this jump address will always be **03h** for CP/M compatibility.

The two reserved bytes at addresses **0003h** and **0004h** are the **IOBYTE** and current drive/user in CP/M. IS-DOS keeps the current drive byte up to date. However the user number and **IOBYTE** are not supported since I/O redirection is handled separately and there is no concept of user numbers.

At address **0005h** is a jump instruction to the start of the resident part of IS-DOS which is used for making IS-DOS calls. In addition the address of this jump defines the top of the **TPA** which the program may use. The size of the **TPA** depends on the amount of RAM in the system and also on whether the CLI (Command Line Interpreter) has been protected to force it to remain in memory. The maximum size **TPA** is **56k** (**0100h**...**E105h**). The low byte of the destination of this jump will always be **06h** for CP/M compatibility, and the **six bytes** immediately preceding it will contain the CP/M version number and a serial number.

The restart locations from **0008h** up to **002Fh** are available for use by transient programs. It is anticipated that debuggers will use address **0029h** for breakpoints so this should normally be kept free.

The whole area from **0030h** to **005Bh** is reserved for EXOS entry and return code, and for interrupts — and must not be modified by transient programs, apart from setting the software interrupt vector at address **003Dh**. Note particularly that most CP/M debuggers (such as ZSID and DDT) use address **3Bh** as a breakpoint entry. These programs will have to be modified and it is recommended that address **28h** be used instead.

The two **FCB**s set up at addresses **005Ch** and **006Ch** are valid unopened **FCH**s containing the first two command line parameters interpreted as filenames. If both filenames are to be used, then the second one must be copied to a separate **FCB** elsewhere in memory, because it will be overwritten when the first one is opened. See section 3 for the format of **FCB**s.

The whole of the command line, with the initial command removed, is stored in the default disk transfer area at address **0080h**, with a length byte first and a terminating null (neither the null nor the length byte are included in the length). This string will have been upper-cased and will include any leading spaces typed to ensure CP/M compatibility. Note that the null is not defined to be present in CP/M but is provided by IS-DOS as an added convenience.

## 2.4 BIOS Jump Table

The jump at address **0000h** will always jump to an address whose low byte is **03h**. At this address will be another jump instruction which is the second entry in a seventeen entry jump table. This corresponds exactly to the BIOS jump table in CP/M 2.2.

The first eight entries in the table are for rebooting and for character I/O. These routines are implemented with the same specification as CP/M. The remaining jumps are low-Level disk related functions in CP/M, and have no equivalent in IS-DOS since its filing system is totally different. These routines simply return without doing anything apart from corrupting the main registers.

IS-DOS switches to an internal stack while executing a BIOS call and so only a small amount of space (**8 bytes**) is required on the user's stack.

Note that although the jump table is always on a **256**-byte page boundary, it is not the "correct" distance above the top of the **TPA** (as defined by the contents of address **0006h**) to correspond with CP/M 2.2. This should not matter to well-behaved CP/M programs, but it is rumoured that some programs rely on the size of the BDOS in CP/M 2.2. These programs will need modification.

The entries in the BIOS jump vector are as below:

 - xx00h - JMP WBOOT	;Warm boot
 - xx03h - JMP WBOOT	;Warm boot
 - xx06h - JMP CONST	;Console status
 - xx09h - JMP CONIN	;Console input
 - xx0Ch - JMP CONOUT	;Console output
 - xx0Fh - JMP LIST	;List output
 - xx12h - JMP PUNCH	;Punch (auxilliary) output
 - xx15h - JMP READER	;Reader (auxilliary) input
 - xx18h - JMP RETURN	;Home in CP/M
 - xx1Bh - JMP RETURN	;Select disk in CP/M
 - xx1Eh - JMP RETURN	;Set track in CP/M
 - xx21h - JMP RETURN	;Set sector in CP/M
 - xx24h - JMP RETURN	;Set DMA address in CP/M
 - xx27h - JMP RETURN	;Read sector in CP/M
 - xx2Ah - JMP RETURN	;Write sector in CP/M
 - xx2Dh - JMP LSTST	;Always returns A=O (not ready)
 - xx30h - JMP RETURN	;Sector translate in CP/M

## 2.5 Character Input and Output

An IS-DOS transient program has two major ways in which it can do "console" input and output. These are by making EXOS calls to the default channel (channel number **255**) or by making CP/M compatible IS-DOS or BIOS calls. Generally a program should use one or the other of these methods and not try to mix them since this can have unpredictable results.

The default EXOS channel will normality be an editor channel, although if printer echo is enabled it will be a channel to a special internal device which directs its output to the editor and to the printer. This is the channel which the IS-DOS CLI uses for its input and output. All the supplied transient programs ([DISKCOPY](cmd-diskcopy.md), [BACKUP](cmd-backup.md), [CHKDSK](cmd-chkdsk.md), [UNDEL](cmd-undel.md) and [XDIR](cmd-xdir.md)) also use this channel.

IS-DOS console input and output functions use the EXOS keyboard and video channels directly without going through the editor channel. This is necessary because the editor is a line orientated device and CP/M input and output is character orientated. When the first character output function call is made, the screen is cleared to ensure that the old text from the editor will not interfere. The output produced by the program is displayed on the screen but will not be in the editor's buffer; so when the program terminates, the text, though visible, cannot be edited in the normal way or scrolled back after going off the screen.

When characters are written using IS-DOS character output function calls, they are first translated from **VT52** control codes and escape sequences to EXOS video driver ones. This allows CP/M programs which are installed for **VT52** terminals to be used directly without re-installation. IS-DOS also contains a built-in **VT52** driver which bypasses the normal EXOS video driver and accesses screen memory directly. This is intended for use where speed of screen access is particularly important (eg for word processors). These programs can be installed to select the fast video driver automatically when they start up. Details of the IS-DOS function call to do this are in section 4.48.

The advantage of using EXOS calls is that the facilities of the EXOS screen editor are available — and provide a user interface to the program which will feel like the IS-DOS command interpreter and other Enterprise programs. The disadvantages are that it is not CP/M compatible and is rather slower at output; generally it is necessary for a program to buffer output and block write it a line at a time to the default channel to improve the speed.

The advantages of using IS-DOS function calls are compatibility with CP/M and some speed improvement. However, the environment will not "feel" like the IS-DOS CLI or other Enterprise programs such as IS-BASIC. Also the screen will be cleared when the program is entered, thus breaking the continuous flow of commands on the screen.

