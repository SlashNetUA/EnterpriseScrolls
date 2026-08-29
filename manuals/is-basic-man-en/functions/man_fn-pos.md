---
title: "IS-Basic Manual. POS(X$,Y$)"
---
# POS(X\$,Y\$)
# POS(X\$,Y\$,X)


Gives the position in **X\$** (counting the characters from left to right) where **Y\$** first occurs. If **Y\$** cannot be found in **X\$**, the result is **0**.  
By adding a number after the second string (i.e. **POS(X\$,Y\$,X)**), you can tell the machine to begin looking for **Y\$** from a specific place in **X\$**.  
If **X\$** is "**LONDON**" and **Y\$** is "**ON**", then **POS(X\$.Y\$)** is **2**. But **POS(X\$,Y\$,4)** would tell the computer to start from the "**D**" in "**LONDON**" when looking for "**ON**", and would give the result **5**.

----

Функція має помилку. Наступна команда повертає значення **0** (підстроку не знайдено), замість **7**.

```basic
PRINT POS("ABCABCAB1","AB1")
 0
```

В якості заміни можна використовувати наступну підпрограму:

```basic
100 DEF XPOS(A$,B$)
110   LET P=0
120   DO
130     LET P=P+1
140     LET P=POS(A$,B$(1:1),P)
150     LET Q=POS(A$,B$,P)
160   LOOP UNTIL P=0 OR Q>0
170   LET XPOS=Q
180 END DEF
```