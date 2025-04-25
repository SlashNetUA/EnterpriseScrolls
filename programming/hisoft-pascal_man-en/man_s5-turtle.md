# SECTION 5: TURTLE GRAPHICS

HiSoft Pascal comes complete with a Logo-style Turtle Graphics package on the 'B' side of the program cassette.

The package is written in Pascal and may be loaded from within the Pascal editor by using the command:

`G,, ` **Enter**

This will load the turtle graphics package and example program.

Before compiling and running the example program on the Enterprise 64 you should use the [Alter](man_s3-2-compile-options.md) command to give the operating system some memory to use for the graphics screen. Type:  
`A` **Enter**  
**Enter**  
**Enter**  
`8000` **Enter**  
to do this.

To compile the program type `C` **Enter** and then when the compiler asks

`Run?`

type **Y** to run the program. You will then be prompted for a number between **1** and **5**. Type one in followed by **Enter** and a space-filling curve will be drawn. You will then be prompted again for another number. After plotting **6** curves the program will return to the editor. If you get bored press **Reset** once and you will be returned to the editor. Pressing **Stop** leaves the screen set up for graphics – use the editor's `W` command to return to a full text screen.

As in the majority of Turtle Graphics implementations, HiSoft Pascal's TURTLE creates an imaginary creature on the screen which the user can move around via some very simple commands. This 'turtle' can be made to leave a trail or can be made invisible. The turtle's heading and position are held in global variables which are updated when the creature is moved or turned; obviously these variables can be inspected or changed at any time.

The facilities available are as follows:

## Global Variables

### HEADING

this is used to hold the angular value of the direction in which the turtle is currently facing. It takes any REAL value, in degrees, and may be initialised to **0** with the procedure **TURTLE** (see below). The value **0** corresponds to an **EAST**erly direction so that after a call to the procedure **TURTLE** the turtle is facing left to right. As the heading increases from zero then the turtle turns in an anti-clockwise direction.

### XCOR, YCOR

these are the current (**x**,**y**) REAL co-ordinates of the turtle on the screen. The Enterprise graphics screen has a size of **1343**×**971** pixels and the turtle may be positioned on any point within this area; if an attempt is made to move the turtle out of this matrix (using **LINE** — see below) then the message '`Out of Limits`' will be displayed and the program will be aborted with a '`HALT`' message. Initially **XCOR** and **YCOR** are undefined, use of the procedure **TURTLE** initialises them to **400** and **189** respectively, thus placing the turtle near the middle of his 'pool'.

### PENON

a BOOLEAN variable holding the current status of the 'pen' (i.e. the trail left by the turtle). **TRUE** means the pen is down, **FALSE** means the pen is up.

## PROCEDURES

The procedures available are as follows:

### WRVAR(I:INTEGER)

updates the value of the EXOS variable number I to the current contents of the **RD** variable.

### TXTOPEN(ROWS:INTEGER)

opens a hardware text mode video screen as channel **120** with the number of lines given in **ROWS** and an editor channel with a **2K** buffer as channel **121**.

### GRAOPEN

open a high-resolution **2** colour graphics screen as channel **131**. This uses the full width of the screen and **20** out of the **28** maximum lines occupying **15288** bytes of memory. This could be modified to use more colours on the Enterprise 128 but this would use the same memory, but give a lower resolution.

### DISPLAY(C,NoRows,TopRow:INTEGER)

displays **NoRows** lines of the video page attached to channel **C** with **TopRow** giving the physical row from where the page is displayed.

### PRINT(C:INTEGER;A:CHAR);

writes the character **A** to channel **C**.

### PLOT(X,Y:INTEGER);

plots the point **X**,**Y** if the pen is down and clears it if the **PEN** is up.

### LINE(DUMMY:BOOLEAN;X,Y:INTEGER);

plots a line from (**XCOR**,**YCOR**) to (**XCOR+X**,**YCOR+Y**) according to the status of **PENON**. **XCOR** and **YCOR** are not updated.

### PENDOWN(C:INTEGER)

sets the turtle state so that it will leave a trail. It could be extended to leave the trail in the ink colour associated with the parameter **C**. This procedure assigns **TRUE** to **PENON**.

### PENUP

