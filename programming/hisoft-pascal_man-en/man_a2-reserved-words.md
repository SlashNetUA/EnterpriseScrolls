# APPENDIX 2: RESERVED WORDS AND PREDEFINED IDENTIFIERS

## A 2.1 RESERVED WORDS

**AND**, **ARRAY**, **BEGIN**, **CASE**, **CONST**, **DIV**, **DO**, **DOWNTO**, **ELSE**, **END**, **FOR**, **FORWARD**, **FUNCTION**, **GOTO**, **IF**, **IN**, **LABEL**, **MOD**, **NIL**, **NOT**, **OF**, **OR**, **PACKED**, **PROCEDURE**, **PROGRAM**, **RECORD**, **REPEAT**, **SET**, **THEN**, **TO**, **TYPE**, **UNTIL**, **VAR**, **WHILE**, **WITH**.

## A 2.2 SPECIAL SYMBOLS

The following symbols are used by HiSoft Pascal and have a reserved meaning:

`+` `-` `*` `/`
`=` `<>` `<` `<=` `>=` `>`
`(` `)` `[` `]` `(*` `*)` `^`
`:=` `.` `,` `;` `:` `'` `..`

## A 2.3 PREDEFINED IDENTIFIERS

The following entities may be thought of a declared in a block surrounding the whole program and they are therefore available throughout the program unless re-defined by the programmer within an inner block.

For further information see [Section 2](man_s2-0-index.md).

```
CONST	MAXINT=32767;
```

```
TYPE BOOLEAN=(FALSE,TRUE);
     CHAR (The expanded ASCII character set);
     INTEGER=-MAXINT..MAXINT;
     REAL (A subset of the real numbers. See Section 1.3.)
```

```
PROCEDURE	WRITE; WRITELN; READ; READLN; PAGE; HALT; USER; POKE; INLINE; NEW; MARK; RELEASE; OUT; TIN; TOUT; RANSEED
```
```
FUNCTION	ABS; SQR; ODD; RANDOM; ORD; SUCC; PRED; INCH; EOLN; PEEK; CHR; SQRT; ENTIER; ROUND; TRUNC; FRAC; SIN; COS; TAN; ARCTAN; EXP; LN; ADDR; SIZE; INP; EXOS; MAKESTR;
```