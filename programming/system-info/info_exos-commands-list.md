# EXOS Commands

Перелік команд системних розширень.

Список не дуже потрібний але інколи треба зрозуміти що робить та чи інша команда і від якого розширення вона взагалі. 

Кожне системне розширення, зазвичай додає в систему одну чи декілька команд за допомогою яких можна викликати пов'язане з ним розширення або виконувати інші дії.  
Для виклику цих команд з "безпосереднього" режиму Бейсіку перед ними потрібно додавати двокрапку (`:`) а для використання їх з Бейсік програм існує спеціальний оператор [EXT](../../manuals/is-basic-man-en/commands/man_cs-ext.md). Для виклику цих команд з командного рядка [EXDOS](../../software/ss-exdos.md) чи [IS-DOS](../../software/ss-is-dos.md) додавати перед ними нічого не потрібно (але команди з двокрапкою теж сприймаються нормально). У [WP](../../software/st-wp.md) ці команди можна виконувати наступним шляхом: натиснути **F8**, ввести потрібну команду (без двокрапки!) та натиснути **Enter**.

- `HELP`: Виводить список розширень наявних у системі.
- `HELP команда`: Виводить детальнішу інформацію щодо конкретного розширення.

## Офіційні

### Вбудований текстовий процесор (**Enterprise Word Processor**)

 - `WP`: Запуск [текстового процесора](../../software/st-wp.md) (цю команду також використовує **SuperWP** (v**2.5** – **2.6**) який заміщає вбудований WP)

### Інтерпретатори

 - `BASIC`: Запуск інтерпретатора [IS-Basic](../is-basic.md).
 - `FORTH`: Запуск інтерпретатора [IS-Forth](../is-forth.md).
 - `LISP`: Запуск інтерпретатора [IS-Lisp](../is-lisp.md).

### EXDOS

 - [`EXDOS`](../../manuals/dos-commands/cmd-exdos.md): відкриває додаткове вікно для роботи з [EXDOS](../../software/ss-exdos.md) *(поточна програма не завершає свого виконання)*
    - [`ATDIR`](../../manuals/dos-commands/cmd-atdir.md): зміна атрибутів директорій  
     - [`ATTR`](../../manuals/dos-commands/cmd-attr.md): зміна атрибутів файлів  
     - [`ASSIGN`](../../manuals/dos-commands/cmd-assign.md): перевизначення букв дисків на інші пристрої.  
     - [`BUFFERS`](../../manuals/dos-commands/cmd-buffers.md): зміна ліміту буферу диску.  
     - [`CD`](../../manuals/dos-commands/cmd-chdir.md) / [`CHDIR`](../../manuals/dos-commands/cmd-chdir.md): зміна поточної директорії.  
     - [`CLS`](../../manuals/dos-commands/cmd-cls.md): очищення екрану.  
     - [`COPY`](../../manuals/dos-commands/cmd-copy.md): копіювання файлів.  
     - [`DATE`](../../manuals/dos-commands/cmd-date.md): зміна/перегляд системної дати.  
     - [`DEL`](../../manuals/dos-commands/cmd-del.md) / [`ERA`](../../manuals/dos-commands/cmd-del.md) / [`ERASE`](../../manuals/dos-commands/cmd-del.md): видалення файлів.    
     - [`DIR`](../../manuals/dos-commands/cmd-dir.md): виведення списку файлів.  
     - [`ECHO`](../../manuals/dos-commands/cmd-echo.md): виведення тексту.   
     - [`EXIT`](../../manuals/dos-commands/cmd-exit.md): вихід з EXDOS (закриття додаткового вікна).  
     - [`FORMAT`](../../manuals/dos-commands/cmd-format.md): форматування дисків.  
     - [`LOAD`](../../manuals/dos-commands/cmd-load.md): запуск файлів.   
     - [`MAPDISK`](../../manuals/dos-commands/cmd-mapdisk.md): надає можливість працювати з декількома дисками на одному пристрої.
     - [`MD`](../../manuals/dos-commands/cmd-mkdir.md) / [`MKDIR`](../../manuals/dos-commands/cmd-mkdir.md): створити директорію.  
     - [`MOVE`](../../manuals/dos-commands/cmd-move.md): перенести файл.  
     - [`MVDIR`](../../manuals/dos-commands/cmd-mvdir.md): перенести директорію.  
     - [`PAUSE`](../../manuals/dos-commands/cmd-pause.md): виведення тексту та очікування на натиснення клавіши **Enter**.  
     - [`RAMDISK`](../../manuals/dos-commands/cmd-ramdisk.md): робота з диском у ОЗП.
     - [`RD`](../../manuals/dos-commands/cmd-rmdir.md) / [`RMDIR`](../../manuals/dos-commands/cmd-rmdir.md): видалення директорії  
     - [`REM`](../../manuals/dos-commands/cmd-rem.md): коментар  
     - [`REN`](../../manuals/dos-commands/cmd-rename.md) / [`RENAME`](../../manuals/dos-commands/cmd-rename.md): зміна назви файлу.   
     - [`RNDIR`](../../manuals/dos-commands/cmd-rndir.md): зміна назви директорії.  
     - [`TIME`](../../manuals/dos-commands/cmd-time.md): Перегляд/зміна системного часу.  
     - [`TYPE`](../../manuals/dos-commands/cmd-type.md): виведення текстового файлу  
     - [`VAR`](../../manuals/dos-commands/cmd-var.md): Перегляд/зміна системної змінної.  
     - [`VER`](../../manuals/dos-commands/cmd-ver.md): Виведення версії EXDOS  
     - [`VOL`](../../manuals/dos-commands/cmd-vol.md): Перегляд/зміна назви тому диску.  

