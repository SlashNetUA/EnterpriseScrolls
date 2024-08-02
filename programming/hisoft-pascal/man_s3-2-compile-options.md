# 3.2 COMPILER OPTIONS

Compiler options should be included in your program between comment braces and the first option in the list (which is separated by commas) should be preceded by a dollar symbol:

Examples:

`(*$0-,A-*)`
`($L-)`

The following options are available:

### Option L

Controls the listing of the program text and object code address by the compiler.

If **L+** then a full listing is given.

If **L-** then lines are only listed when an error is detected.

DEFAULT: **L+**

### Option O

Controls whether certain overflow checks are made. Integer multiply and divide and all real arithmetic operations are always checked for overflow.

If **O+** then checks are made on integer addition and subtraction routine calls are checked to ensure that their arguments are within range.

If **O-** then the above checks are not made.

DEFAULT: **O+**

### Option S

Controls whether or not stack checks are made.

If **S+** then, at the beginning of each procedure and function call, a check is made to see if the stack will probably overflow in this block. If the runtime stack overflows the dynamic variable heap or the program then the message '`Out of RAM at PC=XXXX`' is displayed and execution aborted. Naturally this is not foolproof; if a procedure has a large amount of stack usage within itself then the program may 'crash'. Alternatively, if a function contains very little stack usage while utilising recursion then it is possible for the function to be halted unnecessarily.

The address of the stack may be set at compilation time using the editor's '**A**' command – see [Section 4](man_s4-int-editor.md).

If **S-** then no stack checks are performed.

DEFAULT: **S+**

### Option A

Controls whether checks are made to ensure that array indices are within the bounds specified in the array's declaration.

If **A+** and an array index is too high or too low then the message '`Index too high`' or '`Index too low`' will be displayed and the program execution halted.

If **A-** then no such checks are made.

DEFAULT: **A+**

### Option I

When using 16 bit 2's complement integer arithmetic, overflow occurs when performing a **>**, **<**, **>=** or **<=** operation if the arguments differ by more than **MAXINT(32767)**. If this occurs then the result of the comparison will be incorrect. This will not normally present any difficulties; however, should the user wish to compare such numbers, the use of **I+** ensures that the results of the comparison will be correct. The equivalent situation may arise with real arithmetic in which case an overflow error will be issued if the arguments differ by more than approximately **3.4E38**; this cannot be avoided.

If **I-** then no check for the result of the above comparisons is made.

DEFAULT: **I-**

### Option P device name

This option directs the compilation to the device specified after the **$P**. There must be a space separating the device name and the comment terminator. Thus to start the compiler listing going to the printer you would use:

`(*$P PRINTER: *)`

All subsequent compiler listing will be printed on your printer until either the end of the source is reached or another **$P** is encountered.

DEFAULT: **P VIDEO:**

### Option F

This option letter must be followed by a space and then a valid EXOS device/filename string.

The presence of this option causes inclusion of Pascal source text from the specified file from the end of the current statement – useful if the programmer wishes to build up a 'library' of much-used procedures and function on tape and then include them in particular programs. The device name used can be any valid EXOS input device such as **SERIAL:** etc. and must be followed by at least one space.

Example: `($F TEST.PAS );` will include the text file **TEST.PAS** from the default device (normally **TAPE:**).

When using this facility from tape without motor control you should use the **L-** option so that the compiler and the screen can keep up with the tape.

This option may not be nested.

The compiler options may be used selectively. Thus debugged sections of code may be speeded up and compacted by turning the relevant checks off whilst retaining checks on untested pieces of code.
