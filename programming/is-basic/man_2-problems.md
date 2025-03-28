# MAKING PROGRAMS OUT OF PROBLEMS

We've spent a lot of time dividing programming into different sections and dealing with these one at a time.

We haven't yet concentrated on how a task should be looked at in terms of the way a computer works, or how to put tasks into a program in such a way that you will find it easy to understand long after you have written it. We'll deal with that now.

The problem used here is easy to understand because it's a simple one. Once you have grasped the principle of planning programs, more and more complex problems will seem easier to solve.

## THE PROBLEM

We'll deal with the problem of working out how much less it would cost you to buy goods with a percentage reduction on them.

To solve this problem, you need to know only two things: the original price and the percentage by which the shop is offering to reduce it. From these two figures you can easily work out the amount by which the price is being cut and the price you will actually have to pay.

The first thing to do when you are writing a program is to decide exactly what you want it to do. In this case the program will:

1. take two numbers which you type in, old price and percentage;
2. determine what sum (in pounds) is equivalent to the percentage of the price;
3. subtract the discount from the old price to work out the real price, and
4. tell you what the results are, and ask you if you want to do the same with any other prices.

That's simple enough. The next stage is to decide how the program should do the job. There are always various ways of putting a program together, but there are some useful general principles.

## MODULAR PROGRAMS

A tidy, well-written program should be modular – with clearly structured and interconnected parts. The reason for this is that you will definitely need to understand the program once you've written it. There's no point in writing line after line of BASIC if you want to change something later and can't understand the program.

The best way to look at it is that your main aims in writing a program are to make it work correctly with as little effort as possible and to be able to understand it quickly once you've finished. The more clearly you write the program, the easier it will be to sort out both the initial problems and the shortcomings of the program which become evident once it has been in use for some time.

The order of a modular program looks essentially like this:
1. global variable declarations;
2. the main (controller) program;
3. an [END](man_cs-end.md) statement (which marks the point where the computer will stop running the program; it need not be the final line in numerical order);
4. functions which handle parts of the main task;
5. [DATA](man_cs-data.md) statements if used (these can also come towards the beginning).
 
Following a structure like this will make it much easier for you to write a complex and efficient program. It will make it less time consuming (and at times frustrating) if, for instance, you know exactly where to put, and later look for, a function.

## THE PROGRAM ELEMENTS

Global variables (i.e. those used throughout the program) should come first; this is because, if the computer reaches a line containing a variable which you haven't declared, it may stop working through failure to understand the program. So if you declare them all together at once and right at the start, you won't have to worry about them any more. You also have all the important variables together at once, so you know which one is which.

The other type of variable is local, which is one used in a function and only within that function. Those do not need declaring until the function is written – and then they should be at the beginning of it.

The main program should then come second, for two reasons. In the first place, a program is easier to write if the part which controls all the other parts appears towards the beginning. Secondly, you can look near the top of the program, even some time after you've written it, and just read the main program to remind yourself of what it all does. The main program will also use some, if not all, of the global variables, which should be declared before they are used.

The main part of the program calls sub-programs and values from functions. A function can be thought of as a black box. The main program puts numbers or strings into the black box, which then feeds new ones back.
Each function can also be dealt with as a separate program. It can contain its own functions at a lower level. This allows programs to be designed with a clearly understood hierarchy.

[DATA](man_cs-data.md) statements don't necessarily need to come at the end of a program, but they all ought to be in the same, fairly obvious, place. It can be fiddly to search through a lot of them or count how many there are. Putting them all together saves lime spent searching for them if one is wrong.

[DATA](man_cs-data.md) statements can also be used within a function, as long as they are local to that function.

The [END](man_cs-end.md) statement, of course, marks the end of the main controller program. As mentioned earlier in this chapter, it is not always the last line of a program. Where functions or subroutines are used, the computer 'jumps out of' the main program to use them, rather than working through in sequential order. The END statement should therefore be in the place where the controller program would actually finish.

Lastly, remember to include plenty of comment lines in all your programs, broken up so they are prominent. Some of the programs in this manual contain far more comments than lines of BASIC. The comments are there to make sure you know exactly what the program is doing. They allow you to explain in English anything which might be obscure when you look back at the program at a later date.

Please don't think that programming is all about obsessive neatness. It isn't. But just as in learning to read and write you had to get used to certain disciplines, so you need to in programming as well. It will help you a great deal in the long run if you remember to apply this chapter whenever you put a program – however small – to paper and then to keyboard.

## THE EXAMPLE

Let's return to that price problem now.

