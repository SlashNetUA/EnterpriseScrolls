# Адаптація програм Pico-8 у [HiSoft Pascal](../hisoft-pascal.md)
[Скорочена інформація по функціям Pico-8](https://iiviigames.github.io/pico8-api/)

[Перелік функцій Pico-8](https://www.lexaloffle.com/bbs/files/16585/PICO-8_CheatSheet_0111Gm_4k.png)

# Основні функції Pico-8
- **\_init()** - функція що ініціалізує дані після запуску гри. Розміщати перед головним циклом програми.
- **\_update()** або **\_update60()** - обробка ігрової логіки та вводу користувача без виводу даних на екран.
- **\_draw()** - функція яка виводить один кадр зображення на екран.

функції **\_update** та **\_draw()** повинні бути розміщені у головному циклі програми. 

В загальному вони мають бути розміщені якось так:
```
begin
  {function _init()}

  repeat
    {function _update()}
    {function _draw()}
  until gameover;
end.
```

# Додаткові функції
## btn(x) та btnp(x): обробка вводу
Pico-8 має наступні клавіші для керування ігровою ситуацією: `⬅️` `➡️` `⬆️` `⬇️` + `❎` `🅾️`.

Функції **btn(x)** та **btnp(x)** мають невелику різницю тому для покрокових ігор можна використати наступну конструкцію для обробки введення вбудованого та зовнішніх джойстиків:

```
function btn(button:integer):boolean;
begin
  case button of
    {         Int Joy    Ext1 Joy    Ext2 Joy                     }
    0: btn:=(GetKey(61)+GetKey(152)+GetKey(192)<0); {< Left       }
    1: btn:=(GetKey(58)+GetKey(160)+GetKey(200)<0); {> Right      }
    2: btn:=(GetKey(59)+GetKey(136)+GetKey(176)<0); {^ Up         }
    3: btn:=(GetKey(57)+GetKey(144)+GetKey(184)<0); {v Down       }
    4: btn:=(GetKey(70)+GetKey(128)+GetKey(168)<0); {O Space/Fire1}
    5: btn:=(GetKey(62)+GetKey(129)+GetKey(169)<0)  {X Enter/Fire2}
  else btn:=false;
end;

function btnp(button:integer):boolean;
begin
  btnp:=btn(button);
end;
```

Призначення клавіш `❎` `🅾️` можна регулювати при потребі, бо в різних іграх вони використовуються по-різному.

## mget(x,y) та mset(x,y,i): робота з даними мапи

Дані мапи являють собою двовимірний масив. Тому для них достатньо простих функцій (при умові, що в нас мапа зберігається у масиві **map** типу **char**):

```
function mget(mx,my:integer):integer;
begin
  mget:=ord(map[my,mx]);
end;

procedure mset(mx,my,mi:integer);
begin
  map[my,mx]:=chr(mi);
end;
```

## Таблиці

Прямого аналогу для роботи з такими структурами немає, але можна використати наступний метод:
Створюється потрібний тип даних та масив потрібного розміру з цим типом та змінна з поточним розміром масиву.

```
type
  coords=record
    cx,cy:integer;
  end;
var
  crates: array[0..191] of coords;
  cratescount:integer;
```

І наступну стрічку `crates={}` можна замінити наступною: `cratescount:=0;`

для роботи з таблицями у Pico-8 є функції **add(t,v)**, **del(t,v)**, **count(t)**, які потрібно буде змінити під кожний тип даних.

Наприклад, таку стрічку:
```
add(crates, {x=tx*8,y=ty*8})

```

можна замінити такою конструкцією:
```
addcrates(tx*8,ty*8);
```
та створенням додаткової функції:
```
procedure addcrates(x,y:integer);
begin
  cratescount:=cratescount+1;
  crates[cratescount].cx:=x;
  crates[cratescount].cy:=y;
end;
```





function _update() -- this gets called 30 times every second.
it’s where we will update everything in the game

function _draw() --this is called after update it’s where we draw the game

btn(b) -- check to see if a button is down. the number b means this:
0 is ←, 1 is → , 2 is ↑ , 3 is ↓ , 4 is z and 5 is x

rectfill(x1,y1, x2,y2, col) - - draw a rectangle in the colour col
x1,y1 should be the coordinates of the top-left corner
x2,x2 should be the bottom-right corner

print(message,x,y,col) -- write a message on the screen.
x,y is the bottom-left of the first letter

spr(number,x,y) -- draw a sprite onto the screen with the top-left at x,y

CLS() clears the screen

_INIT() method, which is called whenever you use the RUN command
is that you can run it again at any time and it will seem like the game was reset.

SSPR (‘stretch
sprite’) function to make this work easily, although we could also
just draw each sprite one by one. The first two arguments tell the
program where to start drawing (x=0, y=16 if the switch is on).
The next two arguments tell the program how big the area we want
to pull from the sprite sheet is. As we saw above, that’s going to
be 16 across and 16 down from the original point. Then we have to
give an X and Y coordinate to start drawing the sprite, and again
the size of the area we want to fill. If you doubled the last two
arguments, to (32, 32), you would draw the switch twice as large.
SSPR is fun to play around with, but it’s also useful even if you
don’t stretch sprites at all.