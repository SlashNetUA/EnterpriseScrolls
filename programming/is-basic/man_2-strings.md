# STRINGS

The earlier part of the manual dealt with strings in very little detail. Now that you have learnt the fundamental concepts, a word about strings will put your knowledge into perspective.

Strings are one of the two main types of information – numbers being the other – that the computer can handle. In fact, handling information is what a computer is all about. It has probably become obvious to you by now that a computer does not have the ability to think as a person does. It does exactly what you tell it to, with information you give it. So, at root, programming is just a way of sorting, collecting and manipulating information.

Earlier, strings were likened to quoted speech. Quotes are used when repeating exactly what was said, but there is no necessity to understand the words quoted – they could be nonsense.

This is the principle behind the idea of strings. The computer doesn't understand what they are or what they mean. It just treats them as meaningless symbols.

Anything in a program which is placed between pairs of double inverted commas will be regarded as a string by the computer. Here is a string:

**"How old are you?"**

Those same characters could appear in a book as reported speech:

**"How old are you?", said Jim.**

Notice also that you can put numbers into quoted speech:

**"I'm 22", said Sally.**

Try these examples:

```
PRINT 2*2
```

This example tells the computer to do a small sum: put the value of **2** multiplied by the value of **2** on the screen – i.e. do the sum and display the result.

```
PRINT "2*2"
```

This example looks almost exactly the same as that above it. But the inverted commas make **2\*2** into a string. We are now telling the computer to put **2**, then **\***, then **2** onto the screen.

The computer can tell you how long a string is, if you ask it to. Try this program;
```
100 LET A$="COMPUTER"
110 LET B$="MICROCOMPUTER"
120 !	---------------------------------------
130 !	Lines 100 and 110 declare two string
140 !	variables, A$ and B$. String variables
150 !	are just like numeric ones, except that
160 !	they are names for groups of symbols,
170 !	not for the values of numbers. The name
180 !	given to a string variable must always
190 !	have a dollar sign ($) at the end of it.
210 !	---------------------------------------
220 LET A=LEN(A$)
230 LET B=LEN(B$)
240 !	---------------------------------------
250 !	A and B are numeric variables which
260 !	contain the lengths of the two strings.
270 !	LEN tells you the number of characters
280 !	in a string (i.e. its length).
300 !	---------------------------------------
310 PRINT "The string called A$ is ";A;" characters long."
320 PRINT "The string called B$ is ";B;" characters long."
330 END
```
Try changing the contents of **A\$** and **B\$** – the computer will always be able to tell you how many symbols each one contains.

## SPACES

A space may be nothing to you, and it's understandable if you think it doesn't count. But the computer treats it as though it were a symbol. Try changing **A\$** and **B\$** (in the program above) to:

`"        "` and `"    "`

You will see then that the computer tells you how many spaces they contain, although it looks as if both are empty. A truly empty string would look like this:

`""`

As you can see, it doesn't even contain spaces. This is called a null string.

## STRINGS INSIDE STRINGS

The Enterprise can do some interesting things with strings. For instance, you can make one string out of another one. Here's a program which does this:
```
100 LET BIGSTRING$="quite a few words"
110 !	------------------------------------
120 !	Line 100 declares a string variable.
130 !	------------------------------------
140 LET SMALLSTRING$=BIGSTRING$(9:17)
150 !	------------------------------------
160 !	Line 140 declares another string
170 !	variable – with a difference. It starts at
180 !	the 9th character of BIGSTRING$ and
190 !	ends at the 17th character.
210 !	------------------------------------
220 PRINT BIGSTRINGS
230 PRINT SMALLSTRING$
240 END
```
The computer literally copies some characters from one variable into another separate variable. This separate variable is called a substring. To make one string out of another, we have given the substring a name – **SMALLSTRING$** – and then specified, in brackets after the name of the larger string, the character where we wanted the substring to start and the character where it would end.

So a statement such as `LET INITIAL$=NAME$(1:1)` says 'call the substring **INITIAL\$** and let it contain the first letter of **NAME\$**'.

In each of these examples we have declared our substring as a variable in its own right, by giving it a name (an 'identifier') of its own. This isn't strictly necessary, though. In the above program, we could delete line 140 and change line **230** to:
```
230 PRINT BIGSTRING$(9:17)
```
– meaning 'print the ninth to seventeenth characters of the string called **BIGSTRING\$**'. The method you choose will depend on the reason why you're using substrings. If you want to use the same substring several times, it's often more convenient to declare it as a separate variable. If not, then the second method above will suffice.

## INKEY$

[INKEY$](man_fn-inkey.md) is a very useful and important string function. (Any BASIC word which does something to a string is called a string function; most of them end with the **$** sign, to indicate that the result they produce is also a string.)

[INKEY$](man_fn-inkey.md) allows you to press a key while the program is running, so as to affect the way that the program will continue. In some ways it's like an [INPUT](man_cs-input.md), but the differences will soon become clear. Try this:
```
100 PRINT "Have you understood this chapter?"
110 PRINT
120 PRINT "Answer with у or n"
130 DO
140   LET A$=INKEYS
150 LOOP UNTIL A$<>""
160 !	------------------------------------
170 !	Line 140 puts the result of a key-
180 !	press into a string variable. You'll
190 !	see why this is important.
200 !	------------------------------------
210 IF A$="y" THEN
220   PRINT "Let's hope you're right."
230 ELSE IF A$="n" THEN
240   PRINT "Well, read it again."
250 ELSE
260   PRINT "That was a wrong key."
270 END IF
280 !	------------------------------------
290 !	You have seen IF/THEN statements
300 !	before. The purpose of ELSE in lines 230
310 !	and 250 is fairly obvious from the
320 !	ordinary meaning of the word. 'Con-
330 !	ditional' statements like these are dealt
340 !	with at length in the chapter on decisions.
350 !	------------------------------------
360 END
```
When the program asks its question, your next keystroke gives the answer and makes the computer proceed to line **210** and onwards.

