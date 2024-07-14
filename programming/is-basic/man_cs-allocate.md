# ALLOCATE

`ALLOCATE expr`

Used in connection with machine code subroutines. Moves up the program source to create a gap of the specified number of bytes, where the user's machine code will go. Sets the location counter to the first free byte in the gap. Note that this destroys all variables, so it should only be used at the start of the program.