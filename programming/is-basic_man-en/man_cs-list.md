# LIST

`LIST £chan:line-description TO line-description`  
`LIST £chan:line-description—line-description`  
`LIST block-name`

Lists all or part of the program. Can be stopped by 'Stop' key or paused by 'Hold' key. Only executed in immediate mode. The default channel is **£0**.

`LIST 300`  
`LIST 300 TO 400`  
`LIST FIRST TO 900,1000,2000 TO LAST`  
`LIST TO 500,700 TO`  
`LIST MY_FUNCTION`  
`LIST LAST`

**TO** may be replaced with `-`. Compare [DELETE](man_cs-delete.md).

e.g. `LIST FIRST-100,500-LAST`  
for `LIST FIRST TO 100,500 TO LAST`
