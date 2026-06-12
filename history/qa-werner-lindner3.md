 1. [Історичні подробиці](qa-werner-lindner1.md)
 2. [Розробка апаратного забезпечення](qa-werner-lindner2.md)
 3. Апаратні розширення та картриджі
 4. [Апаратні розширення (EXDOS)](qa-werner-lindner4.md)
 5. [Прототип MIDI-картріджа](qa-werner-lindner5.md)
 6. [Прошивки ПЗП](qa-werner-lindner6.md)
 7. [Enterprise X, Model 911 або Project Vulcan](qa-werner-lindner7.md)
 8. [Кирилична версія для радянських шкіл](qa-werner-lindner8.md)
 9. [Різне](qa-werner-lindner9.md)
 10. [Модуль жорсткого диску](qa-werner-lindner10.md)


# Апаратні розширення та картриджі

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45532/#msg45532)

> **Werner Lindner**: Фотографії прототипу друкованої плати картриджа з безкорпусною мікросхемою BASIC 2.1. [EC UK](../companies/enterprise-computers-ltd.md) шукала можливості для зниження виробничих витрат, і GI виготовила для них ці інженерні зразки для оцінки.

<img src="pics/w-lindner/cartridge-direct-bond-up.jpg" width="42%"> 
<img src="pics/w-lindner/cartridge-direct-bond-down.jpg" width="42%"> 

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45673/#msg45673)

**Zozosoft**: Деякі ультрарідкісні картриджі: 

Корпус ELAN із раннім прототипом друкованої плати:

<img src="pics/w-lindner/cartridge-elan_01.jpg" width="30%"> 
<img src="pics/w-lindner/cartridge-elan_02.jpg" width="30%"> 
<img src="pics/w-lindner/cartridge-elan_03.jpg" width="30%"> 

Картридж для Mephisto PHC:

<img src="pics/w-lindner/cartridge-mephisto-phc64_01.jpg" width="30%"> 
<img src="pics/w-lindner/cartridge-mephisto-phc64_02.jpg" width="30%"> 

> **Werner Lindner**: [Quasar-Pascal](../programming/quasar-pascal.md), написаний Р. Й. Хорстом (R. J. Horst) із Нідерландів, був запропонований нам у 1986 році. Він хотів самостійно виготовляти плати та продавати їх нам. Ми не укладали жодного контракту, і цей продукт ніколи не був у продажу. Quasar Pascal також доступний для комп'ютерів стандарту MSX, і ви досі можете знайти ім'я пана Хорста в інтернеті.

<img src="pics/w-lindner/cartridge-quasar-pascal_01.jpg" width="30%"> 
<img src="pics/w-lindner/cartridge-quasar-pascal_02.jpg" width="30%"> 

**Bruce Tanner**: Ого, здається, на цих ПЗП з написом "Elan" мій почерк 30-річної давнини! (Не так багато людей пишуть цифру "1" саме так). Я пам'ятаю червоні крапки, але вже не пригадаю, що вони означали. Як бачите, у нас був чималий мікс мікросхем EPROM від найрізноманітніших виробників!

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45956/#msg45956)

> **Werner Lindner**: Картридж MEPHISTO:
> 
> Компанія [Hegener & Glaser](../companies/hegener-and-glaser.md) початково намагалася продавати цей комп'ютер у школи. [EC UK](../companies/enterprise-computers-ltd.md) в одному зі своїх ранніх проспектів також згадує про можливість використання комп'ютерів Enterprise саме в школах. Я вважаю, що компанія [IS](../companies/intelligent-sofware-ltd.md) створила якесь системне розширення спеціально для цієї мети, і **Mephisto** початково комплектувався саме ним.
> 
> Мікросхеми EPROM від **Mephisto** (**Pupil-20** для моделі 64к та **Pupil-21** для моделі 128к) є ранніми версіями розширення [BRD](../software/ss-localizations.md). Командою для активації німецького набору символів є `FONT`, крім того, команди `VLOAD`, `VDUMP` та `VSAVE` вже повністю там присутні. Є дві додаткові команди: `NET X` та `ASK`. `NET X` слугує для встановлення номера каналу на головній машині вчителя, а `ASK` — для того, щоб "запитати вчителя". Проте я не маю жодної додаткової інформації про ці розширення.

