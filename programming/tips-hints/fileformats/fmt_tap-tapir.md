---
title: "Формат файлу «TAP: Tapir tape image»"
---
# Tapir tape image file

Може використовуватись у наступних програмах:

 - [EP-emu](../../../emulators/em-ep-emu.md) - емулятор (читання)
 - [TAPir](../../../software-pc/pc-tapir.md) - редактор образів стрічок та віртуальний магнітофон (читання/запис)

По структурі майже ідентичний формату [EPTE](fmt_tap-epte.md), але 512-байтовий заголовок має інший формат.

Файли зберігаються у бінарному виді (аналогічно як у TAP для ZX Spectrum). Нестандартні лоадери не підтримуються.

## Header (512 bytes)

TODO

## Body

See [fmt_tape-bin-img](fmt_tape-bin-img.md)