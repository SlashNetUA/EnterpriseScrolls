# HANDLING PROGRAMS ON CASSETTE

In the **Setting-Up Guide**, you learnt how to control a cassette recorder simply to load a program into the computer's memory. However, you can also use a cassette recorder to store your own programs.

Perhaps you want to save a program which was copied from an earlier part of this section of the manual – possibly you will have made some of your own additions to it, so we'll assume you already have a program in the computer's memory when you begin reading this.

First, make sure the computer and cassette recorder are connected up correctly. The socket at the back of the machine, marked **OUT**, is the one through which programs are put onto cassette. Plug one of the larger cassette lead plugs into this socket.

Then plug the opposite end of the lead into the socket marked **MIC** (or something similar) on the tape recorder.

Now plug one of the small plugs into the socket marked **REM2**, and the opposite end of this plug into the small remote socket on the recorder (probably marked **REM**) – if your recorder has one.

_It does not matter whether the computer is on or off when you do this!_

Next, you have to give your program a name. For the purposes of clarity we'll assume you're calling it 'myprog'. The name can be up to twenty-eight characters long, and may contain letters, numbers and the following punctuation marks: `.`, `-`, `_`, ` ` and `/`. You could call the program '**My-program-number-1**' if you wanted to. Type:

```
SAVE "myprog"
```

Press the '**Record**' and '**Play**' buttons, then press '**Enter**'. You should see the message

```
SAVING myprog
```

– and then:

```
OK
■
```

when it's finished saving it. Because the remote socket is connected, the Enterprise will automatically stop and start the tape at the right moments, as long as your recorder has a remote control facility.

While the program is being saved on to tape, the sound of this operation will be quietly echoed on the computer's built-in speaker; you will probably find this is a useful indication that the saving is working properly.

## MAKING SURE

Of course, you may want to check that your program has been saved onto the tape properly. This is done using the command [VERIFY](commands/man_cs-verify.md).

First wind the tape back to where it was when you began saving the program. (If the remote control facility is being used, the computer will probably be disabling the rewind on the recorder. If this is so, type [TOGGLE REM2](functions/man_fn-rem.md) or press the '**Shift**' key in conjunction with **Function key 4**.) Then type:

```
VERIFY "myprog"
```

and start the tape and press '**Enter**'. Again, the Enterprise will control the tape recorder.

If the program has been saved without error, the computer will respond with the message:

```
OK
■
```

will appear. Otherwise, you will see an error message. In this event, you should make sure you have made the right connections, check that the volume control is set at the correct recording level – and go through the saving process again.

## MIXING PROGRAMS TOGETHER

If you already have a program in the computer and you want to add another one to it from tape, you can do this with the command [MERGE](commands/man_cs-merge.md).

[MERGE](commands/man_cs-merge.md) could come in handy if you were in the middle of writing a long program and had saved it as a series of subprograms (or smaller programs which make up part of a bigger one). If you wanted to put the whole program together from all the separate parts you'd saved on tape, you could do this using [MERGE](commands/man_cs-merge.md).

If you want to fit all the lines from both programs into the computer, you will have to make sure all the line numbers are different. This is why:

Imagine you have one small program in memory. Its line numbers are **100**, **110**, **140** and **160**.

Now imagine you want to merge in another small program from tape. Its line numbers are **140**, **160**, **180** and **200**.

If you tried to [MERGE](commands/man_cs-merge.md) these two programs without [RENUMBER](commands/man_cs-renumber.md)ing the one in memory, lines **140** and **160** of the tape program would replace **140** and **160** in memory. So you would effectively lose two lines from your original program.

So when you merge two programs together, the lines from each program are 'dovetailed' together to make a bigger program.

Here's how to merge in a program from tape.

The method with the tape recorder is exactly the same as for loading ([MERGE](commands/man_cs-merge.md)ing is the same as loading, except that loading a program replaces anything else in memory at the time – it 'throws away' the current program and substitutes the new one). _If you are unsure of how to load a program, look at page 11 of the **Setting-Up Guide**_.

So make sure your tape is at the beginning of the program you wish to MERGE, and that you are sure all the line numbers are right. Then type

```
MERGE "newprog"
```

('newprog' is the program's name – the name under which it was originally [SAVE](commands/man_cs-save.md)d).

Start the tape and press '**Enter**'. The programs will then be joined together. Try it!

## FILES

Programs stored on tape can also be known as _files_. This also applies to the other program storage medium, disks. A 'file' can also be a collection of information for use by a computer. This is called a _data file_.

## DISKS

If disks are attached to the computer, all the tape commands can be used, but the disks will automatically be used instead. All the operations of saving, loading etc. will then take place much faster.