# MINIMAL BASIC FEATURES

As you know, BASIC comes in many dialects, just as spoken languages have dialects. In the past, computer companies have invented their own BASICs with their own words and ideas. But the core of the language, and its approach, have remained the same.

The Enterprise follows the dialect of Standard BASIC as proposed by the European Computer Manufacturers' Association and the American National Standards Institute.

Standard BASIC is designed to overcome the problems associated with the use of a non-standard language. It therefore makes it possible to transfer programs between the Enterprise and other machines that use Standard BASIC. This BASIC also provides some very powerful features not available in nonstandard BASICs.

You may wish to run programs written in nonstandard BASICs without having to go through them and change them in detailed and complicated ways. Fortunately, most BASICs follow something called 'Minimal BASIC', which was devised some years ago and adopted by several manufacturers. You will probably hear about Microsoft BASIC, which is one of those which use the Minimal BASIC features.

To help with compatibility between BASICs, the Enterprise provides the major features of Minimal BASIC as well as those of Standard BASIC. This chapter details these features.

## BRANCHES

No, this isn't a lesson on how to prune your prize apple trees. But it is quite helpful if you try for a while to think of a program structure as being in some ways like a tree – with main stems and smaller branches.

Some trees have a lot of branches and others have only a few. Similarly, you can either structure your programs so that they move from one task to another sequentially, or (better) you can organise them so you have a 'trunk', and several 'branches' which spring directly from the trunk. Above all, it's best to avoid leaping from branch to branch. These things have to be treated with care.

Two ways of branching within a program are [GOTO](man_cs-goto.md) and [GOSUB](man_cs-gosub.md). The other main method of branching provided on this computer is that of functions, which are dealt with on page 79.
[GOTO](man_cs-goto.md) and [GOSUB](man_cs-gosub.md) both make the computer jump to another part of the program from the part it has reached when it comes to either of these words.

## GOTO

[GOTO](man_cs-goto.md) uses a line number to tell the computer where to move to next. Like this:
```
100	CLEAR SCREEN
110	INPUT PROMPT "Do you like computers? ":SAY$
120	IF UCASE$(SAY$(1:1))="Y" THEN
130		GOTO 220
135		!	GOTO 220 directs the
136		!	program to line 220.
140	ELSE IF UCASE$(SAY$(1:1))="N" THEN
150		GOTO 240
155		!	GOTO 240 directs the
156		!	program to respond to
157		!	a 'NO' answer.
190	ELSE
200		GOTO 110
205		!	This makes the program
206		!	begin again if you do
207		!	not answer yes or no.
210	END IF
220	PRINT "Oh good I'm okay here!"
230	END
240	PRINT "But I'm different. You'll see!"
250	END
```
So [GOTO](man_cs-goto.md) directs the computer to a line number. You can also use it as a loop. If you changed line **250** to:
```
250	INPUT PROMPT" Would you like to do that again? ":A$
```
And added line **260**:
```
260	IF UCASE$(A$(1:1))="Y" THEN GOTO 100
```
(and line `270 END`), then the program would loop back to the beginning if you responded with '**yes**'. This is the same as making a [DO/LOOP](man_cs-do.md) out of this program, ending in:
```
260	LOOP WHILE UCASE$(A$(1:1))="Y"
```
Although the computer would not be working out what to do in exactly the same way for both methods, the result would be the same.

[GOTO](man_cs-goto.md) is a far more awkward way to split large programs up into separate components than the use of functions, described on page 79.

The clumsiness of [GOTO](man_cs-goto.md) is mostly because it breaks up the normal order of program flow without providing an alternative structure. This is why programs get lost!

## GOSUB

[GOSUB](man_cs-gosub.md) is similar to [GOTO](man_cs-goto.md) in that it directs the computer to a line number in a different bit of the program, but with [GOSUB](man_cs-gosub.md) you expect to return.

Using [GOSUB](man_cs-gosub.md) you need to set part of a program aside as a 'unit' – a bit which is meant to do one thing only. Then, at the end of that bit of program, you must add the word [RETURN](man_cs-return.md), to tell the computer to go back to the line immediately following the one that contains the word [GOSUB](man_cs-gosub.md).

The bit of the program between the line indicated by a [GOSUB](man_cs-gosub.md) command and the [RETURN](man_cs-return.md) command is called a subroutine. A function can also be a subroutine, using the word [CALL](man_cs-call.md).

## HOW TO AVOID MISTAKES

If you don't want to go wrong and become confused, please remember two points whenever you use [GOSUB](man_cs-gosub.md)/[RETURN](man_cs-return.md):

First, a [GOSUB](man_cs-gosub.md) must never be used without a [RETURN](man_cs-return.md). If this happens, the result is a message from the computer to tell you you've made a mistake.

