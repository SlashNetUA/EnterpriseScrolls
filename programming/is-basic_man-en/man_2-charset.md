# THE CHARACTER SET

The Enterprise is provided with a pre-defined group of characters which make up the standard character set. This follows the International Standards Organisation (ISO) character definitions, but is commonly referred to as ASCII – which stands for American Standard Code for Information Interchange.

Each character in the character set has a code-number in the range between **32** and **159**. You can refer to a standard character by its appearance, as in `PRINT "N"`, or you can refer to it by its code. `PRINT CHR$(78)` is the same as `PRINT "N"` – try them both.

The computer uses these codes to refer to characters inside itself, but you won't need to see how it does this until you become really advanced. As a simple explanation: if, for example, you press a key on the keyboard – say it was '**a**' – the computer will receive a signal to tell it that this key has been pressed, register instantly the code for the character (not the shape), send that code to the part of the computer which controls the screen and translates the code into the details for displaying the character – which will then appear on the display.

As far as you are concerned, all that happens is that you press a key and the character appears at the same time. This is an example of how fast a computer works, especially when you consider that the operation described above is actually far more complex; each phase of that task is broken down into far smaller operations.

Here is a program which will print out the whole character set and then allow you to type in a character for which the ASCII code will be printed:
```
100 FOR N=33 TO 159
110   !	----------------------------------
125   !	There are 128 pre-set characters.
130   !	This FOR/NEXT loop allows you to
140   !	miss out the 'control' characters,
150   !	which are 0 to 32 (32 is 'space').
160   !	----------------------------------
170   PRINT CHR$(N),
180 NEXT N
190 DO
195   DO
200     INPUT PROMPT "Type a character and its code will appear: ":C$
210     IF LEN(C$)>1 THEN
220       PRINT "Only one character at a time, please!"
221       !	-------------------------------
222       !	The small IF block (210-235)
223       !	makes sure you do not type in
224       !	more than one character. Notice
225       !	that throughout this program, DO
226       !	LOOPS control it. LEN gives the
227       !	length of a string (line 210).
228       !	-------------------------------
235     END IF
240   LOOP WHILE LEN(C$)>1
250   PRINT "The ASCII code for ";C$
260   PRINT "is:";ORD(C$)
261   !	------------------------------
262   !	ORD gives the ASCII code for a
263   !	character.
264   !	------------------------------
265   DO
270     INPUT PROMPT "More characters, y/n? ":A$
280   LOOP WHILE A$<>"y" AND A$<>"n"
290 LOOP WHILE A$="y"
300 END
```
As you can see, [ORD](man_fn-ord.md) and [CHR$](man_fn-chr.md) are opposites. [ORD](man_fn-ord.md) gives an ASCII code for a character and [CHR$](man_fn-chr.md) will print a character for an ASCII code.

## DESIGNING YOUR OWN CHARACTERS

Now you've read about ASCII codes, a few words on making up your own character shapes are appropriate. For each ASCII code, the computer recalls a shape from its memory – but you can re-define this shape.

Imagine a character is made up of nine rows of eight little lanterns. To form a character shape, some lanterns will be lit and others will not. This forms a pattern of tiny dots which are so small and so close together they appear to join up. So to design or redesign a character, it's helpful to draw a square grid of **8**×**9** spaces. Then you can form a character by putting dots in the appropriate squares.

Now, to program this information into your computer you need to imagine all the dots are **1**s and all the blanks are **0**s. By looking at each row you can put together a sequence of **0**s and **1**s. The program below designs a little character and then prints it.
```
100 NUMERIC N(1 TO 9)
110 !	---------------------------------------
120 !	A standard character is 8 dots wide and
130 !	9 rows deep. So each row is defined by
140 !	an eight-digit number. A series of nine
150 !	such numbers makes up the definition of
160 !	the character. Lines 280-300 store these
170 !	numbers in the array N.
180 !	---------------------------------------
190 DATA 00111110
200 DATA 01000001
210 DATA 01010101
220 DATA 01000001
230 DATA 00100010
240 DATA 00010100
250 DATA 00001000
260 DATA 00000000
270 DATA 00000000
280 FOR ROW=1 TO 9
290   READ N(ROW)
300 NEXT ROW
310 SET CHARACTER 63,BIN(N(1)),BIN(N(2)),BIN(N(3)),BIN(N(4)),BIN(N(5)),BIN(N(6)),BIN(N(7)),BIN(N(8)),BIN(N(9))
320 !	---------------------------------------
330 !	BIN tells the computer to treat the 1's
340 !	and 0's as binary digits.
350 !	---------------------------------------
360 PRINT "?"
370 PRINT CHR$(63)
380 END
```
Line **310** is the statement which stores the information for your character. What you have done is re-defined the question mark! The number **63** is the ASCII code, and all those **0**'s and **1**'s are the lights and blanks (or dots and spaces) from which the character is formed. The character is then printed by the command `PRINT "?"` or `PRINT CHR$(63)`. Also, try typing the question mark in immediate mode.

Once you have run a program which redefines characters, you can still print those characters until you type [CLEAR FONT](man_cs-clear.md), press the 'reset' button twice in quick succession, or switch off the computer.

It's easy to see how much fun you can have with these user-defined characters, as they are known. You could redesign the entire alphabet, for instance. Programming in gothic or italic script could introduce a whole new dimension to your computing activities! Space games will be all the more vivid for a few custom-made aliens (you could make one creature out of several characters, by printing them all together). The demonstration cassette contains a program which gives you several characters ready-made and another one which allows you to do your own and save them on the cassette.