---
title: I/O Ports
---
# I/O Ports

Enterprise загалом використовує лише 8-бітну адресацію введення-виведення (I/O) (повноцінна 16-бітна адресація неможлива, оскільки два найстарші біти все одно використовуються мікросхемою Dave для власних потреб). [Офіційний розширювач системної шини](../../hardware/system-bus/hb-main.md) Enterprise мав грамотно спроєктований механізм розподілу портів, завдяки якому кожна карта розширення може отримати свій діапазон портів залежно від свого положення у слоті тощо. Але на жаль, ця функція була майже невідомою для багатьох людей (особливо в Угорщині), та й без самого шинного моста вона не має великої користі. Тож, схоже, що у теперішніх апаратних розробках усі так чи інакше використовують більш-менш фіксовані порти введення-виведення.

[http://ep.lgb.hu/doc/ports.html](http://ep.lgb.hu/doc/ports.html) ([web.archive](https://web.archive.org/web/20230530171816/http://ep.lgb.hu/doc/ports.html))

----

## Serial card from Mr Meszaros

00h / 0: Serial card 'Meszaros'  
01h / 1: Serial card 'Meszaros'  

## SID "sound card"

08h / 8  
09h / 9  
0Ah / 10  
0Bh / 11  
0Ch / 12  
0Dh / 13  
0Eh / 14  
0Fh / 15

## [EXDOS](../../hardware/hd-exdos.md) card

10h / 16: EXDOS WD177x write command register / read status register  
11h / 17: EXDOS WD177x track register read/write  
12h / 18: EXDOS WD177x sector register read/write  
13h / 19: EXDOS WD177x data register read/write  
14h / 20: EXDOS WD177x (echo of port 0x10) write command register / read status register  
15h / 21: EXDOS WD177x (echo of port 0x11) track register read/write  
16h / 22: EXDOS WD177x (echo of port 0x12) sector register read/write  
17h / 23: EXDOS WD177x (echo of port 0x13) data register read/write  
18h / 24: EXDOS card status/control register  
19h / 25: EXDOS card (echo of port 0x18) status/control register  
1Ah / 26: EXDOS card (echo of port 0x18) status/control register  
1Bh / 27: EXDOS card (echo of port 0x18) status/control register  
1Ch / 28: EXDOS card (echo of port 0x18) status/control register  
1Dh / 29: EXDOS card (echo of port 0x18) status/control register  
1Eh / 30: EXDOS card (echo of port 0x18) status/control register  
1Fh / 31: EXDOS card (echo of port 0x18) status/control register  

## Turbo [EXDOS](../../hardware/hd-exdos.md) speed switching

20h / 32: Turbo EXDOS speed switching

## Not so much used, special

> There is a plan to use [Z180](../../hardware/cpu/z180.md) in the Enterprise instead of [Z80](../../hardware/cpu/z80.md) by Zozo (note: Z180 is not fully Z80 compatible, for example it does not know the IX/IY register splitting into two 8 bit ones). Since Z180 has built-in I/O ports, some EXOS versions from Zozo use these ports to pre-program the Z180 I/O space not to collade with other I/O ports in the system.

32h / 50: Z180 configuration   
3Fh / 63: Z180 configuration   

## [ZX Spectrum emulator](../../hardware/he-zxemu.md) card

40h / 64: ZX Spectrum emulator card, high byte address  
41h / 65: ZX Spectrum emulator card, low byte address  
42h / 66: ZX Spectrum emulator card, data  
43h / 67: ZX Spectrum emulator card, operation type  
44h / 68: Spectrum emulator, write: enable emulator  

## APU (AMD Am9511) "FPU" I/O ports

> An experiment to add some mathematical processing power :) to the system with the [AMD Am9511 chip](../../hardware/cpu/am9511.md), also named as the "APU". There is not so much a standard way to use its capabilities, you need custom softwares written for it.

50h / 80: APU (AMD Am9511) "FPU" read data or write data  
51h / 81: APU (AMD Am9511) "FPU" read status or write command  

## RTC card from Zozosoft

> Zozosoft's RTC card, supported by ZT (ZozoTools) ROM (you can have real time clock above the status line with the help of 1Hz interrupt).

7Eh / 126: CMOS RTC/memory register select  
7Fh / 127: CMOS RTC/memory register read/write  

## Built-in: [Nick](../../hardware/hm-nick.md) (video chip) I/O ports