Secondly, even though you have set the subroutine aside as a separate unit, the computer has not. There is no special command to mark the beginning of a subroutine. Because of this the computer may run into the subroutine by mistake.

If this happens, and the computer reads the word [RETURN](man_cs-return.md) without having been told to [GOSUB](man_cs-gosub.md) first, it will stop the program because it will not understand.

The best way to avoid this problem with [GOSUB](man_cs-gosub.md) is to put all your subroutines at the physical end of your programs. Then, immediately before they start, put the [END](man_cs-end.md) statement or a [STOP](man_cs-stop.md) command. This tells the computer to end the program before it has a chance to read the subroutines again.

The following program shows an example of this technique:
```
80	CLEAR SCREEN
100	PRINT AT 1,5:"POPULATION TO LIVING SPACE"
110	PRINT AT 2,9:"RATIO PROGRAM"
120	PRINT AT 4,5:"This program works out the"
125	PRINT AT 5,5:"average ground space"
130	PRINT AT 6,5:"available to each person in"
140	PRINT AT 7,5:"a city, in square yards."
150	PRINT AT 8,5:"Remember-it's only an"
160	PRINT AT 9,5:"average, but if you compare"
170	PRINT AT 10,5:"lots of cities you can soon"
180	PRINT AT 11,5:"see which are overcrowded!"
183	FOR X=1 TO 5000
184	NEXT X
187	CLEAR SCREEN
190	PRINT AT 14,5:"Please type in the following information:"
200	PRINT AT 16,5:"A) Name of city,"
210	PRINT AT 17,5:"B) Population,"
220	PRINT AT 18,5:"C) Size of city in square miles."
230	FOR X=1 TO 2500
232	NEXT X
235	CLEAR SCREEN
240	INPUT PROMPT "CITY? ":CITY$
250	INPUT PROMPT "POPULATION? ":POP
260	INPUT PROMPT "SIZE? ":SIZE
270	GOSUB 1000
350	CLEAR SCREEN
360	PRINT AT 10,5:CITY$;", at a size of";
370	PRINT AT 11,5:SIZE;" square miles,"
380	PRINT AT 12,5:"and a population of ";POP
390	PRINT
400	PRINT AT 13,5:"would give everyone living there"
410	PRINT AT 15,12:SPA
420	PRINT AT 16,5:"square yards of ground space to live in -"
440	PRINT AT 17,12:"on average!"
450	PRINT
455	PRINT
460	INPUT PROMPT "Do you want to try any more? ":ANS$
470	IF UCASE$(ANS$(1:1))="Y" THEN GOTO 187
480	!	---------------------------------
490	!	470 uses GOTO to send you back to
500	!	type more info if you answer yes.
510	!	---------------------------------
520	END
530	!	---------------------------------
540	!	The END is line 520 so that the
550	!	subroutine is not run into again.
560	!	This prevents errors.
600	!	Line 1000 begins the subroutine.
610	!	---------------------------------
1000	LET SQY=SIZE*1760^2
1010	LET SPA=SQY/POP
1080	RETURN
```
So the program above shows you how to use [GOSUB](man_cs-gosub.md). But as you can see, it is far less tidy than a program using a function with [CALL](man_cs-call.md) – notice for instance that apart from the [GOSUB](man_cs-gosub.md) line there is no indication where the subroutine begins.

Programs which use [GOTO](man_cs-goto.md) or [GOSUB](man_cs-gosub.md) are more likely to go wrong than programs which use structured loops and functions.

## THE 'DIM' STATEMENT

A look back on the chapter about storing larger amounts of information will remind you how you should set aside areas of memory for use as arrays. There is another, less versatile, way to do this.

`DIM A(10)` will set aside a one-dimensional array with elements numbered **0**-**10**. `DIM A(4,4)` will set aside a two-dimensional array using the same element-numbering system. You can use `(X TO Y)` to specify a range of numbers to be given to your array's elements, as you would using [STRING](man_cs-string.md) or [NUMERIC](man_cs-numeric.md). What is missing, though, is the ability to decide how long each string element may be. When you write very long programs which use several string arrays, you will perhaps realize how useful this can be, because you can use it to conserve memory space.

[DIM](man_cs-dim.md) is only provided for compatibility with other BASICs. Here is a short program to demonstrate it. Note that `DIM ARRAY$(9)` is the same as `STRING ARRAY$(9)` – the bottom element is always **0** unless you specify a different number.
```
100	DIM ARRAY$(9)	!	a 10 element array
110	FOR N=0 TO 9
120		READ ARRAY$(N)
130	NEXT N
140	FOR N=0 TO 9
150		PRINT ARRAY$(N);" ";
160	NEXT N
170	DATA This,is,an,array,declared,
180	DATA using,the,DIM,statement,
190	DATA "- simple, eh?"
```
