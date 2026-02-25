# 90-93 Drive Type

Each drive type variable binary format is:

`PRC000SS`

**SS** is the step rate. The meaning depends on whether the EXDOS card has an original **WD1770** or a later **WD1772** floppy disk drive controller IC:

| Value | WD1770 | WD1772 |
|:-----:| ------:| ------:|
|  00   |   6 ms |   6 ms |
|  01   |  12 ms |  12 ms |
|  10   |  20 ms |   2 ms |
|  11   |  30 ms |   3 ms |

When an overclocked EXDOS card is being used EXDOS 3 reduces the clock rate back to the standard **8MHz** during head step operations so that the step rates above remain correct.

**C** is `1` if the drive supports a disk change signal, `0` if it does not.  
**R** is `1` if the drive self-resets the disk change signal on a seek, `0` if it needs a pulse on pin **1** [^1]  
**P** is `1` if the disk change signal is on pin **34**[^2], `0` if it is on pin **2**.  

[^1]: Note that PC-compatible drives use pin **1** to select between **300 rpm** and **360 rpm** operation.

[^2]: Note that older non-PC-compatible drives use pin **34** for **/RDY**, which previous versions of EXDOS required. EXDOS 3 does not need **/RDY**, but **P** must be `0` for these drives or EXDOS 3 could constantly and incorrectly think the disk has changed when it has not.


See also [drive clock](exos_var94-97_exdos30.md.md).  