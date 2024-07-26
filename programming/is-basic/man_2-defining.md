# DEFINING FUNCTIONS

A function is a kind of 'program within a program', designed to carry out some specific task – a sequence of instructions which is set aside for use whenever you need it, and can be utilized again and again.

As a simple example, suppose that you want a particular message to be displayed on the screen at various different stages of a program. You could define this action as a function, by typing something like:
```
100	DEF WARNING
110		CLEAR SCREEN
120		PRINT AT 10,7:"NOW PAY CLOSE ATTENTION..."
130		!	--------------------
140		SOUND !	Line 140 adds a
150		!	sound signal.
160		!	--------------------
170	END DEF
```
You always have to give the function a name (in this case **WARNING**), and introduce it by the keyword [DEF](man_cs-def.md). The definition which then follows may be one line long or 1000 lines long, but whatever its length it must have the words [END DEF](man_cs-end.md) as the last line of all.

## CALLING FUNCTIONS

The function cannot work on its own. Type in the above lines, and try to run them; for the moment, nothing will happen. The function needs to be activated by the statement `CALL WARNING`. Type this as line **180**, and run the program; then type the same instruction in immediate mode. Note that the definition of the function may come after the [CALL](man_cs-call.md) statement – or indeed after the [END](man_cs-end.md) statement of the program. If, instead of line **180**, you typed:
```
80	CALL WARNING
90	END
```
– the function would still work.

Whenever the computer reaches a [CALL](man_cs-call.md) statement, it stops whatever it is doing, finds the function being **CALL**ed, goes and carries it out, then returns to the point in the program immediately after the [CALL](man_cs-call.md). The diagram should make this clear.

![DEF](IS-BASIC_ProgrGuide(DEF).png)

Remember that a function is inactive as long as you don't actually tell the computer to perform it. If the computer is simply following through the sequence of line-numbers and it comes to the part of a program where a function is placed, it jumps over it and does whatever comes afterwards. You cannot make a function work without using its name elsewhere in the program.

## LOCAL AND GLOBAL VARIABLES

Usually, functions will handle variables. To make them do this correctly, some important rules must be followed.

Try typing this:
```
100	DEF CUBE
110		INPUT PROMPT "Number to be cubed: ":Z
120		PRINT Z; " cubed is ";Z*Z*Z
130	END DEF
140	CALL CUBE
```
— and after running it, add:
```
150	PRINT Z
```
— and run it again. You will then find that although the **CUBE** function still works, the computer gives an error message when it comes to line **150**. Why is this?

The answer is that, in the present case, **Z** is what is known as a local variable. It belongs exclusively to the **CUBE** function, and the part of the program outside that function knows nothing about it. Since a function is treated by the computer as a separate little program, it may use its own private variables to help it perform its task. But these private variables mean nothing to the rest of the program; once the task has been completed, their values are thrown away. So, at line **150** above, the computer doesn't know what to print.

Next, renumber line **110** as **90** – to place it outside the function. You will now find that the program allows you to type in a number for **Z**, tells you the cube of this number, and then re-prints the number itself. That is, line **150** no longer confuses it.

The reason is that by introducing **Z** before the function is called, you have made **Z** into a **global** variable. A 'global' variable is one that is available to the general 'world' of the program.

Now add:
```
125	LET Z=20
```
— and run the program again. What now happens is that the function takes the number out of the 'box' (labelled **Z**) in the 'main' part of the program, performs a calculation with it and prints the result, then alters the number itself and puts it back in the same box as before. The 'main program' then prints out this new number.

The point to remember is that if a function contains a line which mentions a variable, and this variable hasn't been introduced before the function is called, the function will treat it as a **local**, or private, variable. If, on the other hand, the variable has been declared already, the function will regard it as 'global'; any new value which the function gives to it will be passed on to the rest of the program.

You will have read about declaring variables in earlier parts of the manual. (If you need a recap on this, look at pages 24 and 75.) It was stated that, although this is not always essential, it is best to declare every variable you use. Obviously, declaring variables is especially important if you are making much use of functions.

A variable, as you know, can be declared by a [NUMERIC](man_cs-numeric.md) or [STRING](man_cs-string.md) statement, or by the word [LET](man_cs-let.md) (e.g. `LET A=0`). In previous examples, it didn't much matter which of these forms of declaration was used; but their effects must be precisely understood when you are working with functions. Inside a function, a [NUMERIC](man_cs-numeric.md) (or [STRING](man_cs-string.md)) statement always has the effect of creating a local variable. In the program above (after renumbering the original line **110**), try adding:
```
110	NUMERIC Z
115	LET Z=3
```
You will then find that the program operates with two quite separate **Z**'s, one inside the function (a '**local**' **Z**) and one outside it (a '**global**' one). On the other hand, if you now delete line **110**, there will only be one **Z**. The [LET](man_cs-let.md) statement in line **115** will not create a new (local) variable, but will alter the global variable that was introduced by line **90**.

