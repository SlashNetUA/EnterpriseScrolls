# HANDLER

```
HANDLER handler-name
  exception handler statements
END HANDLER
```

The **HANDLER** block is used for dealing with program exceptions caused by errors, the [CAUSE EXCEPTION](man_cs-exception.md) command, or machine interruptions.

The handler to be used is specified by the handler-name given in the current [WHEN](man_cs-when.md) block.

See [CONTINUE](man_cs-continue.md), [RETRY](man_cs-retry.md), [EXIT HANDLER](man_cs-exit-handler.md), and the functions [EXLINE](man_fn-exline.md) and [EXTYPE](man_fn-extype.md).

Control can be transferred into an exception handler only as the result of an exception (not by a [GOTO](man_cs-goto.md) or [GOSUB](man_cs-gosub.md)).

If an exception occurs inside the exception handler the effect is similar to [EXIT HANDLER](man_cs-exit-handler.md), since control passes to the next outer level of handler (as specified by the next outer level of [WHEN](man_cs-when.md) block). However, the former values of [EXTYPE](man_fn-extype.md) and [EXLINE](man_fn-exline.md) will have been replaced by new ones.
