# OPERATORS AND EXPRESSIONS 

This is an expression: `4+2*3-5`

These are operators: `^`, `+`, `-`, `*`, `/`, `=`, `<`, `>`, `<>`, `<=` and `>=`

All of the above operators can be used on the Enterprise. Some of them will be obvious to you, but others may not. The symbols `+`, `-`, `*`, `/` and `=` should already be clear to you; the computer uses `*` instead of `×` and `/` instead of `÷`.

Here are the rest, just to make sure:

`^` means 'to the power of' or 'involution'. **2^3** is **2 cubed**.
`<` means 'less than', e.g. **2<3**.
`>` means 'greater than', e.g. **3>2**.
`<>` means 'greater or less than', or 'not equal to'.
`<=` means 'less than or equal to'.
`>=` means 'greater than or equal to'.

The last five operators are known as 'relational operators'. Their main use on a computer is in handling variables – for instance:

```
10 INPUT PROMPT "Please type in a number: ":A
20 !	----------------------------------
30 !	Line 10 asks for a number which is
35 !	to be evaluated.
40 !	----------------------------------
50 IF A<0 THEN PRINT "This number is negative."
55 IF A=0 THEN PRINT "This is zero!"
60 !	----------------------------------
70 !	50 makes a simple decision. If
75 !	A is a negative number (e.g. -9),
80 !	say so. IF is the crucial point.
90 !	If number A does not fit
100 !	that line, the computer looks
110 !	for a line which A does fit.
120 !	A<0 in line 50 literally
130 !	means 'A is less than 0'.
140 !	----------------------------------
150 IF A>0 AND A<50 THEN PRINT "This number is more than 0 and less than 50."
160 !	----------------------------------
165 !	150 is another 'IF/THEN'. It's
170 !	like English – IF you don't want
180 !	to come THEN go home. Now the
190 !	computer looks to see if A is more
195 !	than 0 but less than 50. If not, it
200 !	looks at the line below.
210 !	----------------------------------
220 IF A>50 AND A<100 THEN PRINT "This number is more than 50 and less than 100."
230 !	----------------------------------
240 !	Line 300 is the last decision line.
245 !	It looks to see if A is more
250 !	than 100.
290 !	----------------------------------
300 IF A>100 THEN PRINT "This number is bigger than 100."
310 END
```

The program will decide what category your number comes into, according lo the instructions it receives. That is one of the ways in which the computer makes decisions. There are several other ways in which this can be done. They're explained on [page 64](man_2-decisions.md).

Relational operators are a way of comparing numbers. They do not change numbers at all. The operators referred to below all change numbers in some way.

## OPERATOR PRIORITY

Look again at the expression: `4+2*3-5`

What do you think the result should be? Thirteen, because you work out each part from left to right? Well, it's five, and here's why.

Powers are solved first. If the expression had had **4^3** in it, this would have been calculated first. Then come multiplication and division. **2\*3** or **6/2** would be calculated before any addition or subtraction was done by the computer.

Multiplication and division have the same priority, and if, for instance, an expression contained two divisions and one multiplication, the machine would work them out in order from left to right.

This done, the computer drops down to the next level of priority and starts on the addition and subtraction. These are also worked out from left to right and, by this time, you should have a result – in this case **5**.

Let's look at a longer one now, and take it to bits in the way the computer would.

![](IS-BASIC_ProgrGuide(Operators).png)

`2+3*7-5+21/3+4*3^2` is our expression.

First work out the powers.

`3^2=9`

Now it looks like this:

`2+3*7-5+21/3+4*9`

Then do the multiplications and divisions – the second level.

`3*7=21` `21/3=7` `4*9=36`

Now you have:

`2+21-5+7+36`

And this is worked out from left to right, so:

`2+21=23` `23-5=18` `18+7=25` `25+36=61`

So the result is **61**.

This, as you can now see, will affect the way your calculations might work out. You might expect one result where the computer gives another. If you want, you can change the priority and have different sections of an expression given 'express treatment' by the computer. All you do is stick brackets round the part you want evaluated first. Look at the difference this makes to the expression above:

`(2+3)*7-5+21/3+4*3^2`

The computer treats **(2+3)** as a unit on its own and so works it out first. Thus:

`5*7-5+21/3+4*3^2`

Then it works as normal, and does the powers

`З^2=9`

so:

`8*7-5+21/3+4*9`

Then multiplication and division – from left to right:

`5*7=35` `21/3=7` `4*9=36`

leaving

`35-5+7+36`

to figure out:

`35-5=30` `30+7=37` `37+36=73`

The result is now **73** and not **61** as before. So, as you can see, numbers can be juggled about in all sorts of ways using a computer. Don't forget that, inside each pair of brackets, the computer will deal with expressions by using the same priority system. So if you have **(2+3\*4)** the multiplication will come before the addition.

Try any of the examples above. The simplest way is to use [PRINT](man_cs-print.md) in immediate mode: e.g. type `PRINT 5*7-5+21/3+4*9`.

Lastly, before we go on, you can use numbers with decimal points (e.g. `0.23345` or `.0098`) and negative numbers (e.g. `-2`) as and when you want to.

You may be finding all these numbers a bit stuffy. Once you've got used to using numbers the way a computer does, though, you won't notice. Don't forget that, although you will never need to be a mathematician to program a computer expertly, you will always need lo use arithmetic. Even graphics commands need numbers which have to be worked out – though often this is very easy.