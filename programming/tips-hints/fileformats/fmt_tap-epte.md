# EPTE tape image file

Образ касетної стрічки для утіліти **EPTE**.  
Відкриває його також **Tapir**.  
Може використовуватись у емуляторі [ep128emu](../../../emulators/em-ep128emu.md) та його допоміжною утілітою **tapeedit**.

Файли зберігаються у бінарному виді (аналогічно як у TAP для ZX Spectrum). Нестандартні лоадери не підтримуються.


> [!QUOTE]
> The EPTE tape format consists of a 512 bytes long header, and then all the EXOS format cassette data as raw bytes (not audio), except the leader tones and sync bits are not included. So, the emulator needs to synthesize the audio from this data. In the header, at an offset of 128 bytes, there is always the 32 bytes long string "ENTERPRISE 128K TAPE FILE       ". The rest of the header contains the starting position (in bytes, relative to the beginning of the cassette data) of each chunk as 32-bit LSB first integers. Thus, the first 128 bytes of the header is a table of 32 chunk positions. However, this is followed by the "ENTERPRISE 128K TAPE FILE       " string, so it is not clear if more than 32 chunks are possible by continuing the table after skipping these 32 bytes. Fortunately, most programs (except some large ones usually loaded from disk) do not need more than 32 chunks. To play one chunk as audio, the emulator generates the leader tone and the sync bit, and then the raw data bytes, which are encoded in least significant bit first order.

## Header (512 bytes)

| Name          | Length  | Byte offset | Description                        |
| ------------- | ------- |:-----------:| ---------------------------------- |
| CHUNK_ADDR_01 | 4 byte  |      0      |                                    |
| CHUNK_ADDR_02 | 4 byte  |   4 / 04h   |                                    |
| CHUNK_ADDR_03 | 4 byte  |   8 / 08h   |                                    |
| CHUNK_ADDR_04 | 4 byte  |  12 / 0Ch   |                                    |
| CHUNK_ADDR_05 | 4 byte  |  16 / 10h   |                                    |
| CHUNK_ADDR_06 | 4 byte  |  20 / 14h   |                                    |
| CHUNK_ADDR_07 | 4 byte  |  24 / 18h   |                                    |
| CHUNK_ADDR_08 | 4 byte  |  28 / 1Ch   |                                    |
| CHUNK_ADDR_09 | 4 byte  |  32 / 20h   |                                    |
| CHUNK_ADDR_10 | 4 byte  |  36 / 24h   |                                    |
| CHUNK_ADDR_11 | 4 byte  |  40 / 28h   |                                    |
| CHUNK_ADDR_12 | 4 byte  |  44 / 2Ch   |                                    |
| CHUNK_ADDR_13 | 4 byte  |  48 / 30h   |                                    |
| CHUNK_ADDR_14 | 4 byte  |  52 / 34h   |                                    |
| CHUNK_ADDR_15 | 4 byte  |  56 / 38h   |                                    |
| CHUNK_ADDR_16 | 4 byte  |  60 / 3Ch   |                                    |
| CHUNK_ADDR_17 | 4 byte  |  64 / 40h   |                                    |
| CHUNK_ADDR_18 | 4 byte  |  68 / 44h   |                                    |
| CHUNK_ADDR_19 | 4 byte  |  72 / 48h   |                                    |
| CHUNK_ADDR_20 | 4 byte  |  76 / 4Ch   |                                    |
| CHUNK_ADDR_21 | 4 byte  |  80 / 50h   |                                    |
| CHUNK_ADDR_22 | 4 byte  |  84 / 54h   |                                    |
| CHUNK_ADDR_23 | 4 byte  |  88 / 58h   |                                    |
| CHUNK_ADDR_24 | 4 byte  |  92 / 5Ch   |                                    |
| CHUNK_ADDR_25 | 4 byte  |  96 / 60h   |                                    |
| CHUNK_ADDR_26 | 4 byte  |  100 / 64h  |                                    |
| CHUNK_ADDR_27 | 4 byte  |  104 / 68h  |                                    |
| CHUNK_ADDR_28 | 4 byte  |  108 / 6Ch  |                                    |
| CHUNK_ADDR_29 | 4 byte  |  112 / 70h  |                                    |
| CHUNK_ADDR_30 | 4 byte  |  116 / 74h  |                                    |
| CHUNK_ADDR_31 | 4 byte  |  120 / 78h  |                                    |
| CHUNK_ADDR_32 | 4 byte  |  124 / 7Ch  |                                    |
| FILE_ID       | 32 byte |  128 / 80h  | `ENTERPRISE 128K TAPE FILE       ` |
| FILE_COMMENT  | 32 byte |  160 / A0h  | File Comment                       |
|               |         |             |                                    |
|               |         |             |                                    |
|               |         |             |                                    |


## Body

See [fmt_tape-bin-img](fmt_tape-bin-img.md)