[80h / 128](ports/port128.md): Nick FIXBIAS (for 16 col modes), ext colors priority, speaker switch  
[81h / 129](ports/port129.md): Nick border color  
[82h / 130](ports/port130-131.md): Nick LPL (low byte of address of the LPT)  
[83h / 131](ports/port130-131.md): Nick LPH (high byte of address of the LPT), clocking enable, reload bits for LPT  
[84h / 132](ports/port128.md): *Nick (echo of port 80h) FIXBIAS*  
[85h / 133](ports/port129.md): *Nick (echo of port 81h) border color*    
[86h / 134](ports/port130-131.md): *Nick (echo of port 82h) LPL*  
[87h / 135](ports/port130-131.md): *Nick (echo of port 83h) LPH*  
[88h / 136](ports/port128.md): *Nick (echo of port 80h) FIXBIAS*  
[89h / 137](ports/port129.md): *Nick (echo of port 81h) border color*  
[8Ah / 138](ports/port130-131.md): *Nick (echo of port 82h) LPL*  
[8Bh / 139](ports/port130-131.md): *Nick (echo of port 83h) LPH*  
[8Ch / 140](ports/port128.md): *Nick (echo of port 80h) FIXBIAS*    
[8Dh / 141](ports/port129.md): *Nick (echo of port 81h) border color*  
[8Eh / 142](ports/port130-131.md): *Nick (echo of port 82h) LPL*  
[8Fh / 143](ports/port130-131.md): *Nick (echo of port 83h) LPH*  


## Built-in: [Dave](../../hardware/hm-dave.md) (audio, interrupt controller, memory mapper chip) I/O ports

A0h / 160: Dave tone channel 0 frequency low byte  
A1h / 161: Dave tone channel 0 frequency high nybble + params  
A2h / 162: Dave tone channel 1 frequency low byte  
A3h / 163: Dave tone channel 1 frequency high nybble + params  
A4h / 164: Dave tone channel 2 frequency low byte  
A5h / 165: Dave tone channel 2 frequency high nybble + params  
A6h / 166: Dave noise frequency, polynominal counter + misc  
A7h / 167: Dave sync, D/A mode, and interrupt selection  
A8h / 168: Dave tone channel 0 left volume  
A9h / 169: Dave tone channel 1 left volume  
AAh / 170: Dave tone channel 2 left volume  
ABh / 171: Dave noise channel left volume  
ACh / 172: Dave tone channel 0 right volume  
ADh / 173: Dave tone channel 1 right volume  
AEh / 174: Dave tone channel 2 right volume  
AFh / 175: Dave noise channel right volume  
B0h / 176: Dave MMU reg, page 0 (0000-3FFF) selector  
B1h / 177: Dave MMU reg, page 1 (4000-7FFF) selector  
B2h / 178: Dave MMU reg, page 2 (8000-BFFF) selector  
B3h / 179: Dave MMU reg, page 3 (C000-FFFF) selector  
B4h / 180: Dave enable/reset interrupt sources/latches  
[B5h / 181](ports/port181.md): Dave active low strobe on WR0/RD0 (keyboard row select/read)    
[B6h / 182](ports/port182.md): Dave active low strobe on WR1/RD1 (Printer / Ext Joysticks / SerialNet / Tape)     
[B7h / 183](ports/port183.md): Dave active low strobe on WR2/RD2 (SerialNet)   
[BFh / 191](ports/port191.md): Dave sysconfig register (wait states, clkdiv)    

## [IDE card](../../hardware/exdos/hd-ide.md) from Zozosoft

E0h / 224: Possible another IDE card (see ports 0xEC-0xEF for the layout)   
E1h / 225		- "" -  
E2h / 226		- "" -   
E3h / 227		- "" -  
E4h / 228: Possible another IDE card (see ports 0xEC-0xEF for the layout)  
E5h / 229		- "" -  
E6h / 230		- "" -  
E7h / 231		- "" -  
E8h / 232: Possible another IDE card (see ports 0xEC-0xEF for the layout)  
E9h / 233		- "" -  
EAh / 234		- "" -  
EBh / 235		- "" -  
ECh / 236: IDE data register low byte  
EDh / 237: IDE data register high byte  
EEh / 238: IDE command register port 1  
EFh / 239: IDE command register port 0  

## External DAC

> I have not so much idea, it's some kind of solution to play digitalized samples in a better quality than Dave can do (6 bits).  
> 4 x 8bit DAC, probably to support 4 channel "MOD like" file playing (DTM files?). It's stereo, 2-2 channels for left and right.

F0h / 240: External DAC write  
F1h / 241: External DAC write  
F2h / 242: External DAC write  
F3h / 243: External DAC write  

## [2dfx](../../hardware/hv-2dfx.md)

[F8h / 248](ports/port248.md):  введення команд, та отримання статусу роботи карти розширення  
[F9h / 249](ports/port249.md):  введення параметрів відповідної команди  


## [ZX Spectrum emulator](../../hardware/he-zxemu.md) again

> See information about the Spectrum emulator above in the list. These ports are used in ZX Spectrum.

FEh / 254: Spectrum emulator  
FFh / 255: Spectrum emulator  