subsequent to a call to this procedure the turtle will not leave a trail. Useful for moving from one graphic section to another. **PENUP** assigns the value **FALSE** to **PENON**.

### SETHD(A:REAL)

takes a REAL parameter which is assigned to the global variable **HEADING** thus setting the direction in which the turtle is pointing. Remember that a heading of **0** corresponds to **EAST**, **90** to **NORTH**, **180** to **WEST** and **270** to **SOUTH**.

### SETXY(X,Y:REAL)

sets the absolute position of the turtle within the graphics area to the value (**X**,**Y**). No check is made within this procedure to ascertain if (**X**,**Y**) is out of bounds; procedure **LINE** does this check.

### FWD(L:REAL)

moves the turtle forward **L** units in the direction of its current heading. A unit corresponds to a graphics pixel, rounded. up or down where necessary.

### BACK(L:REAL)

moves the turtle **L** units in the directly opposite direction to that in which it is currently heading (i.e. **-180**) – the heading is left unchanged.

### TURN(A:REAL)

changes the turtle's heading by **A** degrees without moving it. The heading is increased in the anti-clockwise direction.

### VECTOR(A,L:REAL)

displaces the turtle's position by **L** units at a heading of **A** – the turtle's heading remains **A** after the displacement.

### RIGHT(A:REAL)

an alternative to **TURN** – **RIGHT** changes the turtle's heading in the clockwise direction by **A** degrees.

### LEFT(A:REAL)

this is identical to **TURN** and is provided simply for convenience and compatibility with **RIGHT**.

### ARCR(R:REAL,A:INTEGER)

the turtle moves through an arc of a circle whose size is set by **R**. The length of the arc is determined by **A**, the angle turned through (subtended at the centre of the circle) in a clockwise direction. Typically **R** may be set to **4.0**.

### TURTLE

this procedure simply sets the initial state of the turtle and to set up the graphics screen; it is placed in near the middle of the screen, facing **EAST** (heading of **0**), leaving a trail. Remember that the state of the turtle is not initially defined so that this procedure is often used at the beginning of a program.

This concludes the list of facilities available with HiSoft Pascal TURTLE; although simple in implementation and use you will find that Turtle Graphics are capable of producing very complex designs at high speed. To give you a taste of this we present some example programs below. Remember that you must have HiSoft Pascal loaded before entering the programs.

## Examples Programs

In all the example programs given below we assume that you have already loaded HiSoft Pascal and used `G,, ` **Enter** to load the Turtle Graphics package. Then use `N10,10` **Enter** to renumber the program to make editing easier. Next type `D2150,2260` to delete the main part of the demonstration program. Now we are ready to type the example programs:

### 1. CIRCLES
```
75 I:INTEGER;

2150 SETXY(600,350);
2160 FOR I:=1 TO 9 DO
2170 BEGIN
2180 ARCR(2.0,360);
2190 RIGHT(40)
2200 END;
2210 READLN;
```

### 2. SPIRALS

`D2180,2210`

```
2150 SETXY(600,350);
2160 SPIRALS(9,95,9);		(or (9,90,9) or (9,121,9) ... )
2170 READLN;
```

### 3. FLOWER

`D1830,2090`

```
1830 PROCEDURE PETAL(S:REAL);
1840 BEGIN
1850  ARCR(S,60);
1860  LEFT(120);
1870  ARCR(S,60);
1880  LEFT(120)
1890 END;
1900 PROCEDURE FLOWER(S:REAL);
1910 VAR I:INTEGER;
1920 BEGIN
1930 FOR I:=1 TO 6 DO
1940 BEGIN
1950 PETAL(S);
1960 RIGHT(60)
1970 END
1980 END;
2150 SETXY(600,10);
2160 LEFT(90); FWD(75);
2170 RIGHT(60); PETAL(1.5);
2180 LEFT(60); PETAL (1.5);
2190 SETHD(90); FWD(300);
2200 FLOWER(3.0);
2210 READLN;
```

For further, extended study of Turtle Graphics we highly recommend the excellent (if expensive) book '**Turtle Geometry**' by *Harold Abelson* and *Andrea de Sessa*, published by MIT Press, ISBN 0-262-01063-1.