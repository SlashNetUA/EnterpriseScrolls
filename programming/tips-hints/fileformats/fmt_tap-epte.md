# EPTE tape image file

Образ касетної стрічки для утіліти **EPTE**.  
Відкриває його також **Tapir**.  
Може використовуватись у емуляторі [ep128emu](../../../emulators/em-ep128emu.md) та його допоміжною утілітою **tapeedit**.

Файли зберігаються у бінарному виді (аналогічно як у TAP для ZX Spectrum). Нестандартні лоадери не підтримуються.

Має 512-байтовий заголовок.
Байти 128-159 містять рядок `ENTERPRISE 128K TAPE FILE□□□□□□□`
Байти 160-191 містять коментар.

> [!QUOTE]
> The EPTE tape format consists of a 512 bytes long header, and then all the EXOS format cassette data as raw bytes (not audio), except the leader tones and sync bits are not included. So, the emulator needs to synthesize the audio from this data. In the header, at an offset of 128 bytes, there is always the 32 bytes long string "ENTERPRISE 128K TAPE FILE       ". The rest of the header contains the starting position (in bytes, relative to the beginning of the cassette data) of each chunk as 32-bit LSB first integers. Thus, the first 128 bytes of the header is a table of 32 chunk positions. However, this is followed by the "ENTERPRISE 128K TAPE FILE       " string, so it is not clear if more than 32 chunks are possible by continuing the table after skipping these 32 bytes. Fortunately, most programs (except some large ones usually loaded from disk) do not need more than 32 chunks. To play one chunk as audio, the emulator generates the leader tone and the sync bit, and then the raw data bytes, which are encoded in least significant bit first order.