# IF

`IF relational-expression THEN line-number`  
`IF relational-expression THEN simple-statement`  

Statements not allowed on an **IF** line are [DATA](man_cs-data.md), [DEF](man_cs-def.md), [END](man_cs-end.md), [DIM](man_cs-dim.md), [NUMERIC](man_cs-numeric.md), [STRING](man_cs-string.md), a further **IF**, or any statement which introduces a block.

`IF A>=3 AND A<=9 THEN 100`  
`IF A>=3 THEN GOTO 100`

```
if-line
  any number of statements or blocks
else-if-lines option
  any number of statements or blocks
else-line option
  any number of statements or blocks
end-if-line
```

**if-line**:  
`IF relational-expression THEN`

**else-if-line**:  
`ELSE IF relational-expression THEN`

There can be any number of **ELSE IF** lines.

**else-line**:  
`ELSE`

**end-if-line**:  
`END IF`

**IF** blocks can contain any statement which is not restricted to immediate mode.

```
IF A<10 THEN
  PRINT A
ELSE IF A>30 AND A<=40 OR A>50 THEN
  PRINT A+100
ELSE
  PRINT B
END IF
```

The **ELSE** and **ELSE IF** lines can be used to break the block into sub-blocks with the usual meanings. **ELSE** may only be used once, but **ELSE IF** can be used as often as needed. Control cannot be transferred from outside to inside of an **IF** block.
