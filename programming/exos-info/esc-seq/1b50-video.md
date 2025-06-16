# Визначення кольорів "паперу" (усі відеосторінки)

`escP<n>`

hex: `1B`,`50`,**n**  

dec: `27`,`80`,**n**  

Користувач може вказати колір палітри як для кольору "чорнила", так і для кольору "паперу" за допомогою окремих escape-послідовностей. Для всіх відеорежимів колір чорнила за замовчуванням дорівнює **одиниці**, а колір паперу – **нулю**.

Для сторінок *піксельної графіки* дозволені кольори чорнила та паперу залежать від колірного режиму, тому це **0** або **1** у *двоколірному режимі*, **0**–**3** у *чотириколірному режимі*, **0**–**15** у *шістнадцятиколірному режимі* та **0**–**255** у *256-колірному режимі*. Пікселі завжди відображаються поточним кольором чорнила. Колір паперу дисплея змінюється лише тоді, коли сторінка очищується.

Для *режиму атрибутної графіки* кольори чорнила та паперу можуть бути в діапазоні **0**–**15**, і вони контролюють, які кольори поміщаються в байти атрибутів. Див. також [байт прапорця атрибутів](1b61.md), який визначає, як будуть оновлюватись дані атрибутів та пікселів.

У *текстових режимах* з *чотирма*, *шістнадцятьма* або *256 кольорами* кольори чорнила та паперу не мають корисного ефекту, оскільки кольори палітри для кожного пікселя визначаються безпосередньо з бітів шрифту символів. Насправді вони певною мірою взаємодіють з відображеними кольорами, і найкраще залишити їх встановленими за замовчуванням. Ці режими корисні лише тоді, коли символи були перевизначені для створення певного типу блочної графіки.

У *двоколірному апаратному текстовому режимі* кольори чорнила та паперу завжди (**0**,**1**) або (**2**,**3**). Якщо чорнило або папір змінюються, то інший колір змінюється відповідно.

У *двоколірному програмному текстовому режимі* доступні чотири пари кольорів: (**0**,**1**), (**2**,**3**), (**4**,**5**) та (**6**,**7**). Символи завжди друкуються в поточній парі кольорів.

Також див. [Визначення кольорів "чорнила"](1b49-video.md).

## Eng 

**Paper Colour**

The user may specify a palette colour for both the ink and paper colour with separate escape sequences. For all video modes the ink colour defaults to **one** and the paper colour to **zero**.

For *pixel graphics* pages the allowed ink and paper colours depend on the colour mode, so it is **0** or **1** in *two colour mode*, **0**—**3** in *four colour mode*, **0**—**15** in *sixteen colour mode* and **0**—**255** in *256 colour mode*. Pixels are always plotted in the current ink colour. The paper colour of the display is only changed when the page is cleared.

For *attribute graphics mode* the ink and paper colours can be in the range **0**—**15** and they control what colours are put into the attribute bytes. See also the [attribute flags byte](1b61.md) which determines whether the attribute and pixel data is actually updated.

In *four*, *sixteen* or *256 colour text modes* the ink and paper colours have no useful effect because the palette colours for each pixel are determined directly from bits in the character font. In fact they do have some interaction with the displayed colours and it is best to leave them set to their default values. These modes are only useful if the characters have been redefined to provide some sort of block graphics.

In *two colour hardware text mode* the ink and paper colours are always (**0**,**1**) or (**2**,**3**). If the ink or paper is changed then the other one is changed to correspond.

In *two colour software text mode* four colour pairs are available, (**0**,**1**), (**2**,**3**), (**4**,**5**) and (**6**,**7**). Characters are always printed in the current colour pair.

See also [Ink Colour](1b50-video.md).