# 2.4.6.9 EXIS(f)

This powerful function has one INTEGER parameter which is the EXOS function number passed in the **A** register and returns a character value returned by EXOS in the **A** register. This is normally a flag to indicate if the operation was successful. **CHR(0)** is returned in this case. Other arguments are passed to and from EXOS using the predefined variables **RB**, **RC**, **RD**, **RE**, **RH**, **RL**, **RDE**, **RBC** and **RHL**. For examples of the use of the EXOS function please see the source of the Turtle graphics package supplied with HiSoft Pascal.
