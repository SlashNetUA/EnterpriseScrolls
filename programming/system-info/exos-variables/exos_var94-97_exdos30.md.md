# 94-97 Drive Clock

Each drive clock variable binary format is:

`00000FHT`

 - **F** is `1` if the drive supports faster **360 RP/M** modes when pin 1[^1] is low, `0` if it only supports **300 RP/M**.  
 - **H** is `1` if the turbo EXDOS card with overclocking supports HD mode, `0` if it does not.
 - **T** is `1` if the turbo EXDOS card with overclocking supports turbo DD mode, `0` if it does not.

**H** and **T** require a “turbo EXDOS” card ie. overclocked, and together indicate which clock modes the card
supports.

The drive type and drive clock variables allow PC-type floppy drives to be used but may require a turbo 
(overclocked) EXDOS card and/or a turbo Enterprise to work, depending on disk format required. EXDOS 3 
will try all supported hardware combinations when attempting to read a newly-inserted disk until it finds a 
format that works.

[^1]: Note that some older non-PC drives use pin **1** to reset the disk change signal so **F** must be `0` for these drives.


See also [drive type](exos_var90-93_exdos30.md.md).  