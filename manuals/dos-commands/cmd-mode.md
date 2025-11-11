# MODE

## Applicable systems

**IS-DOS**: all versions  

## Format

`MODE [ 80 | 40 | logical-device:=EXOS-device]`

## Purpose

Changes the screen mode or I/O devices.

## Use

If no parameters are given, then the current **MODE** settings are displayed.

If a number is given, then this must be **40** or **80**, and the screen is changed to **40** of **80** column mode as appropriate.

If a logical device is given, this must be **LST:**, **AUX:**, **RDR:** or **PUN:**. If no EXOS-device is given, then the specified logical-device is assigned with **NULL:**, a special EXOS device which does not output anywhere and returns "**end of file**" for input.

Logical devices are:

### LST:

The output device used for standard printer output. **LST:** defaults to the EXOS device **PRINTER:**.

### RDR:

Special purpose auxiliary input device, which has no standard function but may be used by programs. By default, **RDR:** uses the device assigned to **AUX:** (see below).

*(In CP/M used as Paper Tape Reader Device)*

### PUN:

Special purpose auxiliary output device, which has no standard function but may be used by programs. By default, **PUN:** uses the device assigned to **AUX:** (see below).

*(In CP/M used as Paper Tape Punch Device)*

### AUX:

Accumulation of **RDR:** and **PUN:** devices. If **AUX:** is assigned to an EXOS device, this device is automatically assigned to both **RDR:** and **PUN:**. By default, **AUX:** uses the EXOS device **SERIAL:**.

Note that **PUN:** and **LST:** both create an EXOS channel for output when the **MODE** command is done, and **RDR:** and **AUX:** both open one for I/O. The channel is closed when another **MODE** command specifying the logical device is given.

Thus `MODE LST:=B:OUT` will create  a file  on **B:**  called **OUT** into which all output  intended for the printer will sent instead. The command `MODE LST` will close this file and ensure that all data has  been written to it.

## Examples

`MODE`  
`MODE LST:`  
`MODE 40`  
`MODE LST:=SERIAL:`  
`MODE PUN:=TAPE:MYFILE`  
`MODE AUX:`  
