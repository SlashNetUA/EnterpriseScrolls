# 2.4.1.1 WRITE

The procedure **WRITE** is used to output data to the screen or printer. When the expression to be written is simply of type character then `WRITE(e)` passes the 8 bit value represented by the expression **e** to the screen or printer as appropriate. Use **CHR(16)** to toggle the printer on and off when WRITEing.

Generatly though:

`WRITE(P1,P2,....... Pn);` is equivalent to:

`BEGIN WRITE(P1); WRITE(P2); ………; WRITE(Pn);`

The write parameters **P1,P2.......Pn** can have one of the following forms:

`e` or `e:m` or `e:m:n` or `e:m:H`

where **e**, **m** and **n** are expressions and **H** is a literal constant.

We have 5 cases to examine:

1) **e** is of type integer: and either **e** or **e:m** is used.

The value of the integer expression **e** is converted to a character string with a trailing space. The length of the string can be increased (with leading spaces) by the use of **m** which specifies the total number of characters to be output. If **m** is not sufficient for **e** to be written or **m** is not present then **e** is written out in full, with a trailing space, and **m** is ignored. Note that, if **m** is specified to be the length of **e** without the trailing space then no trailing space will be output.

2) **e** is of type integer and the form **e:m:H** is used.

In this case **e** is output in hexadecimal. If **m=1** or **m=2** then the value (**e MOD 16^m**) is output in a width of exactly **m** characters. If **m=3** or **m=4** then the full value of **e** is output in hexadecimal in a width of **4** characters. If **m>4** then leading spaces are inserted before the full hexadecimal value of **e** as necessary. Leading zeroes will be inserted where applicable. Examples:

```
WRITE (1025:m:H);
```

**m=1**	outputs: `1`  
**m=2**	outputs: `01`  
**m=3**	outputs: `0401`  
**m=4**	outputs: `0401`  
**m=5**	outputs: ` 0401`  

3) **e** is of type real. The forms **e**, **em** or **e:m:n** may be used.

The value of **e** is converted to a character string representing a real number. The format of the representation is determined by **n**.

If **n** is not present then the number is output in scientific notation, with a mantissa and an exponent. If the number is negative then a minus sign is output prior to the mantissa, otherwise a space is output. The number is always output to at least one decimal place up to a maximum of **5** decimal places and the exponent is always signed (either with a plus or minus sign). This means that the minimum width of the scientific representation is **8** characters; if the field width **m** is less than **8** then the full width of **12** characters will always be output. If **m>=8** then one or more decimal places will be output up to a maximum of **5** decimal places (**m=12**). For **m>12** leading spaces are inserted before the number. Examples:

```
WRITE (-1.23E10:m);
```

**m=7**	gives: `-1.23000E+10`  
**m=8**	gives: `-1.2E+10`  
**m=9**	gives: `-1.23E+10`  
**m=10**	gives: `-1.230E+10`  
**m=11**	gives: `-1.2300E+10`  
**m=12**	gives: `-1.23000E+10`  
**m=13**	gives: ` -1.23000E+10`  

If the form **e:m:n** is used then a fixed-point representation of the number **e** will be written with **n** specifying the number of decimal places to be output. No leading spaces will be output unless the field width **m** is sufficiently large. If **n** is zero then **e** is output as an integer. If **e** is too large to be output in the specified field width then it is output in scientific format with a field width of **m** (see above). Examples:

`WRITE(1E2:6:2)`	gives: `100.00`  
`WRITE(1E2:8:2)`	gives: `  100.00`  
`WRITE(23.455:6:1)`	gives: `  23.5`  
`WRITE(23.455:4:2)`	gives: `2.34550E+01`  
`WRITE(23.455:4:0)`	gives: `  23`  

4) **e** is of type character or type string.

Either **e** or **e:m** may be used and the character or string of characters will be output in a minimum field width of **1** (for characters) or the length of the string (for string types). Leading spaces are inserted if **m** is sufficiently large.

5) **e** is of type Boolean.

Either **e** or **e:m** may be used and '**TRUE**' or '**FALSE**' will be output depending on the Boolean Value of **e**, using a minimum field width of **4** or **5** respectively.
