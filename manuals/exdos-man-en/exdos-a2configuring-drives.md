# Appendix B: Specifying and configuring disk drives

The Enterprise has been designed to be used in conjunction with disk drives utilising the "Shugart 410" interface standard. The following criteria should also be checked when specifying the disk drive.

 - The motor must be at **300rpm** (± **3%**) within **1** second of a drive select being issued.
 - The drive must be able to accept step commands within **30ms** of being selected.
 - The head must load in less than **50ms** after a drive select and/or motor-on command.
 - The data rates supported are **125 Kbits/sec** (FM) and **250 Kbits/sec** (MFM), IBM System 34 format.
 - The maximum time to reach the outermost track must be less than **1.3 seconds**.
 - The drive input signals must be **level-sensitive** (not edge-triggered).
 - After a issuing a ready signal, the drive must be able to successfully execute a read or a write instruction within **50ms**.
 - The standard step rate should be **6ms** or **less**, although it is possible to work with slower step rates (see below). The slowest step rate usable is **30ms**.

## Drives tested by Enterprise.

The following disk drives have been tested and have worked successfully with the Enterprise disk interface:

### 3.5”

 - BASF 6162  
 - Epson SMD100  
 - Epson SMD120
 - Epson SMD130
 - Epson SMD140
 - Sony MPX-026R
 - Teac FD35B
 - Teac FD35F

### 5.25”

 - BASF 6128
 - Mitsubishi M4853
 - Shugart SA465

NOTE: The above are uncased, unpowered drives. Suitable cased and self-powered units are available from several sources including:

Cumana Ltd.,  
The Pines Trading Estate,  
Broad Street, GUILDFORD,  
Surrey, GU3 3BH, England  
 
or their authorised distributors.

## Un-powered disk drive units

The Enterprise disk interface unit is only designed to work with self-powered disk drive units. If you have a disk drive without power supply, refer to the manual of this drive for its power supply requirements.

Certain drives designed for use with the Acorn BBC computer are fitted with a DC power connector. The pin connections for this are shown below.

## Diagram B: Looking INTO power connector on "BBC" compatible drives.


## Drive selection

As we mentioned in the chapter on connecting your system, it is sometimes necessary to reconfigure a drive. Drives are fitted with internal switches or links to enable them to be set up as drive **0**, **1**, **2** or **3** (equivalent to **A:**, **B:**, etc.), please refer to the manual supplied with your drive. It may also be necessary to remove the terminating resistors from one or more of your drives. If in doubt please contact your supplying dealer or the disk drive manufacturer.

## Step rates

If your drives have a step rate slower than 6ms, it will be necessary to give an instruction to the Enterprise to work with this slower step rate, and this instruction will have to be given every time you start up the computer or give it a cold reset.

A simple way to give this instruction to the computer is to include it in the **EXDOS.INI** start-up file, which is explained in appendix E but if you do so it is essential that **EXDOS.INI** is the first file you copy to a fresh disk when it is formatted. This disk should then be put in drive **A:** whenever you start up the computer.

The instruction for changing the step rate consists of altering an [EDOS variable 73](../../programming/system-info/exos-variables/exos_var73.md). This can be done through use of the [EXDOS VAR](../dos-commands/cmd-var.md) command (see the reference section for further details, and appendix F).

The following step rate commands are possible:

`VAR 73,0` (**6ms** step rate — **default**)  
`VAR 73,1` (**12ms** step rate)  
`VAR 73,2` (**20ms** step rate)  
`VAR 73,3` (**30ms** step rate)  

The step rate specified applies to all disk drives connected. If the step rate is slower than necessary for a particular drive, it reduces the speed performance of the disk system and can lead to noisier stepping from the drives.

## Disk change signal

EXDOS contains sophisticated logic for checking on the change of disks by the user — in order to avoid incorrect disk operations, but acting at minimum inconvenience to the user (for example, there is normally no need to "tell" the computer that you have changed disks).

The disk checking logic works without special hardware in the disk drives, but some makes of disk drive provide a special signal to indicate that a disk has changed. Use of this signal can increase the speed of the disk checking operations of EXDOS, and therefore improve the performance of the system. Unfortunately, the hardware signals used are not compatible with most drives which do not provide the disk change signal, and therefore these signals do not work if the two types of drive are both connected.

If you are only using disk drives which DO provide the disk change signal (eg **Sony MPX-026R**), then you should give the following instruction:

`:VAR 89, off`

This will turn on recognition by EXDOS of the signal. You will have to give the instruction after every power up or cold reset of the computer, and so is best placed in your EXDOS.INI file (see appendix E).