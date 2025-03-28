# GRAPHICS

The Enterprise's powerful graphics can be used to provide some impressive pictures and visual effects. You may already have realized this from using the demonstration cassette, and some of the programs provided in the earlier parts of the manual show a glimpse of the possibilities of high-resolution graphics.

In the first part of the manual, `PRINT AT` was explained to you. This command made use of a system which divided the screen up into a number of 'positions', or imaginary squares, so that you could specify where you wanted something to be printed. `PRINT AT 1,1` would put a string (or a number) in the top left-hand corner of the display.

The graphics commands use a similar system to put lines and dots on the screen and enable you to make diagrams and pictures. In this case, though, the 'screen positions' are much smaller. Here's a short program which will draw a line.
```
100 GRAPHICS
110 PLOT 640,360;1000,700
120 END
```
You will have come across the first statement in earlier examples. The word [GRAPHICS](man_cs-graphics.md) is a quick and simple way of selecting a blank 'page' on which you can make pictures.

The command [PLOT](man_cs-plot.md) is used for making dots or drawing lines. The four numbers that follow [PLOT](man_cs-plot.md) in line **110** correspond to two positions on the graphic page; this program draws a line from the centre of the screen (**640**,**360**) to a position (**1000**,**700**) in the direction of the top right-hand corner.

Notice how much larger these 'co-ordinate' numbers are than the row and column numbers used with `PRINT AT`. This doesn't mean that they are referring to a bigger area; the point is simply that the 'graphic page' is divided into a much larger number of very small positions, allowing you to place things far more precisely than you could on a 'text' page. That is, the resolution when you are dealing with graphics is much higher.

A further difference between 'graphics' and 'text' is that, on the graphic page, the 'origin' (the position 0,0) is in the bottom left-hand comer, and the first number given in a co-ordinate pair is the horizontal position. This follows the (x,y) conventions normally used for graph drawing.

You will have noticed, when you ran the program, that four lines from the normal text page were left at the bottom of the display. This allows you to continue typing into the computer while keeping the drawing visible.
This split between a standard graphics page and four lines from the text page is provided to keep operation easy, and always results when you give the simple command [GRAPHICS](man_cs-graphics.md). It leaves you with an area of screen for plotting that measures **1280** positions horizontally by **720** vertically, so that the co-ordinates of the top right-hand corner position are (**1279**,**719**).

The two parts of the display can be cleared separately by the commands [CLEAR GRAPHICS](man_cs-clear.md) and [CLEAR TEXT](man_cs-clear.md), or both together by [CLEAR SCREEN](man_cs-clear.md).

If you type [DISPLAY TEXT](man_cs-display.md), the screen will revert to a full-size text 'page'. Similarly, [DISPLAY GRAPHICS](man_cs-display.md) switches back to the graphics page without altering anything that was on it before. Notice the difference between these commands and the simple words [TEXT](man_cs-text.md) and [GRAPHICS](man_cs-graphics.md) — which have the effect of clearing the text and graphics pages.

When you learn about 'channels' and the more sophisticated features of the graphics, you will be free to specify the size of your 'pages' and display them in any part of the screen you choose.

## DOTS OR LINES

Try changing the [PLOT](man_cs-plot.md) statement in the program so that it simply reads:
```
110 PLOT 100,100
```
— and run the program again. A dot appears on the screen.

Now add a semicolon after `100,100`. Then add:
```
115 PLOT 1000,700
```
— and run the program once more, it draws a line again. Then remove the semicolon from line **110**. Run the program. Two dots appear. Why?

The answer is that the semicolon controls whether the video 'beam' is left on. When the beam is 'on', it leaves a visible line as it plots between two points. To keep it on, the semicolon is necessary after a [PLOT](man_cs-plot.md) statement.

You can think of the beam as a drawing pen. A [PLOT](man_cs-plot.md) command, with co-ordinates, will put the pen on the paper and plot a dot at least. To draw a line between two screen positions, type the two pairs of coordinate numbers and separate them with a semicolon. This changes the command to read: '[PLOT](man_cs-plot.md) a dot at position (**100**, **100**) and then keep the pen on the paper, moving in a straight line to (**1000**,**700**)'. If you left out the semicolon, our imaginary pen would still move, but it wouldn't touch the paper.

