# Підбір палітри

Стандартна палітра Pico-8 містить 16 кольорів, але додатково є ще 16 "секретних" кольорів.

![](pics/pico8-palette.png)

Кількість стандартних кольорів (якими зазвичай користуються) якраз така сама як і в Ентерпрайза. Але через специфіку 16-колірного режиму графіки ідеально підібрати кольори не так вже і просто.

Таблиця найбільш наближених кольорів:

|         №         |     RGB-код     |                          Колір<br>Pico-8                          |                            Колір<br>EP                            |       RGB       | Номер палітри |
|:-----------------:|:---------------:|:-----------------------------------------------------------------:|:-----------------------------------------------------------------:|:---------------:|:-------------:|
|         0         |    (2, 4, 8)    | ![#020408](https://dummyimage.com/40x40/020408/000000.png&text=+) | ![#000000](https://dummyimage.com/40x40/000000/000000.png&text=+) |    (0, 0, 0)    |       0       |
|         1         |  (29, 43, 83)   | ![#1D2B53](https://dummyimage.com/40x40/1D2B53/000000.png&text=+) | ![#242455](https://dummyimage.com/40x40/242455/000000.png&text=+) |  (36, 36, 85)   |      224      |
|         2         |  (126, 37, 83)  | ![#7E2553](https://dummyimage.com/40x40/7E2553/000000.png&text=+) | ![#6D2455](https://dummyimage.com/40x40/6D2455/000000.png&text=+) |  (109, 36, 85)  |      232      |
|         3         |  (0, 135, 81)   | ![#008751](https://dummyimage.com/40x40/008751/000000.png&text=+) | ![#009255](https://dummyimage.com/40x40/009255/000000.png&text=+) |  (0, 146, 85)   |      34       |
|         4         |  (171, 82, 54)  | ![#AB5236](https://dummyimage.com/40x40/AB5236/000000.png&text=+) | ![#924900](https://dummyimage.com/40x40/924900/000000.png&text=+) |  (146, 73, 0)   |      17       |
|         5         |  (95, 87, 79)   | ![#5F574F](https://dummyimage.com/40x40/5F574F/000000.png&text=+) | ![#494955](https://dummyimage.com/40x40/494955/000000.png&text=+) |  (73, 73, 85)   |      56       |
|         6         | (194, 195, 199) | ![#C2C3C7](https://dummyimage.com/40x40/C2C3C7/000000.png&text=+) | ![#B6B6AA](https://dummyimage.com/40x40/B6B6AA/000000.png&text=+) | (182, 182, 170) |      199      |
|         7         | (255, 241, 232) | ![#FFF1E8](https://dummyimage.com/40x40/FFF1E8/000000.png&text=+) | ![#FFFFFF](https://dummyimage.com/40x40/FFFFFF/000000.png&text=+) | (255, 255, 255) |      255      |
|         8         |  (255, 0, 77)   | ![#FF004D](https://dummyimage.com/40x40/FF004D/000000.png&text=+) | ![#FF0055](https://dummyimage.com/40x40/FF0055/000000.png&text=+) |  (255, 0, 85)   |      105      |
|         9         |  (255, 163, 0)  | ![#FFA300](https://dummyimage.com/40x40/FFA300/000000.png&text=+) | ![#FF9200](https://dummyimage.com/40x40/FF9200/000000.png&text=+) |  (255, 146, 0)  |      75       |
|        10         | (255, 236, 39)  | ![#FFEC27](https://dummyimage.com/40x40/FFEC27/000000.png&text=+) | ![#FFDB00](https://dummyimage.com/40x40/FFDB00/000000.png&text=+) |  (255, 219, 0)  |      91       |
|        11         |  (0, 228, 54)   | ![#00E436](https://dummyimage.com/40x40/00E436/000000.png&text=+) | ![#00DB55](https://dummyimage.com/40x40/00DB55/000000.png&text=+) |  (0, 219, 85)   |      50       |
|        12         | (41, 173, 255)  | ![#29ADFF](https://dummyimage.com/40x40/29ADFF/000000.png&text=+) | ![#24B6FF](https://dummyimage.com/40x40/24B6FF/000000.png&text=+) | (36, 182, 255)  |      230      |
|        13         | (131, 118, 156) | ![#83769C](https://dummyimage.com/40x40/83769C/000000.png&text=+) | ![#9292AA](https://dummyimage.com/40x40/9292AA/000000.png&text=+) | (146, 146, 170) |       7       |
|        14         | (255, 119, 168) | ![#FF77A8](https://dummyimage.com/40x40/FF77A8/000000.png&text=+) | ![#FF6DAA](https://dummyimage.com/40x40/FF6DAA/000000.png&text=+) | (255, 109, 170) |      221      |
|        15         | (255, 204, 170) | ![#FFCCAA](https://dummyimage.com/40x40/FFCCAA/000000.png&text=+) | ![#FFDBAA](https://dummyimage.com/40x40/FFDBAA/000000.png&text=+) | (255, 219, 170) |      95       |
|                   |                 |                                                                   |                                                                   |                 |               |
| 0<sup>+128</sup>  |  (40, 24, 20)   | ![#281814](https://dummyimage.com/40x40/281814/000000.png&text=+) | ![#240000](https://dummyimage.com/40x40/240000/000000.png&text=+) |   (36, 00, 0)   |      64       |
| 1<sup>+128</sup>  |  (19, 29, 54)   | ![#131D36](https://dummyimage.com/40x40/131D36/000000.png&text=+) | ![#000055](https://dummyimage.com/40x40/000055/000000.png&text=+) |   (0, 0, 85)    |      32       |
| 2<sup>+128</sup>  |  (64, 33, 54)   | ![#402136](https://dummyimage.com/40x40/402136/000000.png&text=+) | ![#492455](https://dummyimage.com/40x40/492455/000000.png&text=+) |  (73, 36, 85)   |      168      |
| 3<sup>+128</sup>  |  (31, 83, 90)   | ![#1F535A](https://dummyimage.com/40x40/1F535A/000000.png&text=+) | ![#244955](https://dummyimage.com/40x40/244955/000000.png&text=+) |  (36, 73, 85)   |      112      |
| 4<sup>+128</sup>  |  (112, 46, 39)  | ![#702E27](https://dummyimage.com/40x40/702E27/000000.png&text=+) | ![#6D2400](https://dummyimage.com/40x40/6D2400/000000.png&text=+) |  (109, 36, 0)   |      200      |
| 5<sup>+128</sup>  |  (71, 51, 59)   | ![#47333B](https://dummyimage.com/40x40/47333B/000000.png&text=+) | ![#492400](https://dummyimage.com/40x40/492400/000000.png&text=+) |   (73, 36, 0)   |      136      |
| 6<sup>+128</sup>  | (160, 136, 120) | ![#A08878](https://dummyimage.com/40x40/A08878/000000.png&text=+) | ![#926D55](https://dummyimage.com/40x40/926D55/000000.png&text=+) | (146, 109, 85)  |      177      |
| 7<sup>+128</sup>  | (242, 239, 117) | ![#F2EF75](https://dummyimage.com/40x40/F2EF75/000000.png&text=+) | ![#FFFF55](https://dummyimage.com/40x40/FFFF55/000000.png&text=+) | (255, 255, 85)  |      251      |
| 8<sup>+128</sup>  |  (182, 13, 79)  | ![#B60D4F](https://dummyimage.com/40x40/B60D4F/000000.png&text=+) | ![#B60055](https://dummyimage.com/40x40/B60055/000000.png&text=+) |  (182, 0, 85)   |      97       |
| 9<sup>+128</sup>  | (246, 106, 15)  | ![#F66A0F](https://dummyimage.com/40x40/F66A0F/000000.png&text=+) | ![#FF6D00](https://dummyimage.com/40x40/FF6D00/000000.png&text=+) |  (255, 109, 0)  |      217      |
| 10<sup>+128</sup> |  (174, 231, 1)  | ![#AEE701](https://dummyimage.com/40x40/AEE701/000000.png&text=+) | ![#B6DB00](https://dummyimage.com/40x40/B6DB00/000000.png&text=+) |  (182, 219, 0)  |      83       |
| 11<sup>+128</sup> |  (56, 181, 59)  | ![#38B53B](https://dummyimage.com/40x40/38B53B/000000.png&text=+) | ![#49B655](https://dummyimage.com/40x40/49B655/000000.png&text=+) |  (73, 182, 85)  |      170      |
| 12<sup>+128</sup> |  (34, 91, 184)  | ![#225BB8](https://dummyimage.com/40x40/225BB8/000000.png&text=+) | ![#2449AA](https://dummyimage.com/40x40/2449AA/000000.png&text=+) |  (36, 73, 170)  |      84       |
| 13<sup>+128</sup> | (114, 70, 102)  | ![#724666](https://dummyimage.com/40x40/724666/000000.png&text=+) | ![#6D4955](https://dummyimage.com/40x40/6D4955/000000.png&text=+) |  (109, 73, 85)  |      120      |
| 14<sup>+128</sup> | (246, 109, 85)  | ![#F66D55](https://dummyimage.com/40x40/F66D55/000000.png&text=+) | ![#FF6D55](https://dummyimage.com/40x40/FF6D55/000000.png&text=+) | (255, 109, 85)  |      249      |
| 15<sup>+128</sup> | (248, 156, 126) | ![#F89C7E](https://dummyimage.com/40x40/F89C7E/000000.png&text=+) | ![#FF9255](https://dummyimage.com/40x40/FF9255/000000.png&text=+) | (255, 146, 85)  |      107      |


Через те що друга половина кольорів палітри вибирається через BIAS, то деякі кольори будуть відрізнятись значно сильніше. Ось для прикладу палітра яку можна взяти для початку.

|  №  |     RGB-код     |                          Колір<br>Pico-8                          |                            Колір<br>EP                            |       RGB       | Номер палітри<br>(глобальний) | Номер палітри<br>(локальний) |
|:---:|:---------------:|:-----------------------------------------------------------------:|:-----------------------------------------------------------------:|:---------------:|:-----------------------------:|:----------------------------:|
|  0  |    (2, 4, 8)    | ![#020408](https://dummyimage.com/40x40/020408/000000.png&text=+) | ![#000000](https://dummyimage.com/40x40/000000/000000.png&text=+) |    (0, 0, 0)    |               0               |              0               |
|  1  |  (29, 43, 83)   | ![#1D2B53](https://dummyimage.com/40x40/1D2B53/000000.png&text=+) | ![#242455](https://dummyimage.com/40x40/242455/000000.png&text=+) |  (36, 36, 85)   |              224              |              1               |
|  2  |  (126, 37, 83)  | ![#7E2553](https://dummyimage.com/40x40/7E2553/000000.png&text=+) | ![#6D2455](https://dummyimage.com/40x40/6D2455/000000.png&text=+) |  (109, 36, 85)  |              232              |              2               |
|  3  |  (0, 135, 81)   | ![#008751](https://dummyimage.com/40x40/008751/000000.png&text=+) | ![#6DDB00](https://dummyimage.com/40x40/6DDB00/000000.png&text=+) |  (109, 219, 0)  |         90 (BIAS 88)          |              10              |
|  4  |  (171, 82, 54)  | ![#AB5236](https://dummyimage.com/40x40/AB5236/000000.png&text=+) | ![#924900](https://dummyimage.com/40x40/924900/000000.png&text=+) |  (146, 73, 0)   |              17               |              3               |
|  5  |  (95, 87, 79)   | ![#5F574F](https://dummyimage.com/40x40/5F574F/000000.png&text=+) | ![#6D4900](https://dummyimage.com/40x40/6D4900/000000.png&text=+) |  (109, 73, 0)   |         88 (BIAS 88)          |              8               |
|  6  | (194, 195, 199) | ![#C2C3C7](https://dummyimage.com/40x40/C2C3C7/000000.png&text=+) | ![#B6B6AA](https://dummyimage.com/40x40/B6B6AA/000000.png&text=+) | (182, 182, 170) |              199              |              4               |
|  7  | (255, 241, 232) | ![#FFF1E8](https://dummyimage.com/40x40/FFF1E8/000000.png&text=+) | ![#FFFFFF](https://dummyimage.com/40x40/FFFFFF/000000.png&text=+) | (255, 255, 255) |              255              |              7               |
|  8  |  (255, 0, 77)   | ![#FF004D](https://dummyimage.com/40x40/FF004D/000000.png&text=+) | ![#FF4900](https://dummyimage.com/40x40/FF4900/000000.png&text=+) |  (255, 73, 0)   |         89 (BIAS 88)          |              9               |
|  9  |  (255, 163, 0)  | ![#FFA300](https://dummyimage.com/40x40/FFA300/000000.png&text=+) | ![#FF9200](https://dummyimage.com/40x40/FF9200/000000.png&text=+) |  (255, 146, 0)  |              75               |              5               |
| 10  | (255, 236, 39)  | ![#FFEC27](https://dummyimage.com/40x40/FFEC27/000000.png&text=+) | ![#FFDB00](https://dummyimage.com/40x40/FFDB00/000000.png&text=+) |  (255, 219, 0)  |         91 (BIAS 88)          |              11              |
| 11  |  (0, 228, 54)   | ![#00E436](https://dummyimage.com/40x40/00E436/000000.png&text=+) | ![#6DDBAA](https://dummyimage.com/40x40/6DDBAA/000000.png&text=+) | (109, 219, 170) |         94 (BIAS 88)          |              14              |
| 12  | (41, 173, 255)  | ![#29ADFF](https://dummyimage.com/40x40/29ADFF/000000.png&text=+) | ![#24B6FF](https://dummyimage.com/40x40/24B6FF/000000.png&text=+) | (36, 182, 255)  |              230              |              6               |
| 13  | (131, 118, 156) | ![#83769C](https://dummyimage.com/40x40/83769C/000000.png&text=+) | ![#6D49AA](https://dummyimage.com/40x40/6D49AA/000000.png&text=+) | (109, 73, 170)  |         92 (BIAS 88)          |              12              |
| 14  | (255, 119, 168) | ![#FF77A8](https://dummyimage.com/40x40/FF77A8/000000.png&text=+) | ![#FF49AA](https://dummyimage.com/40x40/FF49AA/000000.png&text=+) | (255, 73, 170)  |         93 (BIAS 88)          |              13              |
| 15  | (255, 204, 170) | ![#FFCCAA](https://dummyimage.com/40x40/FFCCAA/000000.png&text=+) | ![#FFDBAA](https://dummyimage.com/40x40/FFDBAA/000000.png&text=+) | (255, 219, 170) |         95 (BIAS 88)          |              15              |

```
Palette: 0,224,232,17,199,75,230,255
BIAS: 88
```

Але якщо у грі Pico-8 деякі кольори не використовуються, то можна підібрати BIAS у який попадуть найменш важливі кольори. А важливі розмістити у місцях 0-7.