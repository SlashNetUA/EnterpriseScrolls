# SETTING OUT TEXT

A semicolon will tell the computer that the things on either side of it are to be printed next to each other on the screen. A program with four separate [PRINT](commands/man_cs-print.md) statements but no semicolons would appear like this:

```
Hello,
I'm
Your
computer.
```
instead of:

```
Hello, I'm your computer.
```

There are other ways of putting things onto the screen to make them look nice.

Try using a comma, as below (this modifies the counter program used on [page 22](man_1-variables.md)):

```
10 LET A=0 !          Declare A as 0.
20 DO !               Begin DO/LOOP.
30   LET A=A+1 !      Add 1 to A.
40   PRINT A,
50   !	---------------------------------
60   !	Print A. The comma tells the
65   !	computer to put A eight character
70   !	positions along from the last A.
80   !	---------------------------------
90 LOOP UNTIL A=20 !  Loop again if A<20.
100 END
```

See how the comma arranges things into columns? The screen is normally divided by the computer into **40** 'character positions' widthways and **24** from top to bottom. The comma will normally separate items by eight character positions.

Using a comma to formal text is a little like using the semicolon, but it adds space between one string or number and the next. The semicolon just prints things next to each other across a line.

Try this short program:

```
10 PRINT "There was an old man from St. Bees"
20 PRINT
30 PRINT "Who was stung on the head by a wasp."
40 PRINT
50 PRINT "When asked, 'Does it hurt?'"
60 PRINT
70 PRINT "He replied,""No, it doesn't"
80 PRINT
90 PRINT "'It can do it again if it likes!'"
100 END
```

Lines **20**, **40**, **60** and **80** all print an empty line on the screen – like a carriage return on a typewriter. The word [PRINT](commands/man_cs-print.md) on its own on a line means 'print an empty line' or 'jump down a line and use the next one instead'.

It is not possible to print double inverted commas on the screen in the same way as other characters (e.g. `PRINT"""`), because this confuses the computer. Instead, type the double inverted commas twice in order to get it printed once. Try line **70** above as follows:

```
70 PRINT "He replied,""No, it doesn't"
```

## PRINT AT

The next way to set out text is with [PRINT AT](commands/man_cs-print.md). You already know what [PRINT](commands/man_cs-print.md) does. You also know the meaning of the word **AT** – it tells the computer where on the screen to put some characters.

Try this:

```
PRINT AT 20,20:"I'M OVER HERE"
```

Imagine the screen is divided up into positions; **40** across and **24** down. Any of these positions can be referred to with two numbers. The string above is printed **20** lines down, and **20** positions (or columns) across.

`PRINT AT 10,20` repeats the string higher on the screen.

The diagram opposite shows you how the screen is normally made up of **960** (**24\*40**) character positions; it should help you to work out _where_ any position is on the screen. You select your [PRINT AT](commands/man_cs-print.md) position by telling the computer how far down the screen (row number) and how far across (column number) you want to place your string. A character position is an 'imaginary' square on the screen, into which a single character will fit. A comparable but differing system is used with graphics. See [pages 90-91](man_2-graphics.md).

Some more advanced ways to format text are explained on [page 89](man_2-graphics.md).

![](IS-BASIC_ProgrGuide(PrAT).png)

## 80-COLUMN SCREEN

The command `TEXT 80` enables you to type up to **80** characters on each line, instead of only **40**; the characters will now be narrower, of course, and may not be clear on your TV screen. (The command simultaneously clears the screen.)

`TEXT 40` returns you to **40**-column typing.