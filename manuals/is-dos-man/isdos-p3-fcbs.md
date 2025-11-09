# 3. File Control Blocks (FCBs)

All IS-DOS function calls which refer to disk files must be passed a pointer to a File Control Block (FCB) in register **DE**. These FCBs are identical to CP/M FCBs except that some of the reserved fields are used differently, reflecting the different filing system which IS-DOS uses.

A basic FCB is **33 bytes** long. This type of FCB can be used for file management operations ([delete](functions/f13h.md), [rename](functions/f17h.md) etc) and also for sequential [reading](functions/f14h.md) and [writing](functions/f15h.md). The random read and write functions use an extra **3 bytes** on the end of the FCB to store a random record number. The MSX-DOS compatible block [read](functions/f27h.md) and [write](functions/f26h.md) functions also use these additional three (or in some cases four) bytes — see the function descriptions for details.

The layout of an FCB is given below. A general description of each of the fields is included here. The individual function descriptions later on give details of how the field are used for each function where this is not obvious.

**00h**: Drive number **1**...**26**. **0** => default drive. Must be set up in all FCBs used, never modified by IS-DOS function calls.

**01h**...**08h**: Filename, left justified with trailing blanks. Can contain `?` characters if ambiguous filename is allowed (see function descriptions). When doing comparisons, case will be ignored, and so will bit-7. When creating new files, name will be uppercased but bit-7 will be left unchanged.

**09h**...**0Bh**: Filename extension. Identical to filename. Note that bit-7 of the filename extension characters are not interpreted as flags as they are in CP/M.

**0Ch**: Extent number (low byte). Must be set (usually to zero) by the transient program before [open](functions/f0fh.md) or [create](functions/f16h.md). It is used and updated by sequential [read](functions/f14h.md) and [write](functions/f15h.md), and also set by random [read](functions/f21h.md) and [write](functions/f22h.md). This is compatible with CP/M and MSX-DOS.

**0Dh**: Not used. Zeroed by "[open](functions/f0fh.md)" and "[create](functions/f16h.md)".

**0Eh**: Extent number (high byte) for CP/M functions. Zeroed by [open](functions/f0fh.md) and [create](functions/f16h.md). For sequential [read](functions/f14h.md) and [write](functions/f15h.md) it is used and updated as an extension to the extent number, to allow larger files to be accessed. Although this is different from CP/M it does not interfere with CP/Ms use of FCBs and is the same as MSX-DOS.  
Record size (low byte) for MSX-DOS block functions. Must be set to the required record size before using the block [read](functions/f27h.md) or [write](functions/f26h.md) functions.

**0Fh**: Record count for CP/M functions. Set up by [open](functions/f0fh.md) and [create](functions/f16h.md) and modified when necessary by sequential [reads](functions/f14h.md)/[writes](functions/f15h.md) and random [reads](functions/f21h.md)/[writes](functions/f22h.md). This is the same as CP/M and MSX-DOS.  
Record size (high byte) for MSX-DOS block functions. Must be set to the required record size before using the block [read](functions/f27h.md) and [write](functions/f26h.md) functions.

**10h**...**13h**: File size in bytes, lowest byte first. File size is exact, not rounded up to **128** bytes. This field is set up by [open](functions/f0fh.md) and [create](functions/f16h.md) and updated when the file is extended by write operations. Should not be modified by the transient program, as it is written back to disk by a [close](functions/f10h.md) function call. This is the same as MSX-DOS but different from CP/M which stores allocation information here.

**14h**...**17h**: Volume-ID. This is a four-byte number identifying the particular disk which this FCB is accessing. It is set up by [open](functions/f0fh.md) and [create](functions/f16h.md), and is checked on read, write and [close](functions/f10h.md) calls. Should not be modified by the program. Note that this is different from MSX-DOS which stores the date and time of last update here, and from CP/M which stores allocation information.

**18h**...**1Fh**:Internal information. These bytes contain information to enable the file to be located on the disk. Should not be modified at all by the transient program. The internal information kept here is similar but not identical to that kept by MSX-DOS and totally different from CP/M.

**20h**: Current record within extent (**0**...**127**). Must be set (normally to zero) by the transient program before first sequential [read](functions/f14h.md) or [write](functions/f15h.md). Used and modified by sequential [read](functions/f14h.md) and [write](functions/f15h.md). Also set up by random [read](functions/f21h.md) and [write](functions/f22h.md). This is compatible with CP/M and MSX-DOS.

**21h**...**24h**: Random record number, low byte first. This field is optional; it is only required if random or block reads or writes are used. It must be set up before doing these operations, and is updated by block [read](functions/f27h.md) and [write](functions/f26h.md) but not by random [read](functions/f21h.md) or [write](functions/f22h.md). Also set up by the '[set random record](functions/f24h.md)' function.  
For the block operations, which are in MSX-DOS but not in CP/M, all four bytes are used if the record size is less than 64 bytes, and only the first three bytes are used if the record size is **64** bytes or more. For random [read](functions/f21h.md) and [write](functions/f22h.md), only the first three bytes are used (implied record size is **128** bytes). This is compatible with CP/M and with MSX-DOS.