You can also use the commands [SET BEAM ON](man_vo-beam.md) and [SET BEAM OFF](man_vo-beam.md) to put the 'pen' on the paper or lift it up.

Here's a measles program:
```
100 RANDOMIZE
110 INPUT PROMPT "How many measles? ": B
120 GRAPHICS
130 LET Z=0
140 DO
150   LET X=RND(1279)
160   LET Y=RND(719)
170   PLOT X,Y
180   LET Z=Z+1
190 LOOP UNTIL Z=B
200 END
```
That program will plot dots in random positions on the screen. By changing **170** to:
```
170 PLOT X,Y;
```
– you could change the measles to lines.

Any of the graphics commands can, of course, be included in the definition of a function. The following example shows, incidentally, that you can put several screen positions in one [PLOT](man_cs-plot.md) command and draw lines between them all:
```
100 DEF DIAGRAM
110   GRAPHICS
120   PLOT 504,544;564,464;516,448;504,544;460,464;516,448
130 END DEF
```
Run this, then type `CALL DIAGRAM` in immediate mode.

If you put a comma after a pair of co-ordinates, no dot will be inserted in that position; the computer will merely move the beam there, and turn it off. You will see that this is necessary if you want to give the instruction [PLOT PAINT](man_cs-plot.md).

## TURTLE COMMANDS

We shall now look at another set of commands which enable you to draw lines. They are called 'turtle' commands, because they were first used for controlling a slow-moving robot animal. This time, we don't need to work out the co-ordinates of a whole series of screen positions.
```
100 OPTION ANGLE DEGREES
110 GRAPHICS
120 PLOT 300,150;
130 PLOT ANGLE 80;
140 PLOT FORWARD 500;
150 PLOT BACK 320;
160 PLOT RIGHT 35;
170 PLOT FORWARD 420;
180 PLOT BACK 285;
190 PLOT RIGHT 100;
200 PLOT FORWARD 340
210 END
```
You can see, sure enough, that this is rather like guiding an animal around the screen. But some of the program lines need a little explanation.

Line **100** tells the computer that we want to measure angles in degrees, not radians. (A radian is approximately **57** degrees; there are some mathematical operations for which radians would be more convenient.)

The [GRAPHICS](man_cs-graphics.md) statement (line **110**) has the effect of setting the beam to (**0**,**0**) and turning it off. ([CLEAR GRAPHICS](man_cs-clear.md) would also do this.) So line **120** is needed, to give the starting position from which we want the beam (our 'animal') to move.

Next, we have to point the animal in the right direction. `PLOT ANGLE 0` would leave it facing horizontally towards the right of the screen. `PLOT ANGLE 90` would point it straight upwards. The [PLOT ANGLE](man_cs-plot.md) command says: 'first consider the beam to be facing due right, then turn it anticlockwise through the number of degrees specified'.

A command to `PLOT FORWARD` or `PLOT BACK` is followed by the required number of graphic screen positions. `PLOT RIGHT` or `PLOT LEFT` makes the animal change course, and is followed by the number of degrees through which we want the beam to be turned, relative to its previous direction. You have seen this before, in the program on page 66.

Notice that with 'turtle' commands you still have to use semicolons to keep the beam switched on. (Try removing some of the semicolons from the program or replacing them with commas, to see what happens.)

## ELLIPSES AND CIRCLES

The following program plots an ellipse:
```
100 GRAPHICS
110 PLOT 640,250,
120 PLOT ELLIPSE 100,200,
130 END
```
Line **110** gives the centre of the ellipse. The first number after [PLOT ELLIPSE](man_cs-plot.md) is the horizontal distance (in screen positions) between the centre and the circumference, and the next number is the vertical distance. If these two numbers were the same, the program would draw a circle. Notice the commas at the ends of lines **110** and **120**. If you missed out either of these, the centre of the ellipse would be marked on the screen by a dot. As it is, the program leaves the beam in this centre position but turns it off.

## COLOURS

You are probably well aware that the Enterprise can display **256** colours. Up until now, you have not had many chances to use them. This is where you learn to master the many hues the Enterprise can put on its screen.

