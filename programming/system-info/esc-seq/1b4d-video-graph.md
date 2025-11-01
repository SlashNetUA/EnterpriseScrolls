# Вибір режиму малювання ліній (Line Mode)

Тип каналів: графічні відеосторінки

Формат: 

`escM<n>`

hex: `1B`,`4D`,**n**  

dec: `27`,`77`,**n**  

Послідовність визначає байт режиму малювання ліній, який має такі значення:

**0**: Колір пікселя заміщується новим значенням *(за замовчуванням)*  
**1**: OR малювання  
**2**: AND малювання  
**3**: XOR малювання  

Для сторінок піксельної графіки під час малювання пікселя поточний колір чорнила поєднується зі старим кольором пікселя відповідно до операції, вибраної режимом малювання, а потім зберігається.

Див. також [Стиль ліній](1b2e-video-graph.md) та [IS-Basic](../../is-basic_man-en/man_vo-line-mode.md).

## Eng
**Graphics Line Mode**

An escape sequence specifies the line mode byte which has the following meanings:

**0**: PUT plotting *(default)*  
**1**: OR plotting  
**2**: AND plotting  
**3**: XOR plotting  

For pixel graphics pages when plotting a pixel the current ink colour is combined with the old colour of the pixel according to the operation selected by the line mode and then stored.

See also [Graphics Line Style](1b2e-video-graph.md).