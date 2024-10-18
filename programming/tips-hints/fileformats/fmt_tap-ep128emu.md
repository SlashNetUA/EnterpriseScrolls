# ep128emu tape image file

Образ касетної стрічки для емулятора [ep128emu](../../../emulators/em-ep128emu.md).  

Файли зберігаються у аудіовигляді (аналогічно як у TZX для ZX Spectrum).

> [!NOTE]
> Uses custom file format which is PCM audio data with 1 to 8 bits of sample resolution and variable sample rate, and header including the table of markers.

Починаєтся з байтів `02 75 CD 72 1C 44 51 26`


> [!QUOTE]
> There are two versions of the format: the older and simpler version has no header and uses a fixed sample rate of 24000 Hz (one cycle of the leader tone, sync bit, 0 bit, and 1 bit is 10, 16, 12, and 8 samples, respectively). The samples are encoded in most significant bit first order. The EXOS cassette data format is documented in the [technical information](http://ep128.hu/Ep_Konyv/EXOS20_Technical_Information.pdf) at page 83 of the PDF file.  
> The more advanced ep128emu TAP format begins with a 4096 bytes header, which contains 1024 32-bit integers in MSB first format. The first 4 of these are: 0x0275CD72, 0x1C445126, bits per sample (must be 1, 2, 4, or 8, but only 1 is useful in practice), and the sample rate in Hz. The remaining 1020 values are markers, a table of positions on the tape in samples (not bytes), unused entries are set to 0xFFFFFFFF. The markers usually indicate the starting positions of the files on the tape, so that it is possible to easily find them in the emulator (Alt+, and Alt+.).