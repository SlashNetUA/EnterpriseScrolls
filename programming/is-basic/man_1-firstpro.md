# FIRST PROGRAMS

Try typing in the contents of the box below. Computers are a bit funny about little mistakes, so check your typing before you finish. Remember that you must press the key marked 'enter' at the end of each line. Don't forget the numbers which begin the lines, they're important too. However, you needn't worry about the blank spaces which appear after the numbers. The Enterprise can put spaces in automatically, to make programs look neater. Notice that computers use a special symbol for nought (**0**), to distinguish it from the capital letter **O**.

```
100	GRAPHICS
110	PLOT 640, 360,
120	!
130	DO
140		FOR RADIUS = 250 TO 1 STEP-16
150			SET INK RND(3)+1
160			PLOT ELLIPSE RADIUS, RADIUS,
170			PLOT PAINT
180		NEXT RADIUS
190		PING
200	LOOP
210	!
220	END
```

## CORRECTING MISTAKES
 
If you make a typing error, it is easy enough to correct it. If you're still on the same line as the mistake, pressing the key marked 'erase' will move the red flashing 'cursor' to the left, removing letters etc. as it goes. If you have to go back to a previous line, use the joystick to place the cursor at the end of that line, then erase back as far as your error. You can now type the correction, finish off the line by pressing 'enter', and move the cursor (using the joystick) to the bottom of the screen again, or wherever else you want it. Remember that whenever you press a key, the place where your letter or number will appear is the place where the cursor is located at that particular moment.

Later, in the chapter on '[Editing Programs](man_1-editingpro.md)', we shall discuss some more versatile ways of making changes.
 
## MAKING THE PROGRAM WORK

When you've typed in the program, type the word [RUN](man_cs-run.md) and press '**Enter**' again. Alternatively, you can press the key marked '**Function 1**', above the number keys. If you use this key, you will not need to press '**Enter**', and it's quicker than typing [RUN](man_cs-run.md). (For more about 'function' keys, see page 43.) Then watch for a while. If you've made a mistake, the computer will print '`Not understood`' (or a similar message) on the TV screen. Don't worry at all if that happens. Press **Function key 5** and then **Function 2**, to take another look at the program–then correct the problem, and try again.

## TYPING COMMANDS

Commands which this manual suggests you type into the computer will always appear on the page in capital letters. This is mainly for emphasis, but partly because the computer itself often displays BASIC commands in capitals. However, you can type words like [RUN](man_cs-run.md) (and other BASIC commands) in small letters as well; the computer will understand you perfectly. You don't need to go to the trouble of pressing the '**Shift**' key to get from small letters into capitals all the time.

Any words you don't understand can be found in the [Glossary](man_3-glossary.md).

To stop the program, press '**Stop**'. You will see the response
```
STOP AT LINE – – –	(– – – is a number)
ok
–
```

## WHAT'S A PROGRAM?

A program is a set of instructions which tells the computer what to do. There's nothing special or magic about that, but a computer can't do anything at all without a program. Programs are very exact and very detailed, but then so is embroidery. And, just like any other skilled pastime, programming can be done seriously, or just for fun.

If you want to, you can re-start the program by typing in [CONTINUE](man_cs-continue.md) and pressing '**Enter**'. Even better, press the key marked '**Shift**' and at the same time press the function key numbered **1** (you used this to [RUN](man_cs-run.md) the program). The program will then resume from the point at which you stopped it.

On the other hand, if you're bored with this you can add to it. Type in the line below.
```
135	SET PALETTE RND (256), RND (256), RND (256), RND (256)
```
 
## CLEARING THE SCREEN

Having run this program and stopped it, you will now be left with a picture filling the screen. This doesn't make it very easy for you to read what you're typing in. To tidy up the screen, type [TEXT](man_cs-text.md), press '**Enter**' and the screen will be returned to the full text display. Again, if you want to save time (and effort), press **Function key 5**.

## LIST

This time, when you have finished typing in the new line, type [LIST](man_cs-list.md). **Function key 2** will also do this. By now you should be able to remember to press '**Enter**' whenever you have finished typing in an instruction or a program line. '**Enter**' is the key which tells the computer to do what you have typed. Usually, until you press it, nothing will happen; however, you don't normally need to press '**Enter**' with the function keys - as you have probably found out.

[LIST](man_cs-list.md) is a word which will show you the whole of a program on the screen (or as much of it as you can fit on the TV screen at one lime). You can see now that your new line has fitted in with the old ones. The whole program is now in numerical order. This is the order in which the computer will carry out your instructions when the program is [RUN](man_cs-run.md).

