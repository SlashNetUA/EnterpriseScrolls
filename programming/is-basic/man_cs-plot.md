# PLOT

`PLOT £chan:point-list`  
`PLOT £chan:ANGLE expr`  
`PLOT £chan:FORWARD expr`  
`PLOT £chan:BACK expr`  
`PLOT £chan:LEFT expr`  
`PLOT £chan:RIGHT expr`  
`PLOT £chan:ELLIPSE expr, expr`  
`PLOT £chan:PAINT`  

**PLOT** followed by a point-list plots points and/or lines. When a **PLOT** command ends in a semicolon, the beam will be left '**on**' after the command has been executed, otherwise it will be turned '**off**'.

Thus:

`PLOT x,у`

will move the beam – drawing a line, if the beam was '**on**' – to position (**x**,**y**), and then turn the beam off.

`PLOT x,y;`

will leave the beam '**on**'.

The last two statements both plot a point at (**x**,**y**). If the co-ordinate pair is followed by a comma, the beam is moved to the specified position without plotting a point there (and is left 'off').

`PLOT x1,y1;x2,y2;...`

will draw lines with the beam 'on' between the specified points, and leave it on if the command ends in a semicolon. If the beam was 'on' before the command is executed, a line will also be drawn from the previous beam-position to the point (**x1**,**y1**).

Plotting is done in the current ink colour and according to the current line style and line mode (see the [Video options](man_3-vidoptions.md) section).

The co-ordinates used in **PLOT** statements follow the conventions for **GRAPHICS** plotting. The **bottom left-hand** corner of the video page is (**0**,**0**). In the co-ordinate specification (**x**,**y**), **x** is the horizontal position counting from the left, and **у** is the vertical position counting from the bottom.

**ELLIPSE** plots an ellipse with its centre at the current beam position. The two parameters that follow give the horizontal and vertical distances from centre to circumference, in graphic screen positions. The ellipse must be plotted with the beam '**off**' if a dot is not to appear in the centre.

`PLOT 300,350,ELLIPSE 200,300,`

will avoid plotting the dot.

**PAINT** fills an enclosed area (that contains the current beam position) with the current ink colour. The area painted is bounded by a continuous line differing in colour from the original colour of the beam position.

If the beam is in a position where a point, of the current ink colour, has been plotted, then **PAINT** will have no effect, as it will detect a boundary condition immediately. As with **ELLIPSE**, precautions should be taken to avoid plotting a point.
 
`PLOT 400,300,PAINT`

A **PLOT** command will by default go to channel **101**.
