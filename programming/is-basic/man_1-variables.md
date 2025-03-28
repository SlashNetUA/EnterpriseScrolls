# VARIABLES

Now that you know all about program lines, immediate mode and keywords, let's bring something else into the picture.

Imagine two boxes, labelled **X** and **Y**. Into each box we can put a number. Later, this number may be taken out and replaced with a new one.

We are now going to tell the computer that each time we [RUN](man_cs-run.md) the following program and put a pair of numbers into the two boxes, we want it to add together the contents of **X** and those of **Y**.
```
10 !	------------------------------
20 !	60 and 70 ask you to type in
25 !	numbers. They wait for your
30 !	answer. Press 'enter' when you
40 !	have typed each number.
50 !	------------------------------
60 INPUT PROMPT "Type in number X: ":X
70 INPUT PROMPT "Type in number Y: ":Y
80 !	------------------------------
90 !	Line 120 adds up numbers X and
95 !	Y and puts the sum
100 !	into a variable called Z.
110 !	------------------------------
120 LET Z=X+Y
130 !	------------------------------
140 !	Line 160 displays the answer.
150 !	------------------------------
160 PRINT X;"+";Y;"=";Z
170 END
180 !	------------------------------
190 !	Line 170 tells you and the
200 !	computer where the end of the
210 !	program is.
220 !	------------------------------
```

You may not even need to [RUN](man_cs-run.md) this to see what it is doing. It's something you might have come across at school (or, if you're a parent, in your children's maths books). Do you sec how you have to tell the computer everything it must do?

## COMMENTS IN PROGRAMS

The program lines which begin with exclamation marks are there for your benefit – the computer remembers them but doesn't act on them. They are comments which can be used to tell you what each part of a program is doing. An exclamation mark may also be used to set aside the rest of a program line for comments after one or two instructions on the same line. Alternatively, instead of an exclamation mark, the word [REM](man_cs-rem.md) (for 'remark') may be used – but this must always come immediately after the line number. The comments are best set out as in the example above, so that you can pick them out quickly.

Note how the use of comments makes the program easier to understand. They are not essential, but they help to make a program understood by humans as well as computers.

## INPUT PROMPT

[INPUT PROMPT](man_cs-input.md) (see the program on page 20) is the set of keywords which tells the computer to ask you a question and then wait for you to enter an answer.

