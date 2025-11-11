# WORD PROCESSING

One very valuable thing you can do with your computer is use it as a sophisticated typewriter. You can type in a passage of text – a letter, essay, or whatever – and then print it on a line printer if you have one. The advantage of the computer over an ordinary typewriter is that any mistakes can be corrected much more simply, and that various special functions are provided to help you format your paragraphs and move them around.

## THE WORD PROCESSOR

The Enterprise's built-in word processor can be used whether or not the BASIC cartridge is inserted. If the cartridge is plugged in and you want to switch over from programming to word processing, type the word [TYPE](commands/man_cs-type.md) and press '**Enter**'. The display on the screen will then change; you will see special wording across the top and bottom, indicating the uses of the function keys for word processing purposes.

This is the same display that will appear if you switch on the computer without the cartridge inserted.

Note that the command [TYPE](commands/man_cs-type.md) will erase any BASIC program from the computer's memory. Another way of giving this command is by pressing '**Shift**' with **Function key 8**.

If you have redefined part or all of the character set (see [page 105](man_2-charset.md)), these definitions will be retained when you enter the word processor. To revert to the original characters type `CLEAR FONT` and press '**Enter**' before leaving BASIC.

Now type a few nonsense letters, pressing '**Enter**' when you think you've typed enough. You will then simply see the cursor move to the next line down; there will be no 'error' message to say that you've entered something the computer doesn't understand. When used for word processing, the computer merely behaves like a typewriter with extra facilities – it displays what you have typed, but doesn't try to understand it.

The '**Enter**' key is treated by the word processor as a 'carriage return' – but you only need to press it at the end of a paragraph, not at the end of every line. Remember that the computer uses something called word wrap, which automatically keeps the lines within the required length.

Note that all the text between two carriage returns (the '**Enter**' key) counts as a paragraph. Functions that apply to whole paragraphs (see below) all work on the paragraph which currently contains the cursor.

Alterations to the text on the screen can be made in exactly the same ways that you would alter a program – see the two tables at the end of the last chapter. The special functions that we are now going to examine are designed mainly for use when typing a document, though they will also work if you are entering lines of BASIC.

## SPECIAL FUNCTIONS

To use any of these functions, press the appropriate function key while holding down the '**Ctrl**' or '**Alt**' key.

### 'CTRL' + FUNCTION 1 – RE-FORM

This function will adjust the line lengths of the paragraph that contains the cursor. This is useful if you have inserted or removed several words, and the lines are uneven.

### 'ALT' + FUNCTION 1 – JUSTIFY AND RE-FORM

'Justification' means straightening out the edges of a paragraph so that the beginnings and ends of the lines form a neat vertical column. This is like the text in most newspapers.

### 'CTRL' + FUNCTION 2 – CENTRE

This puts a line or paragraph in the horizontal middle of the 'page'. Useful for titles and headings.

### 'ALT' + FUNCTION 2 – CLEAR ALL TABS

Just like a typewriter, the computer allows you to set tab stops and then press the '**Tab**' key to skip across the line to the pre-set point. Before re-setting a number of tabs, you will probably want to remove all the previous ones with a single key-press.

### 'CTRL' + FUNCTION 3 – TAB SET/CLEAR

Tab is short for 'tabulation'. This means dividing the screen up into several 'columns' across, for formatting purposes. If you wanted to type in a table of information (like the function key table on [page 45](man_1-funcop.md), for instance), you could set as many tabs across the screen as there were columns in your table. The '**Tab**' key can then be used to jump straight from one to the next. This ensures both speed and accuracy in levelling the columns.

Setting a tab is done simply by moving the cursor (using the joystick) to the place where you want the tab to be, and then pressing '**Ctrl**' with **Function key 3**. If there is already a tab in the cursor position, this same command will remove it.

### 'ALT' + FUNCTION 3 – RULER LINE

The 'ruler line' across the top of the screen shows you where the current left and right margins are, and where any tabs have been set (indicated by vertical strokes). This command switches the ruler line on or off.

