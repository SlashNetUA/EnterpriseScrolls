# Вибір стилю малювання ліній (Line Style)

Тип каналів: графічні відеосторінки

Формат: 

`esc.<n>`

hex: `1B`,`2E`,**n**  

dec: `27`,`46`,**n**  

Стиль малювання ліній впливає на малювання ліній та еліпса, але не на побудову символів або заповнення. Значення байта стилю лінії:

**1**: Суцільна лінія *(за замовчуванням)*  
**2**–**14**: Різні типи розривних та пунктирних ліній.

![](../../is-basic_man-en/line-style.png)

Див. також [Режим малювання ліній](1b4d-video-graph.md) та [IS-Basic](../../is-basic_man-en/man_vo-line-style.md).

## Eng
**Graphics Line Style**

For a graphics page the line-style may be set with an appropriate escape sequence. The line style affects line drawing and ellipse drawing but not character plotting or filling. The values for the line style byte are:

**1**: Solid line *(default)*   
**2**–**14**: Various types of broken and dotted lines.

See also [Graphics Line Mode](1b4d-video-graph.md)