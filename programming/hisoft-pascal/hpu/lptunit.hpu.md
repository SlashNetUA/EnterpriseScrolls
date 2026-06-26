{set Translate stack and Compiler stack to 0BF00H !!!}

```
 ..:: LPT unit ::..

  PixelTable   = #BF00
  StackTmp     = #BF10
  XCoord       = #BF12
  YCoord       = #BF14
  vseg         = #BF16
  ColorMode    = #BF17
  MaximumX     = #BF18
  MaximumY     = #BF1A
  bgcolor      = #BFFE
  fgcolor      = #BFFF
  lpt          = #FF00
  VideoAddr    = #C000
```

procedure GetVideoSegment;

function GetMaxX:integer;

function GetMaxY:integer;

procedure CopyMem(Destination,ByteCount:integer);
  
procedure lpt2Nick(address:integer);

procedure SetColor(Color:integer);

procedure SetBkColor(Color:integer);

procedure ClearDevice;

procedure SetBias(value:integer);
  
procedure Graphics(gm:integer);

procedure Palette(c0,c1,c2,c3,c4,c5,c6,c7:integer);

procedure PutPixel(x,y,color:integer);

procedure CloseGraph;

procedure Line(x0,y0,x1,y1:integer);

procedure LineTo(x1,y1 : integer);

procedure Rectangle(x1,y1,x2,y2 : integer);
