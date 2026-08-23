---
title: I/O Ports
---
# I/O Ports

Enterprise загалом використовує лише 8-бітну адресацію введення-виведення (I/O) (повноцінна 16-бітна адресація неможлива, оскільки два найстарші біти все одно використовуються мікросхемою Dave для власних потреб). [Офіційний розширювач системної шини](../../hardware/system-bus/hb-main.md) Enterprise мав грамотно спроєктований механізм розподілу портів, завдяки якому кожна карта розширення може отримати свій діапазон портів залежно від свого положення у слоті тощо. Але на жаль, ця функція була майже невідомою для багатьох людей (особливо в Угорщині), та й без самого шинного моста вона не має великої користі. Тож, схоже, що у теперішніх апаратних розробках усі так чи інакше використовують більш-менш фіксовані порти введення-виведення.

[http://ep.lgb.hu/doc/ports.html](http://ep.lgb.hu/doc/ports.html) ([web.archive](https://web.archive.org/web/20230530171816/http://ep.lgb.hu/doc/ports.html))

----

## Serial card from Mr Meszaros

00: Serial card 'Meszaros'  
01: Serial card 'Meszaros'  

## SID "sound card"

0x08 - 0x0F

## [EXDOS](../../hardware/hd-exdos.md) card

0x10: EXDOS WD177x write command register / read status register  
0x11: EXDOS WD177x track register read/write  
0x12: EXDOS WD177x sector register read/write  
0x13: EXDOS WD177x data register read/write  
0x14: EXDOS WD177x (echo of port 0x10) write command register / read status register  
0x15: EXDOS WD177x (echo of port 0x11) track register read/write  
0x16: EXDOS WD177x (echo of port 0x12) sector register read/write  
0x17: EXDOS WD177x (echo of port 0x13) data register read/write  
0x18: EXDOS card status/control register  
0x19: EXDOS card (echo of port 0x18) status/control register  
0x1A: EXDOS card (echo of port 0x18) status/control register  
0x1B: EXDOS card (echo of port 0x18) status/control register  
0x1C: EXDOS card (echo of port 0x18) status/control register  
0x1D: EXDOS card (echo of port 0x18) status/control register  
0x1E: EXDOS card (echo of port 0x18) status/control register  
0x1F: EXDOS card (echo of port 0x18) status/control register  

## Turbo [EXDOS](../../hardware/hd-exdos.md) speed switching

0x20: Turbo EXDOS speed switching

## Not so much used, special

> There is a plan to use [Z180](../../hardware/cpu/z180.md) in the Enterprise instead of [Z80](../../hardware/cpu/z80.md) by Zozo (note: Z180 is not fully Z80 compatible, for example it does not know the IX/IY register splitting into two 8 bit ones). Since Z180 has built-in I/O ports, some EXOS versions from Zozo use these ports to pre-program the Z180 I/O space not to collade with other I/O ports in the system.

0x32: Z180 configuration   
0x3F: Z180 configuration   

## [ZX Spectrum emulator](../../hardware/he-zxemu.md) card

0x40: ZX Spectrum emulator card, high byte address  
0x41: ZX Spectrum emulator card, low byte address  
0x42: ZX Spectrum emulator card, data  
0x43: ZX Spectrum emulator card, operation type  
0x44: Spectrum emulator, write: enable emulator  

## APU (AMD Am9511) "FPU" I/O ports

> An experiment to add some mathematical processing power :) to the system with the [AMD Am9511 chip](../../hardware/cpu/am9511.md), also named as the "APU". There is not so much a standard way to use its capabilities, you need custom softwares written for it.

0x50: APU (AMD Am9511) "FPU" read data or write data  
0x51: APU (AMD Am9511) "FPU" read status or write command  

## RTC card from Zozosoft

> Zozosoft's RTC card, supported by ZT (ZozoTools) ROM (you can have real time clock above the status line with the help of 1Hz interrupt).

0x7E: CMOS RTC/memory register select  
0x7F: CMOS RTC/memory register read/write  

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

0xA0: Dave tone channel 0 frequency low byte  
0xA1: Dave tone channel 0 frequency high nybble + params  
0xA2: Dave tone channel 1 frequency low byte  
0xA3: Dave tone channel 1 frequency high nybble + params  
0xA4: Dave tone channel 2 frequency low byte  
0xA5: Dave tone channel 2 frequency high nybble + params  
0xA6: Dave noise frequency, polynominal counter + misc  
0xA7: Dave sync, D/A mode, and interrupt selection  
0xA8: Dave tone channel 0 left volume  
0xA9: Dave tone channel 1 left volume  
0xAA: Dave tone channel 2 left volume  
0xAB: Dave noise channel left volume  
0xAC: Dave tone channel 0 right volume  
0xAD: Dave tone channel 1 right volume  
0xAE: Dave tone channel 2 right volume  
0xAF: Dave noise channel right volume  
0xB0: Dave MMU reg, page 0 (0000-3FFF) selector  
0xB1: Dave MMU reg, page 1 (4000-7FFF) selector  
0xB2: Dave MMU reg, page 2 (8000-BFFF) selector  
0xB3: Dave MMU reg, page 3 (C000-FFFF) selector  
0xB4: Dave enable/reset interrupt sources/latches  
0xB5: Dave active low strobe on WR0/RD0 (keyboard row select/read)  
0xB6: Dave active low strobe on WR1/RD1   
0xB7: Dave active low strobe on WR2/RD2  
[0xBF / 191](ports/port191.md): Dave sysconfig register (wait states, clkdiv)  

## [IDE card](../../hardware/exdos/hd-ide.md) from Zozosoft

0xE0: Possible another IDE card (see ports 0xEC-0xEF for the layout)   
0xE1		- "" -  
0xE2		- "" -   
0xE3		- "" -  
0xE4: Possible another IDE card (see ports 0xEC-0xEF for the layout)  
0xE5		- "" -  
0xE6		- "" -  
0xE7		- "" -  
0xE8: Possible another IDE card (see ports 0xEC-0xEF for the layout)  
0xE9		- "" -  
0xEA		- "" -  
0xEB		- "" -  
0xEC: IDE data register low byte  
0xED: IDE data register high byte  
0xEE: IDE command register port 1  
0xEF: IDE command register port 0  

## External DAC

> I have not so much idea, it's some kind of solution to play digitalized samples in a better quality than Dave can do (6 bits).  
> 4 x 8bit DAC, probably to support 4 channel "MOD like" file playing (DTM files?). It's stereo, 2-2 channels for left and right.

0xF0: External DAC write  
0xF1: External DAC write  
0xF2: External DAC write  
0xF3: External DAC write  

## [2dfx](../../hardware/hv-2dfx.md)

[F8h / 248](ports/port248.md):  
[F9h / 249](ports/port249.md):  через нього 2dfx отримує параметри відповідної команди


## [ZX Spectrum emulator](../../hardware/he-zxemu.md) again

> See information about the Spectrum emulator above in the list. These ports are used in ZX Spectrum.

0xFE: Spectrum emulator  
0xFF: Spectrum emulator  