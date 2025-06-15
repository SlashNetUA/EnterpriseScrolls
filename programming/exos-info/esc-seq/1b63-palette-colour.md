# Зміна кольору палітри

Керуюча послідовність, яка дозволяє змінити лише один колір палітри.

Формат:

`escc<n><c>`

`1B`,`63`,**n**,**c**

Де **n** – це номер кольору палітри **0**—**7**, а **c** – це нове значення для цього кольору палітри.

Під час вибору нових кольорів палітри будь-які блоки параметрів лінії, що відповідають цій відеосторінці, будуть оновлені, тому кольори на екрані зміняться.

Також див: [Set Palette Colours](1b43-palette-colours.md)

## Eng
Escape sequence which allows just one palette colour to be changed.

The format of this is:

`escc<n><c>`

`1B`,`63`,**n**,**c**

Where **n** is the palette colour number **0**—**7** and **c** is the new value for this palette colour.

When new palette colours are selected any line parameter blocks which correspond to this video page will be updated so the colours on the screen will change.

See also: [Set Palette Colours](1b43-palette-colours.md).