# CODE

`CODE=string`  
`CODE variable-name=string` 

Used in connection with machine code subroutines. Copies a string to the position indicated by the current location counter. If a variable is given, this takes the value of the location counter. The location counter is left pointing to the byte following the string, which is assumed to contain the machine code. The variable-name can later be used to call the routine, or to form the destination address of jumps etc.
