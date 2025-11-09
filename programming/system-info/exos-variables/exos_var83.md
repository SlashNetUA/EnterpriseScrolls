# 83 CLI_PROT

Protection flag for IS-DOS CLI.

When **OFF** (the default) is given, some transient programs may overwrite part of IS-DOS in memory - making it necessary to re-load IS-DOS from disk once the program terminates. If **ON** is specified, IS-DOS cannot be overwritten.