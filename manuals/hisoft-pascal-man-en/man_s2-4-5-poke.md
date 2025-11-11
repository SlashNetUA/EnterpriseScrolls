# 2.4.5.7 POKE(X,V)

**POKE** stores the expression **V** in the computer's memory starting from the memory address **X**. **X** is of type integer and **V** can be of any type except **SET**. See [Section 2.4.5.5](man_s2-4-5-user.md) above for a discussion of the use of integers to represent memory addresses.

Examples:

`POKE(£6000,'A')`	places **£41** at location **£6000**.  
`POKE(-16384,3.6E3)`	places **00 0B 80 70** at **£C000**.