The following program will display all **256** colours at once:
```
100 !	------------------------------------
110 GRAPHICS 256 !	Note the number which this
120 !	time has to follow
125 !	GRAPHICS.
130 !	------------------------------------
140 LET Z=0
150 FOR Y=0 TO 560 STEP 80
160   FOR X=32 TO 1052 STEP 32
170     SET INK Z
180     PLOT X,Y;X,Y+70
190     LET Z=Z+1
200   NEXT X
210 NEXT Y
220 END
```
The Enterprise identifies each colour by a code-number in the range **0**-**255**. For simplicity, a special function '[RGB](man_fn-rgb.md)' is supplied to allow you to select colours by mixing amounts of red, green and blue. This is explained later in the chapter.

## COLOUR MODES

In the above program, you had to type the number **256** after the word [GRAPHICS](man_cs-graphics.md), to tell the computer to make all its colours available to you at once. That is, you had to select the appropriate colour-mode.

Notice that in this program, the lines drawn on the screen are thicker than those you have seen in previous graphics programs. The point is that the more colours you have at your disposal, the less fine your drawings can be. This is necessary to conserve memory space in the computer.

We have said that the 'graphics' page gives a higher 'resolution' (degree of precision) than a 'text' page. But we must now consider the further differences of resolution that depend on which colour-mode is being used. There are four such high-resolution (**HIRES**) modes, and each gives a particular trade-off between the number of colours you can display and the number of 'dots' per horizontal row that are made available for plotting. Here they are:

 - **GRAPHICS HIRES 2** – When this command has been given, only **2** colours can be displayed at a time, but you have **640** separate dots across the width of the screen.
 - **GRAPHICS HIRES 4** – With four available colours, you have **320** dots per horizontal line.
 - **GRAPHICS HIRES 16** – This time, there are **160** dots per line.
 - **GRAPHICS HIRES 256** – With the possibility of displaying as many as **256** colours at once, you are given **80** separate dots per line.

If you type simply [GRAPHICS](man_cs-graphics.md), the computer will use the same mode as it did last time you gave the command. When typed for the first time after the computer is switched on or reset, [GRAPHICS](man_cs-graphics.md) is equivalent to **GRAPHICS HIRES 4**.

The number of dots vertically is not affected by the colour mode; on the standard graphics page (with the 4 lines of text at the bottom), it is always **180**.

Despite the difference in resolution, all the colour modes use the same system of co-ordinates. In other words, `PLOT 0,0;640,360` will always draw a line from the bottom left-hand corner to the middle of the 'page', although the fineness of the drawing will vary with the mode. (The same co-ordinate scheme could actually be used for a resolution twice as high as is possible even on the Enterprise.)

The Reference Section explains how the resolution can be halved (and memory saved) by giving the command **GRAPHICS LORES**. It also gives details of the so-called 'attribute' mode of graphics.

## GRAPHICS MODES

In addition to **HIRES**, there are two other graphics modes.

**LORES** is identical to **HIRES**, but uses less computer memory and provides half the horizontal resolution. Colour modes are specified in the same manner as HIRES, eg:
```
GRAPHICS LORES 16
```
would give a **16**-colour low resolution graphics page.

**ATTRIBUTE** mode is a special form of video display, which is a cross between text and graphics modes. It can be used for character printing, or for plotting commands, and provides **16** colours, but needs careful handling of the [ATTRIBUTES](man_vo-attributes.md) 'flag' for most effective use. See the reference section, page 188.

No colour mode should be specified, the command is:
```
GRAPHICS ATTRIBUTE
```

## SELECTING COLOURS

Let's turn again to the **256**-colour mode. In this mode you can draw shapes in whatever colour you like, by preceding the plotting commands with the statement [SET INK](man_vo-ink.md) and the code-number of the colour. Also, before using [CLEAR GRAPHICS][CLEAR](man_cs-clear.md), you can type [SET PAPER](man_vo-paper.md)..., so as to choose the colour of the 'background'.

Experience could teach you which colour corresponds to which number: 18 is a light green, 91 is bright yellow, etc. But if you want to use a particular colour and don't happen to know what code-number goes with it, there is an alternative way to specify it.

Every possible colour can be created by a combination of red, green and blue. For example, white comes from mixing all three of these colours. Yellow is produced by mixing just red and green. (This may surprise you, but bear in mind that mixing the actual sources of light gives rather different results from mixing paint.) Black is no colour at all. Complex colours are created by mixing red, green and blue in varying amounts.

