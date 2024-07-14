# SELECT

`select-line`  
`case-line`  
`  any number of statements or blocks`  
`case-line option`  
`  any number of statements or blocks`  
`end-select-line`

select-line:  
`SELECT CASE expression`

case-line:  
`CASE expression`  
`CASE expression TO expression`  
`CASE IS relop expression`  
`CASE ELSE`

end-select-line:  
`END SELECT`

The SELECT block is a group of statements to test the variable or expression against a number of alternative conditions.

The word CASE in the SELECT line is optional unless the expression begins with an identifier CASE.

e.g. `SELECT CASE CASE+23`

There can be any number of CASE lines. The cases are tested in order of line-numbers. There is no point in having additional case-lines after a CASE ELSE, since they cannot normally be reached. Several cases can be combined on one line by separating them with commas.

e.g. `CASE 1,2,3 TO 6,99`

```
SELECT CASE N
CASE 1
  PRINT "first case"
CASE 2 TO 9,11,21
  PRINT "some more cases"
CASE IS<=A+20
  PRINT "even more cases"
CASE ELSE
  PRINT "rest of cases"
END SELECT
```

The CASE ELSE line can only be used once, and must follow all the other CASE lines. The other CASE lines can be used in any order as necessary, the lines in between two CASE lines forming a block. Control cannot be transferred from outside to inside of a SELECT block.

String SELECTS are also available.
