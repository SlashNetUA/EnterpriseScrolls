# DATE

## Format

`DATE [date]`

## Purpose

Displays or sets the current date.

## Use

If  the date is given after the command,  then the date  is set to this value (for the format see  below). If  the date is not given after the command,  then  the current  date is printed and the new date  is  prompted for and input. If no input is given (ie. if the **Enter** key  alone  is  pressed) then the current date  is  not altered.  Otherwise  the input is assumed to be  a  new date,  and  is interpreted as described below.  If  the date  is invalid then an error message is displayed and the new date again prompted for and input.

The  format  of  the  date  is  flexible,  and  is specified by EXOS [variable 79](../../../programming/system-info/exos-variables/exos_var79.md), as described below. This allows  the  date  to be input in the form  of  the  **UK** format (`DD-MM-YY`),  the **American** format (`MM-DD-YY`), the **International**  format  (`YY-MM-DD`) or indeed  any  other  format. When inputting, the separators may be `,`, `-`, `.`,  `/`, `:` or **Space**, with spaces either side of the separator.  Leading  zeros on the date numbers are  not significant.  Any  missing fields will default  to  the current value.

The following table gives the numbers required for all the common date and time formats. The number listed in  the  table should be used in a command of the  form `VAR 79,<n>` where **n** is the number from the table.

| Date / Time format    | 12 hour | 24 hour |
| --------------------- |:-------:|:-------:|
| UK (`DD-MM-YY`)       |   27    |   155   |
| American (`MM-DD-YY`) |   39    |   167   |
| ISO (`YY-MM-DD`)      |   57    |   185   |

## Examples

`DATE 12-7-85`  

`DATE`  
_Current date is 12-7-85_  
_Enter new date: 12-8_

`VAR 79, 57`  
`DATE 85/2/1`  

----

See also [TIME](cmd-time.md).