This is the principle by which the colours on the Enterprise work; you can define any colour as a mixture, by typing the word [RGB](man_fn-rgb.md), followed (in brackets) by three numbers with commas separating them. These numbers, which must be in the range **0**-**1**, define the proportions of red, green and blue (respectively) that you want to be mixed.

So `SET INK RGB(1,.5,.5)` would give you pink as a plotting colour. `RGB(.4,.4,0)` is a dull yellow; `RGB(.6,.6,.4)` is a shade of grey; and so on.

The **8** colours below can be selected very simply, by just typing their names (e.g. `SET INK GREEN`). Here are the 'mixtures' to which they correspond: —

|         |            |
|:-------:|:----------:|
|  BLACK  | RGB(0,0,0) |
|   RED   | RGB(1,0,0) |
|  GREEN  | RGB(0,1,0) |
| YELLOW  | RGB(1,1,0) |
|  BLUE   | RGB(0,0,1) |
| MAGENTA | RGB(1,0,1) |
|  CYAN   | RGB(0,1,1) |
|  WHITE  | RGB(1,1,1) |

## THE PALETTE

If you give the command `GRAPHICS HIRES 16`, restricting yourself to **16** colours on the display at any one time, you still have considerable freedom to choose which ones they will be. You do this by specifying a 'palette' – a list of selected colours which are to be made available for drawing.

First, type [SET PALETTE](man_vo-palette.md), then list eight of the colours that you want to use. These can be freely chosen from the full range of **256**, and you can specify them by their standard code-numbers, by their names (if they are in the above list), or by defining them as a 'mixture'. For example, you could type:
```
100 SET PALETTE 67,31,WHITE,4,RGB(0.,3,.8),RGB(.7,.7,.1),187,190
```
– and these colours would then be numbered **0**-**7** in your 'palette'.

For your remaining eight colours, you have less freedom of choice. The colours numbered **8**–**15** in your palette all have to belong to a single group of related colours. You select them with the command [SET BIAS](man_vo-bias.md), followed by any number belonging to the group that you want. For example, if you typed `SET BIAS 67` (or any other number in the range **64**-**71**), then the colour with the standard code-number **64** (the first in this group) would become number **8** in your palette; standard number **65** would become palette-number **9**; and so on. You can imagine that, with [SET BIAS](man_vo-bias.md), you are specifying the 'filter' or the 'wash' to be laid over the 'Telextext primary' colours.

You can now select any colour in the palette to make the 'ink' for plotting the next line or shape. An important point is that, if you are not using the **256**-colour mode, any command such as `SET INK 6` or `SET PAPER 6` will refer to the colour listed as number **6** within the palette, not the one with **6** as its standard code-number. Also, don't forget that the numbers in the palette count upwards from **0**, not from **1**.

In the **4**-colour mode, only the colours numbered **0**-**3** in the palette can be used, so there is no point in listing more than four colours in a [SET PALETTE](man_vo-palette.md) command. Similarly, in the **2**-colour mode, you will only want to specify palette colours **0** and **1**.

Sometimes you may want to alter just one colour in the palette, while leaving the rest as they are. This example alters palette colour **3**:
```
SET COLOUR 3,110
```
You can also, of course, use any of the modes without actually bothering to select your palette. If nothing is specified by you, the computer will always use certain pre-programmed 'default' colours.

## USING THE PALETTE

Remember that if you alter the set of colours in your palette, this will affect not only the lines and shapes that are to be drawn afterwards, but also those already on the screen. This ability to change all colours on a display with only a single command forms the basis of some of the most dramatic and fast-moving graphic effects.

In the following program, which creates ellipses of random sizes and colours, we shall start by making all the palette colours the same; so a line drawn in 'ink' of colour number **2** will look no different from one drawn in colour **3**, and both will be distinguishable from the 'paper' – the drawing will, in fact, be invisible. Then, when a key is pressed, the drawing will stop, and by repeatedly varying the contents of the palette, the program will make the different 'inks' change colour and stand out against each other and the background.

