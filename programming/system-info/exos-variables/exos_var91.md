# 91 CD_PROMPT

Zero to enable printing of current directory as the IS-DOS prompt

If **ON** is specified (the default is **OFF**), the current directory will be printed as the standard DOS prompt - for example, the prompt might be `A:\UTIL>` instead of `A>`.

This allows slightly less flexibility in the editing of lines previously entered. If you give a command in response to the `A:\UTIL>` prompt, then move the cursor back to the same line and re-press **Enter**, IS-DOS will this time treat '**UTIL**' as a command to execute a transient program file in the root directory of drive **A**.