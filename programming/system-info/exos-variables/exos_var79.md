# 79 DT_FORM

EXDOS/IS-DOS variable.

 - **0**: `DD-MM-YY` / 12 hour (**default**)

| Date/Time format      |      12 hour      |      24 hour       |
| --------------------- |:-----------------:|:------------------:|
| UK (`DD-MM-YY`)       | **27** (00011011) | **155** (10011011) |
| American (`MM-DD-YY`) | **39** (00100111) | **167** (10100111) |
| ISO (`YY-MM-DD`)      | **57** (00111001) | **185** (10111001) |

The **bottom 6 bits** of the variable control the **date** format, and are considered as three two-bit fields, each of which normally has a value of **1**, **2** or **3**. The position of the fields in the byte corresponds to the position of the output or input digits, the least significant two bits, for example, thus corresponding to the right hand pair when the date is printed.

A value of **1** indicates that the current **day** will be printed in the corresponding output field, a value of **2** means the current **month** value, and a value of **3** means the current **year** value. Thus it is possible to define any date format. The required values for the three usual formats are tabularised for convenience. If all fields are zero (the default condition), then the format will default to the UK format (DD-MM-YY). If any one field is zero, than a zero will be printed in that position on output, and the corresponding value ignored on input.

| 12h/24h |  0  |      DD       |      MM       |      YY       |     Template      |        Result        |
|:-------:|:---:|:-------------:|:-------------:|:-------------:|:-----------------:|:--------------------:|
| `0`/`1` | `0` | **1**<br>`01` | **2**<br>`10` | **3**<br>`11` | **1**-**2**-**3** | **DD**-**MM**-**YY** |
| `0`/`1` | `0` | **2**<br>`10` | **1**<br>`01` | **3**<br>`11` | **1**-**2**-**3** | **MM**-**DD**-**YY** |
| `0`/`1` | `0` | **3**<br>`11` | **2**<br>`10` | **1**<br>`01` | **1**-**2**-**3** | **YY**-**MM**-**DD** |


The **top bit** of the variable controls the time format (ie. **12-hour** or **24-hour**). If reset (the default condition) then the time will be printed as a **12-hour** time followed by `a` or `p` for **am.** or **pm.** Otherwise the time will be printed in **24-hour** format with no `a` or `p`. Note that the time can be input in either format unambiguously.

----

See also EXDOS/IS-DOS [DATE](../../../manuals/dos-commands/cmd-date.md), [TIME](../../../manuals/dos-commands/cmd-time.md) and [EXDOS Appendix F](../../../manuals/exdos-man-en/exdos-a6sys-vars.md) for details.