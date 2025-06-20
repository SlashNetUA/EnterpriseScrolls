# Отримати координати променю

Тип каналів: графічні відеосторінки

Формат: 

`esc@`

hex: `1B`,`40`

dec: `27`,`64`

Керуюча послідовність `esc@` дає команду відеоканалу повернути поточні координати графічного променя, коли наступні чотири байти будуть зчитані з відеосторінки. Координати повертаються в тому ж форматі, в якому вони були б вказані для [позиціонування променя](esc-seq/1b41-video-graph.md).

Приклад програми на IS-Basic:

```
100 GRAPHICS  
110 NUMERIC POSX,POSY  
120 PLOT 456,234  
130 CALL GRXY(101,POSX,POSY)  
140 PRINT POSX,POSY  
150 DEF GRXY(CH,REF X,REF Y)  
160   PRINT #CH:CHR$(27);"@";  
170   GET #CH:XL$:GET #CH:XH$  
180   GET #CH:YL$:GET #CH:YH$  
190   LET X=ORD(XL$)+256*ORD(XH$)  
200   LET Y=ORD(YL$)+256*ORD(YH$)  
210 END DEF
```

## Eng
Reading beam position

The escape sequence: `esc@` will trigger the channel to return the current graphics beam position as the next four bytes read from the video page. The co-ordinates are returned in the same format as they would be specified for an absolute beam position.