First, you need to decide what the main program will do. In this case it simply asks you to type in the price of the goods and the percentage reduction, passes those values to the function part of the program, and tells you the result, finishing off by asking you if you want to do any more.

Next, work out how many functions you will need. In this case you only need one, to handle both the 'how much is the discount' and the 'how much will it cost' – they are both very simple calculations. Let's call the function DISCOUNT.

The next step is to work out how the computer would perform the calculations.

In this program, you will give the computer a number – **100** for instance, and a percentage — let's say **20%**.

First, the computer has to work out what **20%** of **100** is.

It begins by finding out **1%** – which is one hundredth – and then it multiplies that by the percentage. So the calculation involved would simply be:

**(price/100)\*percentage**

Then the machine needs to work out what the goods would cost you. It does this simply by subtracting the discount from the original price.

Now you should have some idea of what variables you will need. They are (complete with some names):

 - The original price – PRICE
 - The discount percentage – DISC
 - The discount in pounds – TOTDISC (total discount)
 - The discount price – NEWPRICE

The first two variables will be entered in response to an [INPUT](man_cs-input.md) statement. So you don't need to declare them. Now you know that you only need to declare two global variables at the beginning.

The function can be written immediately. You don't have to tell the computer you're working with percentages – it wouldn't understand you. A percentage is only a certain number of hundredths.
```
DEF DISCOUNT
  LET TOTDISC=(PRICE/100)*DISC
  LET NEWPRICE=PRICE-TOTDISC
END DEF
```
Now you know roughly which parts come in which order – and exactly what you're trying to achieve, you can begin to put the program into BASIC. With a more complex program you would have far more working out to do, and you would probably write a lot of BASIC on notepaper before you began.

Before you type anything into the computer, take a look at this diagram:

![def2](IS-BASIC_ProgrGuide(DEF2).png)

The diagram shows the order in which the actual BASIC will appear, while the arrows show the order in which the program will operate if you follow them from the YOU INPUT box.

First type in the variable declarations:
```
100 NUMERIC TOTDISC, NEWPRICE
110 !	Then the main program:
120 DO
130   CLEAR SCREEN
140   INPUT PROMPT "Please type in the price ":PRICE
150   INPUT PROMPT "Please type in the percentage discount offered ":DISC
160   CALL DISCOUNT
170   CLEAR SCREEN
180   PRINT "A discount of ";DISC;" percent on goods priced at £";PRICE
190   PRINT "Would be £";TOTDISC;"."
200   PRINT
210   PRINT "The new price would be £";NEWPRICE; "."
215   PRINT
218   PRINT
220   INPUT PROMPT "Would you like to know more discounts? ":ANS$
230 LOOP WHILE UCASE$(ANS$(1:1))="Y"
240 END
```
That's the main program. Now all you need to do is add the function:
```
250 DEF DISCOUNT
260   LET TOTDISC=(PRICE/100)*DISC
270   LET NEWPRICE=PRICE-TOTDISC
280 END DEF
```
If you [RUN](man_cs-run.md) this program now, you'll find it works, but it is really only the bones of a program which need some padding. The program below is essentially the same, but far tidier than what you have just typed in. Anything you don't understand should appear in the **!** lines (there are plenty of those!).
```
100 NUMERIC TOTDISC, NEWPRICE
120 CLEAR SCREEN
160 PRINT AT 9,5:"A PROGRAM TO WORK OUT DISCOUNTS"
170 PRINT AT 11,9:"ON MARKED RETAIL PRICES"
180 !	-----------------------------------------
190 !	160 and 170 print a title in the centre
200 !	of the screen, which is neater
205 !	than the top. 220 and 230 ensure that the
207 !	title remains displayed for about 5
208 !	seconds.
210 !	-----------------------------------------
220 FOR X=1 TO 2500
230 NEXT X
240 CLEAR SCREEN
310 !	-----------------------------------------
320 !	360 to 440 are the main program.
325 !	They control the function called
330 !	DISCOUNT. It is through this part
335 !	that you exit the program when
340 !	you need to.
350 !	-----------------------------------------
360 DO
365   CLEAR SCREEN
370   INPUT PROMPT "Please type in the price of the goods ":PRICE
375   PRINT
380   INPUT PROMPT "Please type in the percentage discount offered ":DISC
390   CALL DISCOUNT
400   PRINT "A";DISC;"percent discount on goods priced at £";PRICE
405   PRINT
410   PRINT "would be £";TOTDISC;"."
415   PRINT
420   PRINT "The new price would be £";NEWPRICE;"."
425   PRINT
430   INPUT PROMPT "Would you like to know any other discounts? ":ANS$
440 LOOP WHILE UCASE$(ANS$(1:1))="Y"
445 END
450 DEF DISCOUNT
460   LET TOTDISC=(PRICE/100)*DISC
470   LET NEWPRICE=PRICE-TOTDISC
480 END DEF
```
The program above has one small defect. When it asks you if you want to work out any more discounts, it is unable to cope with a mistaken input. It would be quite easy for you to type '**t**' instead of '**y**', which would have the result of ending the program. A good program should make allowance for mistakes by users.

