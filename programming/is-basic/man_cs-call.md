# CALL

`CALL function`  
`CALL function (para-list)`

Used to call a function (either built-in, or defined by [DEF](man_cs-def.md)), when no result is required from the function.
Any expression following **CALL** will be evaluated, and the result ignored. `CALL USR(A,B)+USR(C,D)` will therefore call two machine code **USR** programs.
Can be executed in immediate mode.