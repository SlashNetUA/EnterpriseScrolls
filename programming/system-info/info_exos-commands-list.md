# EXOS Commands

Перелік команд системних розширень.

Список не дуже потрібний але інколи треба зрозуміти що робить та чи інша команда і від якого розширення вона взагалі. 

Кожне системне розширення, зазвичай додає в систему одну чи декілька команд за допомогою яких можна викликати пов'язане з ним розширення або виконувати інші дії.  
Для виклику цих команд з Бейсіку перед ними потрібно додавати двокрапку (`:`) а для використання їх з Бейсік програм існує спеціальний оператор [EXT](../../manuals/is-basic-man-en/commands/man_cs-ext.md).

- `HELP`: Виводить список розширень наявних у системі.
- `HELP команда`: Виводить детальнішу інформацію щодо конкретного розширення.

## Офіційні

### Вбудований текстовий процесор (**Enterprise Word Processor**)

 - `WP`: Запуск текстового процесора (цю команду також використовує **SuperWP** (v**2.5** – **2.6**) який заміщає вбудований WP)

### Інтерпретатори

 - `BASIC`: Запуск інтерпретатора IS-Basic.
 - `FORTH`: Запуск інтерпретатора IS-Forth.
 - `LISP`: Запуск інтерпретатора IS-Lisp.

### EXDOS

 - [`EXDOS`](../../manuals/dos-commands/cmd-exdos.md): відкриває додаткове вікно для роботи з EXDOS *(поточна програма не завершає свого виконання)*
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

  - [`ISDOS`](../../manuals/dos-commands/cmd-isdos.md): Запуск IS-DOS.
  - [`ISDOS /команда`](../../manuals/dos-commands/cmd-isdos.md): Запуск IS-DOS та автоматичний запуск вказаної команди чи програми.

### Локалізації

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

 - [`ZZZIP`](../zzzip-compiler.md): цілочисельний компілятор Бейсіка **ZZZIP**.
    - `ZIP` / `ZIP/F`: компілювати програму завантаживши її з файлу.
    - `ZIP/M`: компілювати поточну програму у пам'яті.

### Емулятори

 - [`SPEMU`](../../software/se-spemu.md): Запуск програмного емулятора ZX Spectrum 48k.  
 - [`SP128`](../../software/se-spemu.md): Запуск програмного емулятора ZX Spectrum 128k.  
 - [`SP`](../../software/se-sp2.md): Запуск програмного емулятора ZX Spectrum 48k.  
    - `SP $назва_файлу`: збереження снепшоту.  
    - `SP #назва_файлу`: завантаження снепшоту.  
 - [`ZX`](../../hardware/he-zxemu.md): Запуск апаратного емулятора ZX Spectrum 48k.  
    - `ZX назва_файлу`: Запуск та автозавантаження файлу в емулятор.
 - [`TVC`](../../software/se-tvcemu.md): Запуск програмного емулятора Videoton TVC 64k
