# RUN

`RUN (para-list)`  
`RUN line-number`  
`RUN £chan:file-name(para-list)`  
`RUN device-name(para-list)`  

**RUN** on its own runs the current program from the first line. If a line-number is given, then execution starts from that line-number. If a filename is given (with optional channel), the program is loaded and then run.

Parameters can be passed to programs with **RUN**, but these must correspond with declared parameters for the program. See [PROGRAM](man_cs-program.md). Clears variables.
