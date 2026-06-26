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
## Built-in: [Dave](../../hardware/hm-dave.md) (audio, interrupt controller, memory mapper chip) I/O ports

[0xBF / 191](ports/port191.md): Dave sysconfig register (wait states, clkdiv)

## IDE card from Zozosoft
## External DAC
## [ZX Spectrum emulator](../../hardware/he-zxemu.md) again