The program ends with an infinite loop – it will never finish unless interrupted. To halt execution, press the 'Stop' key.
```
100 RANDOMIZE
140 GRAPHICS HIRES 4
150 SET PALETTE BLUE,BLUE,BLUE,BLUE
160 !	------------------
170 !	Invisible display.
180 !	------------------
190 DO
200   SET INK RND*3+1
210   PLOT 625,330,
220   PLOT ELLIPSE RND*500,RND*300,
230 LOOP WHILE INKEY$=""
240 !	----------------------------------
250 !	When key is pressed, show display.
260 !	----------------------------------
270 DO
280   SET PALETTE BLUE,BLUE,RED,GREEN
290   !	------------------------
300   FOR X=1 TO 500 !	Delay for
310   NEXT X !	nearly 1 second.
320   !	------------------------
330   SET PALETTE BLUE,RED,GREEN,BLUE
340   FOR X=1 TO 500
350   NEXT X
360   SET PALETTE BLUE,GREEN,BLUE,RED
370   FOR X=1 TO 500
380   NEXT X
390 LOOP
400 !	-------------------------------
410 !	Use 'stop' key to halt program.
420 !	-------------------------------
```
Note, by the way, that the [PALETTE](man_vo-palette.md), [INK](man_vo-ink.md) and [PAPER](man_vo-paper.md) commands can also be used if you are working with a 'text' page. The '[Video Options](man_3-vidoptions.md)' chapter in the Reference Section gives details of this. Try the following experiments:
```
SET £102:COLOUR 1,MAGENTA
SET £102:INK 3
```

## PLOT PAINT

This instruction fills a solid shape with the current 'ink' colour. Here is a program which will draw one circle inside another and then paint in two different colours:
```
100 GRAPHICS HIRES 4
110 SET PALETTE WHITE,YELLOW,BLUE
120 PLOT 400,400,
130 PLOT ELLIPSE 200,200,
140 PLOT ELLIPSE 80,80,
150 SET INK 3
160 PLOT PAINT
170 PLOT 400,250,
180 SET INK 2
190 PLOT PAINT
200 END
```
So the area filled in by [PLOT PAINT](man_cs-plot.md) is one which currently contains the 'beam' and is enclosed by a continuous line of a different colour from the beam position. Any gaps in the line will mean that the painting will go outside the shape and try to fill the whole screen. Notice the commas at the ends of program lines **130**, **140** and **170**; we had to prevent a dot from appearing in the beam position, since otherwise [PLOT PAINT](man_cs-plot.md) would have painted this dot only.

## LINE STYLE AND LINE MODE

[LINE STYLE](man_vo-line-style.md) allows you to plot with various kinds of broken line. For example, if you type `SET LINE STYLE 10`, all the lines drawn (until the style is re-set) will be made up of long, closely-spaced dashes. `SET LINE STYLE 9` gives you lines of alternate dashes and dots. There are **14** line-styles (numbered upwards from **1**) for you to experiment with.

With the command [SET LINE MODE](man_vo-line-mode.md), you can determine how lines plotted on the screen will interact with shapes that are there already. In line mode **0** (the 'default'), any new line will simply 'overwrite' lines or shapes previously drawn. In other modes (numbered **1**-**3**), the old and new 'inks' on the page will combine in various ways to determine the plotting colour; the Reference Section gives further details.

## PAGES AND CHANNELS

So far, you have been using the command [GRAPHICS](man_cs-graphics.md) (or [TEXT](man_cs-text.md)) to create a blank 'page' onto which you can draw (or write). Most of the time you will probably find this arrangement adequate, but as you become more experienced you may wish to make use of the greater flexibility that comes from specifying 'channel' numbers (normally in the range **1**-**100**) for your various text and graphics 'pages'. The following should be read in conjunction with the chapter on '[Channels](man_2-channels.md)' and the relevant parts of the Reference Section (see e.g. '[Video Options](man_3-vidoptions.md)' and the keyword [OPEN](man_cs-open.md)).

There are two main advantages in opening new 'channels' for your pages:

1. Several different pages, containing complex drawings or text, can be kept in the computer's memory at once; any of them can then be displayed by a single command.
2. You can specify the size of a page. So you can make a graphics drawing fill (almost) the whole screen (but note that you cannot use the 'status line' at the top); or you can save memory by making the page small. You can choose the vertical position on the screen for displaying the page or a part of it.

