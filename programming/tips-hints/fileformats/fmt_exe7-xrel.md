# Relocatable System Extension

Relocatable and absolute system extension are loaded automatically by EXOS when the appropriate module header is found. They are loaded into segments which EXOS marks as allocated to devices and will therefore never be freed. Once loaded they function exactly like ROM based system extensions, with a single entry point which is passed action codes.

Relocatable extensions and RAM areas for ROM extensions are allocated from the top of a segment downwards and there can be as many of these in a segment as will fit.

## Header (16 bytes)

| Name             | Length   | Byte offset | Description                     |
| ---------------- | -------- |:-----------:| ------------------------------- |
| EXOS module type | 2 bytes  |      0      | `00 07`                         |
| SIZE             | 2 bytes  |      2      | Size of code once loaded (<16K) |
| OTHER            | 12 bytes |      4      | zero                            |
 
See also [Relocatable and Absolute System Extensions](http://ep.homeserver.hu/Dokumentacio/Konyvek/EXOS_2.1_technikal_information/exos/kernel/Ch10.html#10.5)
