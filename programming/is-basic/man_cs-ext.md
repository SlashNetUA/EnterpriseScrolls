# EXT

`EXT parameter-string`

Passes a string through to the operating system, which is then passed to valid external programs in memory (either ROM or RAM). The string is then interpreted by these programs as appropriate.

Usually the first word of the parameter string specifies a command to be operated, or a new program to be jumped to.

For example:

`EXT "WP"`

jumps to the built-in word processor of the computer.

The word "HELP" has a special significance as it requires all external programs to reply with their names. Replies from the external programs are sent to the default system channel. See the [DEFAULT CHANNEL](man_op-defchan.md) machine option.

Additional application and service programs will define their own command names and parameter requirements. Often these programs will respond to the instruction

`EXT "HELP NAME"`

(where "NAME" is the main name of the program) by giving a list of available string commands.

The same effect as **EXT** can be obtained in immediate mode by starting a line with a colon. In this case, no quotes are required around the parameter string.

`:HELP NAME`
