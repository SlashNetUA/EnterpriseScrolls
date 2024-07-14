# DISPLAY

`DISPLAY £chan:AT a FROM b TO c`

Defines a window to display a segment of a text or graphics video page. Screen-row 'a' is the position where the top line of the segment will be placed. Parameters 'b' and 'c' are character-rows on the page which is to be displayed, and define the top and bottom lines of the segment. The numbering of character-rows follows the conventions for text, whether the page displayed is text or graphics. See [PRINT](man_cs-print.md).

# DISPLAY GRAPHICS

Sets up 20 lines as graphics, and displays previous graphics page if one was open (£101). Does not clear text page.

# DISPLAY TEXT

Sets up full screen in text mode and displays full page of text if it was previously open (£102). Does not clear graphics screen.

If only a small text page was previously open, then this is cleared, and a new full-size text page is opened.
