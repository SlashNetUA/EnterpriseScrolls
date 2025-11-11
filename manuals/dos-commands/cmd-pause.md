# PAUSE

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions  

## Format

`PAUSE [text]`

## Purpose

Prints text and prompts for a keypress in a batch file.

## Use

The text is printed to the screen (or normal EXDOS CLI output channel).  If no text is printed then just a blank line is output.

The  prompt "**Press ENTER to continue...**" is then printed, and a line is input. The joystick may be used for scrolling the screen back and forth at this point before **Enter** is pressed.

## Examples

`PAUSE Insert next disk in drive B:`  
_Insert next disk in drive B:_  
_Press ENTER to continue..._

