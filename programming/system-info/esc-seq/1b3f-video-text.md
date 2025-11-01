# Отримати поточні координати курсора

Тип каналів: текстові відеосторінки (та атрибутні графічні відеосторінки)

Формат: 

`esc?<n>`

hex: `1B`,`3F`

dec: `27`,`63`

Керуюча послідовність `esc?` дає команду відеоканалу повернути поточні координати курсора, коли наступні два символи будуть прочитані з цього каналу. Зчитані координати відповідатимуть тим, що використовуються для [розміщення курсора](1b3d-video.md), тобто з урахуванням зміщення на **20h**.

Фрагмент програми на IS-Basic:

```
100 PRINT #CH:CHR$(27);"?";  
110 GET #CH:Y$
120 GET #CH:X$
```

## Eng

Reading Cursor Position

The escape sequence: `esc?` is supported in text and attribute graphics modes. It triggers the video channel to return the current cursor co-ordinates as the next two characters read from this channel. The co-ordinates will be returned in the same way as they are specified for cursor positioning, ie. with a **20h** offset added on.