# CHARACTER

`SET £chan:CHARACTER n,r1,r2,r3,r4,r5,r6,r7,r8,r9`

Defines the pattern of the character with ASCII code '**n**'. Each of the parameters **r1**-**r9** defines one row of the pattern, starting from the top.

To assist in creating characters, the [BIN](../functions/man_fn-bin.md) function can be used to specify each pixel in a row as a **0** or **1**.

Although a channel number is specified, the command will affect all video pages. The channel number defaults to **£102**.

To return all characters to their default settings, use [CLEAR FONT](../commands/man_cs-clear.md).

----

Так як EXOS використовує відеосторінки лише із **128** друкованими символами, то за допомогою цієї команди можна змінити шрифт лише у символів **32**-**159**. Інші значення параметру **n** будуть автоматично скоректовані до потрібних (**0**-**31** → **128**-**159**; **160**-**255** → **32**-**127**).

[Таблиця символів](../../../programming/system-info/info_characters.md)