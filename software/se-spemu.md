# SPEmu / SPEmu128

http://ep128.hu/Ep_Util/SPEmu.htm

Емулятор комп'ютерів **Sinclair ZX Spectrum 48/128**.

Автор: [Geco](../community/geco.md)

Підтримка форматів для завантаження:
 - аудіовхід (у форматі стандартного сигналу для ZX Spectrum) 
 - TAP-файл у стандартному форматі для ZX Spectrum який можна завантажувати з EXOS-сумісних накопичувачів.
 - SNA-файл у стандартному форматі для ZX Spectrum який можна завантажувати з EXOS-сумісних накопичувачів.
 - snapshot.snp снапшот власного формату який можна завантажувати з EXOS-сумісних накопичувачів.

Підтримка форматів для зберігання:
 - аудіовихід (у форматі стандартного сигналу для ZX Spectrum) 
 - TAP-файли для збереження інформації з програм які можна зберігати на EXOS-сумісних накопичувачах.
 - snapshot.snp снапшот власного формату який можна зберігати на EXOS-сумісних накопичувачах.


## Формат снапшоту snapshot.snp

Розмір файлу: 49179 байтів

**001Bh**-**1B1Bh**: екран у форматі SCR