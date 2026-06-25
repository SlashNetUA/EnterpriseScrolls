# Тип поточного накопичувача

My suggestion for the loader:  
Check EXOS variable 3 [DEF_TYPE](../system-info/exos-variables/exos_var3.md) with EXOS 16 function call.  
-If it is 0 then tape only configuration, disable loading music.  
-If not 0 then EXDOS used or ep28emu FILE device.  
Check EXOS variable 71 [DEF_UNIT](../system-info/exos-variables/exos_var71.md) (=current drive number)  
-If not exist, then non EXDOS configuration, ep128emu FILE device used, enable loading music.  
-If it is 5, already running from RAMDISK, enable loading music.  
-If it is 6 or more then SD or hard disk used, enable loading music.  
-if it is 1 to 4 then floppy disk used then needed:  
1)check memory size with EXOS 20. It is enough for running the program plus enough RAMDISK size?  
2)if not then disable loading music  
3)if yes then execute these EXDOS command with EXOS 26 function call:  
RAMDISK n  
COPY demofile E:  
E:  
Then enable loading music.