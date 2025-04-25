# 2.4.6.9 EXOS(f)

This powerful function has one INTEGER parameter which is the EXOS function number passed in the **A** register and returns a character value returned by EXOS in the **A** register. This is normally a flag to indicate if the operation was successful. **CHR(0)** is returned in this case. Other arguments are passed to and from EXOS using the predefined variables **RB**, **RC**, **RD**, **RE**, **RH**, **RL**, **RDE**, **RBC** and **RHL**. For examples of the use of the EXOS function please see the source of the Turtle graphics package supplied with HiSoft Pascal.


----

This has changed on version **1.2**, the Exos command has been modified to procedure. Now we don’t lose information, because the value of register A is automatically added to the built-in RA variable. Therefore, what has been implemented on the EXOS function on the new version is: Now we can Test the RA variable to check whether the EXOS call was successful.

The using of EXOS() now is like this:
  
```
10 procedure ToggleVar(x : integer);
20 begin
30   rb:=chr(2);
40   rc:=chr(x);
50   exos(16);
60 end;
```
