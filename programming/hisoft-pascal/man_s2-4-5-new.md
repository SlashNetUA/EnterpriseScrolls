# 2.4.5.1 NEW(p)

The procedure **NEW(p)** allocates space for a dynamic variable. The variable **p** is a pointer variable and after **NEW(p)** has been executed **p** contains the address of the newly allocated dynamic variable. The type of the dynamic variable is the same as the type of the pointer variable **p** and this can be of any type.

To access the dynamic variable `p^` is used – see [Appendix 4](man_a4-examples.md) for an example of the use of pointers to reference dynamic variables.

To re-allocate space used for dynamic variables use the procedures [MARK](man_s2-4-5-mark.md) and [RELEASE](man_s2-4-5-release.md) (see below).
