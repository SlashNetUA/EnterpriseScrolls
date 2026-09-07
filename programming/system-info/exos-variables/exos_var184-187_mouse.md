---
title: EXOS variable 184/185/186/187 - (MOUSE.XR)
---
# 184 - (MOUSE.XR)

`ASK 184 var`  
`SET 184, expr`  
`TOGGLE 184` - inverts value.

Low byte of **X** co-ordinate.

----

# 185 - (MOUSE.XR)

`ASK 185 var`  
`SET 185, expr`  
`TOGGLE 185` - inverts value.

High byte of **X** co-ordinate.


----

# 186 - (MOUSE.XR)

`ASK 186 var`  
`SET 186, expr`  
`TOGGLE 186` - inverts value.

Low byte of **Y** co-ordinate.

----

# 187 - (MOUSE.XR)

`ASK 187 var`  
`SET 187, expr`  
`TOGGLE 187` - inverts value.

High byte of **Y** co-ordinate.


----

Зчитування координат вказівника із системних змінних.

```basic
DEF MOUSE_POS
  ASK 184 XL
  ASK 185 XH
  ASK 186 YL
  ASK 187 YH
  LET X1=XL+256*XH
  LET X=X1*X_COUNT
  LET Y=YL+256*YH
  LET Y=Y*2
  LET Y=MAX_Y-Y
END DEF
```


Встановлення координат миші через системні змінні.

```basic
DEF POS_MOUSE
  LET X=INT(X/X_COUNT)
  LET XL=X-256*INT(X/256)
  LET XH=INT(X/256)
  LET Y=MAX_Y-Y:LET Y=INT(Y/2)
  LET YL=Y-256*INT(Y/256)
  LET YH=INT(Y/256)
  SET 184,XL
  SET 185,XH
  SET 186,YL
  SET 187,YH
END DEF
```

> [!ℹ]
> Зверніть увагу, що `X_COUNT` дорівнює **2** у **2**-колірному режимі, **4** у **4**-колірному режимі, **8** у **16**-колірному режимі та **16** у **256**-колірному режимі. Усі ці значення подвоюються в режимі низької роздільної здатності (lores).
> 
> `MAX_Y=висота_відеосторінки_у_строках*36-2`


