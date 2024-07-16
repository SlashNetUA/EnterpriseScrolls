# PRINT

`PRINT £chan,AT row-expr,column-expr:output-list`  
`PRINT £chan,USING line-number:output-list`  
`PRINT £chan,USING string:output-list`  

An item in the output-list can be either an expression or the word TAB followed by a column-number in brackets. Items may be separated by commas or semicolons. A semicolon generates a null string; a comma inserts spaces up to the start of the next print zone. TAB inserts spaces up to the specified column. An output list ending with a comma or semicolon does not generate an end-of-line sequence. Can be executed in immediate mode.

The **AT** option positions the cursor at the specified row and column before printing the list. The optional channel number redirects the output (default channel is the standard text page).

The row and column co-ordinates for the **AT** specification follow the conventions for text positioning. The **top left-hand corner** of the video page has text co-ordinates (**1**,**1**). The fifteenth column in the second line has text co-ordinates (**2**,**15**).

`PRINT "VALUE=";A`  
`PRINT AT x,y:"o";`

The **USING** option controls the format of the output. The line-number must be the number of an [IMAGE](man_cs-image.md) statement. See [IMAGE](man_cs-image.md) for the details of the format specification.
