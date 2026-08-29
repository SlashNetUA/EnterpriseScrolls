---
title: "HiSoft Pascal: синтаксис"
---
# CASE

```PASCAL
CASE selector OF
    caseValue0: statement;
    caseValue1,caseValue7: statement
ELSE statement;
```

```PASCAL
CASE selector OF
  caseValue0,caseValue1: BEGIN statement; statement END;
  caseValue2: BEGIN statement; statement END
ELSE BEGIN statement; statement END;
```

```PASCAL
CASE selector OF
  caseValue0,caseValue1: BEGIN statement; statement END;
  caseValue2: BEGIN statement; statement END
END;
```

```PASCAL
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

```PASCAL
FOR controlVariable := start TO finalValue DO statement;
```

```PASCAL
FOR controlVariable := start TO finalValue DOWNTO statement;
```

```PASCAL
FOR controlVariable := start TO finalValue DO
BEGIN
	statement;
	statement
END;
```

```PASCAL
FOR controlVariable := start TO finalValue DOWNTO
BEGIN
	statement;
	statement
END;
```

# IF

```PASCAL
IF boolean_condition THEN statement;
```

```PASCAL
IF boolean_condition THEN statement ELSE statement;
```

```PASCAL
IF (boolean_condition) AND/OR (boolean_condition) THEN statement;
```

```PASCAL
IF boolean_condition THEN
BEGIN
  statement_zero;
  statement_one;
  statement_two
END;
```

```PASCAL
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

```PASCAL
REPEAT
	statement_zero;
	statement_one;
	statement_two
UNTIL boolean_condition;
```

# WHILE

```PASCAL
WHILE boolean_condition DO statement_zero;
```

```PASCAL
WHILE NOT boolean_condition DO statement_zero;
```

```PASCAL
WHILE boolean_condition DO
BEGIN
	statement_zero;
	statement_one;
	statement_two
END;
```
