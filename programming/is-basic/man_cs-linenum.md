# line-number

`line-number text`  
`line-number space`  
`line-number   `

Adds or replaces a program line. If the line-number is followed by only a space, then a line containing an `!` is inserted. If the line-number is followed by nothing, then the line is deleted. Only executed in immediate mode. Clears variables. Note that all commands or statements which clear variables also close any open channels in the range 1-99 inclusive (see [OPEN](man_cs-open.md)).