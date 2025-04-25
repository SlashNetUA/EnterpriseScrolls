# 2.4.1.5 READLN

`READLN(V1,V2,.......Vn);` is equivalent to:

`BEGIN READ(V1,V2,........ Vn); READLN END;`

**READLN** simply reads in a new buffer from the keyboard; while typing in the buffer you may use the standard Enterprise editing facilities. Thus [EOLN](man_s2-4-2-eoln.md) becomes **FALSE** after the execution of **READLN** unless the next line is blank.

**READLN** may be used to skip the blank line which is present at the beginning of the execution of the object code. i.e. it has the effect of reading in a new buffer. This will be useful if you wish to read a component of type character from the beginning of a program but it is not necessary if you are reading an integer or a real (since end-of-line markers are skipped) or if you are reading characters from subsequent lines.