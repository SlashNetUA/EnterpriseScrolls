# SOUND 'N' RHYTHM

Sound effects are a valuable asset to most programs, especially games. 'Serious' programs can use noises as signals. Games are much more absorbing for the addition of a few timely and appropriate sounds.

The Enterprise offers you the possibility of listening to the sounds in stereo – on headphones or through your hi-fi. If you want to do this, and you don't like the built-in mono loudspeaker to be heard at the same time, you can silence it by typing `SET SPEAKER OFF` or pressing 'shift' with function key 7.

Control of the sounds is provided by two BASIC keywords. These are [SOUND](man_cs-sound.md) and [ENVELOPE](man_cs-envelope.md). A [SOUND](man_cs-sound.md) statement gives the computer general information about how long a sound is to last, what pitch it will begin from, what its maximum volume will be, and certain other points. An [ENVELOPE](man_cs-envelope.md) statement is a set of instructions specifying in detail the variations of pitch and volume that the sound will undergo during the time it is being played.

## THE SOUND STATEMENT

The following is an example of a [SOUND](man_cs-sound.md) statement:
```
100 SOUND PITCH 40,LEFT 127,RIGHT 191,DURATION 200,ENVELOPE 10
```
Let's consider one by one the various items (divided from each other by commas) that the program line specifies.

First, the number after **PITCH** states how high the note will be when it begins to be played. This number can, in theory, be anything from **0** (which actually would make the sound almost inaudibly low) to **127**. The range in which good results are normally obtained goes up as far as about **83**. Within this range, each increase of **1** will raise the sound by one semitone. Pitch value **37** is equivalent to '**middle C**'. If no pitch value is stated, **37** is used as the 'default'.

The next item in the series determines the volume of sound that will be sent to the left speaker. The number after **LEFT** must be in the range **0**-**255**. If `LEFT 0` is specified, the speaker is silenced. `LEFT 255` (which is the 'default' value) permits the sound to rise to the loudest volume that the machine can produce – subject to the further instructions contained in an 'envelope'. In the above example, `LEFT 127` means that the sound sent to the left speaker will never rise above half-volume, whatever the envelope may stipulate.

**RIGHT** similarly gives the maximum volume for the right speaker. In our example, this speaker is set at three-quarters volume.

The number after **DURATION** measures the length of the sound, in 'ticks' – one tick is one-fiftieth of a second, so in this case the sound will last for **4** seconds. (The default is **50** ticks.)

**ENVELOPE** refers to the number of the [ENVELOPE](man_cs-envelope.md) statement which is to be used in conjunction with this [SOUND](man_cs-sound.md) statement. There is one built-in envelope, numbered **255**, which is used by default; valid numbers for your own envelopes are in the range **0**-**254**.

Note that all these items following the keyword may be arranged in any order. There are some more things that can be added to the list; we'll come to them later. Since in all cases there are 'default' values, the word [SOUND](man_cs-sound.md) will, of course, produce an effect if used just by itself.

## ENVELOPES

This is an example of an envelope;
```
90 ENVELOPE NUMBER 10;2,8,63,50;0,24,-16,100;-5,47,-39,50
```
Once again, the keyword is followed by a fairly long list of data.

To begin with, `NUMBER 10` identifies the envelope so that [SOUND](man_cs-sound.md) statements can refer to it (see above).

Then comes a semicolon, followed by a batch of four numbers (separated from each other by commas). These numbers define the changes that the volume and pitch will undergo during the first 'phase' – the first portion of the time which has been allotted for the sound (in this case, the phase lasts one second).

The first number in the batch signifies that during this period the pitch will rise by **2** semitones from its starting value as given by the [SOUND](man_cs-sound.md) statement. Instead, **-1.5** would lower the pitch by three quarter-tones; **0** would give a constant pitch; etc.

The next number (**8**) specifies the change in volume, for the left speaker. In an [ENVELOPE](man_cs-envelope.md) statement, a unit of volume is equal to one sixty-fourth of the maximum permitted for the speaker – i.e. one sixty-fourth of the volume laid down in the [SOUND](man_cs-sound.md) statement. The number **63** will always raise the volume to the maximum, while **-63** will reduce it to silence (any overshoot is ignored).

At the very beginning of its duration, the sound has of course no volume at all. So, in our example, the volume of sound sent to the left speaker will rise, during the first phase of the envelope, from zero to one-eighth of the maximum.

The third number in the batch (**47**) has a similar purpose to the second, only it applies to the right speaker.

