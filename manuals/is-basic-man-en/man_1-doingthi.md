# DOING THINGS IN ORDER

The number at the beginning of a BASIC program line makes an important difference.

Type in `PRINT "Hello!"`. The display you get when you have pressed '**Enter**' will tell you what happens. The computer does what it is told straight away – it puts 'Hello!' on The screen, right under the words you have just typed. When you entered programs before, the computer waited until it was told before running the program. It is the line number which makes this difference. Without a line number, the computer carries out your instructions as soon as you press 'enter'. If you add a line number, you must type [RUN](commands/man_cs-run.md) (or press **Function key 1**) to make the computer work.

So you now know that all BASIC programs are broken up into lines, and that each line needs to have a line number.

If you enter a program line that has the same number as one which you entered earlier, the previous line will automatically be erased from the computer's memory. If you ever want to get rid of a line, simply type in its number followed by '**Enter**'. The line will disappear, because effectively you have entered an empty line! You can also remove a whole group of lines; the command `DELETE 10 TO 100` would remove all lines from **10** to **100** inclusive.

The order in which lines are put into the computer does not matter. You have already seen how the machine sorts them into numerical order. It's the numerical order which is important.

The line numbers are how the computer decides which instruction to do next. It starts with the lowest number and works its way upwards – unless told by the program to do otherwise – until it reaches the end.

The 'unless told by the program to do otherwise' is, as you will see later on, very important. There are several ways in which you can put a program together. Some of these mean that the computer will not follow line numbers in order, because some BASIC words tell it to use other lines instead.

This means that you have to know exactly which things you want the computer to do in what order – which is no more than being sure you know what you want to do before you begin to write a program.
