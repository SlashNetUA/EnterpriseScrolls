# Chapter 5: Installing Your Interface and Drives.

It is important that this chapter is read carefully before attempting to connect your system. It will also be necessary to refer to your disk drive manual

Every disk drive connected to the disk interface is given a unique designation, so that you can refer to the drive in a command and the hardware can select the drives individually. The four drives which can be attached to the Enterprise are designated **A:**, **B:**, **C:** and **D:** (described by some manufacturers as drives **0**, **1**, **2** and **3**), and a small switch needs to be set inside each disk drive to give it the correct designation.

If you are connecting a single drive, or a "boxed" pair of drives to your system, it is likely that the drives will already have their switches set correctly. Normally a single drive will be configured as drive **A:** (or drive **0**) and a twin drive as **A:** and **B:** (or **0** and **1**). Please refer to your disk drive manual to confirm this.

If you are adding more drives to your system, or using several single drives (possibly from different manufacturers), then it will be necessary to check your disk drive manuals. Follow instructions in these manuals in order to set the drive selection switches, and also to install if necessary a "terminating resistor package" on the last drive fitted to your cable.

Your Enterprise interface pack should contain the following items. If any are missing please contact your dealer.

 1. Disk interface module.
 2. Adaptor unit.
 3. This manual.
 4. Registration and Warranty card.

The following items will also be required:
 5. An **Enterprise 64** or **128** computer!
 6. Self powered Shugart 410 compatible disk drive(s). See [Appendix B](exdos-a2configuring-drives.md) for further details on acceptable disk drives.
 7. A-supply of suitable floppy disks. Note that disks are of varying quality depending on the amount of data they are expected to contain, and whether they are intended for single or dual side operation.

Your local computer store should be able to offer advice on the choice of drive and disks. If in doubt please contact Enterprise Computers Ltd. or (if outside the UK) their local distributor.

## Diagram 6: The complete system

Step by step instructions.

> [!IMPORTANT]
> Please ensure that ALL of your system is disconnected from the mains supply. Disconnect all peripheral cables from your Enterprise.

Refer to Diagram 6 to see the general layout of the connected items.

 a) Arrange your computer on the desk or table so that there is sufficient room for the interface and drives on the right hand side of the computer.

 b) Connect the ribbon cable from your disk drive(s) to the connector on the rear of the Interface module. The interface connector is polarised to prevent mis-insertion of polarised drive cables.

 If your drive cable has an unpolarised connector then ensure that the marker arrow is to the right and top of the cable when looking INTO the interface connector. This will normally mean that the red ‘tracer’ on the ribbon cable is also on the right. If in doubt, please refer to your disk drive manual.

 Clip the "ears" on the interface connector over the ribbon connector to hold it firmly in place.

 c) Plug the interface module into the adaptor unit. The ventilation slots on the adaptor unit should be underneath and the auxiliary power socket to the rear.

 d) Remove the cover from the expansion port on the right hand side of the Enterprise computer.

 e) Carefully plug the adaptor unit / interface module combination into the Enterprise expansion port. Ensure that both computer and interface are fully supported to reduce strain on the connectors.

 f) Refer to Diagram 6 to ensure that your system matches that shown.

 g) Reconnect your monitor, printer and other peripheral cables. **DO NOT connect the power supply at this stage**.

## Testing the system

If your drives are labeled **0** and **1**, it is best to change these designations to **A:** and **B:**. This will avoid confusion when using the system. Remove any "transportation spacers" from your drives. Keep these safe for re-insertion in case of future transportation of the drives. Connect your drives to the mains supply and switch on.

With the power connector removed from the computer, plug the Enterprise power supply into the mains.

Plug the power connector into the Enterprise computer, the red LED indicator on the computer should come on and the LED indicators on the drive(s) should light briefly (details about these are explained later).

Should the computer indicator fail to light, remove the power connector immediately. Remove all mains supplies and check that all connections are made correctly and that all connectors are pushed fully home. **UNDER NO CIRCUMSTANCES CONNECT OR DISCONNECT YOUR DRIVES, INTERFACE AND/OR ADAPTOR UNIT WHILE THE DRIVES OR COMPUTER ARE POWERED UP.** If you have problems, please contact your supplying dealer or Enterprise Computers Ltd.