The [SOUND](man_cs-sound.md) and [ENVELOPE](man_cs-envelope.md) statements work together, then, to produce two values for the volume-level at any particular moment – one value for the left and one for the right speaker. Note that if you aren't using stereo equipment, the volume at any time will be decided simply by adding together the two separate values.

The fourth number in the batch (**50**) specifies how much time this first phase of the envelope will take. Here again, time is measured in 'ticks'; fifty ticks are equal to one second.

Then we come to another set of four numbers, following another semicolon; these work in the same way as the first batch, except that they define what will happen in the second phase of the envelope.

Then four further numbers (again with a semicolon in front of them) define the third phase.

If you type in and run the two program lines we've been looking at, they will combine to produce a sound that can be represented by this pair of graphs:

![volume](IS-BASIC_ProgrGuide(Volume).png)
![pitch](IS-BASIC_ProgrGuide(Pitch).png)

Sounds can be much more complex than this, of course. We shall later see how an envelope can be defined with any number of phases up to **255**.

Remember that all instructions contained in an envelope are relative – their results depend on the volume range and initial pitch that the [SOUND](man_cs-sound.md) statement specifies. The same envelope may therefore be used with a number of different [SOUND](man_cs-sound.md) statements.

Remember also that the envelope must be defined on a program line that is executed before any sound statement referring to it.

## SOUND QUEUES

Playing a sound doesn't hold up any other activity that the computer has been told to perform. In the following program, print and graphics commands are carried out with sounds as an accompaniment:
```
100 ENVELOPE NUMBER 20;-2,63,63,100;-3,0,0,100;3,-36,-36,100;2,-12,-12,100;0,0,0,100
110 SOUND PITCH 61,LEFT 255,RIGHT 0,DURATION 500,ENVELOPE 20
120 CLEAR SCREEN
130 PRINT AT 10,5:"A graph will presently be drawn"
140 PRINT AT 11,5:"to represent the envelope that"
150 PRINT AT 12,5:"these sounds are using. Volume"
160 PRINT AT 13,5:"will be indicated by the blue"
170 PRINT AT 14,5:"area, pitch by the yellow line."
180 SOUND PITCH 43,LEFT 127,RIGHT 127,DURATION 200,ENVELOPE 20
190 !	-------------------------------------
200 !	The sound in line 180 will stop after
210 !	the first two phases of the envelope.
220 !	-------------------------------------
230 FOR X=1 TO 2000
240 NEXT X
250 SOUND PITCH 25,LEFT 0,RIGHT 255,DURATION 500,ENVELOPE 20
260 GRAPHICS
270 PLOT 0,0;250,540;500,540;750,270;1000,180;1250,180;1250,0;0,0
280 PLOT 100,20,
290 PLOT PAINT
300 SET INK 3
310 PLOT 0,450;250,350;500,100;750,350;1000,450;1250,450
320 END
```
At line **110**, the computer registers your instructions and starts to play the sound; but it doesn't wait for this sound to finish before going on to the next program line. The sound from line **110** carries on while the computer is printing its message on the screen (lines **130**-**170**). At line **180**, a further [SOUND](man_cs-sound.md) statement occurs. What happens now is that the computer will register this statement and will aim to play the new sound as soon as the old one finishes – in other words, the sound specified in line **120** is placed in a 'queue' behind the sound from line **110**. Similarly, at line **250**, the third sound is put at the back of the queue behind the second one. The graph (lines **260**-**310**) is now drawn while one sound follows on after another.

## RELEASE

The Enterprise allows one or more phases at the end of a sound envelope to be treated a little differently from the rest. These phases are preceded by the word **RELEASE**. Conventionally, the 'release' stage of an envelope means a period when the sound is allowed to tail off – when it has effectively finished and only its residual effects are wanted.

Take this example:
```
100 ENVELOPE NUMBER 4;.1,63,40,5;-.3,-32,-20,20;2,0,0,25;RELEASE;0,-16,-10,10;0,-15,-10,15;
```
Here, the three phases before the **RELEASE** stage take a total of one second, while the two **RELEASE** phases take half a second.

The difference between the **non-RELEASE** and **RELEASE** phases is this: if the 'duration' specified in the [SOUND](man_cs-sound.md) statement runs out before the **non-RELEASE** phases have finished, they are cut short; but the **RELEASE** phases are carried out even when the 'duration' is over, provided that no other sound is waiting in the queue.

