---
title: "HiSoft Pascal: синтаксис"
---
# CASE

```pascal
CASE selector OF
  caseValue0: statement;
  caseValue1,caseValue7: statement
ELSE statement;
```

```pascal
CASE selector OF
  caseValue0,caseValue1: BEGIN statement; statement END;
  caseValue2: BEGIN statement; statement END
ELSE BEGIN statement; statement END;
```

```pascal
CASE selector OF
  caseValue0,caseValue1: BEGIN statement; statement END;
  caseValue2: BEGIN statement; statement END
END;
```

```pascal
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

```pascal
FOR controlVariable := start TO finalValue DO statement;
```

```pascal
FOR controlVariable := start TO finalValue DOWNTO statement;
```

```pascal
FOR controlVariable := start TO finalValue DO
BEGIN
  statement;
  statement
END;
```

```pascal
FOR controlVariable := start TO finalValue DOWNTO
BEGIN
  statement;
  statement
END;
```

# IF

```pascal
IF boolean_condition THEN statement;
```

```pascal
IF boolean_condition THEN statement ELSE statement;
```

```pascal
IF (boolean_condition) AND/OR (boolean_condition) THEN statement;
```

```pascal
IF boolean_condition THEN
BEGIN
  statement_zero;
  statement_one;
  statement_two
END;
```

```pascal
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

```pascal
REPEAT
  statement_zero;
  statement_one;
  statement_two
UNTIL boolean_condition;
```

# WHILE

```pascal
WHILE boolean_condition DO statement_zero;
```

```pascal
WHILE NOT boolean_condition DO statement_zero;
```

```pascal
WHILE boolean_condition DO
BEGIN
  statement_zero;
  statement_one;
  statement_two
END;
```
