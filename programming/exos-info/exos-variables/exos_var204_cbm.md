# 204 (BV+4) - (CBM-MFT)

`ASK 204 var`  
`SET 204, expr`  
`TOGGLE 204` - inverts value.

Used with **CBM Multi File Transfer**.  

File type variable. Its value is:   

**0**: (Default) reading **all** file types, writing **sequential** files.  
**80 ("P")**: read, write **program** type file.  
**82 ("R")**: read, write **relative** type file.  
**83 ("S")**: read, write **sequential** type file.  
**85 ("U")**: read, write **user** type file.  

Setting a value other than those listed leads to an error.
