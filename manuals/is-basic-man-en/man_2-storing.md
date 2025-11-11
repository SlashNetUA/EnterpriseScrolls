# STORING LARGER AMOUNTS OF INFORMATION

As you've discovered, programming is chiefly a way to handle information. Until now, you have only used small amounts of information in programs, either sentences and numbers that you have typed in response to INPUT statements, or sentences the computer has displayed for you to read.

You've probably wondered how you would go about dealing with larger amounts of information – a long list of words or numbers, maybe, or several paragraphs of instructions for a game or for a program which helps you work out your finances. The Enterprise provides some very efficient ways to manipulate lists of numbers or large groups of words.

The way in which you would keep a list of names, for instance, in a program would be to use an array. An array is like a big variable which can contain several smaller variables. We began by comparing variables to boxes, the contents of which may change. An array can be thought of as a large box in which a certain number of small boxes are stored. Alternatively, you can visualize it as a page from a notepad on which you can put a list.

## NUMERIC ARRAYS

As with variables, you have string arrays and numeric ones. So to declare a numeric array you would use (e.g.):
```
NUMERIC STORE (1 TO 10)
```
Type this into the computer as line **100**. It tells the computer to set aside a 'container' called **STORE** with space for **10** smaller variables in it. These variables are known as the elements of the array, and you can record whatever numbers you like in these little spaces. The seventh variable (or element) inside **STORE** would be called **STORE(7)**.

Now type in the following lines:
```
110 FOR S=1 TO 10
120   INPUT PROMPT "Enter a number ":STORE(S)
130 NEXT S
```
This enables you to put numbers into your array. Run this, and when it has finished, type in **PRINT STORE(9)** or **(8)** or any other number from **1** to **10**. As you can see, you can call up numbers from the array. You've put a list of numbers into the computer. If you wanted to record the temperatures each day for the month of December, you could do this in an array called **DECEMBER** with elements numbered **1** to **31**. The temperature for each day would form the contents of an element, and the element numbers would signify the dates.

An array could also consist of elements numbered **56** to **76**, or **123** to **171**, or even **12345** to **12445**. If you like, a negative number can be used for the upper or lower end of the element range – e.g. **[NUMERIC](commands/man_cs-numeric.md) TABLE (-10 TO 10)**, or **[NUMERIC](commands/man_cs-numeric.md) TABLE (-20 TO -10)**. Element numbers are just for reference.

## TWO-DIMENSIONAL ARRAYS

An array can be more complex than just a list. The diagrams below and on the next page show you the difference between one-dimensional and two-dimensional arrays.

|     |
|:---:|
|  1  |
|  2  |
|  3  |
|  4  |
|  5  |
|  6  |
|  7  |
|  8  |
|  9  |
| 10  |
| 11  |
| 12  |
| 13  |
| 14  |
| 15  |
| 16  |
| 17  |
| 18  |
| 19  |
| 20  |
 
A two-dimensional array can be pictured as a grid. Or (if you like), you can imagine that this time you are storing your boxes in a cupboard where each shelf is given a number and there is room for the same number of boxes on each shelf. **A(1 TO 4,1 TO 4)** would produce an array which can be visualized like this:

|     |     |     |     |
|:---:|:---:|:---:|:---:|
| 1,1 | 1,2 | 1,3 | 1,4 |
| 2,1 | 2,2 | 2,3 | 2,4 |
| 3,1 | 3,2 | 3,3 | 3,4 |
| 4,1 | 4,2 | 4,3 | 4,4 |

An example of the use of this kind of array is as the board for a game like draughts or Othello. The array could be used to store information as to which pieces are on which squares of the board. You could also use an array like this as a table of numbers or words – a more versatile sort of list.

## STRING ARRAYS

String arrays are declared in the same way as numeric ones, except that the word [STRING](commands/man_cs-string.md) is used. With string arrays it is also possible to alter the length of each element – this cannot happen in a numeric one.

Altering the length of elements in an array just means altering the largest amount those elements can hold. Just as you aren't forced to fill a bucket to the brim every time you put water in it, so you don't have to fill the elements in an array completely.

As you already know, the Enterprise has a certain amount of space inside it, in which it can store programs and information to be used with programs.

When you declare a string array the computer will set aside a certain amount of space for each element. This is called [MAXLEN](functions/man_fn-maxlen.md). [MAXLEN](functions/man_fn-maxlen.md) is, unless you specify otherwise, **132** characters. This does not affect numbers; it only relates to strings.

Should you wish to conserve space in your computer's memory – or to allow for longer elements than **132** characters – you must tell the computer so. This is how:
```
STRING ARRAY$(30 TO 50)*10
```
That BASIC statement would set aside an array with **20** elements in it (numbered **30** to **50**), each element being **10** characters long. **MAXLEN(ARRAY$(45))** would then be **10**. The longer your elements are, the more you can put into them, but they will take up more memory and leave less space for other things. So you should only make them longer than normal if it is really necessary, or if you are certain you will have enough space for them. If you expand your Enterprise's memory, you will naturally be able to store much bigger programs and put much more in your arrays.

## DECLARING VARIABLES

Simple variables can also be declared using [STRING](commands/man_cs-string.md) or [NUMERIC](commands/man_cs-numeric.md). **NUMERIC A** declares a numeric variable. **NUMERIC A,M,N,H,D** or something similar could be used to declare all your numeric variables at once – at the beginning of a program. **STRING A\$,B\$,HELLO\$\*8**... would do the same with string variables. The only difference between declaring variables like this and declaring an array is that, in the case of an array, elements are specified.

## READ/DATA

