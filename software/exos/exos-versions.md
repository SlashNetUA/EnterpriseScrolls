# Версії EXOS

На даний час найбільш вживані версії EXOS наступні:

 - **v2.0** - стокова версія у моделі **Enterprise 64**.
 - **v2.1** - стокова версія у моделі **Enterprise 128**.
 - **v2.4** - сучасна неофіційна версія з виправленням помилок та новим швидким тестом ОЗП для всіх моделей комп'ютера.


## v 1.x

<img src="scrn_exos1x-startscreen.png" width="45%">  

*Приблизно так виглядав екран після включення комп'ютера*

Створено: **Intelligent Software Ltd.**  
Рік: **1983**  

Орієнтовно, могла бути встановлена у передпродажні моделі комп'ютерів із старою назвою **ELAN**. З дуже ранньої версії посібника користувача можна дізнатись, що стартовий екран (з великим написом `ENTERPRISE`) був відсутній і комп'ютер відразу переходив до командного режиму (тоді ще вбудованого) інтерпретатора Бейсіку. Мала назву **EROS** (Elan Rom Operating System).

> *"...EROS — назва, яку розробники обрали, дотримуючись давньої традиції називати операційні системи комп'ютерів на честь персонажів грецької міфології. Але маркетологи Enterprise змусили змінити її на EXOS..."* (Bruce Tanner)

## v 2.0

<img src="scrn_exos20-testscreen.png" width="45%">  
<img src="scrn_exos20-startscreen.png" width="45%">  

Створено: **Intelligent Software Ltd.**  
Рік: **1984**    

Офіційна версія, що була встановлена у **Enterprise 64**. Екран тесту оперативної пам'яті пофарбований у випадковий колір.

### Керування перезапуском

`Reset` (подвійний): **Cold reset** (в деяких некоректно написаних програмах може не спрацьовувати).  

