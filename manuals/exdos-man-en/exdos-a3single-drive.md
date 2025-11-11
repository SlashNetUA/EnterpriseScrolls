# Appendix C: Working with a single disk drive

When power is turned on to the computer, or if it is given a cold reset (two quick successive presses on the **reset** button), EXDOS checks to see if there are two disk drives attached. If it finds drive **A:**, but does not find drive **B:**, it will do an automatic [MAPDISK](../dos-commands/cmd-mapdisk.md) operation — so that all program or user references to **B:** will expect the disk for drive **B:**, but look for it on drive **A:**.

This means that owners of single-drive systems can use programs or commands as if they have two drives.

Note that EXDOS will not perform an automatic [MAPDISK](../dos-commands/cmd-mapdisk.md) if the power to the disk drives is not turned on when it does the initial check. If power is turned on to drive **A:**, and there is a drive **B:** with a separate power supply which is still switched off, then EXDOS will thereafter think that there is no drive **B:** even when it is later switched on. To correct either of these problems, ensure that power is switched on to both disk drives and then give the computer a cold reset.

EXDOS remembers which disk (logically the **A:** or **B:** disk) was last used in the **A:** drive, and will prompt you to insert a different disk only when necessary.

Usually it will cause no trouble if you decide not to change disk, and simply press **Enter** when asked for the alternative disk. But if there is a file still "open", and EXDOS is trying to use this file, a "Wrong disk for file" error will be given.

EXDOS maintains a unique "volume identifier" for each disk in use, to prevent problems due to reading from or writing to the wrong disk. For this disk checking to work fully, you should use disks which have been formatted on the Enterprise. Disks formatted on other computers (such as the IBM PC or the Apricot) can be used, but the disk checking is not so foolproof.

When copying from one disk to another, the operation will become slower and require more disk changes if there is less free memory in the computer. If you notice a slow down, you should be able to improve the situation by, for example, removing the current BASIC program or deleting the [RAMDISK](../dos-commands/cmd-ramdisk.md) — if either of these are using memory.

When copying a large number of small files, you may find it quicker to copy them temporarily to a [RAMDISK](../dos-commands/cmd-ramdisk.md), and then copy them from the RAMDISK to the second real disk.

