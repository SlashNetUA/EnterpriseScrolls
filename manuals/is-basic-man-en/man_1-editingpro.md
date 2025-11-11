# EDITING PROGRAMS

You already know how to correct typing errors by using the joystick and the '**Erase**' key. We shall now look at some more elaborate ways of altering programs – inserting new lines, changing the line numbers, altering parts of lines, and so on. Sometimes this is quite a complicated matter. To make it easier, the computer provides 'word processing' facilities, which will be partly introduced in this chapter and discussed more fully in the next.

Let's go through the program-editing commands one by one.

## RENUMBER

When you typed in programs earlier in the manual, you may have noticed that the line numbers often began at **100** and went on: **110**, **120**, **130**... We could have used **1**, **2**, **3**, **4**... instead.

The reason why you don't normally use **1**, **2**, **3**, **4**... for line numbers is simply that you may want to put in more lines later – just as if you were writing a story and you got halfway through before realizing you'd left something out at the beginning. You can't have line number **2.5**, but you can (if you get stuck this way) type [RENUMBER](commands/man_cs-renumber.md), and the computer will change all the line numbers. If you type `RENUMBER STEP 100`, the lines will increase by **100** at a time. Just typing [RENUMBER](commands/man_cs-renumber.md), with no number following it, will make the computer increase the line numbers by **10** (starting from **100**). This version of the command is also obtained by pressing '**Shift**' with **Function key 3**.
  
## STEP

**STEP** is a keyword which appears from time to time in BASIC, in conjunction with some other keyword (such as [RENUMBER](commands/man_cs-renumber.md) in the case above). **STEP** means 'in steps of...'. `STEP 100` means in steps of **100** – i.e. **100**, **200**, **300**...

## AUTO

Another handy little word will make the computer put in the program lines for you automatically. This word is [AUTO](commands/man_cs-auto.md). Type it in, and the number **100** will appear, on a new line.

You can then type in your program line and press '**Enter**'. Then **110** will appear, and so on. To stop this automatic numbering, just press the '**Stop**' key.

You can specify the point in a program where you want your auto numbering to begin. `AUTO AT 200` will begin auto numbering from line **200**. `AUTO AT 200 STEP 100` will begin from **200** and increase each line after that by **100**. You can use any number from **1** to **9999**, which is the largest line number allowed (Typing `AUTO AT 9999 STEP 10`, or something similar, will confuse the machine.) Don't forget that if (say) line **250** is entered by auto numbering, it will replace any line numbered **250** which you had typed in before.

## DELETE AND LIST

You have already used the word [NEW](commands/man_cs-new.md) – it removes the program you are using from the computer's memory. The word [DELETE](commands/man_cs-delete.md) (followed by '**Enter**') will also do this.

Typing `DELETE 100` will remove line **100** from the program. `DELETE 100 TO 140` will remove lines **100** to **140** inclusive.

If you only want to delete one line, it is quicker to type in its number alone and press '**Enter**'.

In conjunction with [DELETE](commands/man_cs-delete.md) you can use the words **FIRST** and **LAST**. Thus, `DELETE FIRST TO LAST` would erase an entire program – of course, [NEW](commands/man_cs-new.md) (or [DELETE](commands/man_cs-delete.md) just by itself) is better! But `DELETE FIRST TO 100` is quite sensible if you want to delete the lines up to and including **100** of a big program.

You can also delete smaller pieces of a program, i.e, particular words or characters within a program line. Table 1 at the end of the chapter explains how this is done. To find a line so as to alter it, type [LIST](commands/man_cs-list.md). This word by itself (as you know) will display the whole program. [LIST](commands/man_cs-list.md) followed by a particular line number will make that line appear on its own just above the cursor. Typing `LIST ... TO ...` will display a group of lines from the first to the second number, inclusive. **FIRST** and **LAST** can be used with [LIST](commands/man_cs-list.md) in the same way as they can with [DELETE](commands/man_cs-delete.md).

Then you need to position the cursor at the beginning or end of the portion of the line that you want to remove. You do this, of course, by using the joystick. Once the changes to the line have been made, press '**Enter**' while the cursor is still on this same line. This will re-enter the modified line in place of the original one. (Note that until you have done this, the computer still 'remembers' the line in its original form.)

## OVERWRITE OR INSERT

If you want to alter something in the middle of a program line, you don't necessarily have to use the '**Erase**' or '**Del**' key. As long as the machine is working in what is known as _overwrite mode_, any character that is under the cursor is automatically deleted when you type in a new one – you 'write over', and replace, the old material. So to change the number **234** into **567**, simply place the cursor over the **2** and type in the three new characters.

