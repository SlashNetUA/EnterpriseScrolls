# 191 - 

`ASK 191 var`  
`SET 191, expr` - changes only variable value [^1].  
`TOGGLE 191` - inverts value; changes only variable value [^1].

**not exists[^2]**:   
**1**:   
**2**:   

> [!NOTE]
> you can select which wait states enabled by the automatic 191. port setting. If bit 7 of this variable is disabled, then the automatic 191. port settings is disabled.
> - memory wait states disabled at default (can be enabled with SET 191,4 commands)

[^2]: **not exist** cause error #9242 (Unknown EXOS variable number).
