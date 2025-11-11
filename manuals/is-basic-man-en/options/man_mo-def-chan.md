# DEFAULT CHANNEL

`SET DEFAULT CHANNEL expr`

Specifies the default system channel. This channel value can then be used by service programs which wish to communicate with the user, but which do not know the purpose of currently-used channels.

In particular this channel will be used by programs responding to the **HELP** command sent via the operating system.

Before having been [SET](commands/man_cs-set.md), this channel will be number **0**.
