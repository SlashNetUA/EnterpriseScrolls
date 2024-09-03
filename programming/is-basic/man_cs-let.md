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

Мы можем использовать инструкцию [IF](man_cs-if.md) для условного присвоения значения, например:  

`IF V=1 THEN LET A=3`

 Существует также более элегантный, но в некоторых случаях вариант предоставления значения времени выполнения на 10 % медленнее, остающийся в рамках предыдущего примера:

`LET A=-3*(V=1)`

Содержимое скобок проверяется системной программой на равенство (истинность). Если это правда, то выражение в скобках логически истинно и получает значение **-1**. Если это не так, то это будет **0**.
