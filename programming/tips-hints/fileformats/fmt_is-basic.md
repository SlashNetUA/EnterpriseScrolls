# IS-Basic BAS file format

## Header

| Name             | Length  | Byte offset | Description                                                                |
| ---------------- | ------- |:-----------:| -------------------------------------------------------------------------- |
| EXOS module type | 2 bytes |      0      | `00 03`: 2 or more IS-BASIC programs in 1 file<br>`00 04`: single IS-BASIC program |
|                  |         |             |                                                                            |



## Tokens

| Value | Meaning                               |
|:-----:| ------------------------------------- |
|   0   | [ALLOCATE](../../is-basic_man-en/man_cs-allocate.md)        |
|   1   | [ASK](../../is-basic_man-en/man_cs-ask.md)                  |
|   2   | [AUTO](../../is-basic_man-en/man_cs-auto.md)                |
|   3   | [CALL](../../is-basic_man-en/man_cs-call.md)                |
|   4   | [CAPTURE](../../is-basic_man-en/man_cs-capture.md)          |
|   5   | [CASE](../../is-basic_man-en/man_cs-select.md)              |
|   6   | [CAUSE](../../is-basic_man-en/man_cs-exception.md)          |
|   7   | [CLEAR](../../is-basic_man-en/man_cs-clear.md)              |
|   8   | [CLOSE](../../is-basic_man-en/man_cs-close.md)              |
|   9   | [CODE](../../is-basic_man-en/man_cs-code.md)                |
|  10   | [CONTINUE](../../is-basic_man-en/man_cs-continue.md)        |
|  11   | [COPY](../../is-basic_man-en/man_cs-copy.md)                |
|  12   | [DATA](../../is-basic_man-en/man_cs-data.md)  (UNTOK_LEFT)  |
|  13   | [DEF](../../is-basic_man-en/man_cs-def.md)                  |
|  14   | [DEF](../../is-basic_man-en/man_cs-def.md)                  |
|  15   | [DELETE](../../is-basic_man-en/man_cs-delete.md)            |
|  16   | [DIM](../../is-basic_man-en/man_cs-dim.md)                  |
|  17   | [DISPLAY](../../is-basic_man-en/man_cs-display.md)          |
|  18   | [DO](../../is-basic_man-en/man_cs-do.md)                    |
|  19   | [CHAIN](../../is-basic_man-en/man_cs-chain.md)              |
|  20   | [EDIT](../../is-basic_man-en/man_cs-edit.md)                |
|  21   | [ELSE](../../is-basic_man-en/man_cs-if.md)                  |
|  22   | [ELSE IF](../../is-basic_man-en/man_cs-if.md)               |
|  23   | [END](../../is-basic_man-en/man_cs-end.md)                  |
|  24   | [END DEF](../../is-basic_man-en/man_cs-end.md)              |
|  25   | [END HANDLER](../../is-basic_man-en/man_cs-end.md)          |
|  26   | [END IF](../../is-basic_man-en/man_cs-end.md)               |
|  27   | [END SELECT](../../is-basic_man-en/man_cs-end.md)           |
|  28   | [END WHEN](../../is-basic_man-en/man_cs-end.md)             |
|  29   | [ENVELOPE](../../is-basic_man-en/man_cs-envelope.md)        |
|  30   | [EXIT](../../is-basic_man-en/man_cs-exit.md)                |
|  31   | [FOR](../../is-basic_man-en/man_cs-for.md)                  |
|  32   | [GOSUB](../../is-basic_man-en/man_cs-gosub.md)              |
|  33   | [GOTO](../../is-basic_man-en/man_cs-goto.md)                |
|  34   | [GRAPHICS](../../is-basic_man-en/man_cs-graphics.md)        |
|  35   | [HANDLER](../../is-basic_man-en/man_cs-handler.md)          |
|  36   | [IMAGE](../../is-basic_man-en/man_cs-image.md) (UNTOK_LEFT) |
|  37   | [IF](../../is-basic_man-en/man_cs-if.md)                    |
|  38   | [IF](../../is-basic_man-en/man_cs-if.md)                    |
|  39   | [INPUT](../../is-basic_man-en/man_cs-input.md)              |
|  40   | [LET](../../is-basic_man-en/man_cs-let.md)                  |
|  41   | [LINE](../../is-basic_man-en/man_cs-line-input.md)          |
|  42   | [LIST](../../is-basic_man-en/man_cs-list.md)                |
|  43   | [LOAD](../../is-basic_man-en/man_cs-load.md)                |
|  44   | [LOOP](../../is-basic_man-en/man_cs-do.md)                  |
|  45   | [MERGE](../../is-basic_man-en/man_cs-merge.md)              |
|  46   | [NEW](../../is-basic_man-en/man_cs-new.md)                  |
|  47   | [NEXT](../../is-basic_man-en/man_cs-for.md)                 |
|  48   | [NUMERIC](../../is-basic_man-en/man_cs-numeric.md)          |
|  49   | [OPEN](../../is-basic_man-en/man_cs-open.md)                |
|  50   | [OPTION](../../is-basic_man-en/man_cs-option.md)            |
|  51   | OK                                    |
|  52   | [OUT](../../is-basic_man-en/man_cs-out.md)                  |
|  53   | [PLOT](../../is-basic_man-en/man_cs-plot.md)                |
|  54   | [POKE](../../is-basic_man-en/man_cs-poke.md)                |
|  55   | [SPOKE](../../is-basic_man-en/man_cs-spoke.md)              |
|  56   | [PRINT](../../is-basic_man-en/man_cs-print.md)              |
|  57   | [PROGRAM](../../is-basic_man-en/man_cs-program.md)          |
|  58   | [RANDOMIZE](../../is-basic_man-en/man_cs-randomize.md)      |
|  59   | [READ](../../is-basic_man-en/man_cs-read.md)                |
|  60   | [REDIRECT](../../is-basic_man-en/man_cs-redirect.md)        |
|  61   | [REM](../../is-basic_man-en/man_cs-rem.md)  (UNTOK_LEFT)    |
|  62   | [RENUMBER](../../is-basic_man-en/man_cs-renumber.md)        |
|  63   | [RESTORE](../../is-basic_man-en/man_cs-restore.md)          |
|  64   | [RETRY](../../is-basic_man-en/man_cs-retry.md)              |
|  65   | [RETURN](../../is-basic_man-en/man_cs-return.md)            |
|  66   | [RUN](../../is-basic_man-en/man_cs-run.md)                  |
|  67   | [SAVE](../../is-basic_man-en/man_cs-save.md)                |
|  68   | [SELECT](../../is-basic_man-en/man_cs-select.md)            |
|  69   | [SET](../../is-basic_man-en/man_cs-set.md)                  |
|  70   | [SOUND](../../is-basic_man-en/man_cs-sound.md)              |
|  71   | [START](../../is-basic_man-en/man_cs-start.md)              |
|  72   | [STOP](../../is-basic_man-en/man_cs-stop.md)                |
|  73   | [INFO](../../is-basic_man-en/man_cs-info.md)                |
|  74   | [STRING](../../is-basic_man-en/man_cs-string.md)            |
|  75   | [TEXT](../../is-basic_man-en/man_cs-text.md)                |
|  76   | [TOGGLE](../../is-basic_man-en/man_cs-toggle.md)            |
|  77   | [TRACE](../../is-basic_man-en/man_cs-trace.md)              |
|  78   | [TYPE](../../is-basic_man-en/man_cs-type.md)                |
|  79   | [VERIFY](../../is-basic_man-en/man_cs-verify.md)            |
|  80   | [WHEN](../../is-basic_man-en/man_cs-when.md)                |
|  81   | [!](../../is-basic_man-en/man_cs-rem.md)  (UNTOK_LEFT)      |
|  82   | [LLIST](../../is-basic_man-en/man_cs-llist.md)              |
|  83   | [LPRINT](../../is-basic_man-en/man_cs-lprint.md)            |
|  84   | [EXT](../../is-basic_man-en/man_cs-ext.md)                  |
|  85   | [GET](../../is-basic_man-en/man_cs-get.md)                  |
|  86   | [FLUSH](../../is-basic_man-en/man_cs-flush.md)              |
|  87   | [LOOK](../../is-basic_man-en/man_cs-look.md)                |
|  88   | [PING](../../is-basic_man-en/man_cs-ping.md)                |
|  89   | [DATE](../../is-basic_man-en/man_cs-date.md)                |
|  90   | [TIME](../../is-basic_man-en/man_cs-time.md)                |
|  91   | [WAIT](../../is-basic_man-en/man_cs-wait-delay.md)          |
|  92   | [ON](../../is-basic_man-en/man_cs-on.md)                    |
|       |                                       |

[Детальніше](https://ep128.hu/Ep_Konyv/Gepi_kod_2.htm#327)

⚠ Програмні розширення Бейсіку використовують додаткові токени, значення яких змінюється в залежності порядку завантаження розширень. Без завантажених розширень програма не буде працювати (просто зависне), як і буде неможливим виконання команди LIST та інших.


### EnterSprite Extension Tokens

|   Value   | Meaning   |
|:---------:| --------- |
| 93 (5Dh)  | SPRON     |
| 94 (5Eh)  | SPROFF    |
| 95 (5Fh)  | DIRECTION |
| 96 (60h)  | CHANGE    |
| 97 (61h)  | POSITION  |
| 98 (62h)  | ANIMON    |
| 99 (63h)  | ANIMOFF   |
| 100 (64h) | SPEEDAN   |
| 101 (65h) | SPEEDSPR  |
| 102 (66h) | SLOAD     |
| 103 (67h) | ANIMATE   |
| 104 (68h) | INIT      |
