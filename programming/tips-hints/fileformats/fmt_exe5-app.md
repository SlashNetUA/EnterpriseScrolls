# New Applications Program

The _new applications program_ module type is loaded automatically by EXOS when the header is found. It can be used to load programs of up to 47.75K. The program it loads will automatically be started up as the new applications program, losing the previous one. It is intended for loading programs such as machine code games from cassette although it will have other uses.

## Header (16 bytes)

| Name             | Length   | Byte offset | Description                                 |
| ---------------- | -------- |:-----------:| ------------------------------------------- |
| EXOS module type | 2 bytes  |      0      | `00 05`                                     |
| SIZE             | 2 bytes  |      2      | Size of program in bytes *(low byte first)* |
| OTHER            | 12 bytes |      4      | zero                                        | 

See also [New Applications Programs](http://ep.homeserver.hu/Dokumentacio/Konyvek/EXOS_2.1_technikal_information/exos/kernel/Ch10.html#10.6)