So if `DURATION 25` is specified in a [SOUND](man_cs-sound.md) statement that uses the above envelope, the third phase will not be carried out; the computer will jump straight from the second phase to the **RELEASE** phases – or to the next sound in the queue, if there is one.

In the case of `DURATION 60`, on the other hand, the computer will execute the three **non-RELEASE** phases and the first **RELEASE** phase – and will then go on to the next sound if there is one waiting.

In the case of `DURATION 100`, all phases will be carried out, and there will be a pause of half a second before the next sound begins.

## INTERRUPT

You have now learnt the essentials of controlling the sounds, but you still have several interesting features to explore. For example, you can make one sound interrupt another. Go back to the program that drew a graph with sound effects in the background. Remove lines **130**-**170**, **230**-**240** and **260**-**310**, and insert instead:
```
260 ENVELOPE NUMBER 30;0,63,63,1;0,0,0,24
270 PRINT "Press i when you want to interrupt this sound."
280 DO
290 LOOP UNTIL INKEY$="i"
300 SOUND PITCH 37,LEFT 255,RIGHT 255,DURATION 25,ENVELOPE 30,INTERRUPT
```
The inclusion of **INTERRUPT** in line **300** means that when this line is reached, the sound that is being played will be cut short by the new one – and anything waiting in the queue will be disregarded.

## SOUND SOURCES

It is possible to play more than one sound at once. The Enterprise incorporates four sound sources, each of which can have its own independent 'queue' of sounds.

To put a sound into the queue for (say) tone generator **2**, all you do is include `SOURCE 2` in your [SOUND](man_cs-sound.md) statement. The tone generators are numbered **0**-**3**. Number **3** is the so-called 'noise generator' (which ignores pitch values). So far, you have only been using tone generator **0**, which is the 'default' source.

When playing various sounds together, you will naturally want to ensure accurate synchronization between the different sound sources. By putting the instruction **SYNC** into a [SOUND](man_cs-sound.md) statement, you can make one sound begin at precisely the same moment as another – or two or three others, depending on the number inserted after **SYNC**.

Type in a number of [SOUND](man_cs-sound.md) statements, sharing them between `SOURCE 0`,`SOURCE 1` and `SOURCE 2` – i.e. make three separate 'queues'. To the first program line in each queue, add the instruction `SYNC 2`, so that it will look something like this:
```
120 SOUND PITCH 40,LEFT 255,RIGHT 127,DURATION 200,ENVELOPE 6,SOURCE 1,SYNC 2
```
When the lines are run (assuming that you have entered suitable envelopes too), all three sound queues will start up at the same moment.

To be precise, the instruction `SYNC 2` says: 'When this sound comes to the head of its queue, hold it up until two more new sounds in other queues are ready to begin.' This means that when one other sound is ready, it too will automatically be held up – until a new sound comes to the front of the third queue, when all three queues will start moving together.

The command [CLEAR QUEUE](man_cs-clear.md), followed by the number of a tone generator, will silence any sound currently coming from this source and clear away anything waiting in the queue. Note that a [SOUND](man_cs-sound.md) statement with an **INTERRUPT** instruction will not break off any sounds that are coming from other 'sources'.

## MORE COMPLEX SOUNDS

Unless instructed otherwise, the computer assumes that all your sound envelopes will contain between **1** and **20** 'phases'. However, if (for example) you want to define envelopes with up to **25** phases, you can type:
```
100 CLOSE £103
110 SET SOUND BUFFER 25
120 OPEN £103:"SOUND:"
```
– and the computer will make available the extra memory space for the purpose. The above lines close and re-open a 'channel'; for an explanation of how channels work, see the separate chapter on the topic, and also the Reference Section (under the keyword [OPEN](man_cs-open.md)). Channel **103** is the normal 'default' channel for sound output.

The number of phases specified by the [SET SOUND BUFFER](man_so-sound-buffer.md) command can be anything from **1** to **255**, although in practice the complexity of an envelope is limited by the maximum length of a BASIC program line (**250** characters). [SET SOUND BUFFER](man_so-sound-buffer.md) only affects a channel which is opened subsequently, not one that is open already – which is the reason for lines **100** and **120** above.

Lastly, a [SOUND](man_cs-sound.md) statement may contain the word **STYLE** followed by a number in the range **0**-**255**. Experimenting with the effects of different sound styles is particularly interesting when you are using the 'noise' generator (sound source **3**). For this, see the Reference Section under the heading '[Sound Options](man_3-souoptions.md)'.