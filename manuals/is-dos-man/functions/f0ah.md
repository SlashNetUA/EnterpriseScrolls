# Function 0Ah: Buffered Line Input

## Parameters

**DE** = Address of an input buffer

## Results

None

## Description

**DE** must point to a buffer to be used for input. The first byte of this buffer must contain the number of characters which the buffer can hold (**0**...**255**). Characters are read from the keyboard and put in the buffer starting at (**DE+2**) until **Enter** is typed. The number of characters entered, which does not include the **CR** itself, will be stored at (**DE+1**). If there is room in the buffer then the **CR** will be stored after the last character (this is like MSX-DOS and is different from, but compatible with, CP/M).

If the buffer becomes full then the console bell is rung for each character which cannot be stored. Simple editing is provided using the joystick and delete/erase/insert keys. Characters are echoed to the screen as they are typed, but if printer echo is enabled they are only echoed to the printer when **Enter** is pressed. This ensures that what is printed is the final entered line not including any editing which may have been done.