The program below contains some rather more complex examples of functions. It's a restructured version of an earlier program which appeared in the chapter about decisions. Apart from showing you what functions look like within a program, it will also demonstrate that there are always several ways of putting a program together. Some look nice, some look horrible, some are incomprehensible, some are very efficient and others are quite the opposite. If you look at the program as a whole, you will probably agree that this version of it is much tidier.

As long as you want the computer to print more names on the screen, the program will not end. You will have to type '**N**' when asked, to finish it.
```
100	DO
110		LET A=0
120		LET A$=""
130		!	-----------------------------------
140		!	Lines 110 and 120 declare two
150		!	'global' variables, which the func-
160		!	tions will use (and alter) and then
170		!	hand back to the main program.
180		!	-----------------------------------
190		CALL MENU
200		FOR X=1 TO 1500
210		NEXT X
220		!	---------------------------------
230		!	Then comes the main program,
240		!	which begins by calling the menu,
250		!	and, after the menu has finished,
260		!	delays for 3 seconds to give you
270		!	time to read the screen. After you
280		!	have made your choice from the
290		!	menu, the main program goes
300		!	through the CASE block, does what
310		!	you have chosen, and then calls the
320		!	ANSWER function which decides
324		!	whether or not the program will run
327		!	again.
330		!	---------------------------------
340		CLEAR SCREEN
350		SELECT CASE A
360		CASE 1
370			PRINT AT 9,18:"ENTERPRISE!"
380		CASE 2
390			INPUT PROMPT "Then please tell me your name. ":NAME$
400			PRINT AT 9,18:NAME$
410		CASE3
420			INPUT PROMPT "Then please tell me your name. ":NAME$
430			PRINT AT 9,18:NAME$
440			PRINT AT 11,18:"ENTERPRISE!"
450		END SELECT
460		FOR X=1 TO 3000
470		NEXT X
480		CLEAR SCREEN
490		CALL ANSWER
500	LOOP WHILE A$="Y"
510	END
520	!	----------------------------------
530	!	500 concludes the main loop. If A$
540	!	is "Y", the program goes back to
550	!	the beginning. In effect, the
560	!	program does not end until you
570	!	reply with "N" (or no, or nope, etc.)
575	!	in the ANSWER function.
580	!	----------------------------------
590	DEF MENU
600		CLEAR SCREEN
610		PRINT AT 9,18:"Menu"
620		PRINT AT ll,9:"l)Print my name."
630		PRINT AT 12,9:"2)Print your name."
640		PRINT AT 13,9:"3)Print both of our names."
650		PRINT AT 16,1:"Please enter the number of your choice: "
660		DO
670			INPUT A
680		LOOP WHILE A<1 OR A>3 OR A<>INT(A)
690	END DEF
700	DEF ANSWER
710	PRINT
720	PRINT
730	DO
740		INPUT PROMPT "Would you like to do that again? ":A$
750		LET A$=UCASE$(A$(1:1))
760	LOOP UNTIL A$="Y" OR A$="N"
770	END DEF
```
If you remove lines **110** and **120**, the program won't work any more – because the two variables whose declarations you've missed out have become local to the functions which contain them.

So far we have been using functions that are activated with [CALL](man_cs-call.md) statements and may produce a variety of effects, such as inviting us to type in more data or printing messages on the screen. We shall now look at a rather different class of function – one which simply has the purpose of handing back a single number to the main part of the program.

Several functions of this kind are supplied 'ready-made' by the computer. Take [SQR](man_fn-sqr.md) for instance. A program line can contain the statement `PRINT SQR(121)`, or `PRINT SQR(P)`, or `LET M=2*SQR(N)+1`. The function [SQR](man_fn-sqr.md) calculates the square root of the bracketed number or variable, then lets you use this square root as part of an 'expression' or do whatever else you want with it. You are also familiar with the function [INT](man_fn-int.md). Such BASIC words give you the means to perform, quickly and easily, calculations that you may need often.