## GETTING RID OF A PROGRAM

When you get fed up with a program, simply type [NEW](man_cs-new.md), press '**Enter**', and the program will be gone.

Using this computer you can produce all kinds of sounds and many colours very easily. But it is not just there to make noises and display rainbows. Your computer can draw very fine pictures, make decisions, do big calculations very rapidly, sort things into any order you like and repeat things as often as you want.

## PRACTICE PROGRAMS

The programs on the following pages are simple examples of the Enterprise's talents.

Try them all! They are just a few things you can do with this machine. In this book you will find out how to do all of them for yourself - plus a lot more. Don't forget to use [TEXT](man_cs-text.md) to get a full screen to type onto when you want it. You can also use [CLEAR SCREEN](man_cs-clear.md) to empty the TV screen when it gets full. These commands don't actually remove any program lines from the computer's memory; you can view the whole program again any time you like, by typing [LIST](man_cs-list.md).
```
10	PROGRAM "Fire-tunnel"
20	!
30	!	This program draws a
40	!	multi-coloured tunnel with
50	!	exploding fireballs.
60	!
100	GRAPHICS HIRES 256
110	LET X=640: LET Y=360
120	F0R R=1 T0 255
130		SET INK R
140		LET A=X-R-220: LET A1=Y-R-50
150		LET C=X+R+220: LET C1=Y+R+50
160		PLOT A, A1; A, C1; C, C1; C, A1; A, A1
170		PRINT R
180	NEXT
190	FOR BALL=1 TO 100
200		CALL FIREBALL (256, X, Y)
210	NEXT
220	!
230	END
240	!
250	!
1000	DEF FIREBALL (COLOURS, A, B)
1010		SET LINE MODE 3
1020		SET INK RND(COLOURS)
1030		FOR GO=1 TO 2
1040			FOR AROUND=1 TO 650 STEP 30
1050				PLOT A, B, ELLIPSE AROUND, AROUND
1060			NEXT
1070		NEXT
1080		SET LINE MODE 0
1090	END DEF
```
```
100	!	This program will draw boxes.
110	!
120	!	100-140 are comment lines.
130	!	You don't have to type them.
140	!	----------------------------------------
150	CLEAR SCREEN
160	PRINT AT 5,11:"THIS PROGRAM WILL"
170	PRINT AT 6,10:"DRAW BOXES FOR YOU."
180	PRINT AT 8,1:"The program will ask you to type in"
190	PRINT AT 9,1:"some numbers, in pairs. The first"
200	PRINT AT 10,1:"number of each pair should not be more"
210	PRINT AT 11,1:"than 1279, and the second should not"
220	PRINT AT 12,1:"be more than 719. Press 'enter'"
230	PRINT AT 13,1:"after typing each number."
240	FOR A=1 TO 5000
250	NEXT A
260	!	---------------------------------------------
270	!	Lines 240-250 make the computer
280	!	wait for about 10 seconds.
290	!	---------------------------------------------
300	DO
310		CLEAR SCREEN
320		INPUT AT 5,5,PROMPT "Numbers for one corner: ":X
330		INPUT AT 6,29,PROMPT " ":Y
340		INPUT AT 8,5,PROMPT "Numbers for opposite corner: ":V
350		INPUT AT 9,34,PROMPT " ":W
360		PRINT AT 11,5:"For how long should the box"
370		PRINT AT 12,5:"be displayed?"
380		INPUT AT 14,5,PROMPT "Seconds: ":TIME
390		!	-------------------------------------
400		!	Lines 450-480 are the
410		!	instructions for drawing the
420		!	box and holding it on the
430		!	screen for the time you want.
440		!	-------------------------------------
450		GRAPHICS
460		PLOT X,Y;X,W;V,W;V,Y;X,Y
470		FOR B=1 TO 500*TIME
480		NEXT B
490		TEXT
500		PRINT AT 15,18:"More?"
510		DO
520			INPUT AT 17,17,PROMPT "y or n:":ANS$
530		LOOP WHILE ANS$<>"y" AND ANS$<>"n"
540	LOOP WHILE ANS$="y"
550	!
560	END ! This is the end of the program.
```
```
100	!	This program sorts 10 numbers
106	!	into numerical order.
108	!	------------------------------------------
110	NUMERIC ARRAY(1 TO 10)
120	NUMERIC VAR,NUM,BIG
130	CLEAR SCREEN
150	PRINT AT 10,10:"NUMBER SORT"
160	FOR N=1 TO 10
170		PRINT AT 14,10:"TYPE NUMBER";N;
180		INPUT PROMPT ": ":ARRAY(N)
190		PRINT AT 14,25:"                                  "
200	NEXT N
210	CLEAR SCREEN
220	PRINT AT 20,20:"SORTING..."
240	LET FIN=10
250	FOR X=1 TO 10
255		LET BIG=0
260		FOR Y=1 TO FIN
270			IF ARRAY(Y)>BIG THEN LET BIG=ARRAY(Y)
280			IF ARRAY(Y)=BIG THEN LET NUM=Y
390		NEXT Y
300		LET VAR=ARRAY(FIN)
310		LET ARRAY(FIN)=BIG
320		LET ARRAY(NUM)=VAR
340		LET FIN=FIN-1
350	NEXT X
355	CLEAR SCREEN
360	FOR X=1 TO 10
370		PRINT ARRAY(X)
380	NEXT X
390	END
```
```
100	!	This program gives the
110	!	area/circumference of circles.
120	!	----------------------------------------
130	LET A$=" of the circle is:"
140	LET B$="Type the radius of the circle: "
150	NUMERIC RADIUS,AREA,CIRCUM
160	DO
170		CLEAR SCREEN
180		PRINT AT 10,10:"1) AREA"
190		PRINT AT 11,10:"2) CIRCUMFERENCE"
200		PRINT AT 12,10:"3) QUIT"
210		DO
220			PRINT AT 15,10:"Type the number"
230			INPUT AT 16,10,PROMPT "of your choice: ":NUM
240		LOOP WHILE NUM<1 OR NUM>3 OR NUM<>INT(NUM)
250		CLEAR SCREEN
260		IF NUM=1 THEN
270			INPUT AT 10,1,PROMPT B$:RADIUS
280			LET AREA=PI*RADIUS^2
290			PRINT AT 15,5:"The area";A$;
300			PRINT AT 16,4:AREA
310			FOR X=1 TO 5000
320			NEXT X
330		ELSE IF NUM=2 THEN
340			INPUT AT 10,1,PROMPT B$:RADIUS
350			LET CIRCUM=2*PI*RADIUS
360			PRINT AT 15,1:"The circumference";A$
370			PRINT AT 16,1:STR$(CIRCUM)
380			FOR X=1 TO 5000
390			NEXT X
400		END IF
410	LOOP WHILE NUM<>3
420	END
```

