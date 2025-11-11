# WORD$(N)

Returns a two-byte string containing the upper and lower bytes of **N**, which is assumed to be an address. **N** will usually be an address defined by a [CODE](commands/man_cs-code.md) statement, and allows backward jumps etc. to be formed using labels. The first byte of the string will be the **LSB**.
