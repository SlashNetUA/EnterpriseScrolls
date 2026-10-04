---
title: "COM:"
---
# COM:

Використовувався у [модемі](../../../hardware/net/hn-bugtronics-modem.md) від BUGTronics для використання повнодуплексного послідовного порта.

A serial port channel can be opened by giving the device name `COM:`. Any unit no. or filename is ignored, and the OPEN and CREATE functions are treated identically.

Before opening a COM: channel, the following [EXOS variables](../info_exos-variables.md) must be set up (if not the default values are satisfactory or changed): 

 - [Var 129: BAUD_COM](../exos-variables/exos_var129_com.md)   - Baud rate used for transmission/reception.
 - [Var 130: FORMAT_COM](../exos-variables/exos_var130_com.md) - Serial format used in transmission/reception.

When a channel is opened, the data line will change from the BREAK condition, and RTS will be active ('ON').