Many BASIC words go hand in hand with other BASIC words. [READ](commands/man_cs-read.md) and [DATA](commands/man_cs-data.md) (and the word [RESTORE](commands/man_cs-restore.md) as well) are such words.

These are mentioned in this part of the manual because they represent yet another way to keep large amounts of information inside a program. They also represent another way to put numbers or strings into an array. [READ](commands/man_cs-read.md) is the word which does all the hard work. Here is a short example.
```
 80 LET P=1
 90 DO UNTIL P=0
100   READ P
110   PRINT P,
120 LOOP
130 DATA 1,2,3,4,5,6,7,8,9,10
150 DATA 11,12,13,14,15,16,17,18
160 DATA 19,20,21,22,23,24,25,0
170 END
```
The [DATA](commands/man_cs-data.md) statements simply hold the information. Each item of information must be separated from the next with a comma – this indicates that one piece of information is over and the next one follows. [READ](commands/man_cs-read.md) tells the computer to look at one [DATA](commands/man_cs-data.md) item and do with it whatever you want. In this case, the item is placed in the variable **P**, and then the contents of **P** are printed on the screen.

Notice that the same variable name is used for all the [DATA](commands/man_cs-data.md) items. This does not matter – the same one is being re-used. So the program [READ](commands/man_cs-read.md)s one [DATA](commands/man_cs-data.md) item, puts it into the variable called **P**, prints it on the screen, [READ](commands/man_cs-read.md)s the next, puts that into **P** instead of the last [DATA](commands/man_cs-data.md) item, and so on. The **0** at the end of the last [DATA](commands/man_cs-data.md) statement is used to tell the computer no more [DATA](commands/man_cs-data.md) follows.

The computer will only read each [DATA](commands/man_cs-data.md) item once. Once an item has been read, the machine 'remembers' its position and goes on to the next one (reading from left to right and lop to bottom as you would read a book). When it's read them all, it considers there are no more there – and will be confused if you try to tell it to go on looking!

The program below demonstrates the use of [READ](commands/man_cs-read.md)/[DATA](commands/man_cs-data.md) with strings.
```
150 CLEAR SCREEN
200 PRINT "I'm going to tell you a story."
250 PRINT
300 PRINT "Here goes!"
350 PRINT
400 PRINT
410 FOR X=1 TO 5000
415 NEXT X
420 !	-----------------------------------------
430 !	Lines 410 and 415 merely specify an
440 !	interval. The DO/LOOP (550-810 is the
450 !	important part. Let's go round it and see
460 !	what happens. First it READs A$ – which
470 !	means il looks for a DATA statement
480 !	(which can be anywhere in the program),
490 !	reads it and checks to see if
500 !	it's "END". If it is, the computer
515 !	stops looping and goes to
520 !	the rest of the program. If not, 700
525 !	tells the computer to print the
530 !	string from the DATA statement
535 !	on the screen (and put a space after it).
540 !	-----------------------------------------
550 DO
600   READ A$
650   IF A$="END" THEN EXIT DO
700   PRINT A$;" ";
750   FOR Y=1 TO 500
760   NEXT Y
810 LOOP
820 !	-------------------------------------
830 !	The rest of this program may look
840 !	confusing. If you remember that the
850 !	DATA statements are read by an
855 !	earlier part of the program, and that
870 !	900-1100 are actually performed
873 !	after the DATA has been read and
875 !	put on the screen, the logic of
880 !	the program will fall into place.
890 !	-------------------------------------
900 PRINT
950 PRINT
1000 PRINT"					THE END"
1050 PRINT
1100 PRINT
1125 END
1150 DATA Once,upon,a,time,there,was,a,little,computer,
1200 DATA called,the,Enterprise.,It,was,a,very,
1250 DATA happy,computer.,All,the,best,programmers,in,
1300 DATA a.land.called,England,had,worked,all,day,
1350 DATA and,all,night,for,months,to,make,the,Enterprise,
1400 DATA the,best,computer,ever.,Today,you're,learning,
1450 DATA to,write,BASIC,on,the,Enterprise.,Aren't,you,
1500 DATA lucky?,END
```
There is a possible modification you could make to this program. Try adding `100 DO` and `1120 LOOP` to this program. Then [RUN](commands/man_cs-run.md) it again. As you will now see, it works fine once and then comes up with a message to say there is no more [DATA](commands/man_cs-data.md). So add line `1110 RESTORE`. This will tell the computer to go back and use the [DATA](commands/man_cs-data.md) again. If you want to, you can put `RESTORE 1400`, which tells the computer to use the [DATA](commands/man_cs-data.md) which comes in line **1400** and afterwards. This makes it possible for you to choose one part of the [DATA](commands/man_cs-data.md) and use it several times over if you want to.

Don't be confused by the fact that string [DATA](commands/man_cs-data.md) does not need inverted commas. The fact that you must tell the computer to [READ](commands/man_cs-read.md) **A\$** or **X\$** tells it to look for strings – the dollar sign is the key here. It would be very tedious indeed if you had a long list of words to include as [DATA](commands/man_cs-data.md) and you had to put inverted commas around them all – think of it as a lucky break.

The same applies to [INPUT](commands/man_cs-input.md) statements – you can type 'yes' or 'no' in response to a question put by an [INPUT PROMPT](commands/man_cs-input.md), but you do not need to type inverted commas. The computer is told by the '**$**' at the end of the variable name to accept a string.

However, you do have to put inverted commas around a [DATA](commands/man_cs-data.md) or [INPUT](commands/man_cs-input.md) item if you want to include a comma in the string – otherwise the computer thinks that the comma marks the end of the string.
