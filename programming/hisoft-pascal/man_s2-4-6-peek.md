# 2.4.6.6 PEEK(X,T)

The first parameter of this function is of type integer and is used to specify a memory address (see [Section 2.4.5.5](man_s2-4-5-user.md)). The second argument is a type; this is the result type of the function.

**PEEK** is used to retrieve data from the memory of the computer and the result may be of any type.

In all **PEEK** and [POKE](man_s2-4-5-poke.md) (the opposite of **PEEK**) operations data is moved in HiSoft Pascal's own internal representation detailed in [Appendix 3](man_a3-data-storage.md). For example: if the memory from **£5000** onwards contains the values: **50 61 73 63 61 6C** (in hexadecimal) then:

`WRITE(PEEK(£5000,ARRAY([1..6] OF CHAR))`	gives '`Pascal`'
`WRITE(PEEK(£5000,CHAR))`	gives '`P`'
`WRITE(PEEK(£5000,INTEGER))`	gives `24912`
`WRITE(PEEK(£5000,REAL))`	gives `2.46227E+29`

see [Appendix 3](man_a3-data-storage.md) for more details on the representation of types within HiSoft Pascal.
