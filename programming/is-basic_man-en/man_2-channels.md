# CHANNELS
In order to give more flexibility in the use of the computer and the 'devices' attached to it, the Enterprise makes use of a concept called channels.

A channel is a special pathway which is opened between two parts of the computer. Once the pathway is open, communication can take place between the two parts of the computer simply by specifying the channel number – preceded in instructions by the symbol '**£**' (or '**#**' in some character sets).

The BASIC in the Enterprise tries not to make too many assumptions about how you will use the computer. After all, the power of the computer comes from its flexibility in acting according to your wishes. For this reason, all 'input-output' instructions allow you to specify channels if you wish.

However, because you do not want to be bothered with unnecessary commands, the Enterprise uses 'default' channels whenever it can. Normally when you [PRINT](man_cs-print.md), for example, you want the words or numbers to appear on the TV screen. So `PRINT "Hello"` puts the message on the display.

If, on the other hand, you wished to make the message appear on the printer instead (and you had one attached), you could give the command `PRINT £104:"Hello"`.

When the computer is turned on, it automatically connects channel **104** to the printer socket. So any message sent to channel **104** goes on to the printer.

You can also refer to channel numbers by using variable names, so the program itself can choose where to send a message.
```
120 INPUT PROMPT "Please enter a message: ":A$
130 PRINT
140 PRINT "Where would you like the message repeated?"
150 DO
160   INPUT PROMPT "Please enter 0 for screen or 104 for printer: ":CHANNEL
170 LOOP UNTIL CHANNEL=0 OR CHANNEL=104
190 PRINT £CHANNEL:   !   Blank line to screen or printer
200 PRINT £CHANNEL:A$ !   Message sent to screen or printer
220 END
```
This program will, of course, only work if you have a printer connected and turned on. But you can try out the same experiment with channel **101** instead of channel **104** – this will connect you with the usual graphics screen instead. Include the command [GRAPHICS](man_cs-graphics.md) in the program to see what is happening.

A point to remember when using channels is that all input-output works this way – including such things as the sound generator and connection with the tape recorders. If you are careless in your use of channel numbers then strange things could happen to your computer! These are not likely to cause any permanent harm, but you might have to start your program again or reset the computer.

For more details on channels, refer to the chapter on commands in the Reference Section, particularly under the heading [OPEN](man_cs-open.md).