# 2.4.5.2 MARK(v1)

This procedure saves the state of the dynamic variable heap to be saved in the pointer variable **v1**. The state of the heap may be restored to that when the procedure **MARK** was executed by using the procedure [RELEASE](man_s2-4-5-release.md) (see below).

The type of variable to which **v1** points is irrelevant, since **v1** should only be used with **MARK** and [RELEASE](man_s2-4-5-release.md) never [NEW](man_s2-4-5-new.md).

For an example program using **MARK** and [RELEASE](man_s2-4-5-release.md) see [Appendix 4](man_a4-examples.md).
