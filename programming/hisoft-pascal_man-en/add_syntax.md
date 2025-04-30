# CASE

```
CASE selector OF
    caseValue0: statement;
    caseValue1,caseValue7: statement;
    caseValue10..caseValue20: statement
ELSE statement;
```

```
CASE selector OF
  caseValue0,caseValue1: BEGIN statement; statement END;
  caseValue2: BEGIN statement; statement END
  ELSE BEGIN statement; statement END;
```

```
CASE selector OF
  caseValue0,caseValue1: BEGIN statement; statement END;
  caseValue2: BEGIN statement; statement END
END;
```

```
CASE selector OF
  caseValue0,caseValue1:
  BEGIN
    statement; statement
  END;
  caseValue2:
  BEGIN
    statement; statement
  END
  ELSE
  BEGIN 
    statement;
    statement 
  END;
```


# FOR

```
FOR controlVariable := start TO finalValue DO statement;
```

```
FOR controlVariable := start TO finalValue DOWNTO statement;
```

```
FOR controlVariable := start TO finalValue DO
BEGIN
	statement;
	statement
END;
```

```
FOR controlVariable := start TO finalValue DOWNTO
BEGIN
	statement;
	statement
END;
```

# IF

```
IF boolean_condition THEN statement;
```

```
IF boolean_condition THEN statement ELSE statement;
```

```
IF (boolean_condition) AND/OR (boolean_condition) THEN statement;
```

```
IF boolean_condition THEN
BEGIN
  statement_zero;
  statement_one;
  statement_two
END;
```

```
IF boolean_condition THEN
BEGIN
  statement_zero;
  statement_one;
  statement_two
END
ELSE
BEGIN
  statement_zero;
  statement_one;
  statement_two
END;
```


# REPEAT

```
REPEAT
	statement_zero;
	statement_one;
	statement_two
UNTIL boolean_condition;
```

# WHILE

```
WHILE boolean_condition DO statement_zero;
```

```
WHILE NOT boolean_condition DO statement_zero;
```

```
WHILE boolean_condition DO
BEGIN
	statement_zero;
	statement_one;
	statement_two
END;
```
