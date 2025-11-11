# SAVE

`SAVE £chan:filename`  
`SAVE device-name`  
`SAVE ALL £chan:filename`  

Saves the current program. By default it is saved via channel **106**. If no filename is given, then the [PROGRAM](man_cs-program.md) name will be used, if one exists.

**SAVE ALL** will save all the programs currently in memory.

Programs are saved in a coded format. To save a program in character (ASCII) format, use `LIST £chan:filename` – such programs can later be loaded if required. Only works in immediate mode. See [LOAD](man_cs-load.md).
