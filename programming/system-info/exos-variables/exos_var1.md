# 1 - FLAG_SOFT_IRQ

This is the byte set non-zero by а device to cause a software interrupt. It could also be set by the user to cause a software interupt directly. This variable is also available at a fixed address given in an earlier section.

**0**: Default value  

## Software Interrupt Codes

A software interrupt with a certain code can be caused by storing that code in this variable. The codes which are used by the built in devices are listed here. Details of enabling and disabling these can be found in the appropriate device driver specification.

|       Value       |                  Device                   | Description                                                       |
|:-----------------:|:-----------------------------------------:| ----------------------------------------------------------------- |
| **10h**...**1Fh** | ([KEYBOARD](../exos-devices/keyboard.md)) | Function keys 1 to 8 and also shifted function keys 1 to 8.       |
|      **20h**      | ([KEYBOARD](../exos-devices/keyboard.md)) | STOP key pressed.                                                 |
|      **21h**      | ([KEYBOARD](../exos-devices/keyboard.md)) | Any normal key pressed (this is disabled by default).             |
|      **30h**      |      ([NET](../exos-devices/net.md))      | Data block received on a network channel.                         |
|      **40h**      |                 (KERNEL)                  | The [TIMER](exos_var5.md) EXOS variable has counted down to zero. |

----

See also [sys-var_flag-soft-irq](sys-var_flag-soft-irq.md)