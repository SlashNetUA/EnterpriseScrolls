---
title: "IS-Basic Manual. LET"
---
# LET

`LET variable-list=expression`

Simple assignment; **LET** is optional unless the variable name is the same as a keyword. Listing or saving the program causes the **LET** to be inserted so that the program conforms to the standard. Can be executed in immediate mode.

One value can be assigned to several variables:

`LET A,B(4),C=0`  
`A_VAR=A_VAR+1`  
`A$,FRED$='He said"&"Don't"&". "&FRED$(I:J)`  
`LET INPUT=3`  

----

## Tips

Ми можемо використовувати команду [IF](man_cs-if.md) для умовного присвоєння значення, наприклад:  

`IF V=1 THEN LET A=3`

Існує також елегантніший варіант надання значення, який, утім, у деяких випадках виконується приблизно на 10 % повільніше, залишаючись у межах попереднього прикладу:

`LET A=-3*(V=1)`

Вміст дужок перевіряється системною програмою на рівність (істинність). Якщо це правда, то вираз у дужках є логічно істинним і отримує значення **-1**. Якщо ні, то він дорівнюватиме **0**.