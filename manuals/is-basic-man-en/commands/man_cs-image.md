# IMAGE

`IMAGE:format-specification`

Used in conjunction with [PRINT](man_cs-print.md) commands, to control the format of the output. The format-specification is a number of characters which, in this context, have the following meaning.

Numeric format characters:  
`,` — prints a **comma** in the number.
`$` — prints a floating **dollar-sign** preceding the sign.
`-` — prints a floating space or '**-**' sign.
`+` — prints a floating '**+**' or '**-**' sign.
`%` — prints a digit, including leading zeros.
`£` — prints a digit or space, trailing zeros after a decimal point.
`*` — prints a digit or leading '**\***'.
`.` — prints a **decimal point**.
`^` — prints **exponent part**; minimum 4 characters.

If the number does not fit in the format space, an error is generated.

String format characters:   
`<` — left-justification of the string, in the field defined by '£' characters.
`£` — prints a character.
`>` — right-justification of the string.

The 'justify' format character must start the field; if no 'justify' character is used, the string is centred.
The format in the **IMAGE** line starts immediately after the '**:**' and ends with the last printed character on the line.