The following example creates a small text page and shows it in the middle of the screen:
```
 50 SET BORDER CYAN
100 SET VIDEO MODE 0
110 SET VIDEO COLOUR 0
120 SET VIDEO X 20
130 SET VIDEO Y 10
140 OPEN £1:"VIDEO:"
150 DISPLAY £1:AT 7 FROM 1 TO 10
160 PRINT £1:"A small text page..."
170 END
```
Line **140** assigns channel number **1** to our new video page. But the 'video mode', 'colour mode', and page dimensions have to be specified before this is done.

Video mode **0** is a **40**-column text page; mode **1** is a graphics page; mode **2** is **80**-column text.

[VIDEO COLOUR](man_vo-video-col.md) selects the colour-mode, according to the following convention:

|                |                 |
|:--------------:|:--------------- |
| VIDEO COLOUR 0 | 2-colour mode   |
| VIDEO COLOUR 1 | 4-colour mode   |
| VIDEO COLOUR 2 | 16-colour mode  |
| VIDEO COLOUR 3 | 256-colour mode |

A text page should always be in colour mode **0**; this still allows you some choice of colours.

Lines **120** and **130** give the width and height of the page, in 'character positions'.

Line **150** is an instruction to put the top part of the page (measured as **10** character-rows) onto the display, starting from screen row **7**. In this case, of course, it displays the page as a whole.

Notice that the [PRINT](man_cs-print.md) command in line **160** has to include the channel number.

The height specified for the page can, if you like, be greater than the height of the screen. (The maximum is **255** character-rows.) The following program defines a page measuring **8** columns across by **30** rows down, and plots an ellipse on it; then two segments, containing the bottom and top portions of the drawing, are displayed in turn.
```
100 SET VIDEO MODE 1
110 SET VIDEO COLOUR 2
120 SET VIDEO X 8
130 SET VIDEO Y 30
140 OPEN £1:"VIDEO:"
150 PLOT £1:128,540,
160 PLOT £1:ELLIPSE 115,500,
170 DISPLAY £1:AT 10 FROM 21 TO 30
180 FOR X=1 TO 1500
190 NEXT X
200 DISPLAY £1:AT 10 FROM 1 TO 10
210 END
```
The next example defines **3** 'pages' and displays them simultaneously in different parts of the screen:
```
100 SET VIDEO MODE 0
110 SET VIDEO COLOUR 0
120 SET VIDEO X 42
130 SET VIDEO Y 8
140 !				----------
150 OPEN £1:"VIDEO:" !	Text page.
160 !				----------
170 SET VIDEO MODE 1
180 SET VIDEO COLOUR 3
190 !				--------------------
200 OPEN £2: "VIDEO:" !	256-colour graphics.
210 !				--------------------
220 SET VIDEO COLOUR 1
230 !				------------------
240 OPEN £3:"VIDEO:" !	4-colour graphics.
250 !				------------------
260 DISPLAY £1:AT 9 FROM 1 TO 8
270 DISPLAY £2:AT 1 FROM 1 TO 8
280 DISPLAY £3:AT 17 FROM 1 TO 8
290 PRINT £1:"Text..."
300 SET £2:BEAM ON
310 PLOT £2:100,100;
320 SET £3:BEAM ON
330 PLOT £3:100,100;
340 END
```
After running this, you won't be able to see what you are typing. Type [TEXT](man_cs-text.md) or press function key 5 to return to normal.

Note that every 'page' has its own 'palette', although a [SET BIAS](man_vo-bias.md) command will be applied to all pages.

The use of channel numbers enables you to draw or write on a page even if it isn't currently displayed. It also allows characters to be printed on a graphics page, at the current 'beam' position. For example, if channel **3** has been opened as a graphics page, you can type something like:
```
PLOT £3:640,50
PRINT £3:"Hello"
```
– and the string will be added to the page, whether or not it is at present on view.

## SET BORDER

As used in the first example of this section, you can select a colour for the border round the whole visible display – the 'desk' onto which the various text or graphics 'pages' are placed. The [SET BORDER](man_vo-border.md) command is independent of all 'palette' commands (which only apply to particular pages), so this colour must be set by specifying a standard code-number, a colour name, or a 'mixture'. For example, `SET BORDER 255`, `SET BORDER WHITE` or `SET BORDER RGB(1,1,1)` will give a white border to the whole display.

If channel **101** (the channel of the standard graphics page) is not open when the border colour is set, the command must be given with a suitable channel number (usually **£102**, the number for the standard 'text' page) – e.g. `SET £102:BORDER 116`.