**Zozosoft**: Я виявив, що там також визначено пристрій `TEACHER:`.

<img src="pics/w-lindner/pupil-help.png" width="42%"> 
<img src="pics/w-lindner/pupil-dev.png" width="42%"> 

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45679/#msg45679)

**Zozosoft**: Іще одна річ, яку ми ніколи раніше не бачили: розширення оперативної пам'яті на 64 КБ у корпусі в стилі EXDOS!

> **Werner Lindner**: Розширення пам'яті на 64 КБ:
> 
> Це єдине відоме розширення (окрім [контролера EXDOS](../hardware/hd-exdos.md)), яке взагалі вироблялося (у кількості прототипів). Після того, як було прийнято рішення не запускати в серійне виробництво системи розширення, потреба чи мета в ньому зникла, і воно просто відійшло в минуле.

<img src="../hardware/pics-original-hw/ext-ram-exp_01.jpg" width="24%"> 
<img src="../hardware/pics-original-hw/ext-ram-exp_02.jpg" width="24%"> 
<img src="../hardware/pics-original-hw/ext-ram-exp_03.jpg" width="24%"> 
<img src="../hardware/pics-original-hw/ext-ram-exp_04.jpg" width="24%"> 

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45713/#msg45713)

[Система розширень Enterprise 64/128](http://enterprise.iko.hu/technical/PER-11-4_Enterprise_64-128_System_Expansion.pdf)  
[Попередні технічні характеристики системи розширень Enterprise 64/128](http://enterprise.iko.hu/technical/PER-12-1_Enterprise_64-128_System_Expansion_Provisional_Specifications.pdf)  
[Шина розширення Enterprise 64/128](http://enterprise.iko.hu/technical/PER-6-7_Enterprise_64-128_Expansion_Bus.pdf)  
[Шина розширення Enterprise 64/128 (багатослотова версія)](http://enterprise.iko.hu/technical/PER-7-8_Enterprise_64-128_Expansion_Motherboard_Bus.pdf)  
[Таймінги шини Enterprise 64/128](http://enterprise.iko.hu/technical/A3PER-1_Enterprise_64-128_Bus_Timing.pdf)  
[Список деталей материнської (багатослотової) плати розширення](http://enterprise.iko.hu/technical/PER-15-8_Expansion_Motherboard_Parts_List.pdf)  
[Модуль контролера дисковода Enterprise 64/128](http://enterprise.iko.hu/technical/PER-18-10_Enterprise_64-128_Disk_Controller_Module.pdf)  
[Таймінги шини модуля контролера дисковода Enterprise 64/128](http://enterprise.iko.hu/technical/A3PER-5_Enterprise_64-128_Disk_Controller_Bus_Timing.pdf)  
[Список деталей контролера дисковода](http://enterprise.iko.hu/technical/PER-13-7_Disk_Controller_Parts_List.pdf)  
[Модуль розширення оперативної пам'яті Enterprise 64/128 64K RAM](http://enterprise.iko.hu/technical/PER-17-7_Enterprise_64-128_64K_RAM_Expansion_Module.pdf)  
[Таймінги модуля розширення оперативної пам'яті Enterprise 64/128 64K RAM](http://enterprise.iko.hu/technical/A3PER-4_Enterprise_64-128_64K_Expansion_Module_Timing.pdf)  
[Список деталей плати розширення оперативної пам'яті (RAM)](http://enterprise.iko.hu/technical/PER-14-8_RAM_Card_Parts_List.pdf)  
[Специфікації блока живлення модуля розширення (Expansion Unit)](http://enterprise.iko.hu/technical/PER-8-10_Expansion_Unit_Power_Supply_Specifications.pdf)  
[Результати тестів таймінгів шини розширення Enterprise](http://enterprise.iko.hu/technical/PER-10-3_Enterprise_Expansion_Bus_Test_Timing_Results.pdf)   
[Звіт про тестування периферійних пристроїв Enterprise](http://enterprise.iko.hu/technical/PER-24-1_Enterprise_Peripherals_Test_Report.pdf)  

> **Werner Lindner**: Модуль розширення (Expansion Unit):
> 
> Планувався, але ніколи не випускався серійно. Ймовірно, це був лише прототип для тестування шини розширення під повним навантаженням. Креслень корпусу для нього немає. Цей юніт дуже схожий на різноманітні концепції розширення з Данії, Німеччини та Угорщини, і в ньому використовуються оригінальні ножові роз'єми (edge-connectors) на платах розширення. Існуючий [міст системної шини](../hardware/hb-bus-bridge.md) є найменшим з можливих варіантів цієї системи.
> 
> Важливо: цей модуль відрізняється від того, на який у мене є детальні конструкторські креслення. Той, інший, мав концепцію з двома дисководами FDD/EXDOS та блоком живлення, що розташовувалися поруч із комп'ютером, а далі йшла система модулів, які можна було ставити один на один (максимум чотири) з правого боку від FDD. Цей модуль показаний на одному з ранніх англійських рекламних проспектів (який я все ще шукаю у своїх архівах). Він має чудовий вигляд і типовий для ENTERPRISE дизайн. Але я думаю, що він був занадто дорогим для виробництва. З іншого боку, система від [IS](../companies/intelligent-sofware-ltd.md) була аж надто великою, щоб підключати її з правого боку комп'ютера, тому її також ніколи не випускали.

[Креслення Enterprise 64/128 у розібраному вигляді (Explosion drawing)](http://enterprise.iko.hu/technical/ENTERPRISE_64-128_Explosion_drawing.pdf)  

**Zozosoft**: Подивіться на цю схему! Тут гумовий килимок для клавіатури ще повного розміру. [Пізніше з неї забрали частину під джойстиком та замінили її червоним гумовим кільцем](http://enterprise.iko.hu/historical/Concession%20Note%208.pdf).

[Розміри материнської плати ENTERPRISE 64/128](http://enterprise.iko.hu/technical/ENTERPRISE_64-128_Motherboard_Dimensions.pdf)  

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45892/#msg45892)

Креслення 6-слотового модуля розширення (Expansion Unit), який згодом так і не був випущений:  
[A3PER-12_Enterprise_64-128_Expansion_Motherboard_Schematic](http://enterprise.iko.hu/schematics/A3PER-12_Enterprise_64-128_Expansion_Motherboard_Schematic.jpg)  
[Expansion-Unit_Place-Plan](http://enterprise.iko.hu/schematics/Expansion-Unit_Place-Plan.jpg)  
[Expansion-Unit_Component-Side](http://enterprise.iko.hu/schematics/Expansion-Unit_Component-Side.jpg)  
[Expansion-Unit_Solder-Side](http://enterprise.iko.hu/schematics/Expansion-Unit_Solder-Side.jpg)  
[A3PER-13_DPC-PER_Motherboard_PCB_Profile](http://enterprise.iko.hu/schematics/A3PER-13_DPC-PER_Motherboard_PCB_Profile.jpg)

Оригінальна плата [EXDOS](../hardware/hd-exdos.md), а також зовнішнє розширення пам'яті на 64 КБ, розроблене для цього модуля. Ось звіт про тестування (Test Report) цієї системи розширення: [PER-24-1_Enterprise_Peripherals_Test_Report](http://enterprise.iko.hu/technical/PER-24-1_Enterprise_Peripherals_Test_Report.pdf)

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg46111/#msg46111)

**Zozosoft**: Цікава дрібничка: «Плата EXOS»

Це внутрішня плата ПЗП (EPROM) на 4x8 КБ або 2x16 КБ EPROM-мікросхем, яка встановлюється у внутрішній роз'єм розширення (де у версії EP128 зазвичай розташовані другі 64 КБ оперативної пам'яті).

Сигнал ROM надходить із виводу CE (Chip Enable) роз'єму для вбудованого ПЗП на материнській платі.

Як на мене, це трохи дивно, навіщо це було зроблено. Мені здається, що 4 мікросхеми EPROM по 8 КБ разом із друкованою платою коштуватимуть дорожче, ніж одна мікросхема EPROM на 32 КБ.

Брюсе! Ти маєш якісь спогади із цього приводу? Схеми походять від компанії [IS](../companies/intelligent-sofware-ltd.md).

[Flan-Enterprise-Eprom-Sub-Board 0](http://enterprise.iko.hu/schematics/Flan-Enterprise-Eprom-Sub-Board~0.jpg)  
[Flan-Enterprise-Eprom-Sub-Board 1](http://enterprise.iko.hu/schematics/Flan-Enterprise-Eprom-Sub-Board~1.jpg)  
[Flan-Enterprise-Eprom-Sub-Board 2](http://enterprise.iko.hu/schematics/Flan-Enterprise-Eprom-Sub-Board~2.jpg)  
[Flan-Enterprise-Eprom-Sub-Board 3](http://enterprise.iko.hu/schematics/Flan-Enterprise-Eprom-Sub-Board~3.jpg)  
[Flan-Enterprise-Eprom-Sub-Board 4](http://enterprise.iko.hu/schematics/Flan-Enterprise-Eprom-Sub-Board~4.jpg)  

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg46121/#msg46121)

**Bruce Tanner**: Ні, я цього не пам'ятаю, але я й не обов'язково мав чути про такі речі. Проте я думаю, що на той момент ми перебували на тогочасній межі рентабельності технологій, і мікросхеми 27128 тільки-но почали з'являтися, навіть 2764 тоді здавалися великими!

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg46113/#msg46113)

**Werner Lindner**: Оригінальне внутрішнє розширення пам'яті на 64 кБ прямо з заводу [Elec&Eltek](../companies/elec-and-eltek.md). Там відсутня одна мікросхема (U111). На той час деякі компоненти було неможливо дістати на Далекому Сході, тому розширення пам'яті вироблялися без них. Компоненти, яких бракувало, доводилося впаювати в друковані плати пізніше, вже під час процесу збирання на фабриці [GRI](../companies/gri-ltd.md).

<img src="../hardware/ram-expansion/int-ram-exp-03-08_01.jpg" width="42%"> 
<img src="../hardware/ram-expansion/int-ram-exp-03-08_02.jpg" width="42%"> 

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45892/#msg45892)

> **Werner Lindner**: Я створив внутрішню плату статичної пам'яті на 64 КБ для ENTERPRISE, щоб апгрейдити 64-кілобайтні машини до 128 кілобайт. У мене є порожні друковані плати (PCB) цього розширення, але вони з ранньої партії виробництва, і там бракує однієї доріжки/провідника (як ви можете бачити на фотографії готового виробу).

<img src="../hardware/ram-expansion/int-ram-exp-03-08-mod_01.jpg" width="30%"> 
<img src="../hardware/ram-expansion/int-ram-exp-03-08-mod_02.jpg" width="48%"> 

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg46750/#msg46750)

> **Werner Lindner**: Ідея створення системи розширення для Enterprise з'явилась в мене ще у 1986 році, коли я розробив [власний EXDOS-контролер](../hardware/exdos/hd-exdos-w-lindner.md). Я був не в захваті від ножових роз'ємів (edge connectors) комп'ютера Enterprise. Особливо роз'єм розширення з його 66 виводами — він був занадто великим, занадто специфічним, занадто дорогим і не дуже надійним з механічної та електричної точок зору. І найбільша проблема: він уже був зайнятий [мостом системної шини](../hardware/hb-bus-bridge.md)  та оригінальним [контролером EXDOS](../hardware/hd-exdos.md).
> 
> Не знаючи нічого про систему розширення від [IS](../companies/intelligent-sofware-ltd.md)/[EC UK](../companies/enterprise-computers-ltd.md), ми з моїм другом [Міхаелем Леопольдседером](../peoples/pers-michael-leopoldseder.md) вирішили створити власну невелику систему розширення на базі роз'ємів DIN 41612. Вони були (і залишаються) дешевими, надійними та механічно стабільними. Крім того, вони мають 64 виводи, що майже збігається з кількістю контактів системної шини Enterprise. Ба більше, у продажу є безліч макетних плат (гетинаксових та з текстоліту FR4), які вже мають монтажні отвори та мідні контактні майданчики під ці роз'єми. Робити прототипи для такої системи дуже легко, а фінальні плати виходять дуже міцними й можуть використовуватися роками, як і повноцінні фабричні друковані плати.
> 
> Ми розробили концепцію буферизації шини й знайшли дуже дешевий спосіб керування сигналом `/EXP` (ми зробили це за допомогою звичайного діода: спочатку 1N4148, а пізніше BAT46 через менше падіння напруги), який підключався до сигналу `/RD` плати. Ми прибрали всі сигнальні лінії, які могли б створювати перешкоди на шині (ніяких аналогових сигналів, ніякого аудіо/відео тощо), а все інше забуферизували в одному або двох напрямках. Усі слоти на шині мали однакову схему розведення, тобто ми не робили жодного попереднього декодування для конкретних слотів, пам'яті чи адресного простору. Це означає, що плати розширення для цієї системи повинні самостійно виконувати правильне й повне декодування всіх портів введення-виведення (I/O) та всіх адресних ліній, але це лише незначний недолік порівняно з системою, яка взагалі не має обмежень. Ми придумали назву "[MINIBUS](../hardware/hb-minibus.md)" для меншої версії, яка підключається безпосередньо до порту розширення комп'ютера. Після завершення роботи над [моїм EXDOS-контролером](../hardware/exdos/hd-exdos-w-lindner.md) ми обидва використовували цю систему вдома, і вона слугувала стабільною платформою для майбутніх апаратних розширень (наприклад, [інтерфейсу жорсткого диска](../hardware/exdos/hd-exdos-hdd-mfm.md)). Я зробив другу версію адаптера MINIBUS із роз'ємом DIN-VG, який був припаяний безпосередньо до моєї тестової машини. Я встановив на машину додатковий стабілізатор на 5 В, щоб живити a4/b4 напряму, і зібрав схему на 8 МГц для підтримки EXDOS-контролера на машині з частотою 6 МГц. Вона була взята з [материнської плати 911](../hardware/hm-911.md) (зроблено на швидку руку).
> 
> Пізніше я створив модульну систему шини розширення материнської плати (Motherboard-Extension-Bus-System). Вона складалася з двох плат: одна (комп'ютерний інтерфейс) поміщалася в корпус EXDOS і використовувала міст системної шини (System-Bus-Bridge) для підключення до ENTERPRISE. Інша сторона (інтерфейс шини) використовувала друковану плату формату європлати (160х100 мм) і встановлювалася в стандартний 19-дюймовий корпус із 64-контактним крос-плейном (backplane) у якості шинної системи. Корпус містив блок живлення на 5/12 В, потужності якого вистачало для живлення жорсткого диска. На жаль, зберігся лише комп'ютерний інтерфейс. Свій 19-дюймовий корпус я віддав іншому користувачеві ENTERPRISE, плануючи зробити новий, повністю професійний на вигляд, але так і не довів це до кінця. У мене залишився тільки корпус із встановленим крос-плейном для нього, і більше нічого. Але в принципі я міг би доробити його, щоб мати повну систему. Спеціального розширення пам'яті для цієї системи я ніколи не робив (навіть не питайте чому).
> 
> Обидві системи ніколи не випускалися промислово. Загалом було створено лише близько 20 систем MINIBUS і, ймовірно, лише кілька штук Motherboard Extension Bus (ми випустили лише десять дослідних друкованих плат)».

**Zozosoft**: Ви розробили все це нічого не знаючи про систему розширення з [Intelligent Software](../companies/intelligent-sofware-ltd.md)/[Enterprise Computers UK](../companies/enterprise-computers-ltd.md) і без отриманих від них всіх схем?

> **Werner Lindner**: Плани створення невеликої системи розширення народилися разом із [моїм EXDOS-контролером](../hardware/exdos/hd-exdos-w-lindner.md). Це було у 1986 році, і все було готово ще до того, як я вийшов на прямий контакт із [EC GmbH](../companies/enterprise-computers-gmbh.md). Тому на той час я мав лише повний комплект принципових схем самого комп'ютера та контролера EXDOS, і нічого більше. Контролер EXDOS став моєю "перепусткою" в [EC GmbH](../companies/enterprise-computers-gmbh.md), оскільки я показав цей контролер і свою шинну систему своєму дилеру, а той негайно зателефонував в [EC GmbH](../companies/enterprise-computers-gmbh.md). [Майк Віндіш](../peoples/pers_h-m-windisch.md) (Mike Windisch) запросив [Міхаеля Леопольдседера](../peoples/pers-michael-leopoldseder.md) і мене до офісу на Зонненштрассе, 3 у Мюнхені, і це стало початком нашої співпраці. Приблизно через пів року ми отримали технічну документацію на систему розширення з Англії.

Базова система MiniBus з картками

<img src="../hardware/system-bus/minibus-base_01.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-base_02.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-base_03.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-base_04.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-base_05.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-base_06.jpg" width="30%"> 

Другий прототип MiniBus з перетворювачем 8 МГц

<img src="../hardware/system-bus/minibus-2nd-proto_01.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-2nd-proto_02.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-2nd-proto_03.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-2nd-proto_04.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-2nd-proto_05.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-2nd-proto_06.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-2nd-proto_07.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-2nd-proto_08.jpg" width="30%"> 
<img src="../hardware/system-bus/minibus-2nd-proto_09.jpg" width="30%"> 

Плата ROM з джампером для вибору сегмента пам'яті

<img src="../hardware/rom-external/rom-ext-for-minibus_01.jpg" width="30%"> 
<img src="../hardware/rom-external/rom-ext-for-minibus_02.jpg" width="30%"> 
<img src="../hardware/rom-external/rom-ext-for-minibus_03.jpg" width="30%"> 

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg46752/#msg46752)

Enterprise GmbH Motherboard Bus

<img src="../hardware/system-bus/mb-ext-bus_01.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_02.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_03.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_04.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_05.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_06.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_07.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_08.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_09.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_10.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_11.jpg" width="30%"> 
<img src="../hardware/system-bus/mb-ext-bus_12.jpg" width="30%"> 

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45946/#msg45946)

> **Werner Lindner**: У вкладенні додаю документацію на це внутрішнє розширення 64 кБ для комп'ютера, яке я розробив для [ENTERPRISE GmbH](../companies/enterprise-computers-gmbh.md) у 1992 році. Ви можете побачити необхідні зміни (додатковий провідник на першій версії друкованої плати) на нових/старих принципових схемах. Це сигнал `/MREQ`, який додатково інвертується і подається на вивід 1 обох мікросхем **74ALS30**.
> 
> Звичайно, на той час уже були доступні мікросхеми більшої місткості. Але завдання полягало не в тому, щоб зробити велике розширення. Завдання було в тому, щоб перетворити на 128-кілобайтні моделі ті приблизно 350 машин на 64 кБ, які все ще залишалися в нас на складі на той момент. Комп'ютери на 64 кБ вже нікого не цікавили, але ніхто також не став би платити додаткові гроші за "великі" домашні комп'ютери, які до того ж на той час уже були 5-річної давнини».

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45583/#msg45583)

**Zozosoft**: Ми вже дещо знаємо про [цю плату](../hardware/hn-bugtronics-modem.md) від [її розробника](../peoples/pers_anders-nielsen.md), але у нього самого її немає. А от у Вернера вона є! Це плата модему, в Данії її використовували для Enterprise BBS!

> **Werner Lindner**: Плата має процесор Z80CPU, що працює на частоті 2.4 МГц, 2 КБ статичної оперативної пам'яті (SRAM) та мікросхему Z80DART. Це найскладніше розширення для ENTERPRISE, яке я знаю. Принаймні, воно має не більше потужності, ніж комп'ютер, до якого воно підключалося.
> 
> Роз'єм точно такий самий, як і той, що використовувався для [нідерландського контролера EXDOS](../hardware/exdos/hd-exdos-ddc.md).

<img src="../hardware/bugtronics/bugtronisc-modem_01.jpg" width="30%"> 
<img src="../hardware/bugtronics/bugtronisc-modem_02.jpg" width="30%"> 
<img src="../hardware/bugtronics/bugtronisc-modem_03.jpg" width="30%"> 
<img src="../hardware/bugtronics/bugtronisc-modem_04.jpg" width="30%"> 
<img src="../hardware/bugtronics/bugtronisc-modem_05.jpg" width="30%"> 
<img src="../hardware/bugtronics/bugtronisc-modem_06.jpg" width="30%"> 

----

[Наступна сторінка: апаратні розширення (EXDOS)](qa-werner-lindner4.md)
