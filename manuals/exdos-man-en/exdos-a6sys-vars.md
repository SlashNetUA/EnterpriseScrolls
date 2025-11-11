# Appendix F: Using EXDOS system variables

The standard Enterprise computer contains a feature known as [EXOS variables](../../programming/system-info/info_exos-variables.md). Many special controls can be given to the computer through use of these variables, which are usually only altered by machine code programs — although a number of [SET](../is-basic-man-en/commands/man_cs-set.md) commands of BASIC in fact use these variables directly.

EXDOS implements a special [VAR](../dos-commands/cmd-var.md) command to permit direct changing or display of EXOS variables. This command is explained in the reference section, although it should be used with care as it can have some very dramatic effects on the computer if used unwisely.

For full information about EXOS variables, you should refer to the Enterprise Technical Manual, but there are a few new variables implemented by EXDOS which you may wish to use:

| Number | Name                                                                    | Explanation                                                                                                                             |
| ------ | ----------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| 70     | [VERIFY](../../programming/system-info/exos-variables/exos_var70.md)    | EXDOS verify flag (**0**=**on**, **255**=**off**) When set ON causes verification after every disk write operation. Default is **OFF**. |
| 73     | [STEP_RATE](../../programming/system-info/exos-variables/exos_var73.md) | Step rate for all disk drives (**0**=**6ms**, **1**=**12ms**, **2**=**20ms**, **3**=**30ms**) Default is **0**.                         |
| 74     | [DSK_CHK](../../programming/system-info/exos-variables/exos_var74.md)   | Normal disk change checking for already open files. (**0**=**on**, **255**=**off**) Default is **ON**.                                  |
| 89     | [DCH_DIS](../../programming/system-info/exos-variables/exos_var89.md)   | Ignore disk change signals from drive hardware. (**0**=**on**, **255**=**off**) Default is **ON**.                                      |
| 79     | [DT_FORM](../../programming/system-info/exos-variables/exos_var79.md)   | EXDOS date and time format (see below).                                                                                                 |

## EXDOS command interpreter date and time format

Whenever a date or time is printed (such as in the [DATE](../dos-commands/cmd-date.md) and [TIME](../dos-commands/cmd-time.md) commands and in the [DIR](../dos-commands/cmd-dir.md) command), the format of the output is controlled by the variable [DT_FORM (number 79)](../../programming/system-info/exos-variables/exos_var79.md). The format expected as input to the [DATE](../dos-commands/cmd-date.md) and [TIME](../dos-commands/cmd-time.md) commands is also controlled by this variable.

The following table gives the necessary values for the variable to obtain the three common date formats in 12- or 24-hour time formats.

| Date/Time format      | 12 hour | 24 hour |
| --------------------- |:-------:|:-------:|
| UK (`DD-MM-YY`)       | **27**  | **155** |
| American (`MM-DD-YY`) | **39**  | **167** |
| ISO (`YY-MM-DD`)      | **57**  | **185** |
