# DEF

`DEF numeric-id=expression`  
`DEF numeric-id(parameter-list)=expression`  
`DEF string-id=string-expression`  
`DEF string-id(parameter-list)=string-expression`

One-line function definition:

`DEF AVERAGE(X,Y)=(X+Y)/2`

**DEF block**; this is a group of statements that can be called as a function returning a value in the expression, or as a procedure statement. There are several small changes from the ANSI definition. See also [CALL](man_cs-call.md), [EXIT DEF](man_cs-exit-def.md), [NUMERIC](man_cs-numeric.md) and [STRING](man_cs-string.md).

```
def-line
  any number of statements of blocks
end-def-line
```

**def-line**:  
`DEF numeric-id`  
`DEF numeric-id(parameter-list)`  
`DEF string-id`  
`DEF string-id(parameter-list)`

**end-def-line**:  
`END DEF`

If the function is intended to return a value, this value should be assigned to the function name within the **DEF block**.

```
DEF ANSWER(A$)
  IF UCASE$(A$(1:1))="Y" THEN
    ANSWER=1
  ELSE IF UCASE$(A$(1:1))="N" THEN
    ANSWER=0
  ELSE
    ANSWER=-1
  END IF
END DEF
```

The scope of variables at any point in a program is dynamic – that is, it depends upon the history of which lines have been executed, and not upon the static layout of the program.

```
100 NUMERIC FRED
110 LET FRED=1
120 CALL Q
130 PRINT FRED
140 END
200 DEF P
210 	LET FRED=123	! This FRED is a global.
220 END DEF
300 DEF Q
310 	NUMERIC FRED	! A local FRED.
320 	LET FRED=0
325 	CALL P
330 	PRINT FRED
350 END DEF
```

In this example, FRED is used both as a global and as a local. When line 210 is executed, the FRED at 310 gets changed to 123 and not the one at 100. The program will print 123 and 1. In a static scope language, the program would print 0 and 123; this may happen if the same program is run under a compiler BASIC.

Everything declared within a **DEF block** is local to that block, and allocated at each first execution of the declaration after the call. Anything not declared may be local or global depending on the history.

It is best to declare all variables at the start of each program or function in order to avoid unexpected results.

```
100 CALL P	! This call of P has I as local to P.
110 LET I=9
120 CALL P	! This call of P changes the global I.
130 END
200 DEF P
210 	LET I=6
220 END DEF
```

In order lo give consistent results, a line

`90	NUMERIC I`

should be added to the program; this will make I global in both calls of P.

The memory used for the storage of local variables is released when a function is exited. This characteristic can be exploited for the efficient use of computer memory — for example, a temporary data array can be within a function.

Almost anything can be passed as a reference parameter. Normally parameters are passed by value, which means that copies are passed to the function and any operation inside the function does not change the external variables. Reference parameters take their type from the actual parameter, and any changes inside the function change the external variables also.

```
100 DEF SWAP(REF A,REF B)
110 	NUMERIC T
120 	LET T=A
130 	LET A=B
140 	LET B=T
150 END DEF
200 LET X=99
210 LET Y=23
220 CALL SWAP(X,Y)
230 PRINT X,Y
```

Prints	`23	99`

Arrays and functions must always be passed by reference.

```
100 NUMERIC A(10)
110 OPTION ANGLE DEGREES
120 DEF P(REF FN,X)
130 	PRINT FN(X),
140 END DEF
150 LET A(2)=66
160 CALL P(A,2)
170 CALL P(SIN,30)
```

Prints	`66	.5`

Passing built-in and user functions can be very useful for library software. A graph-drawing function can have the function to be plotted passed as a parameter, a sort function can have the exchange and compare routines passed as functions.

Functions can call themselves recursively.