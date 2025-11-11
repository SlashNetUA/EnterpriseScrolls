# OPEN

`OPEN £chan:NAME device/filename ACCESS mode`  
`OPEN £chan:device/filename`

The access mode is either **INPUT** or **OUTPUT**. **ACCESS OUTPUT** attempts to create a new file (if on tape or disk); **ACCESS INPUT** attempts to use an existing file. For devices such as **VIDEO:**, either can be used. The default is **INPUT**.

Connects a device, or a file in the case of tape and disk, to a channel. Commands may then read, write or otherwise manipulate data from and to the device (or file) by referring to the channel number.

`OPEN £8:"DISK-1:TEST_PROGRAM" ACCESS OUTPUT`

Only one device (or file) may be connected to a given channel at any one time, although a single channel may be used to access several devices (files) one after the other.

To disconnect the channel from a device (or file), use the [CLOSE](man_cs-close.md) command.

Channel numbers range from **0** to **254**. (**255** is an invalid channel number which is used for special purposes.)

The BASIC system uses several channels as defaults when channels are not specified in statements. These channels are:

**0** — used for command input and normal text output (e.g. for [LIST](man_cs-list.md) and [PRINT](man_cs-print.md)). This channel is connected at reset (or power on) to the device "**EDITOR:**".  
The device "**EDITOR:**" itself uses the devices "**KEYBOARD:**" and "**VIDEO:**", set up in **video-mode 0** with **page-size 24, 40**.  
This channel is the default assumed for [COPY FROM](man_cs-copy.md) and [REDIRECT FROM](man_cs-redirect.md).  
Channel **0** is automatically opened at reset, and remains opened until explicitly closed.  
Note that channel **0** is specified as the default command channel for ANSI compatibility. Other default channels are numbered over **100** to leave simple channel numbers available for user definition.

**101** — used for graphics input and output statements. This channel is connected at first use of [GRAPHICS](man_cs-graphics.md) command to device "**VIDEO:**", which is set up in **video-mode 1**, **video-colour 1**, with **page-size 20, 40**. Channel **101** remains open until explicitly closed, e.g. by a [TEXT](man_cs-text.md) command.

**102** — the standard 'text' page. Automatically opened at reset, with **page-size 24, 40**.

**103** — used for standard sound output. The channel is connected at reset to device "**SOUND:**".  
Channel **103** is automatically opened at reset, and remains opened until explicitly closed.

**104** — used for assumed 'hard-copy' operations. This channel is connected at reset to device "**PRINTER:**". It is the default channel assumed for [COPY TO](man_cs-copy.md) and [REDIRECT TO](man_cs-redirect.md).  
Channel **104** is automatically opened at reset, and remains open until explicitly closed.

**105** — used for keyboard operations (connected at reset to device "**KEYBOARD:**"). Remains open until explicitly closed.

**106** — used for file-based input and output operations. Whenever required, the channel is connected to "**DISK-1:**" if attached; If disks are not attached, it is connected to "**TAPE:**".  
Standard file operations include [LOAD](man_cs-load.md), [MERGE](man_cs-merge.md) and [VERIFY](man_cs-verify.md).  
Channel **106** is only opened when necessary, and is closed following the completion of every operation – unless an [OPEN](man_cs-open.md) command has been explicitly given.

**107** — used for network operations.  
Channel **107** is only opened automatically by a command which assumes this channel for the default, and is closed following completion of the operation.

Channels **100**-**254** remain open unless specifically closed, but channels **1**-**99** are always closed when [RUN](man_cs-run.md) is typed, or if any other operation takes place which clears all variables. If BASIC discovers a default channel closed, then it will close all channels (**0**-**254**) and attempt to re-open its default channels. If it cannot do this, BASIC assumes that an unrecoverable error has occurred and flashes the screen border until the computer is reset.  
Device names passed through to the operating system are terminated by a colon so that they can be recognized. Where more than one device is known by the same name, a number is appended to the name, e.g. "**DISK2:**" or "**DISK-2:**".

The valid names are:
"**DISK-n:**"		Disk drives.  
"**EDITOR:**"		Screen editor. This in turn uses devices "**VIDEO:**" and "**KEYBOARD:**".  
"**KEYBOARD:**"	Transparent keyboard. Includes external joysticks.  
"**NET-n:**"		Built-in local net. The number '**n**' is the network address (in the range **1**-**32**) of the machine with which communications are being established. If '**n**' is **0**, this defines a 'general' channel – used for broadcasting to all machines, and for receiving data without specifying the source machine.  
"**PRINTER:**"		'Centronics-style' printer port.  
"**SERIAL:**"		Serial RS423 I/O.  
"**SOUND:**"		Sound generator.  
"**TAPE-n:**"		Tape drives.  
"**VIDEO:**"		Video pages.

As other devices are attached to the computer, they are likely to define additional names within the operating system.

In most cases, only a device name is required for an [OPEN](man_cs-open.md) operation. When file-based input/output is used, a filename must be given.

The full specification of a filename is:

`"device-n:name"`

"**device**" is optional; if it is omitted, the system mass-storage default device will be used –for an unexpanded system, this is "**TAPE:**".  
"**n**" is the device number, and defaults to 1 if omitted; e.g. "**DISK:**" would go to "**DISK-1:**".  
"**name**" is the description of the file within a device. It follows the same rules of format as a BASIC identifier, except that only the first 28 characters are significant.  
If no colon is included in the filename, it is assumed that the device name has been omitted. So, for example, "**SOUND**" is a file on "**TAPE:**", but "**SOUND:**" is the sound generator device.  
eg, "**DISK1:DATAFILE**" "**DISK-1:DATAFILE**" "**1:DATAFILE**" "**DATAFILE**" will all reference the same file (assuming disks are attached).  
The "**name**" part of a filename is ignored by all currently-defined devices except "**TAPE:**" and "**DISK:**". So, for instance, "**PRINTER:PRETTY-LISTING**" is equivalent to "**PRINTER:**".  
There are some commands which allow you to specify both channels and filenames within the one statement; e.g. [LOAD](man_cs-load.md) and [SAVE](man_cs-save.md).

The full specification in these cases takes the form:

`£chan:filename`

If **£chan** is missing, then a default channel is used.