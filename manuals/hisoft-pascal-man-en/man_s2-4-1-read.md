# 2.4.1.4 READ

The procedure **READ** is used to access data from the keyboard.

`READ(V1,V2,.........Vn);` is equivalent to:

`BEGIN READ(V1); READ(V2); ....... ; READ(Vn) END;`

where **V1**, **V2** etc. may be of type character, string, integer or real.

The statement `READ(V);` has different effects depending on the type of **V**. There are 4 cases to consider:

1) **V** is of type character.

A character is effectively read from the buffer and assigned to **V**. If the text window on the buffer is positioned on a line marker (a **CHR(13)** character) then the function [EOLN](man_s2-4-2-eoln.md) will return the value **TRUE** and the value **CHR(13)** will be returned by **READ**. When a read operation is subsequently performed the text window will be positioned at the start of the new line.

Important note: the default file **INPUT** initially contains a blank line so that [EOLN](man_s2-4-2-eoln.md) is **TRUE** at the beginning of the program. This means that if the first read on the file **INPUT** is of type character then a **CHR(13)** value will be returned followed by the reading in of a new line from the keyboard; a subsequent read of type character will return the first character from this new line, assuming it is not blank. See also the procedure [READLN](man_s2-4-1-readln.md) below.

2) **V** is of type string.

A string of characters may be read using **READ** and in this case a series of characters will be read from the file until the number of characters defined by the string has been read or `(EOLN) OR (EOF) = TRUE`. If the string is not filled by the read (i.e. if end-of-line or end-of-file is reached before the whole string has been assigned) then the end of the string is filled with null (**CHR(0)**) characters – this enables the programmer to evaluate the length of the string that was read.

The note in 1) above also applies here.

3) **V** is type integer.

In this case a series of characters which represent an integer as defined in [Section 1.3](man_s1-3-uns-number.md) is read. All preceding blanks and end-of-line markers are skipped (this means that integers may be read immediately cf. the note in 1) above).

If the integer read has an absolute value greater than `MAXINT(32767)` then the runtime error '`Number too large`' will be issued and execution terminated.

If the first character read, after spaces and end-of-line characters have been skipped, is not a digit or a sign ('**+**' or '**—**') then the runtime error '`Number expected`' will be reported and the program aborted.

4) **V** is of type real.

Here, a series of characters representing a real number according to the syntax of [Section 1.3](man_s1-3-uns-number.md) will be read.

All leading spaces and end-of-line markers are skipped and, as for integers above, the first character afterwards must be a digit or a sign. If the number read is too large or too small (see [Section 1.3](man_s1-3-uns-number.md)) then an '`Overflow`' error will be reported, if '`E`' is present without a following sign or digit then '`Exponent expected`' error will be generated and if a decimal point is present without a subsequent digit then a '`Number expected`' error will be given.

Reals, like integers, may be read immediately; see 1) and 3) above.