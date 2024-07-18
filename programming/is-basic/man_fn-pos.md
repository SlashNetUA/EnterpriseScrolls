# POS(X\$,Y\$)
# POS(X\$,Y\$,X)


Gives the position in **X\$** (counting the characters from left to right) where **Y\$** first occurs. If **Y\$** cannot be found in **X\$**, the result is **0**.  
By adding a number after the second string (i.e. **POS(X\$,Y\$,X)**), you can tell the machine to begin looking for **Y\$** from a specific place in **X\$**.  
If **X\$** is "**LONDON**" and **Y\$** is "**ON**", then **POS(X\$.Y\$)** is **2**. But **POS(X\$,Y\$,4)** would tell the computer to start from the "**D**" in "**LONDON**" when looking for "**ON**", and would give the result **5**.
