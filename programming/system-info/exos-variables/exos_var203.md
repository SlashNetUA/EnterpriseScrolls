# 203 - DATUM_FLAG (Enterprise Plus)

`ASK 203 var`  
`SET 203, expr`  
`TOGGLE 203` - inverts value.

Ez egy kétfunkciós változó.  

**255**: akkor a DATUM parancs DEFAULT video csatornára ír, az aktuális kurzorpozíciótól kezdődően.  
**0**-**6**: akkor a DATUM parancs e változóba teszi le azt, hogy a belső dátum változó által meghatározott nap a hét hányadik napja. 0 = Vasárnap, 1 = Hétfő, stb.