If the system powers up correctly then the following sequence of operations will take place if no disks are present in the drives:

 - The Enterprise will go through its normal system test.

 - This will be followed by a check on whether drives are connected. If there is a drive **B:** its "read" light will come on briefly. The light on drive **A:** will then come on, and will remain on until a disk is placed in the drive. This will serve as a reminder that the computer is expecting a disk to be placed in the drive, but you may ignore this signal as long as you wish.

 - The Enterprise will then display its usual "start up" display, with the flashing **ENTERPRISE** logo.

Pressing any "normal" key will instigate a further series of events:

 - The system will now check drive **A:** to see if a "start-up" file is present (further details on what will happen if one is found are given later).

 - The system will then enter IS-BASIC (if the cartridge is installed) and display the available bytes on the screen. This will be less than in a tape based system due to the claiming of some memory as EXDOS workspace.

If the computer fails to perform these operations, and does not display a message on the screen, check the connections again as described above, **REMEMBERING TO SWITCH OFF THE POWER TO THE COMPUTER AND THE DISK DRIVES FIRST**.

Normally any fault with the disk system or disk drives will be ignored by the computer at this stage, but you should observe the disk drives for the following faults:

 - **With more than one disk drive connected, all the "read" lights on the drives remain on.**

	This means that you have probably connected the ribbon cable to the disk drives upside down. Switch off the computer and disk drives, unplug the ribbon cable and reconnect the other way up.

	If this does not cure the problem, it is possible that more than one disk drive has been selected with the same drive designation. Consult your disk drive manual on the subject of the drive selection switch.

 - **No disk has been placed in drive A:, but the read light of this drive is not lit.**

	This could mean that you have forgotten to switch on the disk drive. Turn on the power to the disk drive, and give two quick presses to the red reset button on the back of the Enterprise to start a "cold reset’.

The next stage of testing the installation of the disk system is to type:

`:help` **\[Enter\]**

on the Enterprise.

If everything is functioning normally, the following message will appear:

```
EXDOS version x.x
BASIC version x.x
WP version x.x
```

where **x.x** are the version numbers of the installed firmware.

If the message displayed does not include the word **EXDOS**, then the disk interface unit is not functioning properly. If this is the case, recheck the connections, **TURNING OFF POWER FIRST**.

This concludes the initial testing of the disk interface unit. Even if no disk drives are connected to the interface unit, it is possible to go through this installation procedure, and EXDOS gives you a range of commands which are useful even without disk drives.

In fact the Enterprise can be operated as if it is a disk-based computer, with no disk drives attached at all, through the use of the EXDOS [RAMDISK](../dos-commands/cmd-ramdisk.md) feature. More about this later in the manual.

## Giving commands to EXDOS

If we now type:

`:help exdos` **\[Enter\]**

this will result in the copyright message being displayed, followed by a list of EXDOS commands. An explanation of the functions and use of these commands is given in the command reference section of this manual ([chapter 8](exdos-8command-reference.md)).

> [!NOTE]
> EXDOS commands may be entered in upper or lower case letters. When using commands from the BASIC editor screen, they must be preceded by a colon (`:`). The use of EXDOS commands from within a BASIC program and from the word processor are described later in this manual.

Before carrying out some simple disk operations, we will take a brief look at the EXDOS "command interpreter". This has its own **20** line × **38** column screen and is called by typing:

`:exdos` **\[Enter\]**

You will note that the top twenty lines of the screen have now cleared and changed colour. Also the message on the status line has changed to:

**EXDOS command interpreter**

EXDOS commands, and any other computer EXTension commands (such as HELP) can now be directly entered and executed (no colon required). BASIC may now be re-entered by typing:

`basic` **\[Enter\]**

It is also possible to re-enter BASIC by pressing the **Esc** key, and in this case any BASIC program that was previously in memory will still be preserved. To use BASIC again, with a clear screen, press **Fkey 5** (TEXT); alternatively, to return to the previous editing screen of BASIC, press **Shift**+**Fkey 5** (DISPLAY TEXT).

The final test of the system is to carry out some simple disk operations.
