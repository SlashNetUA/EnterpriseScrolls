# ep128emu tape image file

Образ касетної стрічки для емулятора [ep128emu](../../../emulators/em-ep128emu.md).  

Файли зберігаються у аудіовигляді (аналогічно як у TZX для ZX Spectrum).

> [!NOTE]
> Uses custom file format which is PCM audio data with 1 to 8 bits of sample resolution and variable sample rate, and header including the table of markers.

Починаєтся з байтів `02 75 CD 72 1C 44 51 26`