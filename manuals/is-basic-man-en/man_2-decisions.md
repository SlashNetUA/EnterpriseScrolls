# DECISIONS, DECISIONS!

Fiction often refers to computers with the reasoning of human beings. Perhaps, like most people, you believed before you understood computers that they are more 'clever' than they really are.

But while they can't think like people can, computers can make very simple decisions and comparisons.

## COMPARISONS USING IF/THEN

Perhaps we can start with comparisons. Do you remember the relational operators mentioned in part 1 of the manual? These are the key to the way in which computers make comparisons and, sometimes, decisions based on those comparisons.

Try out this program. It will show you how to use these relational operators to decide whether two strings are different or not.
```
100 LET THAT$="kettle"
110 INPUT PROMPT "Please type in some letters:":THIS$
120 !	-----------------------------------
130 !	100 and 110 should be familiar.
140 !	The two strings are compared in
150 !	220 and 230, using <> which
155 !	means 'different from'. If the two
160 !	are the same, both will be printed.
170 !	If they are different, "kettle" is
180 !	printed once.
190 !	-----------------------------------
200 PRINT
210 PRINT
220 IF THIS$=THAT$ THEN PRINT THIS$;" = ";THAT$
230 IF THIS$<>THAT$ THEN PRINT THAT$
240 !	----------------------------------
250 !	220 and 230 use IF/THEN to make a
260 !	decision. IF THIS$ is the same as
265 !	THAT$ THEN put both of them on
270 !	the screen. If it is not the same,
290 !	print THAT$.
295 !	----------------------------------
300 END
```
[IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) is one of the two main ways in which the Enterprise can make a decision. It is one of the more English-like statements in BASIC. It is used with logical operators to look at variables and numbers to see if they fulfil certain conditions. [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) is not used to perform calculations on variables, but it is there to redirect a program [IF](commands/man_cs-if.md) something about a number or string is true.

For instance, you may write a program to play a game in which each player only has a certain number of turns per round of the game. So you set aside a variable which goes up by 1 every time a player has completed a turn.

Then, when the variable is equal to the number of turns the player should be allowed, an [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) statement can be used to tell the program to set the variable back to 0 for the next player, inform the current player that his round is over, record his score and go on to the next player, etc.

## IF BLOCKS

An [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) statement does not have to be just one line long. You can also use what is called an IF block. This is simply several lines which allow the computer to make several comparisons or decisions. It also means you can use several lines to deal with each condition. That gives you great scope for making decisions.

Lines **220** and **230** of the program opposite could have been written in a different way. The lines below could be used to replace **220** and **230** in the original program. They would have the same effect.
```
220 IF THIS$=THAT$ THEN
224   PRINT THIS$;" = ";THAT$
230 ELSE
232   PRINT THAT$
236 END IF
```
The reason is that the computer had just two alternatives. Either the two strings were the same or they were not. So the lines above say: 'If **THIS\$** and **THAT\$** are the same, print them both. If anything else is true, print **THAT\$** only.' This is an example of a small [IF](commands/man_cs-if.md) block – it contains one [IF](commands/man_cs-if.md) statement, one [THEN](commands/man_cs-if.md) statement, one [ELSE](commands/man_cs-if.md) statement (you can only put one [ELSE](commands/man_cs-if.md) statement in an [IF](commands/man_cs-if.md) block, for obvious reasons), and the words [END IF](commands/man_cs-if.md), which let the computer know it doesn't have to make any more comparisons.

[ELSE](commands/man_cs-if.md) means exactly what it says. Anything else. It means you can use [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) to tell the computer to do particular things if so-and-so is 'true' and then use [ELSE](commands/man_cs-if.md) to cater for any other possibilities. It must always be on a line of its own — never on the same line as an
[IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) statement.

