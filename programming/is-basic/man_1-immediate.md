# IMMEDIATE MODE AND KEYWORDS

## IMMEDIATE MODE
 
If you type in commands without giving them a line number, it is called immediate mode. You can use the computer as a calculator in this way. Here's how.

On the keyboard you will notice these symbols: **+**, **\***, **=**, **-** and **/**. Of these, **\*** and **/** may be unfamiliar to you. They stand for 'multiply' (**\*** instead of **×**) and 'divide' (**/** instead of **÷**). If you type
```
PRINT 2 + 2
```
you will get the answer, **4**, as soon as you press '**Enter**'. With all the mathematical operators, as they are known, you can do sums on the computer in this way. You can also work out square roots. Try
```
PRINT SQR(100)
```
and the answer will be the square root of **100**. The word [SQR](man_fn-sqr.md) is a special one which the computer understands to mean 'the square root of the number in brackets'. There are several words like this in BASIC. You can find a list of them in the Reference Section, under the heading '[Built-in Functions and Variables](man_3-functs.md)'. More of them will be explained as they're used in the text.

Immediate mode will come in useful when you need to work out the results of calculations for use in programs. Using immediate mode does not affect any program lines you may already have typed, and you do not have to do anything special to begin using it. Just miss off the line number.

Many BASIC commands will work under immediate mode as well as within a program. You will see what this means by experimenting. Look through the manual and find BASIC words. Then, using the examples included in each part, try the words in immediate mode. The [keyword reference list](man_3-commands.md) will also tell you which commands can be used in immediate mode.

## KEYWORDS

Now you know about programming in BASIC and about immediate mode, let's explain more about keywords. [PRINT](man_cs-print.md) is one of these, and has a special meaning in BASIC. Keywords are the instructions to which the manual has referred before. There are many of them, and each one tells the computer to do one (or possibly more than one) small thing. [PRINT](man_cs-print.md), for example, tells the computer to put a display on the screen.

To make the computer do complicated jobs, you use many keywords and other pieces of information put together as a program. Perhaps you can think of it as telling the computer a story or teaching a child his alphabet – it has to be detailed, exact and in the proper order.

## STRINGS

As you have already seen, it is possible to make the computer print a message (`Hello!`) on the screen by typing the message within inverted commas (`" "`). This is regarded as a string by the computer (see [page 52](man_2-strings.md) for more detailed information about strings). This may seem very confusing now, so here are two points which may help you to understand it.

First, 'string' is just a word for a particular type of information which the computer will handle. Secondly, because strings appear in a program in inverted commas, you can think of them as being like quoted speech. In the `PRINT "Hello!"` statement, the computer literally quoted what you had put between inverted commas.

## CHARACTERS

The word 'characters' has appeared from time to time. A character is a letter, number or any other shape provided by the computer for display/communication purposes. All the characters the computer provides are together called the character set.