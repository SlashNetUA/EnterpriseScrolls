# TIME

## Format

`TIME [time]`

## Purpose

Displays or sets the current time.

## Use

If the time is given after the command,  then  the time  is set to this value (for the format see  below). If  the time is not given after the command,  then  the current  time  is printed and the new time is  prompted for and input. If no input is given (ie. if the '**Enter**' key  alone  is pressed) then the current  time  is  not altered.  Otherwise  the  input is assumed to be a  new time,  and  is interpreted as described below.  If  the time  is invalid then an error message is diplayed  and the new time again prompted for and input.

The  format of the time when displayed  is  `HH:MM`, and  [EXOS variable 79](../../programming/system-info/exos-variables/exos_var79.md) determines whether the time is in the  **12**  hour or the **24** hour format  (see  [DATE](cmd-date.md)).  When inputting the time, valid separators are `,`, `-`, `.`, `/`, `:`  or  **space**,  with spaces either side  of  the separator.  Leading  zeros on the time numbers are  not significant.  Any  missing fields will default  to  the current  value.  The time may be input in **12 hour** or **24 hour** format. Although seconds are never displayed, they may also be input.

## Examples

`TIME 16:45`  

`TIME`  
_Current time is 10:45a_  
_Enter new time:_  

`TIME 12:13p`  

----

See also [DATE](cmd-date.md).