`Reset` (одинарний): **Warm reset** - Теплий перезапуск не виконує тестування оперативної пам'яті або пошук модулів ПЗП. Уся пам'ять, виділена користувачеві, залишається недоторканою, а будь-які підключені розширення системної пам'яті або пристрої користувача зберігають свій стан. Однак усі канали примусово закриваються, а всі пристрої ініціалізуються повторно; будь-яка оперативна пам'ять, що була виділена під буфери каналів, звільняється. Після цього керування передається користувацькій підпрограмі (якщо вона була передбачена). Таким чином деякі програми можуть обробляти натискання кнопки Reset (наприклад, в інтерпретаторі IS-Basic програма не видаляється з пам'яті, у IS-DOS виконується "аварійне" завершення поточної програми, а в деяких іграх виконується зберігання таблиці лідерів у файл).

## v 2.1

<img src="scrn_exos21-testscreen.png" width="45%">  
<img src="scrn_exos21-startscreen.png" width="45%">  

Створено: **Intelligent Software Ltd.**  
Рік: **1985**  

Офіційна версія, що була встановлена у **Enterprise 128**.

Крім виправлення помилок були додані наступні покращення:

  - нова системна змінна що керує методом накладання цифрових відеоданих з шини розширення на екран.
  - користувацькі процедури апаратних переривань.

### Керування перезапуском

`Reset` (подвійний): **Cold reset** (в деяких некоректно написаних програмах може не спрацьовувати).  

`Reset` (одинарний): **Warm reset** - Теплий перезапуск не виконує тестування оперативної пам'яті або пошук модулів ПЗП. Уся пам'ять, виділена користувачеві, залишається недоторканою, а будь-які підключені розширення системної пам'яті або пристрої користувача зберігають свій стан. Однак усі канали примусово закриваються, а всі пристрої ініціалізуються повторно; будь-яка оперативна пам'ять, що була виділена під буфери каналів, звільняється. Після цього керування передається користувацькій підпрограмі (якщо вона була передбачена). Таким чином деякі програми можуть обробляти натискання кнопки Reset (наприклад, в інтерпретаторі IS-Basic програма не видаляється з пам'яті, у IS-DOS виконується "аварійне" завершення поточної програми, а в деяких іграх виконується зберігання таблиці лідерів у файл).

## v 2.2 (CYR)

Створено: **Enterprise Computers GmbH** та **'a' Studió**  
Рік: **1989**  

Є модифікацією версії **2.1** для комп'ютерів що були призначені для шкільних класів колишнього СРСР.
Через стислі терміни розробки CRC-перевірку цілістності прошивки було видалено.

## v 2.2 (unofficial)

<img src="scrn_exos22-testscreen.png" width="45%">  
<img src="scrn_exos21-startscreen.png" width="45%">  

Створено: **ZozoSoft** та **Apuci**.  
Рік: **1992**  

Є модифікацією офіційної версії **2.1**. Одним з головних нововведень цієї версії є швидкий тест оперативної пам'яті, який працює суттєво швидше, ніж стандартний. Раніше користувачі систем із розширенням ОЗП (200-300 КБ і більше) стикалися з тривалим очікуванням завершення процедури тестування пам'яті, яку неможливо було перервати.


## v 2.3 (unofficial)

<img src="scrn_exos23-testscreen.png" width="45%">  
<img src="scrn_exos21-startscreen.png" width="45%">  

Створено: **ZozoSoft** та **Apuci**.  
Рік: **1993**  

## v 2.31 (unofficial)

<img src="scrn_exos231-testscreen.png" width="45%">  
<img src="scrn_exos21-startscreen.png" width="45%">  

Створено: **ZozoSoft** та **Apuci**.  
Рік: **2008**  

Версія з екраном тестування на різних мовах (EN, ES, HU) .

## v 2.32 (unofficial)

<img src="scrn_exos232-testscreen.png" width="45%">  
<img src="scrn_exos21-startscreen.png" width="45%">  

Створено: **ZozoSoft** та **Apuci**.  
Рік: **2010**  

Версія з екраном тестування на різних мовах (EN, ES, HU) .


## v 2.4 (unofficial)

<img src="scrn_exos24-testscreen.png" width="45%">  
<img src="scrn_exos21-startscreen.png" width="45%">  

Створено: **ZozoSoft** та **Apuci**.  
Рік: **2014**  

### Керування перезапуском та тестом пам'яті

`Reset` (подвійний): **Reset** - Тестування пам'яті не виконується без необхідності, завантажені системні розширення не видаляються з пам'яті і виконується перехід на стартовий екран.  

`Reset` (одинарний): **Warm reset** - Теплий перезапуск не виконує тестування оперативної пам'яті або пошук модулів ПЗП. Уся пам'ять, виділена користувачеві, залишається недоторканою, а будь-які підключені розширення системної пам'яті або пристрої користувача зберігають свій стан. Однак усі канали примусово закриваються, а всі пристрої ініціалізуються повторно; будь-яка оперативна пам'ять, що була виділена під буфери каналів, звільняється. Після цього керування передається користувацькій підпрограмі (якщо вона була передбачена). Таким чином деякі програми можуть обробляти натискання кнопки Reset (наприклад, в інтерпретаторі IS-Basic програма не видаляється з пам'яті, у IS-DOS виконується "аварійне" завершення поточної програми, а в деяких іграх виконується зберігання таблиці лідерів у файл).

`Reset`+`C`: **Cold reset** - Виконується звичайна ініціалізація системи як при увімкнені комп'ютера.  

`Reset`(подвійний)+`E` або `Reset`+`C`+`E`: **Cold reset** з використанням старої процедури тестування (як у v2.0-2.1).  

`Reset`+`C`+`N`: Use the original EXOS RAM testing routine to test RAM segments. This is the most reliable but the slowest test at the same time. It is needed only after having installed a new memory expansion.  

`Reset`+`C`+`S`: Slow test. It's similar to the fast test, but checks all the bytes. You should rather run the fast test.  

`Reset`+`C`+`T`: Enable TEST_ROM feature. Normally the EXOS doesn't search for the `TEST_ROM` because the new internal test program is better than the traditional fast test programs. But with the **T** key you can run the `TEST_ROM` program. An extra feature: the EXOS searches at all segments for `TEST_ROM`. (The original EXOS searches only at the **04H** segment.) (MIT JELENT?)  

`Reset`+`C`+`R`: Normally the EXOS detects and preserves the RAMDISK. If you want to delete it, press **R**.  

`Reset`+`C`+`F1`: Testing only **128KB** memory. Some buggy programs only run on the original 128KB configurations.  

`Reset`+`C`+`ALT`: Only **64KB** memory will be tested, it is suitable for some EP64 games which run too fast on 128K machines, such as Tombs of Doom.  

`Reset`+`4,5,6,7`: Having SRAM chips in the cartridge they can be used as memory expansion by pressing one of these keys. The memory test runs to **04H**, **05H**, **06H**, **07H** segments. (MIT JELENT?) Originally run only to **08H** for searching RAM segments. (MIT JELENT?)  

`Reset`+`F2`: Застосувати старий метод пошуку ПЗП в сегментах пам'яті. New EXOS searches for ROM extensions at ALL segments. (MIT JELENT?) It is great for using higher capacity EPROMs, you can burn more programs to a single EPROM. But if you want you can return to the normal EXOS ROM search routine with the **F2** key. The original routine tests only **04H**-**07H**, **10H**, **20H**,...**F0H** segments. (MIT JELENT?) This feature is practical for temporarily disabling some ROM extensions for some compatibility reasons.  

`Reset`+`F3`: Don't check the ROM equality. (MIT JELENT?) Normally only the lower ROM is added to the ROM list if two ROM segments are equal (the first 255 bytes compared). For example, this feature is recommended when you want to try out a BASIC cartridge but the internal BASIC ROM disables it. If you press **F3**, the cartridge BASIC is also added to the ROM list and runs.  

`Reset`+`F4`: Delete ROM simulations. With new EXOS you can simulate ROM extensions in the RAM. Before any segment tested as RAM segment, the new test routine checks if it is started with the `EXOS_ROM` or `TEST_ROM` string? (MIT JELENT?) If yes, this segment is skipped at the RAM test and can be detected as ROM.  

`Reset`+`F5`: Delete EDCW extensions. Extensions of the [EDC Windows](http://www.ep128.hu/Ep_Util/Edcw.htm) handled similar to the ROM simulations.  

`Reset`+`F6`: пропуск пошуку ПЗП в картріджі.  
Це було розроблено для [SD-картриджа](../../hardware/hd-sd-card-adapter.md), Flash-пам'ять якого можна оновлювати безпосередньо з Enterprise. Оскільки мікросхема має поверхневий монтаж, її важко відновити у разі збою, якщо система взагалі не запускається через пошкоджений ROM. За допомогою цієї функції проблему можна вирішити та завантажити програму для відновлення Flash-пам'яті з дискети (для тих, хто має [EXDOS](../../hardware/hd-exdos.md)) або через аудіовхід.

`Reset`+`STOP`: Halt on when deffective RAM segments are detected. You can read the segment numbers which are deffective. The test can be continued by pressing any key. (EZ AZ EGÉSZ MIT JELENT?)

`Reset`+`ESC`: Go to the Enterprise logo. You can't exit from some games because the program uses the warm restart address. If the **ESC** key is pressed when you reset the computer, the EXOS 2.3 doesn't execute the warm restart routine, going to the Enterprise routine instead. With this method your preloaded system extensions can be preserved, EXOS variables (such as Time, Date) can be set, etc. (MIT JELENT?) Using a hard-to-quit program with original EXOS you had to switch your computer off and on again, and all these informations lost...

`Hold`/`Pause` (на екрані тестування): Призупинення процесу тестування.

