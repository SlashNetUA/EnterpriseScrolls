# USING MACHINE CODE

The 'brain' of the Enterprise is a Z80 microprocessor. The Z80 can perform around 500 specific operations, each one denoted by a code number – a 'machine code'. If you program a processor in machine code, you are addressing it directly, in its own language, not through the BASIC interpreter.

There are two main reasons why you might want to include machine code routines in your BASIC programs. Either you might need a little extra speed (especially when handling graphics and sound), or you might want to use a feature of the Enterprise's hardware which isn't supported by BASIC.

Machine code programming is a large subject, and cannot be covered in a single chapter of this manual. If you are interested, there are many Z80 programming manuals available.

Enterprise BASIC has several commands which allow you to build up machine code routines (in hex codes) and execute them from within a BASIC program – though these commands are not part of the ANSI standard.

## ALLOCATE

First, you need to set aside some memory for storing your code; decide how many bytes long your code will be, then use:

`ALLOCATE number-of-bytes`

But note that [ALLOCATE](man_cs-allocate.md) destroys all stored variable values, so it's best to use it only at the beginning of a program.

## CODE AND HEX$

The machine-code routine is stored – with a given name – by using the [CODE](man_cs-code.md) command:

`CODE name = routine in hex codes`

The name has the same format as a variable name.

[CODE](man_cs-code.md) can only store a string – your hex codes must be converted into the right format by using [HEX$](man_fn-hex.md), as follows:

`HEX$("hex,hex,...")`

(don't forget the inverted commas, or the commas separating the hex values!); or
 
`HEX$ (any string expression)`

For example, a routine which doubles a specified number –

```
TEST: 29 ADD HL, HL	; add number to itself
      C9 RET
```
– can be inserted into the BASIC program like this:
```
100	ALLOCATE 2
110	CODE TEST=HEX$("29,C9")
```
Once you have run this part of the program, the routine is stored in the memory you set aside.

## EXECUTING THE ROUTINE

Broadly speaking, your code will create a new 'function'. In the chapter on defining functions, we divided these into two types. One type is designed to calculate a result – the 'built-in' functions come into this category. A good example is SIN, which calculates the sine of a specific angle when you type something like:
```
PRINT SIN(53)
```
The value to be processed (which you put between brackets) is called the argument of the function. Some built-in functions don't take an argument – [RND](man_fn-rnd.md), for example – but all return a value, an 'answer'

The other type of function is more like a 'command'. A command is a set of operations which do something, like clearing the screen or perhaps setting up a graphics mode. A command does not return a value.

The way your routine is executed depends on which of these two types it is. If it returns a value, like our double-the-number example, use

`USR(name,argument)`

For example:
```
PRINT USR(TEST,2)
```
will print **4** on the screen; while
```
LET A=3*USR(TEST,2)
```
will assign the value of **12** to variable **A**.

Note that the argument of [USR](man_fn-usr.md) is passed into **HL** at the beginning of the routine; and the value returned by [USR](man_fn-usr.md) is the contents of the **HL** register at the end of the routine.

If your routine is a command-type operation, you must use

`CALL USR`

– which does not return a value. For example:
```
CALL USR(NAME,0)
```
You must still give [USR](man_fn-usr.md) an argument, but the value doesn't matter.

'Commands' can be amalgamated as in the following example:
```
CALL USR(CLEAR,0)+USR(GRAPH,0)+USR(PICTURE,0)
```

## WORD$

[WORD$](man_fn-word.md) converts its argument into a two-byte string – **LSB** **MSB** – so it's useful for forming backward jumps from labels. For example,
```
WORD$(TEST)
```
will return the start address of the TEST routine in the correct format for machine-code jumps and calls.
