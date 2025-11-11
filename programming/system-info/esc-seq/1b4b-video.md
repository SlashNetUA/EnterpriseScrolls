# Змінити вигляд символу

Тип каналів: усі відеосторінки

Ця керуюча послідовність дозволяє користувачеві перевизначити один із 256 символів. Хоча вона надсилається до певного каналу, вона фактично впливає на глобальний шрифт символів і, таким чином, впливатиме на інші канали. Символи які вже відображаються будуть автоматично змінені лише на апаратних текстових відеосторінках. В інших режимах це вплине лише на символи які будуть виведені пізніше.

Формат:

`escK<n><r1><r2><r3><r4><r5><r6><r7><r8><r9>`

`1B`,`4D`,**n**,**r1**,**r2**,**r3**,**r4**,**r5**,**r6**,**r7**,**r8**,**r9**

де:  
**n** – номер символу (**0**—**255**).
**r1**—**r9** – байти для дев'яти рядків символу, **r1** – верхній рядок.

Примітка: У текстовому режимі високої роздільної здатності фактично відображатимуться лише середні шість бітів байтів символів, оскільки два інші маскуються та використовуються для задання кольору символу.

[IS-Basic](../../../manuals/is-basic-man-en/options/man_vo-character.md)

## Eng
This escape sequence aliows the user to re-define one of the 256 characters. Although it is sent to a specific channel, it actually affects the global character font and will thus affect other channels. Characters already
displayed on a page will only be affected for hardware text pages. In other modes only subsequently written characters will be affected.

The syntax of the escape sequence is:

`escK<n><r1><r2><r3><r4><r5><r6><r7><r8><r9>`

`1B`,`4D`,**n**,**r1**,**r2**,**r3**,**r4**,**r5**,**r6**,**r7**,**r8**,**r9**

where:  
**n** is the character number (**0**—**255**).  
**r1**—**r9** are the bytes for the nine rows of the character, **r1** is the top row.

Note: In high resolution text mode, only the middle six bits of the character bytes will actually be
displayed as the other two are masked out and used to control the colour selection.
