# COPY

`COPY FROM £chan TO £chan`

Copies the contents of one channel to a second channel (both channels must be open). The copy terminates on end-of-file, an error, or the 'Stop' key. Default input is channel **0**. Default output is channel **104**.

`COPY`

copies from £0 to £104.

`COPY FROM £5`

copies from £5 to £104. Requires channel 5 to have been opened.

----

⚠ *Этой командой невозможно скопировать содержимое одного видеоканала в другой идентичный видеоканал*.
