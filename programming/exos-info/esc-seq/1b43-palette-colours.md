# Встановлення кольорів палітри
Кожна відеосторінка має пов'язану з нею палітру з восьми кольорів, яка ініціалізується визначеним набором кольорів під час створення каналу. За допомогою наступної керуючої послідовності користувач може змінити всі ці кольори.

Формат наступний:

`escC<c0><c1><c2><c3><c4><c5><c6><c7>`

`1B`,`43`,**c0**,**c1**,**c2**,**c3**,**c4**,**c5**,**c6**,**c7**

Кожен **c** – це байт, що визначає один із кольорів палітри, і їх завжди має бути вісім.

Під час вибору нових кольорів палітри будь-які блоки параметрів лінії, що відповідають цій відеосторінці, будуть оновлені, тому кольори на екрані зміняться.

Існує ще одна керуюча послідовність, яка дозволяє змінити лише один колір палітри: [set palette colour](1b63-palette-colour.md)

## Eng
Each video page has a palette of eight colours associated with it which is initialised to a useful set of colours when the channel is opened. There is an escape sequence with which the user can change all these colours.

The format of this is:

`escC<c0><c1><c2><c3><c4><c5><c6><c7>`

`1B`,`43`,**c0**,**c1**,**c2**,**c3**,**c4**,**c5**,**c6**,**c7**

Each **c** is a byte specifying one of the palette colours and there must always be eight of them.

When new palette colours are selected any line parameter blocks which correspond to this video page will be updated so the colours on the screen will change.

There is another escape sequence which allows just one palette colour to be changed: [set palette colour](1b63-palette-colour.md).