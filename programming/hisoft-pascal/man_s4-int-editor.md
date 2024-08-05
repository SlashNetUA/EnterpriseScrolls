# SECTION 4: THE INTEGRAL EDITOR

The integral editor supplied with HiSoft Pascal is a combination of the standard HiSoft line editor and the EXOS screen editor; this partnership leads to simple yet powerful creation and editing of your Pascal programs.

While within the editor you may use all the normal screen editing facilities that you would use in BASIC (see pages 36 and 37 of your Enterprise BASIC manual) together with the following Pascal-specific features, each command should be finished with **Enter**.

EXOS commands may be typed by prefixing them with a colon e.g. `:HELP` as in BASIC.

Below the syntax of each command is given followed by an example and then the description of the command. In what follows

**n1**,**n2**,**n3**	are line numbers.  
**s**,**s1**,**s2**	are strings.  
**i**	is a line number increment.

## INSERT TEXT	COMMAND In,i

`I100,10`

Insert text starting at line **100**, incrementing line numbers in **10**s; this does a true insert, moving up existing lines as necessary. The default for **n** and **i** is **10**. Line numbers are generated automatically for you, like BASIC's [AUTO](../is-basic/man_cs-auto.md). Hit **Stop** to get out.

## EDIT TEXT	COMMAND En

`E100`

Edit line **100**; this displays the line on the screen – now use the joystick etc. to edit the line and press **Enter** to save the changes in the file.

## DELETE TEXT	COMMAND Dn1,n2

`D10,50`

Delete line **10** thru **50** inclusive. The command must have two line numbers to function; these may be the same. To delete just one line you type the line number followed by **Enter** as in BASIC.

## MOVE TEXT	COMMAND Mn1,n2,n3

`M10,30,200`

Move the block of text that exists between lines **10** and **30** inclusive to just before line **200**. Intelligent move up or down the text file. You cannot move a block within itself so that **M50,100,65** is illegal and will not be carried out.

## RENUMBER TEXT	COMMAND Nn1,i

`N5,10`

Renumber the text so that it becomes first line **5**, incrementing in steps of **10**. If this can't be done, the command aborts. Both numbers must be present for the command to go ahead. If the renumbering would cause a line number greater than **65535** to be created then the numbering is left originally.

## LIST TEXT	COMMAND Ln1,n2

`L100,200`

List the textfile between lines **100** and **200** inclusive. You may pause this listing by pressing **Hold**: then press **Hold** again to resume or **Stop** to abort and return to the editor loop. Without any arguments **L** lists the whole textfile.

## PUT TEXT TO DEVICE	COMMAND Pn1,n2,s

`P1,9999,TEST.PAS`

Sends the textfile or part (**1**..**9999**) of the textfile to the default or specified external device with the name given; you may interrupt this process by pressing **Stop**.

## GET TEXT FROM EXTERNAL DEVICE	COMMAND G,,s

`G,,TAPE:TEST.PAS`

Searches the default or specified external device for the **TEST.PAS** file; when found it is appended to the current source; press **Stop** to abort this command. The source that is appended will be renumbered with an increment of one starting from the last line number of the existing text.

## VERIFY TEXTFILE	COMMAND V,,s

`V,,TEST.PAS`

Verifies a found file on an external device with the textfile in memory; displays '`Verified`' or '`Failed!`' depending on the outcome of the comparison.

## FIND STRING IN TEXT	COMMAND Fn1,n2,s

`F30,50,PROCEDURE`

Searches for the string **PROCEDURE** between lines **30** and **50** inclusive; if the string is found then the line in which it is found is displayed on the screen and edit mode is entered – change at will or use the substitute command by pressing **Enter** and:

## SUBSTITUTE STRING	COMMAND Sn1,n2,s1,s2

`S1,9999,CHAR,INTEGER`

Substitutes the string **CHAR** for the string **INTEGER** over the specified line range; you are prompted each time to substitute the string by the line being displayed in Edit mode on the screen; hit **Enter** and then **F** or **S** to continue finding and substituting.

## CHANGE DELIMITER	COMMAND Q,,s

`Q,,/`

This command changes the separator between arguments when editing (it is normally a comma). This lets you search for a string which contains a comma. If you use this command by mistake you can find out what the delimiter is using the **Y** command.

## SHOW DEFAULTS	COMMAND Y

`Y`

This command shows the current delimiter and the current defaults for line numbers and strings.

## DISPLAY UPPER LINE NUMBER	COMMAND U

`U`

Displays the last number in the current textfile on the screen.

## COMPILE PROGRAM	COMMAND Cn

`C`

Compiles the current Pascal program starting from line number **n**. If no line number is given then compilation starts from the first line of the text.

## RUN OBJECT CODE	COMMAND R

`R`

Run the object code that you have created using the Compile command. Note that this cannot be used if you have changed the program or used the '**A**'lter command (see below).

## TRANSLATE PROGRAM	COMMAND Tn,,s

`T,,TEST.OBJ`

This compiles your program as if the code was located directly after the runtime routines and then prompts you to continue. If you answer **Y** then the runtimes and your code are saved to the device/filename specified by the string **s**. The code may then be loaded in the standard way using '`START`' from BASIC or from the word processor.

This allows you to save compact object code.

## ALTER DEFAULTS	COMMAND A

`A`

This command lets you view and modify some of the compiler's internal variables. The current value in hexadecimal is displayed after the variables name. If you type **Enter** then no changes are made, but if you type a hexadecimal value then this is used as the new value of the variable.

The first variable is the Symbol Table Size. Normally it is not necessary to change this, but if the compiler gives the fatal error message '`No Table Space`' then this can be used to make the table larger.

Normally the compiler allocates as much RAM as possible for itself and the programs that it generates. This memory is allocated from low addresses to high addresses. The highest value used when a program produced using the Translate command is called the Translate Stack and the highest used when the compiler is in memory is called the Compiler Stack. On an Enterprise 64 the default value for these variables is **£C000** and on the Enterprise 128 it is **£0000**.

On the Enterprise 128 there is normally no need to change these values unless you are writing a program to run on the Enterprise 64 when you should lower the translate stack.

When using the Enterprise 64 to run graphics programs you will need to lower the stack to **£8000** to free **16k** to the operating system to use as extra video RAM.

Thus when using the Turtle Graphics package on the 64 you should type  
`A` **Enter**  
**Enter**  
**Enter**  
`8000` **Enter**  
before compiling the program.

## CHANGE SCREEN WIDTH	COMMAND W

`W`

This command clears the screen and flips from **40** column to **80** column mode or vice versa. If the operating system does not have enough memory to open an **80** column screen then you are left in **40** column mode.

## BUFFER LEFT	COMMAND B

`B`

This command displays the number of bytes left for your source and object code in hexadecimal. If you start running out of space you should save your text and use the [$F](man_s3-2-compile-options.md) compiler option.

## LOAD EXOS MODULE	COMMAND X,,s

`X,,MODULE`

This command loads an EXOS module from the specified file or device.
