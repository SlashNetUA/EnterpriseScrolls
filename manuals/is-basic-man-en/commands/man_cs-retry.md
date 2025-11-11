# RETRY

Used as an exit from an exception handler, this returns control to the line or statement which caused the exception. Compare [CONTINUE](man_cs-continue.md).

If an exception handler is used to trap the 'Stop' key, or any software interrupt, then **RETRY** should be used to continue the program.

See [HANDLER](man_cs-handler.md).
