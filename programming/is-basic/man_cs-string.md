# STRING

`STRING variable/array-list*n`

Declares string variables or arrays with maximum length. Default length is **132**. Adding **\*n** after the word **STRING** or the variable declaration sets the length to **n**. The default lower bound for an array is **0**.

`STRING*8 LAST_NAME$*20,FIRST_NAME$,MIDDLE_NAME$`

In this example, **LAST_NAME\$** is given a maximum length of **20**; **FIRST_NAME\$** and **MIDDLE_NAME\$** are up to **8** characters long.

`STRING NAME$`

Here, **NAME\$** has a maximum length of **132**.

`STRING NAME$(4 TO 99)*10`

This array has **96** elements, each of **10** characters.

Note: a [DIM](man_cs-dim.md) statement cannot be used to define the length of a string variable.
