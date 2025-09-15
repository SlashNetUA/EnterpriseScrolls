# ERROR MESSAGES

Every so often, you are bound to make the odd mistake in a program. It may be difficult to find where the mistake is – or even what it is.

The computer helps you here by providing messages to tell you as much as possible about what's wrong. If you run a program which contains a BASIC error, the computer will stop when it reaches the point at which it can no longer understand the program, and will display a short statement indicating the cause of the problem.

Remember – the computer can't tell you about other kinds of mistake in the same way. If, for instance, you forget about 'operator priority', or think the result of a calculation would be different from what it really is, this may not stop the program from running all the way through – the program will then simply be doing something other than what you thought it should. The computer can only detect errors in the syntax or organization of your BASIC, or problems caused because an action requested by the program is impossible.

```
*** Not understood.
```

If the program is already running when a problem arises which makes it impossible to continue, the error message will contain the relevant line-number; for example:

```
*** Invalid argument to SQR
300 PRINT SQR(Y)
```

You can now move the cursor up and edit line 300. The functions [EXLINE](man_fn-exline.md), [EXTYPE](man_fn-extype.md), and [EXSTRING$](man_fn-exstring.md) are supplied to help in the handling of errors and other exceptions. Each error has its own number, which can be referenced with [EXTYPE](man_fn-extype.md), and for most of these errors a special message will be printed if it is not suppressed.

If an exception occurs that is not covered by one of the built-in messages, then the general number type is printed, together with the exception number e.g.

```
* Overflow error type 1234
```

The general error types are:

| EXTYPE number | Error types       |
|:-------------:| ----------------- |
|     0–999     | User              |
|   1000–1999   | Overflow          |
|   2000–2999   | Subscript         |
|   3000–3999   | Mathematical      |
|   4000–4999   | Parameter         |
|   5000–5999   | Storage exhausted |
|   6000–6999   | Matrix            |
|   7000–7999   | File use          |
|   8000–8999   | Input-output      |
|   9000–9999   | Exos              |
|  10000–10999  | Control           |
|  11000–11999  | Graphical         |
|  12000–12999  | Real-time         |
|  20000–20999  | Syntax            |
|    30000–     | System            |

The specific messages are:

| Value | Error                                               |
|:-----:| --------------------------------------------------- |
| 1000  | Unexpected value given                              |
| 1001  | Overflow in numeric constant                        |
| 1002  | Overflow in numeric expression                      |
| 1051  | Overflow in string expression                       |
| 1106  | Overflow in string assignment (ie. string too long) |
|       |                                                     |
| 2001  | Array subscript out of bounds                       |
|       |                                                     |
| 3001  | Division by zero                                    |
| 3004  | Invalid argument to LOG                             |
| 3005  | Invalid argument to SQR                             |
| 3007  | Invalid argument to ASIN or ACOS                    |
|       |                                                     |
| 4000  | Error in DEF parameters                             |
| 4002  | Argument to CHR$ out of range                       |
| 4003  | Invalid argument to ORD                             |
| 4004  | Index to SIZE out of range                          |
| 4005  | Argument to TAB out of range                        |
| 4008  | Index to LBOUND out of range                        |
| 4009  | Index to UBOUND out of range                        |
| 4301  | Error in CHAIN parameters                           |
|       |                                                     |
| 5000  | Insufficient memory                                 |
| 5100  | Insufficient stack space                            |
| 5110  | Insufficient extension space                        |
| 5120  | Insufficient ALLOCATE space                         |
|       |                                                     |
| 7001  | Invalid channel no.                                 |
| 7003  | Channel already open                                |
| 7004  | Channel not open                                    |
| 7401  | TRACE channel not open                              |
|       |                                                     |
| 8001  | Out of data in READ/INPUT                           |
| 8101  | Numeric data expected                               |
| 8201  | Invalid USING string                                |
| 8202  | No format item in USING string                      |
| 8203  | USING format item too short                         |
|       |                                                     |
| 9208  | Cassette CRC error                                  |
| 9209  | Editor – load file too big                          |
| 9210  | Editor – keyboard channel error                     |
| 9211  | Editor – keyboard channel error                     |
| 9212  | Editor – video channel error                        |
| 9213  | Network link already exists                         |
| 9214  | Network address not set                             |
| 9215  | Cannot use both serial and network                  |
| 9216  | Invalid beam position                               |
| 9217  | Invalid cursor coordinates                          |
| 9218  | Invalid row number to scroll                        |
| 9219  | Invalid video page file                             |
| 9220  | Invalid display parameters                          |
| 9221  | Invalid video mode                                  |
| 9222  | Invalid video page size                             |
| 9223  | Sound queue full                                    |
| 9224  | Envelope storage full                               |
| 9225  | Envelope too big                                    |
| 9226  | Function key string too long                        |
| 9227  | Protection violation                                |
| 9228  | Unexpected end of file                              |
| 9229  | STOP key pressed                                    |
| 9230  | Invalid escape sequence                             |
| 9231  | Call not supported by this device                   |
| 9232  | Invalid unit number                                 |
| 9233  | Device already in use                               |
| 9234  | Invalid special function call                       |
| 9235  | Invalid date or time value                          |
| 9236  | End of file module                                  |
| 9237  | Invalid relocatable module                          |
| 9238  | Unknown module type                                 |
| 9239  | Invalid Enterprise file header                      |
| 9240  | Unrecognised command string                         |
| 9241  | Invalid device descriptor                           |
| 9242  | Unknown EXOS variable number                        |
| 9243  | Invalid user boundary                               |
| 9244  | Cannot free segment                                 |
| 9245  | No free segment                                     |
| 9246  | Insufficient video memory                           |
| 9247  | Insufficient memory                                 |
| 9248  | Channel open error                                  |
| 9249  | Channel already exists                              |
| 9250  | Device does not exist                               |
| 9251  | Channel does not exist                              |
| 9252  | EXOS stack overflow                                 |
| 9253  | Invalid EXOS string                                 |
| 9254  | EXOS function call not allowed                      |
| 9255  | Invalid EXOS function code                          |
|       |                                                     |
| 10002 | Return without GOSUB                                |
| 10004 | No CASE selected                                    |
| 10005 | Program does not exist                              |
|       |                                                     |
| 20000 | Not understood                                      |
| 20001 | Invalid line number                                 |
| 20002 | Invalid line number range                           |
| 20004 | Line number does not exist                          |
| 20010 | Cannot do specified RENUMBER                        |
| 20020 | Continue not possible                               |
| 20030 | Identifier expected                                 |
| 20031 | String identifier expected                          |
| 20032 | Array identifier expected                           |
| 20034 | Type mismatch                                       |
| 20040 | Variable not initialised                            |
| 20041 | Identifier declared twice                           |
| 20042 | Identifier too long                                 |
| 20043 | Missing closing quotes                              |
| 20050 | Missing end of block                                |
| 20051 | Invalid end of block                                |
| 20052 | Too many nested blocks                              |
| 20060 | Invalid machine option use                          |
| 20071 | Statement in immediate mode                         |
| 20072 | Command in program                                  |
| 20073 | Statement not allowed after THEN                    |
| 20074 | Invalid multi-statement line                        |
| 20075 | Line too long                                       |
| 20080 | Invalid file format                                 |
| 20081 | Programs do not VERIFY                              |
|       |                                                     |
| 30000 | BASIC data has been corrupted                       |

Error messages can be trapped, if desired, by using [WHEN EXCEPTION](man_cs-when.md) and a handler block (page 134). An exception handler can be used to trap any error, even those such as a memory overflow or a syntax error (a keyword mis-spelled, for example). This must be handled with care, as a [RETRY](man_cs-retry.md) to a permanent error will cause the program to loop indefinitely.

Errors like a division by zero, or a negative [SQR](man_fn-sqr.md) argument, can be caught without crashing the program.

----

> [!NOTE]
> message "Statement not allowed after THEN" not only after lines with THEN but sometimes when the line was too long. Sometimes it stands for "Identifier too long". It must be an IS-BASIC bug.