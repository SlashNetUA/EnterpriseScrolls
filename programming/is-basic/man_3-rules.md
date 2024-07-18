# RULES OF BASIC

The Reference Section provides a guide to all the BASIC words available on the Enterprise, along with their purposes and methods of use. Some of them are mentioned only briefly in the Tutorial section, others are not mentioned at all.

It is to be hoped you will experiment with all these words and discover for yourself the full extent of the Enterprise's potential. If you know BASIC already, you will find, in the main, that this section is your best guide to the Intelligent Standard BASIC (copyright Intelligent Software Ltd, 1984) provided on the Enterprise.

## GENERAL RULES

Upper and lower case letters are interchangeable in BASIC keywords and identifiers, e.g. **FOR**, **For**, **for** and **fOr** are all the same word.

A program line may be up to **250** characters long, with a [line-number](man_cs-linenum.md) **1** to **9999**. It may include several statements, separated by colons; anything permitted after **THEN** in an **IF**/**THEN** statement may be incorporated on a multi-statement line.

An identifier can be up to **31** characters long, and all characters are significant. The identifier can contain letters, numbers, full stops and 'underline' characters; the first character must be a letter.

**!** is used to mark off the rest of the line as a comment. In immediate mode, a colon at the beginning of a line signifies that the rest of the line is passed through to the operating system without interpretation.

The interpreter deletes spaces before and after the [line-number](man_cs-linenum.md) and first keyword, and at the end of the line. It then indents the program for every new block. [FOR](man_cs-for.md), [DEF](man_cs-def.md), [DO](man_cs-do.md), [HANDLER](man_cs-handler.md), [SELECT](man_cs-select.md) and [WHEN](man_cs-when.md) will indent the next line by **2** spaces. [ELSE](man_cs-if.md) and [CASE](man_cs-select.md) inside an indented block are placed **2** characters to the right. [LOOP](man_cs-do.md), [END](man_cs-end.md) and [NEXT](man_cs-for.md) terminate the indentation. [Line-numbers](man_cs-linenum.md) are printed with leading spaces to maintain a straight edge,

```
   1 LET A=0
  10 DO WHILE A<10
 100   LET A=A+1
 110   SELECT CASE A
 120   CASE 1
 130     PRINT "first time"
 140   CASE ELSE
 150     PRINT "not first time"
 160   END SELECT
 170   PRINT A
 180 LOOP
 190 GOTO 1
1000 END
```

For further reference on the syntax and conventions of the BASIC, see the Draft Proposal for Standard BASIC from ANSI committee X3J2/82-17.

Keywords are given in BOLD CAPITALS in the left-hand margin of the page. The formats of the commands using the keyword are given in normal print, and examples are given in italics.

## MULTIPLE PROGRAMS

IS-BASIC on the Enterprise gives the facility for several programs to be in the computer at one time. Each program has its own line numbers and its own variables.

A program can be referred to either by number, or by a name given on a [PROGRAM](man_cs-program.md) line. See in particular the commands [CHAIN](man_cs-chain.md), [EDIT](man_cs-edit.md) and [PROGRAM](man_cs-program.md).

At any particular time, one of the programs (by default, program **0**) is the 'current' one, on which commands such as [LIST](man_cs-list.md) and [RENUMBER](man_cs-renumber.md) will operate. The number of this program is shown on the 'status line' at the top of the screen.

Program **0** can use approximately **42 k** of memory. Other programs are limited to **32 k** each.

## EXTENSIONS

The facility exists to provide extensions to BASIC, which may be either loaded from cassette or disk or included in an add-on stack unit for the computer. Explanation of the extra commands or functions will be provided in the instructions accompanying such products.

## DATA TYPES

Two explicit data types are provided: numeric and string. Numeric variables have names which follow the rules for identifiers (see General Rules). Identifiers for string variables must end in a **$** symbol.

Numeric values are calculated in binary-coded decimal arithmetic, and printed to **10** digits. Numbers are handled in the range **1e<sup>-64</sup>** to **9.999999999e<sup>62</sup>**.

Strings have a maximum length of **254** characters, if declared to this length (see [STRING](man_cs-string.md)). Sub-strings may be referenced in the form **string-id(x:y)**, which specifies a string beginning with character number **x**, and ending with character number **y**. If either **x** or **у** are omitted, they default to the **start** or **end** of the string respectively.

## OPERATORS

Arithmetic operators:

|   | |
|:-:|-|
|\*|multiply
|/|divide
|^|to the power of
|+|plus
|-|minus

String operators:

|   | |
|:-:|-|
|&|concatenate

Relational operators:

|   | |
|:-:|-|
|>|greater than
|<|less than
|=|equals
|>=|greater than or equals
|<=|less than or equals
|<>|not equals
|AND|logical AND (true/false)
|OR|logical OR (true/false)
|BAND|binary logical AND
|BOR|binary logical OR

## ABBREVIATIONS

The following abbreviations are used in this reference:

|   | |
|:-:|-|
|chan|channel-number
|id|identifier (e.g. variable name)
|str|string
|var|variable
|expr|expression
|relop|relational operator (i.e. >, >=,etc.)
|para|parameter
