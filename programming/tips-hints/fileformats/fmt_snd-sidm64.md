# Converted SID file for SIDBasic Player

SID file converted for playing by Enterprise.  
Extension: **M64**

## Header (16 bytes)

| Name        | Length   | Byte offset | Description                                                                                                                             |
| ----------- | -------- |:-----------:| --------------------------------------------------------------------------------------------------------------------------------------- |
| EXOS header | 2 bytes  |      0      | `00h 4Fh`                                                                                                                               |
| File size   | 2 bytes  |      2      | file size without the header (LSB first) |
| ?           | 12 bytes |      4      | (unknown)                                                                                                                                        |

## Description of the format

Uses **16384** bytes each block, each block stores **655** bytes of one of the **25** SID registers, the first are the **655** bytes of register **0**, the next **655** bytes for the register **1**, and so on. The last **9** bytes are usually **0**, except: - in the last block, the number of interruptions actually used is **3FFE**-**3FFF**, which can be less than **655** - in the first block with **3FFD** the breaking frequency - **50 Hz** can be found (so **50**-**305 Hz** is possible), **3FFB**-**3FFC** is the exact number of SID cycles between interruptions at CIA timing (CIA counter value + **1**). For video interrupt, it is **0** and the default is **312** \* **63** (PAL 50 Hz) or **262** \* **65** (NTSC 60 Hz).

The Sid.com command only takes note of the rounded Hz value. The Initially unused bit **7** of channel **3** register (PWM top 4 bit) has a special function: it indicates that the envelope curve must be restarted by the GATE bit during a 1-> 0-> 1 transition period.

(from [Enterpress 2017 \#2-3](http://enterprise.iko.hu/magazines/Enterpress_2017_per_2-3_UK.pdf#page=18) magazine)