This may not make a crucial amount of difference to your programs now, but it will when they get longer and more complicated. It's very frustrating to make a typing error which either makes the program finish before you want it to, or just crashes it altogether. Crash is a very expressive word. Crashing a program means making something go so wrong that the computer stops running it and jumps into immediate mode, so that you have to run the program again. This can be caused by all sorts of things, but normally happens because you write a program which tries to do something that is illegal in BASIC. This is known as a fatal error.

The program below doesn't provide all the answers, but it does show you how you can make sure a program won't end or fail to work because you type in the wrong input.
```
100 DO
110   !	-------------------------------------
120   !	The whole program is a large DO/
125   !	LOOP. In 480 to 500 you will
130   !	notice another DO/LOOP inside
140   !	the large one. This is fine – as long
145   !	as the one loop is inside the
150   !	other. A loop inside a loop is
160   !	a nested loop. 175 to 290 are
165   !	also a nested loop.
170   !	-------------------------------------
175   DO
180     INPUT PROMPT "Type in a whole number from 1 to 5: ":NUM
190     !	--------------------------------
200     !	180 asks you to give input as
205     !	shown. 290 makes sure it is an
210     !	acceptable number by check-
220     !	ing first that it is not bigger
225     !	than 5 or less than 1, and
230     !	secondly that it is a whole
235     !	number – this is done by
240     !	making sure the variable
245     !	NUM is not bigger or smaller
250     !	than its integer part. If NUM is
260     !	acceptable, the LOOP is not
270     !	repeated.
280     !	--------------------------------
290   LOOP WHILE NUM>5 OR NUM<1 OR NUM<>INT(NUM)
300   SELECT CASE NUM
310   CASE 1
320     PRINT "Number 1"
330   CASE 2
340     PRINT "Number 2"
350   CASE 3
360     PRINT "Number 3"
370   CASE 4
380     PRINT "Number 4"
390   CASE 5
400     PRINT "Number 5"
410   END SELECT
420   !	-------------------------------------
430   !	Lines 300 to 410 select the
435   !	right response to your number.
440   !	If the number is not 1 the computer
445   !	drops down to the next line and
450   !	checks that, and so on. SELECT
460   !	CASE is dealt with on page 64.
470   !	-------------------------------------
480   DO
490     INPUT PROMPT "Do you want to try another? ":ANS$
500   LOOP UNTIL UCASE$(ANS$(1:1))="Y" OR UCASE$(ANS$(1:1))="N"
510   !	-------------------------------------
520   !	480 to 500 are the nested loop.
530   !	It will keep looping until the
540   !	first letter of your response,
545   !	converted to a capital letter, is
550   !	"Y" or "N". This is the same in
555   !	principle as the check used on the
560   !	variable NUM above, but the
565   !	method is different. 640 tells the
590   !	computer to go back to the
600   !	beginning as long as the first
610   !	letter of ANS$ is "Y". That means
615   !	that when it is "N" the machine
620   !	leaves the loop.
630   !	-------------------------------------
640 LOOP WHILE UCASE$(ANS$(1:1))="Y"
650 END
```
Remember, the method used here is just one way of checking input. Many of the functions provided by the computer can be used to do this in one way or another. The secret of writing efficient programs lies partly in inventing little devices like those above – among several other things – and so does much of the fun of it too.

Lastly, your programs will be far more pleasant to use if you make them look tidy to the person using them. Making a program 'look tidy' includes clearing the screen whenever it gets full or whenever the program moves from one stage to another – e.g. from input to the output of results.

You can also print words tidily on the screen by using [PRINT AT](man_cs-print.md) to give margins, and [UCASE$](man_fn-ucase.md) or [LCASE$](man_fn-lcase.md) to tidy up strings which are typed in by the person using the program. Sound effects and colours can be used as signals.

When you've written some really well structured, useful and attractive programs, you'll not only feel satisfied with what you've done, but also extremely accomplished and knowledgeable as well!