# RENUMBER

`RENUMBER line-description TO line-description AT expr STEP expr`  
`RENUMBER block-name AT expr STEP expr`

Renumbers all or a part of the program. Only executed in immediate mode.

`RENUMBER FIRST TO 100`  
`RENUMBER 10 TO 100 AT 300 STEP 10`  
`RENUMBER STEP 100`  
`RENUMBER MY_FUNCTION AT 5000`  

**STEP** and **AT** can be in either order or omitted. If **STEP** is unspecified, the default is **10**. If **AT** is omitted, then the first line-number in the segment to be renumbered is used. If no line-number range is given, then the whole program is renumbered and the default for **AT** is **100**.

The name of a **DEF** or **HANDLER** block can be given instead of a line-number range. For the syntax of the line-descriptions, compare [DELETE](man_cs-delete.md).

All references in the program to renumbered lines are changed.

**RENUMBER** cannot change the order of lines in a program. So if the renumbered lines would overlay or surround lines not renumbered, or would be put into a new place in the sequence, or would create too high a line-number — then the **RENUMBER** command is not executed, and the text of the program is left unchanged.
