# Зміна типу малювання у атрибутному режимі

Тип каналів: графічні відеосторінки

Формат: 

`esca<n>`

HEX: `1Bh`,`61h`,**n**

DEC: `27`,`97`,**n**

Байт прапорців атрибутів підтримується лише для *сторінок атрибутної графіки*. Він складається з **восьми** окремих прапорців: **чотирьох** для *малювання графіки* (точок, ліній, еліпса та заливки) та **чотирьох** для *малювання символів*. Основна операція, на яку впливає це, — це малювання пікселя.

Під час малювання пікселя в режимі атрибутів можна вплинути на три елементи. Є **біт** у *байті даних пікселя*, який відповідає цьому пікселю, та є **два кольори** ("чорнило" та "папір") у *байті атрибута*, які відповідають цьому *байту даних пікселя*. Байт прапорців атрибутів містить прапорець для кожного з цих трьох елементів, який контролює, чи буде на нього вплинуто малювання пікселя. Якщо заподіяно вплив на атрибут "чорнила", то він буде встановлено на поточний колір "чорнила". Якщо заподіяно вплив на атрибут "паперу", то він буде встановлено на поточний колір "паперу".

Дані пікселів є дещо складнішими. Якщо припустити, що дані пікселів мають бути вплинуті, то в байті прапорців атрибутів є ще один біт, який контролює, що робиться з даними пікселів, разом із поточним режимом рядка. Для побудови символів, якщо цей біт встановлено, то символ буде доповнено перед побудовою. Для побудови графіки, якщо відповідний біт встановлено, то в біт пікселя буде вставлено нуль замість звичайного. Під час побудови графіки (але не символів) біт насправді не вставляється безпосередньо в байт пікселя, а поєднується з поточним значенням біта відповідно до поточного режиму рядка. Це означає, наприклад, що виключення або побудова графіки все одно працюватиме.

**Чотири верхні** біти байта прапорців атрибутів керують *побудовою символів*, а чотири нижні** керують *побудовою графіки*. Для всіх бітів «нормальний» стан дорівнює **нулю**, що призводить до того, що всі атрибути та дані пікселів будуть враховані, а малювання графіки буде у звичайному сенсі. Призначення бітів:

**біт-7**: Впливати на атрибути "паперу" під час малювання символів
**біт-6**: Впливати на атрибути "чорнила" під час малювання символів
**біт-5**: Впливати на дані пікселів під час малювання символів
**біт-4**: встановлюється для доповнення символу перед малюванням
**біт-3**: Впливати на атрибути "паперу" під час малювання графіки
**біт-2**: Впливати на атрибути "чорнила" під час малювання графіки
**біт-1**: Впливати на дані пікселів під час малювання графіки
**біт-0**: встановлюється для малювання графіки в **0** замість **1**

Зверніть увагу, що під час заповнення **біт-1** байта атрибута вважається чистим незалежно від його фактичного стану. Це необхідно, тому що якби дані пікселів не були змінені, алгоритм залиття кольором ніколи б не завершився.

[IS-BASIC](../../is-basic_man-en/man_vo-attributes.md)

## Eng
Attribute Flags Byte

The attribute flags byte is only supported for *attribute graphics pages*. It consists of **eight** separate flags, **four** for *plotting graphics* (points, lines, ellipses and filling) and **four** for *plotting characters*. The basic operation which is affected is that of plotting a pixel.

When plotting a pixel in attribute mode there are three items which can be affected. There is the **bit** in the *pixel data byte* which corresponds to this pixel, and there are the **two colours** (ink and paper) in the *attribute byte* which corresponds to this *pixel data byte*. The attribute flags byte contains a flag for each of these three items which controls whether or not it is affected when a pixel is plotted. If the ink attribute is to be affected then it will be set to the current ink colour. If the paper attribute is to be affected then it will be set to the current paper colour.

The pixel data is rather more complex. Assuming that the pixel data is to be affected then there is another bit in the attribute flags byte which controls what is done with the pixel data, in conjunction with the current line mode. For plotting characters, if this bit is set then the character will be complemented before being plotted. For plotting graphics, if the corresponding bit is set then a zero will be put into the pixel bit instead of the usual one. When plotting graphics (but not characters) the bit is not in fact put directly into the pixel byte but is combined with the current value of the bit according to the current line mode. This means for example that exclusive or plotting will still work.

The **top four** bits of the attribute flags byte control *character plotting* and the **bottom four** control *graphics plotting*. For all bits the 'normal' state is **zero** which results in all attributes and pixel data being affected, and plotting to be in the normal sense. The assignement of bits is:

**bit-7**: Affect paper attributes in character plotting  
**bit-6**: Affect ink attributes in character plotting  
**bit-5**: Affect pixel data in character plotting  
**bit-4**: set to complement character before plotting  
**bit-3**: Affect paper attributes in graphics plotting  
**bit-2**: Affect ink attributes in graphics plotting  
**bit1**: Affect pixel data in graphics plotting  
**bit-0**: set to do graphics plotting in **0**'s instead o **1**'s

Note that when filling **bit-1** of the attribute byte is assumed to be clear regardless of its actual state. This is necessary because if the pixel data were not affected then the fill algorithm would never terminate.

