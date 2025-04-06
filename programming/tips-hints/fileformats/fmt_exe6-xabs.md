# Absolute System Extension

Relocatable and absolute system extension are loaded automatically by EXOS when the appropriate module header is found. They are loaded into segments which EXOS marks as allocated to devices and will therefore never be freed. Once loaded they function exactly like ROM based system extensions, with a single entry point which is passed action codes.

Absolute system extensions always go at the bottom of a segment and so there can only be one per segment.

## Header (16 bytes)

| Name             | Length   | Byte offset | Description                     |
| ---------------- | -------- |:-----------:| ------------------------------- |
| EXOS module type | 2 bytes  |      0      | `00 06`                         |
| SIZE             | 2 bytes  |      2      | Size of code once loaded (<16K) |
| OTHER            | 12 bytes |      4      | zero                            |
 
See also [Relocatable and Absolute System Extensions](http://ep.homeserver.hu/Dokumentacio/Konyvek/EXOS_2.1_technikal_information/exos/kernel/Ch10.html#10.5)
