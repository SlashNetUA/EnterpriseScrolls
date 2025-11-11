# THE NET

The Enterprise is able to communicate with other computers using a simple wire connection. The other computers, of course, have to have the same facility (known as the **Intelligent Net**) if they are going to manage their end of the conversation, but linking up with other Enterprises is no problem.

The advantage of a net is that many computers can be joined up together, but when one computer wants to talk to another the remaining computers stay out of the conversation – just like a telephone system.

Your computer does not have a pre-set number in the same way as a telephone does; when you connect up to the net you must select a number for it, by typing for example:
```
SET NET NUMBER 5
```
The net number can be anything from **1** to **32**. You can use [ASK NET NUMBER](options/man_mo-net-number.md) to remind yourself of the number you have selected.

## TRANSFERING PROGRAMS

Once your computer has been given a net 'address' number, it is a simple matter to transfer programs between machines.

On the computer which will be receiving the program, type `LOAD "NET-0:"`. This will allow you to accept a program sent from any other computer on the net.

Alternatively, if you only want to receive a program sent from one specific computer, type `LOAD "NET-n:"`( where '**n**' is the net number of the other computer. For example:
```
LOAD "NET-17:"
```
will attempt to load a program from the computer with net number **17**.

Of course, instructions will have to be given on the other computer to send the program. Computer number **17** would have to be given the instruction
```
SAVE "NET-5:"
```
This would send the current program on computer **17** to computer **5**.

## BROADCASTING

Net number **0** is a special case. This number cannot be given to any computer, but is used for general net operations.

For transmitting onto the net, number **0** is used to signify 'broadcast' messages. These are messages which are not directed at any particular computer, but which are broadcast (like a radio signal) to any computer which is turned on and listening.

This facility is very useful if you have a short message for all other computers, or if you do not know the numbers of other computers on the net.

One problem with broadcast transmissions is that they are not a very reliable means of communication. With a directed signal, sent to a particular computer, the message is re-transmitted until the receiving computer acknowledges that the message has arrived safely. With broadcast signals, this is not possible. It is also not possible to automatically slow down the speed of transmission to a rate which matches the ability of the receiving computer to deal with the information.

So, the instruction
```
SAVE "NET-0:"
```
will send a program for all computers to hear, but there is a strong possibility that the program will not be received correctly. Also the sending computer will not know whether or not the transfer has been successful.

## OPEN TO ALL MESSAGES

Net number **0** can also be used for indiscriminate receipt of messages on the net. When a computer channel (see page 132, and [OPEN](commands/man_cs-open.md) command in Reference section) is opened to `"NET-0:"`, this then becomes a 'general' channel for net operations.

Messages which are broadcast from any other computer on the net will be received if a general channel is open. Also a message which has been directed specifically at your computer will be received by you, even if you had not prepared yourself for this message by opening a special channel for communicating with the other machine.

This does not mean that you will receive messages which are private between two other machines on the net. In a directed message between two computers, no other computer can listen in.

Note that if you have a special channel open to another machine, you will receive messages via this channel (not via the general channel) even if they are broadcast.

## COMMUNICATION CHANNELS

For detailed use of the net, a channel is opened specifically for communication with one machine. This is done using the normal conventions for opening channels.
```
OPEN £110:"NET-17:"
```
will open channel number **110** for two-way communication with computer number **17**.

This channel can thereafter be used with normal input/output instructions, eg
```
PRINT £110:"This is message for computer 17"
LINE INPUT £110:A$	! A$ will receive line from computer 17
```
Because the messages sent between computers on the net are buffered (held in memory before transmission, or after receipt) it is often necessary to make use of a couple of special instructions.

`FLUSH £chan` will force the transmission of any data waiting in a buffer to be sent. Messages will not normally be sent until they are **256** characters long, or the channel is closed, so the [FLUSH](commands/man_cs-flush.md) command should be used whenever a short message is to be transmitted immediately.

`CLEAR £chan:NET` will clear the input and output buffers. The computer will not accept any message from another computer on one particular channel until its receiving buffer is clear. This is to prevent corruption of data before it has been used by the receiving computer.

If there is data not yet removed from the receiving buffer (by [INPUT](commands/man_cs-input.md) instruction, for example), and this data can be discarded, then the [CLEAR](commands/man_cs-clear.md) instruction should be used. If there is data not yet sent, use [FLUSH](commands/man_cs-flush.md) before [CLEAR](commands/man_cs-clear.md).
```
PRINT £110:"Message for computer 17"
FLUSH £110
CLEAR £110:NET
LINE INPUT £110:A$
```
In selection of channel numbers for the net operations, it is advisable to use a channel number over **100** (but avoiding default channels, see [OPEN](commands/man_cs-open.md)). This is because BASIC will close all channels **1**-**99** when it clears variables, which is likely to occur often when in immediate mode.

## BACKGROUND NET HANDLING

The most interesting use of the net occurs when a program is written so that net communication can effectively work as a background task during the main operation of a program.

The operating system of the Enterprise uses a method known as 'interrupts' when controlling the net. This means that computers can be talking to each other in their own time, in a way which is invisible to the users of the computers.

BASIC provides a method of dealing with this operation, through exception handlers. Exceptions are errors, or other events, which interrupt the normal course of a program (see [Exception Handling](man_2-exceptions.md) chapter).

When a BASIC program is running, and interrupts from the net have been enabled with the instruction `SET INTERRUPT NET ON`, then the receipt of a message on a net channel will cause an exception.

An exception handler designed to deal with net operations should always give the instruction `SET INTERRUPT NET OFF` as the first line in the handler block. This will prevent the computer from becoming confused by receiving a new interrupt while it is within the exception handler.

Once in the exception handler, the net input buffers are 'polled' (checked in turn) by the [ASK NET CHANNEL](options/man_mo-net-chan.md) instruction. At any one time, several channels may be holding messages (more messages may come in during the time the handler is in progress). Following the transfer of data from a channel, the [ASK NET CHANNEL](options/man_mo-net-chan.md) instruction should be used again until it returns the value **255** – signifying that there are no more messages awaiting collection.

`SET INTERRUPT NET ON` should be the last instruction line before exiting the handler.

Note that exception handlers are triggered by 'software interrupts'. These do not occur in the immediate mode of BASIC, and so a foreground program must be running in BASIC in order to use the exception handler technique for net operations.