### 'CTRL' + FUNCTION 4 – LEFT MARGIN

Of course, sometimes you will want to change the positions of your margins. To set the left margin (the position where the lines will begin), move the cursor across the screen to where you want the margin to be, then press this **Function key** with '**Ctrl**'.

### 'ALT' + FUNCTION 4 – RIGHT MARGIN

As above, but for the right margin.

### 'CTRL' + FUNCTION 5 – RELEASE MARGINS

This command allows you to insert words or characters outside the current margin settings. The symbol (`*`) on the status line shows that the command has been given; repeat the same key-press to cancel it.

### 'ALT + FUNCTION 5 – RESET MARGINS

This sets the margins to the furthermost positions on the left and right of the 'page'. It also re-sets the tabs. If you've been typing a narrow column of text in the middle of the screen and then want to move the margins outwards for your next paragraph, press '**Alt**' with **Function key 5**, then '**Enter**'. You can then set the margins wherever you want them.

### 'CTRL' + FUNCTION 6 – MOVE UP

With this command, the paragraph containing the cursor is moved up by one line; the line that was above it reappears beneath it. The key-press can be repeated until the paragraph is in the desired position.

### 'ALT' + FUNCTION 6 – MOVE DOWN

This opposite of the above.

### 'CTRL' + FUNCTION 7 – CHANGE LINE COLOUR

This selects a new pair of colours for the text and background on the line where the cursor is placed. On an **80**-column screen, there is a choice of four colour-pairs; repeated pressing of the key will show all of them in turn. On a **40**-column screen, there are two colour-pairs only.

### 'ALT' + FUNCTION 7 – CHANGE PARAGRAPH COLOUR

As above, but applied to a whole paragraph.


The uses of the function keys on their own (without '**Ctrl**' or '**Alt**') vary according to whether you are programming or word processing. Note that in some cases there are 'failsafe' devices – e.g. to change over to **80**-column text while using the word processor, you press **Function key 5** and then asked to confirm your command by pressing '**Enter**' (or to cancel it with '**Esc**'). This stops you from erasing a document by pressing the function key by accident.

For complete tables of the function key operations, see [page 45](man_1-funcop.md).

## PRINTING OUT TEXT

Now that you've typed your document, you will probably want to print it on paper (if you have a printer) or save it on cassette for later use.

If you want to use the printer, it should, of course, be connected to the computer through the socket at the back of the machine (labelled 'printer'). It must be switched on, and 'on line'. Now press **Function key 3**. A message on the screen will remind you to make sure the printer is set up correctly. Press '**Enter**', and your document will be printed.

## SAVING TEXT ON CASSETTE

Saving text on cassette is very similar to saving a program – see [pages 46-47](man_1-cassette.md) for how to connect the computer to the cassette recorder. Like a program, a document that you want to save must be given a name conforming to the rules given on [page 46](man_1-cassette.md). The only difference is that the document name – the 'filename' – isn't typed between inverted commas. Press **Function key 2**. The computer will then ask you to enter the filename. After typing (for example) `LETTER`, press the '**Record**' and '**Play**' buttons on the cassette recorder, then press '**Enter**'. Your text will be saved under remote control if the appropriate connections have been made.

Similarly, the word processor allows you to load a document much as you would load a program (but you will need to take the plug out of the **REM** socket while rewinding the tape). Simply press **Function key 1**, type `LETTER` – or whatever name the document has been given and press '**Enter**'.

## EXITING FROM THE WORD PROCESSOR

When you've finished using the word processor and want to return to BASIC programming, press **Function key 8**. The computer will then ask you what program you want to switch to; type `BASIC`, and press '**Enter**'. Of course, if a cartridge other than IS-BASIC is plugged in, you will have to type the appropriate name (e.g. `LISP`) instead, in order to use it. Typing `WP` returns you to the word processor while erasing your previous text. If you have pressed **Function key 8** by mistake, pressing '**Esc**' puts you back where you were before.