Unlike an [INPUT](man_cs-input.md) statement, the [INKEY$](man_fn-inkey.md) function only asks for one key to be pressed, and doesn't require you to use 'Enter'. (So it's very useful for games – for one–letter answers, or for continuing an action that has been stopped in the middle by a loop.) Note that 'shift' plus another key counts as just one keystroke.

Another difference between [INKEY$](man_fn-inkey.md) and [INPUT](man_cs-input.md) is that [INKEY$](man_fn-inkey.md) doesn't automatically make the computer wait until your answer has been given. That's why lines **130** and **150** in the above program are necessary. Try deleting them. You will then see that the program runs right through to the end in a fraction of a second, giving you no time to type your answer. When the computer comes to line **140**, it decides that since none of the keys has just been pressed, [INKEY$](man_fn-inkey.md) is equivalent to a null string (**""**); so it makes **A\$** into a null string too.

Lines **130** and **150**, on the other hand, say 'keep looping until **A\$** becomes something different from a null string – then go on to the rest of the program'.

Bear in mind that [INKEY$](man_fn-inkey.md) is like a variable of which the value changes very quickly. The point is that the computer 'looks' at the keyboard approximately once every fiftieth of a second, to register any key-press made in that interval; if you press (say) the 'a' key, then [INKEY$](man_fn-inkey.md) becomes equivalent to "a" – but only for a very short time. Normally, one-fiftieth of a second later, [INKEY$](man_fn-inkey.md) will revert to a 'null' string, and will remain with this value until your next keystroke.

This explains why line **140** is needed in the program. It immediately puts the result of your keystroke into a separate string variable which will not change while the computer is examining it (testing it to see if it meets certain conditions – see lines **210** to **270**).

You could try deleting line **140** and altering lines **150**, **210** and **230** to:
```
150 LOOP UNTIL INKEY$<>""
210 IF INKEY$="y" THEN
230 ELSE IF INKEY$="n" THEN
```
The reason why the program doesn't work properly any more is that the value of [INKEY$](man_fn-inkey.md) changes (it reverts to **""**) in between lines **150** and **210**.

There is, of course, no need to put the value of [INKEY$](man_fn-inkey.md) into a separate variable if it is not going to be used in subsequent program lines. For example, if you merely want to hold up the action of a program until the user tells it to continue, you can type something like:
```
100 PRINT "Press any key to continue."
110 DO
120 LOOP UNTIL INKEY$<>""
```

## UCASE$ AND LCASE$

Another interesting thing you can do with strings is to change them into capital or small letters.
The two words which will do this are [UCASE$](man_fn-ucase.md) and [LCASE$](man_fn-lcase.md). This program will show you how it's done:
```
100 !	---------------------------------------
110 !	This program will convert a string that
120 !	you have typed, first into capitals and
130 !	then into small letters.
140 !	---------------------------------------
150 INPUT PROMPT "Please type in some letters:":A$
160 PRINT A$
170 PRINT UCASE$(AS)
180 PRINT LCASE$(A$)
190 END
```

## VAL

Something else which you can do is to convert a string which contains number-symbols into the number that it would be if it were not a string. The BASIC word which does this is [VAL](man_fn-val.md) (short for 'value'). Try this:
```
100 INPUT PROMPT "Please type in some characters: ":A$
110 PRINT A$
120 PRINT VAL(A$)
130 END
```
To determine **VAL(A\$)**, the computer will only count the numbers in **A\$** which come before the first letter. So **VAL("123AB45")** equals **123**, while **VAL ("AB12345")** equals **0**.

You can also do the opposite – convert a number into a string – by using the word [STR$](man_fn-str.md).

## ADDING STRINGS TOGETHER

You have already seen how you can turn part of a string into a substring. Another way to form a new string is by linking up strings (or portions of strings) to one another. The act of joining strings together is called concatenation; all you do is put an ampersand ('**&**') between the strings – as if to say, 'one string and another string'.

The following example makes use of concatenation in addition to substrings and the [LEN](man_fn-len.md) function.
```
100 INPUT PROMPT "Please type a word: ":STRING$
120 CLEAR SCREEN
130 LET ABBREV$=STRING$(1:1)&STRING$(LEN(STRING$):LEN(STRING$))&"."
140 !	-------------------------------------------
150 !	In line 130, STRING$(1:1) makes the first
160 !	character of STRINGS into a substring.
170 !	LEN(STRING$) gives the number of
180 !	characters that STRING$ contains, so
190 !	STRING$(LEN(STRING$):LEN
200 !	STRING$)) makes another substring out
210 !	of the final character. Then, using the '&'
220 !	symbol, the two substrings are linked to
230 !	each other and to a full stop, thus
240 !	defining a new string variable,
245 !	ABBREV$.
250 !	-------------------------------------------
260 PRINT STRING$;" abbreviated is ";ABBREV$
270 END
```
You would do it this way if you wanted to use the abbreviation repeatedly. If you were only using it once, you could of course delete line **130** and change line **260** to:
```
260 PRINT STRING$(1:1)&STRING$(LEN(STRING$):LEN(STRING$))&"."
```
In this case the ampersands could be replaced by semicolons.
