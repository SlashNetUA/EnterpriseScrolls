# User Relocatable Module

User relocatable modules are loaded into user RAM and are regarded as being part of the current applications program once loaded. It is the responsibilty of the user to organise allocation of RAM for them to be loaded into. They are useful for providing user device drivers, indeed the interlace video driver which is provided with the Enterpise Computer is loaded as a user relocatable module.

## Header (16 bytes)

| Name             | Length   | Byte offset | Description                            |
| ---------------- | -------- |:-----------:| -------------------------------------- |
| EXOS module type | 2 bytes  |      0      | `00 02`                                |
| SIZE             | 2 bytes  |      2      | Size of code once loaded               |
| INIT_OFFSET      | 2 bytes  |      4      | Initialisation offset (0FFFFh if none) |
| OTHER            | 10 bytes |      6      | zero                                   |
 
See also [User Relocatable Modules](http://ep.homeserver.hu/Dokumentacio/Konyvek/EXOS_2.1_technikal_information/exos/kernel/Ch10.html#10.4)
