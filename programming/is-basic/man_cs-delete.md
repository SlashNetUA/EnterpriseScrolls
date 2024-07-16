# DELETE

`DELETE line-description TO line-description,...`  
`DELETE line-description - line-description,...`  
`DELETE block-name`

Deletes lines from the program. Only executed in immediate mode. Clears variables.

`DELETE LAST`  
`DELETE FIRST TO 100`  
`DELETE 1 TO 199, 300, 500 TO 9999`  

Acceptable syntax is to use `-` instead of **TO**. If the first (or last) number in a range is omitted, it defaults to the first (or last) line of the program.

e.g. `DELETE FIRST-100,500-LAST`  
or `DELETE TO 100,500-`  
for `DELETE FIRST TO 100,500 TO LAST`

Lines defining a function P can be deleted with `DELETE P`. **DELETE** on its own will remove all program lines; can be halted with 'Stop' key.
