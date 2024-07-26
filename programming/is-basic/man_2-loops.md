# LOOPS

You have already seen some short programs which use loops to make the computer repeat itself. Should you wish the machine to perform one operation several times in succession, a loop represents a much easier way of doing this than typing in the same piece of BASIC over and over again.

A loop is also an easy way to control an entire program, as you will see.

With one exception ([GOTO](man_cs-goto.md), which can be treated as a loop), every loop contains a special statement to mark its beginning, and ends with a line that tells the computer to jump back to the start again.

## DO/LOOPS

Let's deal with the easiest kind first, [DO](man_cs-do.md)/[LOOP](man_cs-do.md)s. You have already come across these. They look like this:
```
80	INPUT PROMPT "Please type in a number and I'll print the 'times table' for it. ":A
90	LET B=A
100	DO !	Beginning of DO/LOOP
120		LET B=B+A
130		PRINT B,
140		!	---------------------------------
150		!	Line 90 puts your number into
155		!	another variable, B. Then, in
160		!	lines 120 and 130, the value of
170		!	A (which has not changed) is
175		!	added to B. and the new value
180		!	for B is put on the screen. This
185		!	happens each time round the
190		!	loop, so B increases by the value
200		!	of A each time.
210		!	---------------------------------
220	LOOP UNTIL B>150 !	End of DO/LOOP
230	!	-------------------------------------
240	!	UNTIL B>350 stops the program
245	!	going on forever without any
250	!	interference from you (e.g. 'stop' or
260	!	'hold' keys). UNTIL means exactly
265	!	what you might think it does – i.e.
270	!	'until B is bigger than 150'.
280	!	-------------------------------------
290	END
```
A [DO](man_cs-do.md)/[LOOP](man_cs-do.md), as you can see, makes the computer 'go around in a circle' until some condition is met which tells it to stop. This condition may be specified by using the word [UNTIL](man_cs-do.md) or [WHILE](man_cs-do.md).

Whichever of these words is used, you have a choice between [DO WHILE](man_cs-do.md) (or [DO UNTIL](man_cs-do.md)) and [LOOP WHILE](man_cs-do.md) (or [LOOP UNTIL](man_cs-do.md)). Usually, either alternative will be possible, particularly in a program like the previous one, which is not dependent on an especially delicate arrangement of conditions.

The essential difference between putting a condition at the beginning and putting it at the end of a loop is that it affects, by a difference of **1**, the number of times a loop may happen. If the condition is at the beginning, it will be tested before the loop is done, which means that if it is met immediately the loop will never be done. If it is put at the end, the condition cannot actually be read by the computer until then, which means the loop will always be carried out at least once. [WHILE](man_cs-do.md) and [UNTIL](man_cs-do.md) are opposite types of conditions. **UNTIL B=150** and **WHILE B=150** mean totally different things ([UNTIL](man_cs-do.md) means 'as long as it is not' and [WHILE](man_cs-do.md) means 'as long as it is').

Try changing the loop above by using a [WHILE](man_cs-do.md) condition in place of [UNTIL](man_cs-do.md), by using bigger and smaller numbers in response to the [INPUT PROMPT](man_cs-input.md) at the beginning, and by putting the condition after the [DO](man_cs-do.md) instead of after the [LOOP](man_cs-do.md). Experimentation will soon show you what you can do with a [DO](man_cs-do.md)/[LOOP](man_cs-do.md).

## GETTING OUT

At any time, if you want to, you can make the machine get out of a loop by using the word [EXIT](man_cs-exit.md). Now, [EXIT](man_cs-exit.md) applies to [FOR](man_cs-for.md)/[NEXT](man_cs-for.md) loops as well (these are described opposite). So you need to specify which type of loop you are exiting – [EXIT FOR](man_cs-exit.md) or [EXIT DO](man_cs-exit.md) is the way to do this. You should exit using some sort of condition – e.g.:
```
1000	IF X>25 THEN EXIT DO
```
A quick look at the chapter about decisions will tell you how to do this using [SELECT CASE](man_cs-select.md) as well.

Remember that the word [EXIT](man_cs-exit.md) is the only proper way to leave a loop before it should end. Things like [GOTO](man_cs-goto.md) should not be used for this purpose – they can be confusing both for you and for the computer. ([GOTO](man_cs-goto.md) and its associated command [GOSUB](man_cs-gosub.md) are dealt with on pages 127-128). [EXIT](man_cs-exit.md) will simply make the computer jump to the first line after the end of the loop.

## FOR/NEXT LOOPS

