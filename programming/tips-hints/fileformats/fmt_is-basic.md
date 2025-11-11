# IS-Basic BAS file format

## Header

| Name             | Length  | Byte offset | Description                                                                |
| ---------------- | ------- |:-----------:| -------------------------------------------------------------------------- |
| EXOS module type | 2 bytes |      0      | `00 03`: 2 or more IS-BASIC programs in 1 file<br>`00 04`: single IS-BASIC program |
|                  |         |             |                                                                            |



## Tokens

| Value | Meaning                               |
|:-----:| ------------------------------------- |
|   0   | [ALLOCATE](../../../manuals/is-basic-man-en/commands/man_cs-allocate.md)        |
|   1   | [ASK](../../../manuals/is-basic-man-en/commands/man_cs-ask.md)                  |
|   2   | [AUTO](../../../manuals/is-basic-man-en/commands/man_cs-auto.md)                |
|   3   | [CALL](../../../manuals/is-basic-man-en/commands/man_cs-call.md)                |
|   4   | [CAPTURE](../../../manuals/is-basic-man-en/commands/man_cs-capture.md)          |
|   5   | [CASE](../../../manuals/is-basic-man-en/commands/man_cs-select.md)              |
|   6   | [CAUSE](../../../manuals/is-basic-man-en/commands/man_cs-exception.md)          |
|   7   | [CLEAR](../../../manuals/is-basic-man-en/commands/man_cs-clear.md)              |
|   8   | [CLOSE](../../../manuals/is-basic-man-en/commands/man_cs-close.md)              |
|   9   | [CODE](../../../manuals/is-basic-man-en/commands/man_cs-code.md)                |
|  10   | [CONTINUE](../../../manuals/is-basic-man-en/commands/man_cs-continue.md)        |
|  11   | [COPY](../../../manuals/is-basic-man-en/commands/man_cs-copy.md)                |
|  12   | [DATA](../../../manuals/is-basic-man-en/commands/man_cs-data.md)  (UNTOK_LEFT)  |
|  13   | [DEF](../../../manuals/is-basic-man-en/commands/man_cs-def.md)                  |
|  14   | [DEF](../../../manuals/is-basic-man-en/commands/man_cs-def.md)                  |
|  15   | [DELETE](../../../manuals/is-basic-man-en/commands/man_cs-delete.md)            |
|  16   | [DIM](../../../manuals/is-basic-man-en/commands/man_cs-dim.md)                  |
|  17   | [DISPLAY](../../../manuals/is-basic-man-en/commands/man_cs-display.md)          |
|  18   | [DO](../../../manuals/is-basic-man-en/commands/man_cs-do.md)                    |
|  19   | [CHAIN](../../../manuals/is-basic-man-en/commands/man_cs-chain.md)              |
|  20   | [EDIT](../../../manuals/is-basic-man-en/commands/man_cs-edit.md)                |
|  21   | [ELSE](../../../manuals/is-basic-man-en/commands/man_cs-if.md)                  |
|  22   | [ELSE IF](../../../manuals/is-basic-man-en/commands/man_cs-if.md)               |
|  23   | [END](../../../manuals/is-basic-man-en/commands/man_cs-end.md)                  |
|  24   | [END DEF](../../../manuals/is-basic-man-en/commands/man_cs-end.md)              |
|  25   | [END HANDLER](../../../manuals/is-basic-man-en/commands/man_cs-end.md)          |
|  26   | [END IF](../../../manuals/is-basic-man-en/commands/man_cs-end.md)               |
|  27   | [END SELECT](../../../manuals/is-basic-man-en/commands/man_cs-end.md)           |
|  28   | [END WHEN](../../../manuals/is-basic-man-en/commands/man_cs-end.md)             |
|  29   | [ENVELOPE](../../../manuals/is-basic-man-en/commands/man_cs-envelope.md)        |
|  30   | [EXIT](../../../manuals/is-basic-man-en/commands/man_cs-exit.md)                |
|  31   | [FOR](../../../manuals/is-basic-man-en/commands/man_cs-for.md)                  |
|  32   | [GOSUB](../../../manuals/is-basic-man-en/commands/man_cs-gosub.md)              |
|  33   | [GOTO](../../../manuals/is-basic-man-en/commands/man_cs-goto.md)                |
|  34   | [GRAPHICS](../../../manuals/is-basic-man-en/commands/man_cs-graphics.md)        |
|  35   | [HANDLER](../../../manuals/is-basic-man-en/commands/man_cs-handler.md)          |
|  36   | [IMAGE](../../../manuals/is-basic-man-en/commands/man_cs-image.md) (UNTOK_LEFT) |
|  37   | [IF](../../../manuals/is-basic-man-en/commands/man_cs-if.md)                    |
|  38   | [IF](../../../manuals/is-basic-man-en/commands/man_cs-if.md)                    |
|  39   | [INPUT](../../../manuals/is-basic-man-en/commands/man_cs-input.md)              |
|  40   | [LET](../../../manuals/is-basic-man-en/commands/man_cs-let.md)                  |
|  41   | [LINE](../../../manuals/is-basic-man-en/commands/man_cs-line-input.md)          |
|  42   | [LIST](../../../manuals/is-basic-man-en/commands/man_cs-list.md)                |
|  43   | [LOAD](../../../manuals/is-basic-man-en/commands/man_cs-load.md)                |
|  44   | [LOOP](../../../manuals/is-basic-man-en/commands/man_cs-do.md)                  |
|  45   | [MERGE](../../../manuals/is-basic-man-en/commands/man_cs-merge.md)              |
|  46   | [NEW](../../../manuals/is-basic-man-en/commands/man_cs-new.md)                  |
|  47   | [NEXT](../../../manuals/is-basic-man-en/commands/man_cs-for.md)                 |
|  48   | [NUMERIC](../../../manuals/is-basic-man-en/commands/man_cs-numeric.md)          |
|  49   | [OPEN](../../../manuals/is-basic-man-en/commands/man_cs-open.md)                |
|  50   | [OPTION](../../../manuals/is-basic-man-en/commands/man_cs-option.md)            |
|  51   | OK                                    |
|  52   | [OUT](../../../manuals/is-basic-man-en/commands/man_cs-out.md)                  |
|  53   | [PLOT](../../../manuals/is-basic-man-en/commands/man_cs-plot.md)                |
|  54   | [POKE](../../../manuals/is-basic-man-en/commands/man_cs-poke.md)                |
|  55   | [SPOKE](../../../manuals/is-basic-man-en/commands/man_cs-spoke.md)              |
|  56   | [PRINT](../../../manuals/is-basic-man-en/commands/man_cs-print.md)              |
|  57   | [PROGRAM](../../../manuals/is-basic-man-en/commands/man_cs-program.md)          |
|  58   | [RANDOMIZE](../../../manuals/is-basic-man-en/commands/man_cs-randomize.md)      |
|  59   | [READ](../../../manuals/is-basic-man-en/commands/man_cs-read.md)                |
|  60   | [REDIRECT](../../../manuals/is-basic-man-en/commands/man_cs-redirect.md)        |
|  61   | [REM](../../../manuals/is-basic-man-en/commands/man_cs-rem.md)  (UNTOK_LEFT)    |
|  62   | [RENUMBER](../../../manuals/is-basic-man-en/commands/man_cs-renumber.md)        |
|  63   | [RESTORE](../../../manuals/is-basic-man-en/commands/man_cs-restore.md)          |
|  64   | [RETRY](../../../manuals/is-basic-man-en/commands/man_cs-retry.md)              |
|  65   | [RETURN](../../../manuals/is-basic-man-en/commands/man_cs-return.md)            |
|  66   | [RUN](../../../manuals/is-basic-man-en/commands/man_cs-run.md)                  |
|  67   | [SAVE](../../../manuals/is-basic-man-en/commands/man_cs-save.md)                |
|  68   | [SELECT](../../../manuals/is-basic-man-en/commands/man_cs-select.md)            |
|  69   | [SET](../../../manuals/is-basic-man-en/commands/man_cs-set.md)                  |
|  70   | [SOUND](../../../manuals/is-basic-man-en/commands/man_cs-sound.md)              |
|  71   | [START](../../../manuals/is-basic-man-en/commands/man_cs-start.md)              |
|  72   | [STOP](../../../manuals/is-basic-man-en/commands/man_cs-stop.md)                |
|  73   | [INFO](../../../manuals/is-basic-man-en/commands/man_cs-info.md)                |
|  74   | [STRING](../../../manuals/is-basic-man-en/commands/man_cs-string.md)            |
|  75   | [TEXT](../../../manuals/is-basic-man-en/commands/man_cs-text.md)                |
|  76   | [TOGGLE](../../../manuals/is-basic-man-en/commands/man_cs-toggle.md)            |
|  77   | [TRACE](../../../manuals/is-basic-man-en/commands/man_cs-trace.md)              |
|  78   | [TYPE](../../../manuals/is-basic-man-en/commands/man_cs-type.md)                |
|  79   | [VERIFY](../../../manuals/is-basic-man-en/commands/man_cs-verify.md)            |
|  80   | [WHEN](../../../manuals/is-basic-man-en/commands/man_cs-when.md)                |
|  81   | [!](../../../manuals/is-basic-man-en/commands/man_cs-rem.md)  (UNTOK_LEFT)      |
|  82   | [LLIST](../../../manuals/is-basic-man-en/commands/man_cs-llist.md)              |
|  83   | [LPRINT](../../../manuals/is-basic-man-en/commands/man_cs-lprint.md)            |
|  84   | [EXT](../../../manuals/is-basic-man-en/commands/man_cs-ext.md)                  |
|  85   | [GET](../../../manuals/is-basic-man-en/commands/man_cs-get.md)                  |
|  86   | [FLUSH](../../../manuals/is-basic-man-en/commands/man_cs-flush.md)              |
|  87   | [LOOK](../../../manuals/is-basic-man-en/commands/man_cs-look.md)                |
|  88   | [PING](../../../manuals/is-basic-man-en/commands/man_cs-ping.md)                |
|  89   | [DATE](../../../manuals/is-basic-man-en/commands/man_cs-date.md)                |
|  90   | [TIME](../../../manuals/is-basic-man-en/commands/man_cs-time.md)                |
|  91   | [WAIT](../../../manuals/is-basic-man-en/commands/man_cs-wait-delay.md)          |
|  92   | [ON](../../../manuals/is-basic-man-en/commands/man_cs-on.md)                    |
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
