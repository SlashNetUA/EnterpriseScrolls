# HiSoft Pascal: videopages and graphics

Written by [Zoltán Povázsay (Povi)](../../community/povi.md)  
Published in [Enterpress 2017 \#4](http://enterprise.iko.hu/magazines/Enterpress_2017_per_4_UK.pdf#page=11)  

As I promised in the [previous chapter](enterpress2017-2-3_en.md), this section is about graphics. There are two possibilities to exploit the graphical capabilities of the machine: one when creating a video page for ourselves, at a fixed memory address and completely dominating the machine.

In this case, we have to re-write all the already written graphic routines (drawing pixels, lines, circles, etc.) that EXOS provide to us, but in return they will be much faster. [István](../../community/istvanv.md)’s **GRAPH16.HPU** library, which also supports mouse management, is a very good example of this (hopefully [Lacika](../../community/lacika.md) would write an article or at least one description).

The other, a simpler method, is when we rely on EXOS: in this case, EXOS function calls are used to open and close the video channel, to display the video page, and to use the escape sequences interpreted by the video channel for drawing. The „black book” (aka EXOS Technical Description) and the methods described in the previous chapter (calling the EXOS functions from Pascal, accessing the arguments of Pascal procedures and functions), will help us, almost as a child’s play, to perform the calls to the graphic subroutines supplied by EXOS from inside a Pascal program. A similar article already appeared in the ENTERPRESS columns ([January-February 1995, Zoltán Horváth](http://enterprise.iko.hu/magazines/Enterpress_1995-1.pdf#page=10)), unfortunately, with some cracking solutions.

In this chapter, I will use the latter method, which will not be complete but, based on the examples, anyone can complete, supplement, modify, and enhance the described procedures.

In the first round, let’s see how to display a four colour high-definition graphics page in the same way as the IS-BASIC GRAPHICS command! First of all, by writing the EXOS variables, we  will set the parameters of the new video channel before opening it. Fortunately, with HiSoft Pascal 1.2, we will be able to use the SetVar method: 

```
SetVar (22, 1)  {high resolution graphics}; 
SetVar (23, 1)  {four-colour mode}; 
SetVar (24, 40) {40 characters wide}; 
SetVar (25, 20) {20 characters high}; 
```

The next step is to open the video channel. This can be done with the EXOS 1 function call, which requires two parameters: the channel number in register **A** and the address with the „VIDEO:” string in the **DE** register. Fortunately, this string can be found at address **0x148a**, which can be used without a doubt.

It would be good to see if opening the page was successful. Any EXOS call (including the channel opening function) clears the zero flag bit and sends an error code in the **A** register if it failed. We can solve this problem by ourselves, but in this case, we can also use the routine at 0x022c to print the error message and finish the program execution.

Let’s see the implementation!

```
procedure OpenVideoChannel(ch: integer);   
begin
  inline(#dd,#7e,#02) { ld   a, (ix+2)  };   
  inline(#11,#8a,#14) { ld   de, 148ah) };   
  inline(#f7,#01)     { exos 1 };   
  inline(#c2,#2c,#02) { jp   nz, 022ch  }; 
end; 
```

Of course, we also must ensure that the channel is closed, because if not, the program will stop with the „Channel exists” error message at the next execution time: 

```
procedure CloseChannel(ch: integer); 
begin   
  inline(#dd,#7e,#02) { ld   a, (ix+2) };   
  inline(#f7,#03)     { exos 3 }; 
end; 
```

There is nothing more to do than displaying the video page. Therefore, we make the call to the BASIC DISPLAY command. 

```
procedure Display(ch, dAt, dFrom, dTo: integer); 
begin   
  inline(#dd,#7e,#08) { ld   a, (ix+8) };   
  inline(#06,#01)     { ld   b, 1  };   
  inline(#dd,#4e,#04) { ld   c, (ix+4) };   
  inline(#dd,#56,#02) { ld   d, (ix+2) };   
  inline(#dd,#5e,#06) { ld   e, (ix+6) };   
  inline(#f7,#0b)     { exos 11 };   
  inline(#c2,#2c,#02) { jp   nz, 022ch }; 
end; 
```

Iteration with the video page is done by writing escape sequences (see the black book). Line drawing requires at least the following three procedures: „**positioning beam**” (`escA <xx> <yy>`), „**beam on**” (`escS`) and „**beam off**” (`escs`).

The latter two are the simplest because they do not expect a parameter (outside the channel number), only two bytes are written on the video page: 

```
procedure SetBeamOn(ch : integer); 
begin   
  inline(#dd,#6e,#02) { ld   l, (ix+2) };   
  inline(#7d)         { ld   a, l  };   
  inline(#06,#1b)     { ld   b, 27 };   
  inline(#f7,#07)     { exos 7 };   
  inline(#7d)         { ld   a, l };   
  inline(#06,#53)     { ld   b, 'S' };   
  inline(#f7,#07)     { exos 7 }; 
end;
```

The **SetBeamOff** procedure only differs from this on the penultimate line, where `inline(#06,#53)` is changed to `inline(#06,#73)`.

Let’s look at the beam positioning!

```
procedure Plot(ch, x, y : integer); 
begin   
  inline(#dd,#6e,#06) { ld   l, (ix+6) };   
  inline(#7d)         { ld   a, l };   
  inline(#06,#1b)     { ld   b, 27 };   
  inline(#f7,#07)     { exos 7 };   
  inline(#7d)         { ld   a, l };   
  inline(#06,#41)     { ld   b, 'A' };   
  inline(#f7,#07)     { exos 7 };   
  inline(#7d)         { ld   a, l };   
  inline(#dd,#46,#04) { ld   b, (ix+4) };   
  inline(#f7,#07)     { exos 7 };   
  inline(#7d)         { ld   a, l };   
  inline(#dd,#46,#05) { ld   b, (ix+5) };   
  inline(#f7,#07)     { exos 7 };   
  inline(#7d)         { ld   a, l };   
  inline(#dd,#46,#02) { ld   b, (ix+2) };   
  inline(#f7,#07)     { exos 7 };   
  inline(#7d)         { ld   a, l };   
  inline(#dd,#46,#03) { ld   b, (ix+3) };   
  inline(#f7,#07)     { exos 7 }; 
end;
```

It is a more elegant solution if we do not write the escape sequences in a row as bytes, but we send it all to an exos 8 call, so instead of the six exos function calls, we would only need one. This will also bring us some acceleration, as every exos call has a pretty big overhead. To do this, you first need to write the bytes in a buffer. For this purpose, the 127 bytes buffer at Pascal **0x15ae** address is perfectly suited for this purpose: 

```
procedure Plot(ch, x, y : integer); 
begin   
  inline(#21,#b3,#15) { ld   hl, 15aeh + 5};   
  inline(#dd,#7e,#03) { ld   a, (ix+3) };   
  inline(#77)         { ld   (hl), a };   
  inline(#2d)         { dec  l };   
  inline(#dd,#7e,#02) { ld   a, (ix+2) };   
  inline(#77)         { ld   (hl), a };   
  inline(#2d)         { dec  l };   
  inline(#dd,#7e,#05) { ld   a, (ix+5) };   
  inline(#77)         { ld   (hl), a };   
  inline(#2d)         { dec  l };   
  inline(#dd,#7e,#04) { ld   a, (ix+4) };   
  inline(#77)         { ld   (hl), a };   
  inline(#2d)         { dec  l };   
  inline(#36,#41)     { ld   (hl), 'A' };   
  inline(#2d)         { dec  l  };   
  inline(#36,#1b)     { ld   (hl), 27 };   
  inline(#eb)         { ex   de, hl };   
  inline(#dd,#7e,#06) { ld   a, (ix+6) };   
  inline(#01,#06,#00) { ld   bc, 6 };   
  inline(#f7,#08)     { exos 8 }; 
end;
```

By using the above three procedures, you can make a line drawing routine on your own: 

```
procedure Line(ch, x1, y1, x2, y2 : integer); 
begin   
  SetBeamOff(ch);   
  Plot(ch, x1, y1);   
  SetBeamOn(ch);   
  Plot(ch, x2, y2); 
end; 
```

It would be good if we could write text on the graphic page, but without having to make a separate process, only using the existing Write and WriteLn procedures! You should know that these procedures are written for EDITOR channel **121**. Fortunately, this default channel number can be overwritten at any time in our code at 0x0328. A beneficial side effect of this „hack” is that the scope of the **GotoXY** and **ClrScr** procedures will apply to the given channel! What you need to do is to reset the default channel to **121** at the latest command before exiting the program! 

Let’s look at how to exploit these writing escape sequences: 

```
procedure Circle(ch, x, y : integer); 
begin   
  poke(#0328, chr(ch));     
  write(chr(27), 'E', lo(x), hi(x), lo(y), hi(y));   
  poke(#0328, 'y'); 
end;
```

```
procedure SetInk(ch, color : integer); 
begin   
  poke(#0328, chr(ch));   
  write(chr(27), 'I', chr(color));   
  poke(#0328, 'y'); 
end;
```

Is more beautiful and easier to read this code than the **Plot** procedure outlined above, but do not forget that it will result in a much slower code, so it is not worth using it! On the contrary, I prefer the insertion of the two lines on the above two procedures based on the example of **Plot**. 

Finally, a very simple demo program (without procedures, they must of course be written to the beginning of the code between „program” and „begin” lines): 

```
program grdemo; 
begin  
  SetVar(22, 1)      { graphics hi-res };  
  SetVar(23, 2)          { 16 colours mode };  
  SetVar(24, 40)        { 40 characters wide };  
  SetVar(25, 20)        { 20 characters high }; 
  OpenVideoChannel(1);  { open the video page };   
  Display(1, 1, 1, 20); { display video page };   
  repeat     
    SetInk(1, trunc(random * 15) + 1);     
    Line(1, trunc(random * 1280), trunc(random * 720), trunc(random * 1280), trunc(random * 720));   
  until inch <> chr(0);   
  CloseChannel(1);   
  User(#01ec); 
end; 
```

In the last line, the User procedure reviews the 120-text video page. The routine at this address is the same as Display (120, 1, 1, 24). 

This is necessary because without this, the top 20 lines of the text video sheet will no longer be displayed after the graphics video is closed. 

The [next part](enterpress2017-5-6_en.md) of this series will be file management.