The example below is an [IF](commands/man_cs-if.md) block. It also uses a numeric function that you have seen once before (pages 5-6).
```
100 RANDOMIZE
110 LET A=RND(5)
120 !	--------------------------------------
130 !	100 and 110 make numbers out of the
140 !	blue! These can be used to make
150 !	patterns on the screen, to play games
160 !	like roulette or Simon (the flashing
170 !	sequences game) or many other things.
180 !	Here we'll use the random numbers to
190 !	draw shapes on the screen. The
200 !	commands are explained in the chapter
210 !	on graphics. The word RND is the one
220 !	which makes the computer produce a
230 !	random number. RANDOMIZE makes
240 !	sure the number is different each time
250 !	the program is run.
260 !	--------------------------------------
270 GRAPHICS
280 PLOT 600,300;
290 OPTION ANGLE DEGREES
300 PLOT ANGLE 0;
310 IF A=1 THEN
320   PLOT FORWARD 100;
330   PLOT LEFT 90;
340   PLOT FORWARD 100;
350   PLOT LEFT 90;
360   PLOT FORWARD 100;
370   PLOT LEFT 90;
380   PLOT FORWARD 100
390   !	----------------------------------------
400   !	270 to 300 prepare the computer for line
410   !	drawing, In this example, some very
420   !	simple graphics commands are used.
430   !	LEFT gives turns; FORWARD is followed
440   !	by a number of screen positions
450   !	(measured according to the graphics
460   !	conventions). Lines 320 to 380 draw a
465   !	square.
470   !	----------------------------------------
480 ELSE IF A=2 THEN
490   PLOT FORWARD 50;
500   PLOT LEFT 90;
510   PLOT FORWARD 100;
520   PLOT LEFT 90;
530   PLOT FORWARD 50;
540   PLOT LEFT 90;
550   PLOT FORWARD 100
560   !	-------------------------
570   !	490-550 draw a rectangle.
580   !	-------------------------
590 ELSE IF A=3 THEN
600   PLOT FORWARD 100;
610   PLOT LEFT 120;
620   PLOT FORWARD 100;
630   PLOT LEFT 120;
640   PLOT FORWARD 100
650   !	------------------------
660   !	600-640 draw a triangle.
670   !	------------------------
680 ELSE
690   TEXT
700   PRINT "I have no instructions for number";A
710 END IF
720 END
```
Now you've had a chance to play with the Enterprise's graphics, let's return to [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md). As you can now see, you can use all these numbers and BASIC words to help you draw pictures – and also to make music and sound effects. All you need to do is combine 'ordinary' BASIC with the graphics commands.

