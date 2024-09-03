# IS-Basic BAS file format

## Header

| Name             | Length  | Byte offset | Description                                                                |
| ---------------- | ------- |:-----------:| -------------------------------------------------------------------------- |
| EXOS module type | 2 bytes |      0      | `00 03`: IS-BASIC programs in 1 file<br>`00 04`: IS-BASIC program (single) |
|                  |         |             |                                                                            |



## Tokens

| Value | Meaning                               |
|:-----:| ------------------------------------- |
|   0   | [ALLOCATE](man_cs-allocate.md)        |
|   1   | [ASK](man_cs-ask.md)                  |
|   2   | [AUTO](man_cs-auto.md)                |
|   3   | [CALL](man_cs-call.md)                |
|   4   | [CAPTURE](man_cs-capture.md)          |
|   5   | [CASE](man_cs-select.md)              |
|   6   | [CAUSE](man_cs-exception.md)          |
|   7   | [CLEAR](man_cs-clear.md)              |
|   8   | [CLOSE](man_cs-close.md)              |
|   9   | [CODE](man_cs-code.md)                |
|  10   | [CONTINUE](man_cs-continue.md)        |
|  11   | [COPY](man_cs-copy.md)                |
|  12   | [DATA](man_cs-data.md)  (UNTOK_LEFT)  |
|  13   | [DEF](man_cs-def.md)                  |
|  14   | [DEF](man_cs-def.md)                  |
|  15   | [DELETE](man_cs-delete.md)            |
|  16   | [DIM](man_cs-dim.md)                  |
|  17   | [DISPLAY](man_cs-display.md)          |
|  18   | [DO](man_cs-do.md)                    |
|  19   | [CHAIN](man_cs-chain.md)              |
|  20   | [EDIT](man_cs-edit.md)                |
|  21   | [ELSE](man_cs-if.md)                  |
|  22   | [ELSE IF](man_cs-if.md)               |
|  23   | [END](man_cs-end.md)                  |
|  24   | [END DEF](man_cs-end.md)              |
|  25   | [END HANDLER](man_cs-end.md)          |
|  26   | [END IF](man_cs-end.md)               |
|  27   | [END SELECT](man_cs-end.md)           |
|  28   | [END WHEN](man_cs-end.md)             |
|  29   | [ENVELOPE](man_cs-envelope.md)        |
|  30   | [EXIT](man_cs-exit.md)                |
|  31   | [FOR](man_cs-for.md)                  |
|  32   | [GOSUB](man_cs-gosub.md)              |
|  33   | [GOTO](man_cs-goto.md)                |
|  34   | [GRAPHICS](man_cs-graphics.md)        |
|  35   | [HANDLER](man_cs-handler.md)          |
|  36   | [IMAGE](man_cs-image.md) (UNTOK_LEFT) |
|  37   | [IF](man_cs-if.md)                    |
|  38   | [IF](man_cs-if.md)                    |
|  39   | [INPUT](man_cs-input.md)              |
|  40   | [LET](man_cs-let.md)                  |
|  41   | [LINE](man_cs-line-input.md)          |
|  42   | [LIST](man_cs-list.md)                |
|  43   | [LOAD](man_cs-load.md)                |
|  44   | [LOOP](man_cs-do.md)                  |
|  45   | [MERGE](man_cs-merge.md)              |
|  46   | [NEW](man_cs-new.md)                  |
|  47   | [NEXT](man_cs-for.md)                 |
|  48   | [NUMERIC](man_cs-numeric.md)          |
|  49   | [OPEN](man_cs-open.md)                |
|  50   | [OPTION](man_cs-option.md)            |
|  51   | OK                                    |
|  52   | [OUT](man_cs-out.md)                  |
|  53   | [PLOT](man_cs-plot.md)                |
|  54   | [POKE](man_cs-poke.md)                |
|  55   | [SPOKE](man_cs-spoke.md)              |
|  56   | [PRINT](man_cs-print.md)              |
|  57   | [PROGRAM](man_cs-program.md)          |
|  58   | [RANDOMIZE](man_cs-randomize.md)      |
|  59   | [READ](man_cs-read.md)                |
|  60   | [REDIRECT](man_cs-redirect.md)        |
|  61   | [REM](man_cs-rem.md)  (UNTOK_LEFT)    |
|  62   | [RENUMBER](man_cs-renumber.md)        |
|  63   | [RESTORE](man_cs-restore.md)          |
|  64   | [RETRY](man_cs-retry.md)              |
|  65   | [RETURN](man_cs-return.md)            |
|  66   | [RUN](man_cs-run.md)                  |
|  67   | [SAVE](man_cs-save.md)                |
|  68   | [SELECT](man_cs-select.md)            |
|  69   | [SET](man_cs-set.md)                  |
|  70   | [SOUND](man_cs-sound.md)              |
|  71   | [START](man_cs-start.md)              |
|  72   | [STOP](man_cs-stop.md)                |
|  73   | [INFO](man_cs-info.md)                |
|  74   | [STRING](man_cs-string.md)            |
|  75   | [TEXT](man_cs-text.md)                |
|  76   | [TOGGLE](man_cs-toggle.md)            |
|  77   | [TRACE](man_cs-trace.md)              |
|  78   | [TYPE](man_cs-type.md)                |
|  79   | [VERIFY](man_cs-verify.md)            |
|  80   | [WHEN](man_cs-when.md)                |
|  81   | [!](man_cs-rem.md)  (UNTOK_LEFT)      |
|  82   | [LLIST](man_cs-llist.md)              |
|  83   | [LPRINT](man_cs-lprint.md)            |
|  84   | [EXT](man_cs-ext.md)                  |
|  85   | [GET](man_cs-get.md)                  |
|  86   | [FLUSH](man_cs-flush.md)              |
|  87   | [LOOK](man_cs-look.md)                |
|  88   | [PING](man_cs-ping.md)                |
|  89   | [DATE](man_cs-date.md)                |
|  90   | [TIME](man_cs-time.md)                |
|  91   | [WAIT](man_cs-wait-delay.md)          |
|  92   | [ON](man_cs-on.md)                    |
|       |                                       |
