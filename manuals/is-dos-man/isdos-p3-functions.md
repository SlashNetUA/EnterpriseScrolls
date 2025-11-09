# 4. IS-DOS Function Calls

IS-DOS function calls are made by putting the function code in register **C**, with any other parameters in the other main registers, and then executing a "**CALL 5**" instruction. The operation will be performed and results will be returned in various registers depending on the function.

Generally all main registers (**AF**, **BC**, **DE**, **HL**) are corrupted by IS-DOS calls, but the index registers (**IX**, **IY**) and alternate register set (**AF'**, **BC'**, **DE'**, **HL'**) are always preserved. Only a small amount (**8 bytes**) is needed on the transient program's stack because IS-DOS switches to an internal stack when it is called.

For compatibility, all functions which have a CP/M counterpart return with registers **A**=**L** and **B**=**H**. Frequently register **A** will be a success code, with zero indicating success and **01h** or **FFh** indicating failure. All functions return with the flags set by an '**OR A**' instruction, even when register **A** is undefined on return.

Below is a list of all the IS-DOS function calls. Any functions not in this table will simply return with registers **A**, **B** and **HL** set to zero.

| Num | Function Name                                    | CP/M<br>compatibility | MSX-DOS<br>compatibility |
|:---:| ------------------------------------------------ |:---------------------:|:------------------------:|
| 00h | [Re-boot IS-DOS](functions/f00h.md)              |          ✅           |            ✅            |
| 01h | [Console input](functions/f01h.md)               |          ✅           |            ✅            |
| 02h | [Console output](functions/f02h.md)              |          ✅           |            ✅            |
| 03h | [Auxiliary input](functions/f03h.md)             |          ✅           |            ✅            |
| 04h | [Auxiliary output](functions/f04h.md)            |          ✅           |            ✅            |
| 05h | [List output](functions/f05h.md)                 |          ✅           |            ✅            |
| 06h | [Direct console I/O](functions/f06h.md)          |          ✅           |            ✅            |
| 07h | [Direct console input](functions/f07h.md)        |                       |            ✅            |
| 08h | [Console input without echo](functions/f08h.md)  |                       |            ✅            |
| 09h | [String output](functions/f09h.md)               |          ✅           |            ✅            |
| 0Ah | [Buffered Line input](functions/f0ah.md)         |          ✅           |            ✅            |
| 0Bh | [Console status](functions/f0bh.md)              |          ✅           |            ✅            |
| 0Ch | [Get CP/M version number](functions/f0ch.md)     |          ✅           |            ✅            |
| 0Dh | [Disk reset (flush buffers)](functions/f0dh.md)  |          ✅           |            ✅            |
| 0Eh | [Select disk](functions/f0eh.md)                 |          ✅           |            ✅            |
| 0Fh | [Open file](functions/f0fh.md)                   |          ✅           |            ✅            |
| 10h | [Close file](functions/f10h.md)                  |          ✅           |            ✅            |
| 11h | [Search for first](functions/f11h.md)            |          ✅           |            ✅            |
| 12h | [Search for next](functions/f12h.md)             |          ✅           |            ✅            |
| 13h | [Delete file](functions/f13h.md)                 |          ✅           |            ✅            |
| 14h | [Sequential read](functions/f14h.md)             |          ✅           |            ✅            |
| 15h | [Sequential write](functions/f15h.md)            |          ✅           |            ✅            |
| 16h | [Create file](functions/f16h.md)                 |          ✅           |            ✅            |
| 17h | [Rename file](functions/f17h.md)                 |          ✅           |            ✅            |
| 18h | [Get login vector](functions/f18h.md)            |          ✅           |            ✅            |
| 19h | [Get default drive](functions/f19h.md)           |          ✅           |            ✅            |
| 1Ah | [Set disk transfer address](functions/f1ah.md)   |          ✅           |            ✅            |
| 1Bh | [Get allocation information](functions/f1bh.md)  |                       |            ✅            |
| 1Ch | Unused (write protect in CP/M)                   |                       |                          |
| 1Dh | Unused (get R/O vector in CP/M)                  |                       |                          |
| 1Eh | Unused (file attributes in CP/M)                 |                       |                          |
|     |                                                  |                       |                          |
| 20h | Unused (get/set user code in CP/M)               |                       |                          |
| 21h | [Random read](functions/f21h.md)                 |          ✅           |            ✅            |
| 22h | [Random write](functions/f22h.md)                |          ✅           |            ✅            |
| 23h | [Get file size](functions/f23h.md)               |          ✅           |            ✅            |
| 24h | [Set random record](functions/f24h.md)           |          ✅           |            ✅            |
| 25h | Unused (reset drive in CP/M)                     |                       |                          |
| 26h | [Block write](functions/f26h.md)                 |                       |            ✅            |
| 27h | [Block read](functions/f27h.md)                  |                       |            ✅            |
| 28h | [Random write with zero fill](functions/f28h.md) |          ✅           |            ✅            |
| 29h | Unused (not used in CP/M)                        |                       |                          |
| 2Ah | [Get date](functions/f2ah.md)                    |                       |            ✅            |
| 2Bh | [Set date](functions/f2bh.md)                    |                       |            ✅            |
| 2Ch | [Get time](functions/f2ch.md)                    |                       |            ✅            |
| 2Dh | [Set time](functions/f2dh.md)                    |                       |            ✅            |
| 2Eh | [Set/reset verify flag](functions/f2eh.md)       |                       |            ✅            |
| 2Fh | [Absolute disk read](functions/f2fh.md)          |                       |            ✅            |
| 30h | [Absolute disk write](functions/f30h.md)         |                       |            ✅            |
|     |                                                  |                       |                          |
| 80h | [Terminate with error code](functions/f80h.md)   |                       |                          |
| 81h | [Define abort routine](functions/f81h.md)        |                       |                          |
| 82h | [Allocate segment](functions/f82h.md)            |                       |                          |
| 83h | [Free segment](functions/f83h.md)                |                       |                          |
| 84h | [Get uncased command line](functions/f84h.md)    |                       |                          |
| 85h | [Select fast video driver](functions/f85h.md)    |                       |                          |
| 86h | [Get FISH stack pointer](functions/f86h.md)      |                       |                          |
| 87h | [Get IS-DOS version number](functions/f87h.md)   |                       |                          |