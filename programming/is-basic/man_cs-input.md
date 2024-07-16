# INPUT

`INPUT £chan,IF MISSING action,AT row-expr,column-expr,PROMPT string:variable-list.`

Reads data from channel into a list of variables. Default channel is the editor (channel **0**). Items of data read in to match with variables in the variable-list must be separated by commas.
 
`INPUT PROMPT K$&"Enter next number please? ":N`  
`INPUT A(I),B$`

The **IF MISSING** and **PROMPT** parts can be in either order, or absent. The default input prompt is "**?** " **PROMPT** replaces the default prompt with the string.

The **AT** option (with **row-expr**, **column-expr**) is independent of the **PROMPT** option.

**IF MISSING** is used if an end-of-file condition occurs on the channel, or if there is null input when a numeric input is expected. The action then taken follows the same rules as with [READ](man_cs-read.md).

See also [LINE INPUT](man_cs-line-input.md).