## ALTERING PROGRAMS

Try altering the programs if you want to. It's not a good idea to change the spelling of program instructions, because the computer won't understand if you do. But where words appear between inverted commas you may change them without messing up the program itself. Numbers can also be changed. By doing this you may be able to work out what the program is doing - changing a number will often affect the number of times something is done, or the position of characters on the screen. Some numbers within programs are codes - that is, they stand for something else; a colour for instance. You will learn all you need to about these further on in the manual (try page 95 for colour and 104 for other codes if you like).

Remember always that whatever you type will do the computer no harm at all. The worst that can happen is that you will type in something the computer fails to understand. For example, in the number-sorting program (page 11), you might have typed:

`250 FOR X=1 TOO 10`

In that case, after running the first part of the program, the computer would stop and the screen would show:
```
*** Not understood.
250 FOR X=1 TOO 10
```
[Error messages](man_3-errors.md) are explained in detail on pages 204-208.

## STOPPING AND STARTING

If you get completely stuck and want to start again, press the '**Reset**' button at the back of the machine. This will put you back where you were when you switched the machine on, except that the computer will remember any program you have just typed in. This is best kept for emergencies, though. Normally you will use the '**Stop**' or '**Hold**' key for stopping a program that is running. When you use '**Reset**', you will have to type [RUN](man_cs-run.md) again to make the program restart.

The '**Hold**' key is simply used to hold up the program and freeze the action at whatever point you have reached. This is handy if you want to look at a moving picture in a graphics display - or even if you just need a tea break in the middle of a difficult game of Space Invaders. To carry on with the program, simply press the same key again. Notice that '**Hold**' is very useful if you are [LIST](man_cs-list.md)ing a long program which disappears off the screen, and you want to halt the motion so as to examine some particular line.

The '**Stop**' key is used if a program is running and you want to halt it so as to modify (or erase) it, or to [LIST](man_cs-list.md) and examine it before typing [CONTINUE](man_cs-continue.md) to make the program resume.