Suppose you were writing a program that made use of several 'factorial' numbers (factorial **4** means **4\*3\*2\*1**; factorial **6** is **6\*5\*4\*3\*2\*1**; etc.). There is no ready-made function to calculate factorials. But if you wanted, you could devise one by the methods you have so far learned. You could type:
```
100	DEF FACT
110		!	--------------------------
120		!	This funclion will take a
130		!	global variable, F, from
140		!	the'main'program, alter
150		!	it and hand it back again.
160		!	--------------------------
170		FOR Y=F –1 TO 1 STEP -1
180			LET F=F*Y
190		NEXT Y
195		IF F=0 THEN LET F=1
200	END DEF
```
And then, in order to print (say) factorial **13**, or use factorial **7** in an 'expression', you could add:
```
210	LET F=13
220	CALL FACT
230	PRINT F
240	LET F=7
250	CALL FACT
260	LET NUMBER=F*1.5+3
270	PRINT NUMBER
```
But this, as you can see, is a good deal more cumbersome than using a BASIC word like [SQR](man_fn-sqr.md), because every time the function **FACT** is called, the number on which you want it lo operate has first to be placed in the variable **F**. However, the computer offers you ways of overcoming this limitation. Delete all of the above, and type instead:
```
100	DEF FACT(X)
110		FOR Y=X -1 TO 1 STEP -1
120			LET X=X*Y
130		NEXT	Y
140		LET FACT=X
150	END DEF
160	PRINT FACT(13)
170	LET NUMBER=FACT(7)*1.5+3
180	PRINT NUMBER
```
By doing it like this, you are making **FACT** into a kind of new BASIC word of your own – which can be used in the same ways (and just as conveniently) as you would use [INT](man_fn-int.md) or [SQR](man_fn-sqr.md).

The two things about the above program which are new to you are lines **100** and **140**. The bracketed **X** in the [DEF](man_cs-def.md) line tells the function to look for a bracketed number following the word **FACT** in a main program line, and automatically put that number into its own local variable **X**. Line **140**, in effect, assigns a value to a variable that has the same name as the function itself, and so allows this value to be handed straight back to the line in the 'main' program where the function is mentioned (see lines **160** and **170**). In this way, you do without a [CALL](man_cs-call.md) statement.

## DUMMY VARIABLES

In technical terms, the bracketed **X** in line **100** above is known as a dummy variable. It tells the function to expect one number to be handed to it for processing. (The final example in this chapter will show you a function with two dummy variables, telling it to expect two numbers.) That number may, however, be supplied by a global variable in the main program. Delete lines **160**-**180**. and substitute:
```
160	LET A=11
170	PRINT FACT(A)
```
What happens now is that the function looks into box **A** and makes a note (takes a copy) of the number it sees there. It then puts an identical number into its own box **X**, which it uses for its calculations – during which the number in box **X** changes, but the one in box **A** stays the same.

The particular way that the dummy variable works is seen if you alter lines **160** and **170** to:
```
160	LET X=11
170	PRINT FACT(X)
```
You have now defined a global variable with the same name as the function's dummy variable. But you will find that the program still treats these two 'boxes' as separate, even though at the beginning of the function a number is 'copied' from one box to the other. You could add an extra line to the function:
```
145	LET X=100
```
– and an extra line to the 'main' program:
```
180	PRINT X
```
– but you would find that line **180** printed **11**, not **100**. Line **145** alters the 'local' **X** only.

## PARAMETER REFERENCING

You have just seen a function, using a dummy variable, perform a calculation with a number 'copied' from a global variable. But although the function handed back a number to the main program, the actual variable from which the copy was taken remained unchanged.

It is a different matter if you put **REF** (for 'reference') in front of the dummy variable – as the following simple example will show.

This program allows you to type in two numbers – for **A** and **B** – and then it changes them by raising **A** to the power of **B**, and **B** to the power of **A**:
```
100	INPUT PROMPT "First Number":A
110	INPUT PROMPT "Second Number":B
120	CALL POWERS(A,B)
130	PRINT A,B
140	END
150	DEF POWERS(REF X,REF Y)
160		LET Z=X
170		LET X=X^Y
180		LET Y=Y^Z
190	END DEF
```
Line **150** introduces two dummy variables. When the function is **CALL**ed, the value of the first bracketed variable in line **120** is transferred to variable **X**, and the value of the second one is transferred to **Y**. This is the same kind of thing that you have seen before, except that in earlier examples there was only one dummy variable; also, since this function will hand back two numbers (not just one) to the main program, it has to be activated with a [CALL](man_cs-call.md) statement.

The difference made by introducing **REF** in line **150** is simply that when the function has finished its calculations, the new value it has given to **X** is transferred back into the global variable **A** (and **Y** is transferred back to **B**).

The to-ing and fro-ing of values between functions and other parts of a program is called parameter passing. If the function has the effect of altering those global variables (or arrays, etc.) from which it took its numbers for processing, we call it parameter referencing. In the last example, **A** and **B** are reference parameters.