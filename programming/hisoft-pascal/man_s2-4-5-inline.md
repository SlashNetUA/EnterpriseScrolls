# 2.4.5.4 INLINE(C1,C2,C3,..........)

This procedure allows Z80 machine code to be inserted within the Pascal program; the values (**C1 MOD 256**, **C2 MOD 256**, **C3 MOD 256**...) are inserted in the object program at the current location counter address held by the compiler. **C1**, **C2**, **C3** etc. are integer constants of which there can be any number. Refer to [Appendix 4](man_a4-examples.md) for an example of the use of **INLINE**.
