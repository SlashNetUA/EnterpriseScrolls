# I/O Ports

Enterprise загалом використовує лише 8-бітну адресацію введення-виведення (I/O) (повноцінна 16-бітна адресація неможлива, оскільки два найстарші біти все одно використовуються мікросхемою Dave для власних потреб). [Офіційний розширювач системної шини](../../hardware/system-bus/hb-main.md) Enterprise має грамотно спроєктований механізм розподілу портів, завдяки якому кожна карта розширення може отримати свій діапазон портів залежно від свого положення у слоті тощо. Але на жаль, ця функція була майже невідомою для багатьох людей (особливо в Угорщині), та й без самого шинного моста вона не має великої користі. Тож, схоже, що у теперішніх апаратних розробках усі так чи інакше використовують більш-менш фіксовані порти введення-виведення.

[http://ep.lgb.hu/doc/ports.html](http://ep.lgb.hu/doc/ports.html) ([web.archive](https://web.archive.org/web/20230530171816/http://ep.lgb.hu/doc/ports.html))

----

## Serial card from Mr Meszaros
## SID "sound card"
## [EXDOS](../../hardware/hd-exdos.md) card
## Turbo [EXDOS](../../hardware/hd-exdos.md) speed switching
## Not so much used, special
## [ZX Spectrum emulator](../../hardware/he-zxemu.md) card
## APU (AMD Am9511) "FPU" I/O ports
## RTC card from Zozosoft
## Built-in: [Nick](../../hardware/hm-nick.md) (video chip) I/O ports

[80h / 128](ports/port128.md): Nick FIXBIAS (for 16 col modes), ext colors priority, speaker switch  
[81h / 129](ports/port129.md): Nick border color  
[82h / 130](ports/port130.md): Nick LPL (low byte of address of the LPT)  
[83h / 131](ports/port131.md): Nick LPH (high byte of address of the LPT), clocking enable, reload bits for LPT  
[84h / 132](ports/port128.md): *Nick (echo of port 80h) FIXBIAS*  
[85h / 133](ports/port129.md): *Nick (echo of port 81h) border color*    
[86h / 134](ports/port130.md): *Nick (echo of port 82h) LPL*  
[87h / 135](ports/port131.md): *Nick (echo of port 83h) LPH*  
[88h / 136](ports/port128.md): *Nick (echo of port 80h) FIXBIAS*  
[89h / 137](ports/port129.md): *Nick (echo of port 81h) border color*  
[8Ah / 138](ports/port130.md): *Nick (echo of port 82h) LPL*  
[8Bh / 139](ports/port131.md): *Nick (echo of port 83h) LPH*  
[8Ch / 140](ports/port128.md): *Nick (echo of port 80h) FIXBIAS*    
[8Dh / 141](ports/port129.md): *Nick (echo of port 81h) border color*  
[8Eh / 142](ports/port130.md): *Nick (echo of port 82h) LPL*  
[8Fh / 143](ports/port131.md): *Nick (echo of port 83h) LPH*  


## Built-in: [Dave](../../hardware/hm-dave.md) (audio, interrupt controller, memory mapper chip) I/O ports

[0xBF / 191](ports/port191.md): Dave sysconfig register (wait states, clkdiv)

## IDE card from Zozosoft
## External DAC
## [ZX Spectrum emulator](../../hardware/he-zxemu.md) again