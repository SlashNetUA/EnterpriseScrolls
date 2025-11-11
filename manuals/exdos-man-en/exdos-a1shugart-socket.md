# Appendix A: The "Shugart 410" socket.

Nearly all **3.5”** and **5.25”** disk drives provide a socket and interface signals which accord with the industry standard connection, normally known as "Shugart 410".

The Enterprise disk interface unit contains a "Shugart 410" socket for connection to the ribbon cable from your disk drives. This appendix describes the signals on this socket.
	
## Diagram A: View looking INTO drive connector on disk interface module.

```
    ┌────────────────   ────────────────┐
 33 │ • • • • • • • • • • • • • • • • • │ 1
 34 │ • • • • • • • • • • • • • • • • • │ 2
 ───┴───────────────────────────────────┴───
```
Certain signals (marked \*) are optional and need not be supported by the disk drive.

|      Pin       | I/O | Description                                                                                                                                         |
|:--------------:|:---:| --------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1<sup>*</sup>  |  O  | Disk change reset. Active signal resets disk change latch found on some drives.<br> (This signal may be grounded by some drives that do not use it) |
| 2<sup>*</sup>  |  I  | Disk changed. Output from latch present in some drives, otherwise open circuit.                                                                     |
| 4<sup>*</sup>  |  O  | In use. Supported by the hardware but not by the EXDOS software.                                                                                    |
|       6        |  O  | Select drive 3. True if drive 3 selected.                                                                                                           |
|       8        |  I  | Index pulse.                                                                                                                                        |
|       10       |  O  | Select drive 0. True if drive 0 selected.                                                                                                           |
|       12       |  O  | As above, drive 1.                                                                                                                                  |
|       14       |  O  | As above, drive 2.                                                                                                                                  |
|       16       |  O  | Motor on.                                                                                                                                           |
|       18       |  O  | Step direction.                                                                                                                                     |
|       20       |  O  | Step pulse.                                                                                                                                         |
|       22       |  O  | Write data.                                                                                                                                         |
|       24       |  O  | Write gate.                                                                                                                                         |
|       26       |  I  | Track 0.                                                                                                                                            |
|       28       |  I  | Write protect.                                                                                                                                      |
|       30       |  I  | Read data.                                                                                                                                          |
|       32       |  O  | Select side 1. True for side 1 selected.                                                                                                            |
| 34<sup>*</sup> |  I  | Ready. Not all drives provide this signal, but its use is recommended.                                                                              |

Pins **3**, **5**, **7**, **9**, **11**, **13**, **15**, **17**, **19**, **21**, **23**, **25**, **27**, **29**, **31** and **33** are **Ground** and **signal return**.

The Enterprise disk interface is designed around the **Western Digital 1770** disk controller chip. For further information on the operation of the disk interface signals, please consult the WD1770 data sheet or the Enterprise Technical Manual.

## Auxiliary power socket.

This socket is provided on the adaptor unit for use in areas of low mains voltage, usually characterised by distortion of the TV picture. For advice on use, please contact Enterprise Computers Ltd. or their distributors.