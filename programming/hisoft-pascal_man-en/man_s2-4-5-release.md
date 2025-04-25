# 2.4.5.3 RELEASE(v1)

This procedure frees space on the heap for use of dynamic variables. The state of the heap is restored to its state when **MARK(v1)** was executed – thus effectively destroying all dynamic variables created since the execution of the [MARK](man_s2-4-5-mark.md) procedure. As such it should be used with great care.

See above and [Appendix 4](man_a4-examples.md) for more details.
