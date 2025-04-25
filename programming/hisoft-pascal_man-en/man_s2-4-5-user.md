# 2.4.5.5 USER(V)

**USER** is a procedure with one integer argument **V**. The procedure causes a call to be made to the memory address given by **V**. Since HiSoft Pascal holds integers in two's complement form (see [Appendix 3](man_a3-data-storage.md)) then in order to refer to addresses greater than **£7FFF** (**32767**) negative values of **V** must be used. For example **£C000** is **-16384** and so `USER(-16384);` would invoke a call to the memory address **£C000**. However, when using a constant to refer to a memory address, it is more convenient to use hexadecimal.

The routine called should finish with a Z80 **RET** instruction (**£C9**) and must preserve the **IX** register.