### ISDOS

  - `ISDOS`: Запуск [IS-DOS](../../software/ss-is-dos.md).
  - `ISDOS /команда`: Запуск IS-DOS та автоматичний запуск вказаної команди чи програми.

### [Локалізації](../../software/ss-localizations.md)

 - `UK`: зміна локалізації на англійську.  
 - `BRD`: зміна локалізації на німецьку.
 - `DAN`: зміна локалізації на нідерландську.
 - `HUN`: зміна локалізації на угорську (неофіційна).
 - `ESP`: зміна локалізації на іспанську (неофіційна).

### Робота з графікою

- `VDUMP`:
- `VSAVE`:
- `VLOAD`:

## Інші

### Компілятори

 - `ZZZIP`: цілочисельний компілятор Бейсіка [ZZZIP](../zzzip-compiler.md).
    - `ZIP` / `ZIP/F`: компілювати програму завантаживши її з файлу.
    - `ZIP/M`: компілювати поточну програму у пам'яті.
 - `HP`: запуск компілятора [HiSoft Pascal](../hisoft-pascal.md).

### Монітори, асемблери, дебагери

 - `GEN`: Запуск HiSoft GEN Asssembler.
 - `MON` / `MON5`: Запуск HiSoft MON Debugger.
 - `ASMON`: Asmon Assembler
    - `VAR`: перегляд/зміна системної змінної.
 - `SIMON`: Simon Assembler
    - `VAR`: перегляд/зміна системної змінної.
### Емулятори

 - `SPEMU`: Запуск програмного емулятора ZX Spectrum 48k [SPEmu](../../software/se-spemu.md).  
 - `SP128`: Запуск програмного емулятора ZX Spectrum 128k [SPEmu128](../../software/se-spemu.md).  
 - `SP`: Запуск програмного емулятора ZX Spectrum 48k [SP](../../software/se-sp2.md).  
    - `SP $назва_файлу`: збереження снепшоту.  
    - `SP #назва_файлу`: завантаження снепшоту.  
 - `ZX`: Запуск [апаратного емулятора ZX Spectrum 48k](../../hardware/he-zxemu.md).  
    - `ZX назва_файлу`: Запуск та автозавантаження файлу в емулятор.
 - `TVC`: Запуск програмного емулятора Videoton TVC 64k [TVCEmu](../../software/se-tvcemu.md)

### Ігри

 - `BRUNILDA`: запуск ПЗП-версії гри "Los Amores de Brunilda".
 - `CYRUS`: запуск шахів **Cyrus II**.
 - `HEA`: запуск ПЗП-версії гри "Heathrow A.T.C.".
 - `IANNA`: запуск ПЗП-версії гри "The Sword of Ianna".

### Утіліти

 - **CBM**: драйвер **CBM Multi File Transfer** (не є командою)
 
 - `COMP`: запуск програми **Comp** (для порівняння файлів).

 - **DDUMP**: програма для роботи з Epson-сумісним принтером (не є командою)
    - `DDPRINT назва_файлу`: виведення вмісту екрану на принтер чи у файл
    - `DDPRN назва_файлу`
    - `DDPRN2 назва_файлу`
    - `DDPRN3 назва_файлу`
    - `DDSTPRD`
    - `DDSTPWR`
    - `DDART назва_файлу`: вивести на екран зображення з файлу у форматі ArtStudio. 
    - `DDPBOX назва_файлу`: вивести на екран зображення з файлу у [форматі PaintBox](../tips-hints/fileformats/fmt_img-paintbox.md). 
    - `DDVLD назва_файлу`: вивести на екран зображення з файлу у [форматі VLOAD](../tips-hints/fileformats/fmt_img-vsave-vload.md). 
    - `DDOPTIONS`
    - `DDHEADER "текст"`: задання текстової стрічки що буде надрукована над зображенням.
    - `DDPALETTE P0,P1,P2,P3,P4,P5,P6,P7,P8`: задання палітри для роздруку зображення.
    - `DDCOLOR Pn,0-7`: зміна одного з кольорів палітри.
    - `DDMARGIN n`: задання лівого поля друку
    - `DDBORDER n`
    - `DDVIDEOX n` / `DDVIDEOY n`: задання горизонтального та вертикального розмірів друку зображення.
    - `DDUP n` / `DDDOWN n` / `DDLEFT n` / `DDRIGHT n`
    - `DDLPT #n`
    - `DDROTATION n`: роздрук зображення з поворотом на кут що кратний 90°.
    - `DDDECODE n`
    - `DDMODE n`

 - `EPROM`: запуск програми [Eprom](http://ep128.hu/Ep_Util/Eprompck.htm) (для прошивки ПЗП)

Програма для компресії даних [Pack](http://ep128.hu/Ep_Util/Eprompck.htm)

 - `PACK`: Стистення даних каналів
 - `UPCK`: Розпаковка даних каналів
 - `PCK`: Стиснення ігрових програм у файл PCK
 - `PP`: 
 - `DPP`: Розпакування PCK
 - `FILE`: відкриває вікно для вибору файлів зі списку.
 - `KEYCH`: Повертає поточний номер каналу Клавіатури