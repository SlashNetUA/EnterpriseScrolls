# EXCEPTION HANDLING

To deal with errors, to handle the network or certain other devices, and also to deal with some special conditions which are independent of the normal program flow, Enterprise BASIC provides something called exception handlers.

Exception handling operations are a little like functions. But unlike functions, exception handlers are not normally activated by a specific reference in a program such as a [CALL](man_cs-call.md).

First, a little word of explanation. An exception is something which happens independently of a program running at the time, but which may affect the program or be made to affect it in some way. The 'stop' key is an exception, because the program does not need to check whether you have pressed 'stop' but it is affected by it. Program errors are also exceptions.

If you run a program with some sort of mistake in it, the computer will, if the error is of a type which will stop the program, respond to it with a short message and a number. In this case the number is what may be used as an 'exception type' to give the computer a key to what it should do.

BASIC also allows for you to make up your own exceptions. These must be numbered from **1** to **999** and they can be used to deal with wrongly typed input (e.g. a number which is too big or small) or another unusual condition recognized by a program.

Let's begin looking at exception handling by causing one within a program and then dealing with it using exception handler statements.
```
 50 WHEN EXCEPTION USE INPUT_ERROR
 60   !--------------------------------------
 65   ! 50 tells the computer to use the
 70   ! handler (see below) if an exception
 75   ! occurs. It is valid until the computer
 80   ! reaches END WHEN in 145.
 90   !--------------------------------------
100   INPUT PROMPT "Please type a word: ":STRING$
110   IF VAL(STRING$)<>0 THEN
115     CAUSE EXCEPTION 10
120   ELSE
130     PRINT "Your word has been accepted."
140   END IF
145 END WHEN
150 END
160 !--------------------------------------
170 ! 260 to 310 is the part of the
180 ! program which copes with an
190 ! exception; in this case exception
200 ! number 10. This is caused if you
210 ! type in a number, not a word.
220 ! You may notice some parallels
230 ! between the exception handler and
240 ! calling functions.
250 !--------------------------------------
260 HANDLER INPUT_ERROR
270   IF EXTYPE=10 THEN
280     PRINT "That was not a word."
285   ELSE IF EXTYPE<>10 THEN
290     EXIT HANDLER
300   END IF
310 END HANDLER
```
You can probably see that this could be done using other methods. Line **110** actually makes the computer register a 'mistake' according to your instructions.

[CAUSE EXCEPTION](man_cs-exception.md) is there to send the program to a handler in the event of a mistake which the computer would not normally recognize – for instance, a word beginning with a number, as above. Normally the computer would accept numbers as a string as you know, but the use of VAL makes a string which starts with a number into a mistake in conjunction with the statement [CAUSE EXCEPTION](man_cs-exception.md).

The [VAL](man_fn-val.md) of a string will be **0** if there is no valid number in a string (except **0**) preceding the first letter or other non-numeric character.

[EXIT HANDLER](man_cs-exit-handler.md) is the same as [EXIT DO](man_cs-exit.md) or [EXIT FOR](man_cs-exit.md) but it only relates to the handler block.

[EXTYPE](man_fn-extype.md) is the type number of the exception – in the program it is number **10**. The [EXTYPE](man_fn-extype.md) varies according to what has gone wrong and, in the case of a [CAUSE EXCEPTION](man_cs-exception.md) statement, to what number you give the exception to be caused. See page 180, which deals with error messages. Another word, [EXLINE](man_fn-exline.md), gives the line number where the exception happened.

The previous program illustrated one type of exception handling. In principle this is rather like [CALL](man_cs-call.md)ing a function (using it as a subroutine or module). Notice that this method used the words [WHEN EXCEPTION USE](man_cs-when.md), which you can think of as meaning 'in the event of a mistake anywhere, use these handlers'. This command has to be matched with an [END WHEN](man_cs-end.md) statement.
