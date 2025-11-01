# Заповнити замкнений контур кольором (fill)

 Тип каналів: графічні відеосторінки

Формат: 

`escF<n>`  

HEX: `1Bh`,`46h`,**n**  

DEC: `27`,`70`,**n**  

Команда заливки - це проста послідовність, яка виконує заливку від поточної позиції променя. Вона заповнює поточним кольором "чорнила" до будь-якої межі, колір якої відрізняється від кольору поточної позиції променя. Вона обробляє увігнуті форми та перевіряє досягнення краю відеосторінки. Вона може не заповнити всю фігуру, якщо стек вичерпається, але це має відбуватися лише з надзвичайно складними фігурами, оскільки вона виконує збірку сміття в стеку, коли він заповнюється.

[IS-Basic](../../is-basic_man-en/man_cs-plot.md)

## Eng 
Graphics Fill - Paint

The graphics fill command is a simple escape sequence which does a fill from the current beam position. It fills in the current ink colour up to any boundary which is not the same colour as the current beam position. It handles concave shapes and tests for reaching the edge of the video page. It may fail to fill the entire shape if it runs out of stack but this should only happen with extremely complex shapes since it does garbage collection on the stack when it gets full.