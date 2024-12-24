# 2 - CODE_SOFT_IRQ

This is the copy of the flag set by the device and is the variable that should be inspected by a software interrupt service routine to determine the reason for the interrupt.

| Value |  Device  | Description                                 |  EXOS versions   |
|:-----:|:--------:| ------------------------------------------- |:----------------:|
|  00h  |          | Default value                               |       all        |
|  10h  | KEYBOARD | **F1** key                                  |       all        |
|  11h  | KEYBOARD | **F2** key                                  |       all        |
|  12h  | KEYBOARD | **F3** key                                  |       all        |
|  13h  | KEYBOARD | **F4** key                                  |       all        |
|  14h  | KEYBOARD | **F5** key                                  |       all        |
|  15h  | KEYBOARD | **F6** key                                  |       all        |
|  16h  | KEYBOARD | **F7** key                                  |       all        |
|  17h  | KEYBOARD | **F8** key                                  |       all        |
|  18h  | KEYBOARD | **Shift**+**F1** key                        |       all        |
|  19h  | KEYBOARD | **Shift**+**F2** key                        |       all        |
|  1Ah  | KEYBOARD | **Shift**+**F3** key                        |       all        |
|  1Bh  | KEYBOARD | **Shift**+**F4** key                        |       all        |
|  1Ch  | KEYBOARD | **Shift**+**F5** key                        |       all        |
|  1Dh  | KEYBOARD | **Shift**+**F6** key                        |       all        |
|  1Eh  | KEYBOARD | **Shift**+**F7** key                        |       all        |
|  1Fh  | KEYBOARD | **Shift**+**F8** key                        |       all        |
|  20h  | KEYBOARD | **Stop** key pressed                        |       all        |
|  21h  | KEYBOARD | Any normal key pressed (disable by default) |       all        |
|  30h  |   NET    | Data block received on a network channel    |       all        |
|  40h  |  KERNEL  | The [TIMER](exos-variables/exos_var5.md) EXOS variable has counted to zero | v2.1 and greater |
|       |          |                                             |                  |


Memory address: **49095**

