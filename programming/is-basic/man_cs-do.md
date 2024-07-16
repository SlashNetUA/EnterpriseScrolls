# DO

```
do-line
  any number of statements or blocks
loop-line
```

**do-line**:  
`DO`  
`DO WHILE relational-expression`  
`DO UNTIL relational-expression`

**loop-line**:  
`LOOP`  
`LOOP WHILE relational-expression`  
`LOOP UNTIL relational-expression`

The structure of a loop is defined as a block, with a **DO** line, the loop body, and a **LOOP** line. **DO** or **LOOP** cannot be placed on a conditional line.

```
DO WHILE A>3 AND A<10
  LET A=A+1
  PRINT A
LOOP
```

Control cannot be transferred from outside to inside of a loop. See also [EXIT DO](man_cs-exit-do.md).