If you want to put in new characters without at the same time deleting any old ones, you can put the computer into _insert mode_. To switch from 'overwrite' to 'insert' mode or vice versa, hold down the '**Ctrl**' key and press '**Ins**'. To show when you are in 'insert mode', the cursor changes its appearance (it takes the form of an arrow pointing left).

In insert mode, anything that you type in the middle of a line is fitted in between the characters that were there before – the ones on the right are moved across to make room for it. This will sometimes mean that words will disappear off the right-hand edge of the display. The computer has not forgotten about these words – you can make them reappear by holding down '**Ctrl**' and pressing **Function key 1**, as described in the next chapter. As long as there are characters 'off the edge' of the screen, the symbol '`>`' will be seen at the end of the line.

So another way of changing **234** into **567** is to delete the old number and then select 'insert mode' in order to put in the new one.

## INSERTING LINES

To insert a complete new program line, simply find out the place in the sequence where you want it to come, and type it in with an appropriate number. The number will tell the computer where the line has to fit in – as you saw very early in the manual.

## MOVING THE CURSOR

You know that holding the joystick in one position will make it move the cursor repeatedly in that direction until you release it. And you will have found that when the cursor reaches the top or bottom of the screen, the text will 'scroll' downwards or upwards, to show lines that were previously undisplayed.

If the cursor is moving up or down, pressing '**Shift**' will make it move a page (or screenful) at a lime. This is useful for moving quickly from one part of a long program to another. (Using '**Ctrl**' in place of '**Shift**' will move the cursor by paragraphs – you will see that this is useful for word processing.) Pressing '**Ctrl**' while you are moving the cursor sideways moves it in units of words instead of letters. Pressing '**Shift**' and moving the joystick sideways will move the cursor straight to the end of the line in the direction you want.

The following two tables show you all the different ways of deleting and inserting characters. Positioning the cursor is always done with the joystick.

Experiment with these functions on a program – perhaps you've already got one in the computer. They may appear a little confusing at first, but once you know which keys perform what functions, you will find that word processing (see next chapter) is very easy.


**TABLE 1 – DELETION**

| FUNCTION                                                                                                         | KEY (COMBINATION) | EXCEPTIONS/CONDITIONS                                                                                                                                          |
| ---------------------------------------------------------------------------------------------------------------- | ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Erase character left:** Erase character to the left of the cursor and close up line.                           | ERASE             | Moves cursor 1 space left. If it's already in the leftmost position, the line is joined to the previous one.                                                   |
| **Erase line left:** Erase from start of line up to cursor. Move right part of the line to the left to close up. | SHIFT + ERASE     | Leaves cursor in leftmost character position.                                                                                                                  |
| **Delete character right:** Delete character under cursor. Moves right part of the line to the left to close up. | DEL               | Leaves cursor in same position. It's the characters which move! If cursor is at end of the line, moves next line up to join it,                                |
| **Delete line right:** Delete from cursor to end of line.                                                        | SHIFT + DEL       | Leaves cursor in same position.                                                                                                                                |
| **Erase word left:** Erases leftwards until it has erased the left-most character of a word.                     | CTRL + ERASE      | Starts with character position to the left of the cursor. Only letters or numbers are considered part of the word. Intermediate special characters are erased. |
| **Delete word right:** Deletes rightwards until it has deleted the right-most character of a word.               | CTRL + DEL        | Starts with character position under the cursor, otherwise as above                                                                                            |


**TABLE 2 – INSERTION**
 
| FUNCTION | KEY (COMBINATION) | EXCEPTIONS/CONDITIONS |
| -------- | ----------------- | --------------------- |
|**Insert character:** Move characters, from cursor to end of line, one position right. Put space under cursor.|INS|When in insert mode this is equivalent to pressing space bar, except that the cursor doesn't move.|
|**Insert line:** Move characters from cursor lo end of line down by one line of their own.|SHIFT + INS|If cursor is at the beginning of the line, this creates a blank line.|
|**Toggle insert:** Swop between insert mode and overwrite mode.|CTRL + INS|A different cursor is displayed, depending on whether the computer is in insert or overwrite mode.|
|**INSERT MODE:** Allows you lo move the cursor to any position in program or text and type in characters which are fitted in by moving those after them to the right.|||
|**OVERWRITE MODE:** New characters typed replace those already there. No space is made by moving characters to the right. You literally 'type over' characters which have been typed before.|||