The program above makes its own random number by using a formula (you'll never need to worry about how, unless you get really interested in the inner workings of the computer) to produce numbers 'out of thin air'. Incidentally, if you wanted to, you could print a sequence of these random numbers by using a [DO](commands/man_cs-do.md)/[LOOP](commands/man_cs-do.md), and you would not be able to see any pattern in the sequence.

Then, depending on the number produced by [RND](functions/man_fn-rnd.md), the computer will go off and draw one of three possible shapes. If the number is not one which is mentioned in an [IF](commands/man_cs-if.md) line, it will instead run the solitary [ELSE](commands/man_cs-if.md) statement (line **680**) and display the message in line **700** – which is really a bit miserable compared with all the rest of the program. This is what was meant by using [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md)/[ELSE](commands/man_cs-if.md) to put together more complex conditions by making them into several lines – a block – rather than one or two.

The previous program shows exactly how you should use an [IF](commands/man_cs-if.md) block. [IF](commands/man_cs-if.md) and [ELSE IF](commands/man_cs-if.md) separate each possible course of action.

An [IF](commands/man_cs-if.md) block must always finish with [END IF](commands/man_cs-if.md) – otherwise the computer will not run the rest of the program if the last [IF](commands/man_cs-if.md) test failed.

![if](IS-BASIC_ProgrGuide(IF).png)

[IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) is, therefore, good as one line to pick out exceptions or deal with decisions when only something simple needs to be done as a result. As a block it can be used to run an entire complex program, depending on a decision which is made through the IF block at the beginning.

## SELECT CASE

With [SELECT CASE](commands/man_cs-select.md), you can make very similar comparisons and decisions to those offered by [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md). Think of [CASE](commands/man_cs-select.md) as meaning 'in case of...', rather than 'if...then...or else...'.

In the example which follows, notice the lack of the variable name in the [CASE](commands/man_cs-select.md) statements. **CASE 1,2,3** is right, **CASE X=1,2,3** is wrong – the variable to be tested has already been given by the [SELECT](commands/man_cs-select.md) line. Using [CASE](commands/man_cs-select.md) to make one decision out of several alternatives is, as you can see, shorter and clearer than using [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md).

Just as with [END IF](commands/man_cs-if.md), you must mark the end of the [SELECT](commands/man_cs-select.md) block – in this case by typing [END SELECT](commands/man_cs-select.md).
```
100 CLEAR SCREEN
105 !	---------------------------------
110 !	Line 100 clears the screen. Then
111 !	a menu is printed in the middle
115 !	of the screen, using PRINT AT to
118 !	position the letters. After that,
120 !	you are asked to type in your
122 !	choice, and the number you choose
125 !	is put into a variable called A.
127 !	If you type in a number bigger
130 !	than 3 or less than 1, the program
133 !	just asks you to do it again.
135 !	410 deals with that using IF/THEN.
136 !	It also refuses to allow numbers
137 !	with a decimal point. A<>INT(A)
138 !	makes this possible.
140 !	---------------------------------
150 PRINT AT 9,18:"MENU"
200 PRINT AT 11,10:"1) Print my name"
250 PRINT AT 12,10:"2) Print your name"
300 PRINT AT 13,10:"3) Print both of our names"
360 DO
400   INPUT AT 16,10,PROMPT "Please enter your choice: ":A
410 LOOP WHILE A<1 OR A>3 OR A<>INT(A)
450 CLEAR SCREEN
460 !	--------------------------------
465 !	The program from Lines 500 to
466 !	1000 makes the decision about
467 !	what to do with your choice, and
468 !	does it. The numbers after the
470 !	word CASE each time are the
472 !	numbers which A can be equal to.
473 !	For instance, 550 and 600 say,
474 !	'In the case of 'A' being 1,
475 !	print "ENTERPRISE!!!" in the
476 !	middle of the screen.' 1000 is
477 !	essential to tell the machine no
479 !	more cases can be expected.
480 !	--------------------------------
500 SELECT CASE A
550 CASE 1
600   PRINT AT 9,18:"ENTERPRISE!!!"
650 CASE 2
700   INPUT PROMPT "Then please tell me your name. ":NAME$
750   PRINT AT 9,18:NAME$
800 CASE 3
850   INPUT PROMPT "Then please tell me your name. ":NAME$
900   PRINT AT 9,18:NAME$
950   PRINT AT 11,18:"Enterprise"
1000 END SELECT
1010 !	-----------------------------------
1015 !	Lines 1200 to 1350 are very similar
1016 !	to the check on 'A' at the
1020 !	beginning of the program. They
1022 !	make sure that the program will
1025 !	only end or go back to the
1027 !	beginning if the first letter of
1030 !	A$, converted to a capital, is
1035 !	either "Y" or "N". GOTO 100 tells
1037 !	the computer to jump back to the
1040 !	beginning of the program only if
1041 !	the first letter of A$ (converted
1043 !	to a capital) is "Y". Otherwise
1045 !	the program ends – which, as you
1046 !	can see, it can only do if the
1047 !	first letter of A$ is "N".
1048 !	-----------------------------------
1050 PRINT
1100 PRINT
1150 PRINT
1200 DO
1250   INPUT PROMPT "Would you like to do that again? ":A$
1300 LOOP UNTIL UCASE$(A$(1:1))="Y" OR UCASE$(A$(1:1))="N"
1350 IF UCASE$(A$(1:1))="Y" THEN GOTO 100
1400 PRINT
1450 PRINT
1500 PRINT
1550 END
```
Try writing a program to simulate a dice. You can do this using either [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) or [SELECT CASE](commands/man_cs-select.md). Use a random number as in the program on page 66. This, of course, would have to be between **1** and **6**. So
```
RND(6)+1
```
would take care of that. Knowing you have six possible results, you shouldn't find it hard to do. Perhaps you could use graphics to put a picture of the dice on the screen.

Remember that using [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) as an [IF](commands/man_cs-if.md) block does not mean you have to use [ELSE](commands/man_cs-if.md). [ELSE](commands/man_cs-if.md) lines are optional, just like the number of possibilities mentioned within the block or the number of [CASE](commands/man_cs-select.md) selections.

[CASE](commands/man_cs-select.md) can also have an '**ELSE** clause'. This is [CASE ELSE](commands/man_cs-select.md) – just like **CASE 1** or **CASE "HELLO"**. Notice that you can use [CASE](commands/man_cs-select.md) with strings as well, and that an advantage over [IF](commands/man_cs-if.md)/[THEN](commands/man_cs-if.md) is the ability to lump several 'truths' together with the same result – like this:
```
CASE 1,3,5
PRINT "These are odd numbers."
```
Lastly, experiment with ASCII codes (see '[The Character Set](man_2-charset.md)'). It is possible to use these to get a computer to put strings into alphabetical order. ASCII codes are just numbers which stand for characters. The use of arrays (which come next) is also helpful in this sort of programming task.