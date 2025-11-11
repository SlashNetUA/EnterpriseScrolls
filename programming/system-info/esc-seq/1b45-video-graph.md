# Намалювати еліпс

Тип каналів: графічні відеосторінки

Формат: 

`escE<xx><yy>`  

HEX: `1Bh`,`45h`,**xx**,**yy**  

DEC: `27`,`69`,**xx**,**yy**  

Процедура малювання еліпса приймає два 16-бітні параметри (спочатку молодший байт), що визначають радіуси **x** та **y** (для малювання кола ці значення повинні бути однаковими). Центр еліпса буде знаходитися в поточному положенні променя.

[IS-Basic](../../../manuals/is-basic-man-en/commands/man_cs-plot.md)

## Eng 
Graphics Ellipse Drawing

The ellipse drawing routine takes two 16-bit parameters (low byte first) specifying the **x** and **y** radii. To draw a circle these should be the same value. The centre of the ellipse will be at the current beam position.