If you use [INPUT](man_cs-input.md) by itself, without adding **PROMPT** followed by a few words in inverted commas (which are there for your benefit), the computer will ask its question merely by displaying a question mark and the red cursor. The words after **PROMPT** can be anything you like; and are just there to remind you of what you are supposed to type in. They must always be entered between inverted commas (although these don't appear on the screen). Another way of giving an 'input prompt' is this:
```
10 PRINT "Type in number X;
20 INPUT X
30 PRINT "Type in number Y;
40 INPUT Y
```
This method, as you can see, is a little more long-winded than [INPUT PROMPT](man_cs-input.md), but the result is still the same. That short program does exactly the same thing as lines **60** and **70** of the program above, except that the program here will allow the computer to print its own little 'input prompt', which is a question mark. An [INPUT PROMPT](man_cs-input.md) statement stops the computer from printing its question mark.

## VARIABLES AGAIN

Variables are names for numbers whose values (i.e. their sizes) may change. For **X** and **Y** you might type in any number you like – be it **0.00004** or **400000**. If **X** stood for the number **400000**, we would say that four hundred thousand was the value of **X**.

Often you will need to use variables because you will not know in advance what a number will be.

Look back on the first pages of the manual. All the programs you tried out then had variables in them, sometimes because the computer was making its own numbers out of other numbers and sometimes because you decided them while the program was running, by typing them in.

At other times it is convenient to use variable names for very long numbers which will be used several times. This means you don't have to keep on typing them again each time you want them to be used in a program.

Here's another use for variables.
```
10 LET A=0 !          A begins as 0.
20 DO !               DO/LOOP begins.
30   LET A=A+1 !      Add 1 to A.
40   PRINT A, !	      Display A's value.
50 LOOP UNTIL A=20 !  Go back, repeat loop.
60 !                  Loop ends when A=20.
70 END
```
It's a counter, using something called a [DO/LOOP](man_cs-do.md). Each time the Enterprise goes round the loop, it increases the number in box **A**, by **1**. Then, at the end of the loop, it checks to make sure that the value of **A** is not **20**. When **A** is **20**, the program ends. The comma next to '**A**' in line **40** makes the screen look tidier – you can find out what it does by missing it out and running the program a second lime.

[DO/LOOP](man_cs-do.md)s are not the only way of asking the computer to repeat itself. Page 59 and the [Reference Section](man_3-commands.md) will tell you about some more.

## I NAME THIS VARIABLE

**X**, **Y** and **Z** are just three of the many names you can give a variable. They don't have to be just one letter – you can use more than thirty if you want.

So you can give all your variables appropriate names – **NAME$** for someone's name (this is a string variable and is explained on page 53), **SUM** for the result of adding two numbers.

Note that it makes no difference whether you call a variable **PRICE**, **Price**, **price** or **pRicE**. The computer doesn't distinguish between capital and small letters in variable names or keywords.

When you write programs of your own you will quickly see how the variable names can help you to read through the program later. This is very important if you need to find errors, make changes or take out part of a program for use in another program – all of which you will want to do eventually.

Incidentally, you could use two variables with very similar names – e.g.:
```
VAT_SUBTOTAL_JUNE_ACCOUNT_NO1
```
and
```
VAT_SUBTOTAL_JUNE_ACCOUNT_NO2
```
and the Enterprise would still be able to tell the difference at a glance. The problem is – would you? It's not very clever to use huge variable names like these all the time. Occasionally, you may feel it's appropriate. But eight or ten characters are usually enough to help you tell the difference and know quickly which variables stand for what numbers.

So variables are a way of calculating with numbers whose actual value is unknown to you. The name you give to each one tells you what that number is related to. The computer will tell the difference between variable names of up to **31** characters.

A 'character' here means: a letter or a number (or digit to be absolutely correct). The computer will not understand you if you put spaces in variable names, nor will it understand operators (**+**, **=** etc.) or punctuation marks (with the exception of the full stop and the underline marker, '**\_**', which is a good substitute for a space). You must also always begin variable names with a letter, not a number or punctuation mark. Here are some 'legal' variables – i.e. those the computer will accept:
```
Number
A2$
TOTAL$
Hello1
SUB_TOTAL_3
Name
A1234
```
Notice that you can use a dollar sign. This has a special meaning as it sets aside that variable for use as a string variable. [Strings](man_2-strings.md) are explained briefly on page 19 and are explained in more detail on pages 52-58.

Here are some the computer does not understand:
```
my variable
2A
!!!A$
<>3NOW
3*THIS NUMBER
```

## DECLARING VARIABLES

In the counter program, the first line read `LET A=0`. Try the program again without it. It doesn't work, does it?

However, if you are using an [INPUT](man_cs-input.md) statement to tell the computer to let you type in the value of a variable (as in the program which added two numbers of your choice), you don't need to declare this variable by using [LET](man_cs-let.md).

## USING VARIABLES

Try typing `LET A=3` instead of `LET A=0` at the beginning of that program. It will tell you a little more about how variables work.

The computer expects the variable which is changing or being declared to follow immediately after [LET](man_cs-let.md). So if variable **S=0** and variable **G=10**, you could type `LET S=G` to make **S** into **10**. **G** would still contain **10** but the computer would assume it was as big as variable **S**.

[LET](man_cs-let.md) introduces the computer to a variable – you're saying '*computer, here's a variable called **FIRSTNUM**; at the moment, it equals **0***' or whatever number you want that variable to be. It is not always necessary to use [LET](man_cs-let.md), but it is generally better if you do. It makes your variables easier to spot right from the start.

If you want to, you can use a BASIC word as a variable name. But if you do, you must use [LET](man_cs-let.md) to tell the computer to look out for a variable with the same name as one of the words it understands. There are some BASIC words which cannot be used as variable names – a bit of experimentation will soon tell you which ones these are. (A more versatile way of declaring variables is explained on page 73, in the chapter on storing information)

Overpage is another program illustrating all the principles you've just read about. This time each line is explained in the light of your new knowledge about these variables.
```
10 LET A$="The sum of the two numbers is: "
20 !	--------------------------------
30 !	10 declares string variable A$.
40 !	--------------------------------
50 LET SUM=0
60 !	--------------------------------
70 !	SUM is the variable which will
75 !	contain the result of the
80 !	addition below. It begins as 0.
90 !	--------------------------------
100 INPUT PROMPT "Please type in your first number: ":FIRSTNUM
110 INPUT PROMPT "Type in your second number: ":SECNUM
120 !	--------------------------------
130 !	100 and 110 ask you to type in
135 !	numbers to be added. You do not
140 !	need to use LET, because the two
150 !	new variables are being 'input'.
160 !	--------------------------------
170 LET SUM=FIRSTNUM+SECNUM
180 !	--------------------------------
190 !	SUM (which was 0) now becomes
195 !	the result of the addition of
200 !	FIRSTNUM and SECNUM.
210 !	--------------------------------
220 PRINT A$;SUM
230 !	--------------------------------
240 !	Line 220 tells the computer to
245 !	display the sentence from line
250 !	10 and the value of SUM all on
260 !	the same screen line.
290 !	--------------------------------
300 END
```
