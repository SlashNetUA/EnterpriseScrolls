# FOR

```
for-line
  any number of statements or blocks
next-line
```

**for-line**:  
`FOR simple-variable=expression TO expression STEP expression`

**STEP** can be omitted – the default **STEP** value is **1**.

**next-line**:  
`NEXT`  
`NEXT variable`  

The structure of a **FOR** loop is defined as a block, with a **FOR** line, the loop body, and a **NEXT** line. **FOR** and **NEXT** cannot be placed on a conditional line. Allowed in Minimal BASIC.

```
FOR Y=0 TO 10 STEP 2
  PRINT Y
NEXT Y
```

The value of the control variable after the loop has ended is the terminating value plus the **STEP** expression, i.e. Y will have the value 12 in the example above.

Nested **FOR** loops cannot use the same control variable. The limit and increment expressions are copied to hidden local memory on execution of the **FOR** line; these values cannot be changed by the body of the loop. Control cannot be transferred from outside to inside of a loop. See also **EXIT FOR**.