[FOR](man_cs-for.md)/[NEXT](man_cs-for.md) loops are rather different from [DO](man_cs-do.md)/[LOOP](man_cs-do.md)s. They are possibly a little less straight-forward, but they have definite uses.

Here is a short [FOR](man_cs-for.md)/[NEXT](man_cs-for.md) loop:
```
100	INPUT PROMPT "How many times would you like me to loop? ":X
110	!	------------------------------------
120	!	Notice that in this and other INPUT
125	!	PROMPTS, a space is put at the end
130	!	of the prompt itself. This makes the
140	!	screen look tidier.
150	!	------------------------------------
160	FOR P=1 TO X
170		PRINT "LOOP THE LOOP!"
180	NEXT P
190	END
```
Do you see how the number you type is the number of times the computer will perform the loop? This is the essential purpose of a [FOR](man_cs-for.md)/[NEXT](man_cs-for.md) – you can specify quickly and concisely how many times the loop should be done. There is no need to use conditions except in special circumstances.

[FOR](man_cs-for.md)/[NEXT](man_cs-for.md) can also count in successions of three, twenty, 0.2, 1000, 466.666 or even backwards. [STEP](man_cs-for.md) is the key to this little ability. Here's a program which counts backwards by twos.
```
10	FOR P=40 TO 0 STEP -2
20		PRINT P,
30	NEXT P
40	END
```

You cannot simply ask the machine to count from **40** to **0** without giving it a [STEP](man_cs-for.md) command. It has to know to subtract (counting in minus numbers) from the number given in the [FOR](man_cs-for.md) line before it will do this. Unless you specify by using [STEP](man_cs-for.md), a [FOR](man_cs-for.md)/[NEXT](man_cs-for.md) loop will always count upward in steps of **1**. Note also the **PRINT P** statement. The first line of the loop creates a variable, in this case **P**, of which the value changes each time the loop is performed. The 'times table' program, used as an example of the [DO](man_cs-do.md)/[LOOP](man_cs-do.md), will be shorter if we use [FOR](man_cs-for.md)/[NEXT](man_cs-for.md):
```
100	INPUT PROMPT "Please type in a number and I will give you a 'times table' for it. ":A
110	FOR P=0 TO 150 STEP A
120		PRINT P,
130	NEXT P
140	END
```
That program does almost the same thing as the [DO](man_cs-do.md)/[LOOP](man_cs-do.md) (page 59) but in a different way. [DO](man_cs-do.md)/[LOOP](man_cs-do.md)s are just a little easier to read and understand when you're unfamiliar with computer programs.

Notice that the [FOR](man_cs-for.md)/[NEXT](man_cs-for.md) loop is always tested at the beginning, and will not run if it has gone past the end limit specified in the [FOR](man_cs-for.md) statement. Try entering numbers bigger than **150** for the 'times table' program above.

You might like to try different ways of presenting this program using **PRINT AT** (page 31). You could, by combining [PRINT](man_cs-print.md) and [GRAPHICS](man_cs-graphics.md) commands (page 89), design a table made up of boxes for your 'times table' to go in. And this time, the manual isn't going to tell you any more! Programming is all about being adventurous and finding things out for yourself. You may have some better ideas, as well. If you're a parent with young children or you have a little brother or sister, this is the kind of program which could be used to teach them and to have a bit of fun as well.

## NESTED LOOPS

These words might sound rather strange. Nested loops, though, are just loops placed inside loops. The important thing to remember is never to end the second loop outside the first one. Here is an example:
```
100	FOR P=1 TO 20 !	First loop begins.
110		PRINT P,
120		FOR A=1 TO 4 !	Second loop begins.
130			PRINT P+10; P-10;
140		NEXT A !	Second loop ends.
145		PRINT
150	NEXT P !	First loop ends.
```
You can nest another loop inside the second one as well, and another inside that, and so on. If you look at a series of nested loops, the end lines should come in descending order as you look down the program. The beginnings should be in ascending order. Look at the diagram.

![diagram](IS-BASIC_ProgrGuide(Loops).png)

As you can see from the diagram, if you really felt that loops were the answer to all your problems, you could also sandwich loops in between two beginnings or two endings of other loops,

However, complex arrangements of loops like this need presence of mind if you are to keep track of them. The Enterprise helps by indenting loops as shown in the last program, which makes them easier to read. Comment lines also help to make things more easily understood. Normally, if you have several layers of nested loops, it is easier to define the inner 'layers' as functions (see page 79). This keeps the purpose and flow of the program clear.
