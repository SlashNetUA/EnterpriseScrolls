# Розробка апаратного забезпечення

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45485/#msg45485)

**Zozosoft**: що вам відомо про проблеми з чипом [Nick](../hardware/hm-nick.md) та його різні версії (**08-04**/**08-47**)?

> **Werner Lindner**: Тепер дещо про NICK/DAVE:
> 
> Люди з [IS](../companies/intelligent-sofware-ltd.md)/[ENTERPRISE](../companies/enterprise-computers-ltd.md) вийшли на зв'язок з [AMI](../companies/ami.md) у 1983 році. Представники [AMI](../companies/ami.md) розповідали мені, що ці хлопці прийшли до них в офіс із двома зібраними «на коліні» (вручну розпаяними) прототипами «чогось» і заявили, що їм потрібно зробити з цього спеціалізовані мікросхеми (ASIC). При цьому не було ні конкретних креслень чи планів цих чипів, ні фінального дизайну. Очевидно, люди з [IS](../companies/intelligent-sofware-ltd.md) ніколи раніше не робили нічого подібного. Вони не знали, що не можна просто взяти схему на стандартних компонентах та мікросхемах і зробити її точну копію в кремнії. Інженерам [AMI](../companies/ami.md) довелося моделювати стандартні деталі прототипів за допомогою величезної кількості елементарних («низькорівневих») логічних вентилів. На той час не існувало такої конфігурованої логіки, як сьогоднішні FPGA чи CPLD...

> [!NOTE]
> *Примітка:* Це дещо відрізняється від того що розповідав [Дейв Вудфілд](../peoples/ec/pers_dave-woodfield.md) на зустрічі присвяченій 40-ій річниці комп'ютера.

> 
> Через це найперший дизайн чипа [DAVE](../hardware/hm-dave.md) (на той час він називався **ESPRIT**, і AMI зберігала цю назву протягом усього виробництва) був готовий у серпні/вересні 1983 року. Перший (і дефектний) дизайн чипа [NICK](../hardware/hm-nick.md) (**ELITE**) підготували у листопаді 1983 року. Достеменно невідомо, коли перші прототипи прибули до Лондона, але вони працювали зовсім не так, як очікувалося. До жовтня 1984 року **ESPRIT** пройшов 5 великих ревізій, а **ELITE** — чотири ревізії, перш ніж обидва чипи досягли того фінального стану, який ми знаємо як **08-05** та **08-47** відповідно.
> 
> Проблема NICK версії 08-04:
> 
> Наскільки мені відомо, немає жодного шансу виправити проблему цієї ревізії за допомогою зовнішнього заліза (не допоможе ні охолодження, ні швидка відеопам'ять). Повністю стабільною була лише пізня D-ревізія чипа.

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45490/#msg45490)

**Zozosoft**: на деяких материнських платах немає наклейок, а на інших є наклейки з різними назвами: AEL, FLHK, E&E. Чи знаєте ви щось про них?

> **Werner Lindner**:  
> [E&E](../companies/elec-and-eltek.md): [http://www.eleceltek.com/en/aboutus.php](https://www.eleceltek.com/profile/)
> 
> Більшість материнських плат були виготовлені компанією [OPC](../companies/opc-manufacturing-ltd.md): [http://www.hkexporter.net/electronic/circuit/opc-manufacturing.html](https://web.archive.org/web/20230131230926/http://www.hkexporter.net/electronic/circuit/opc-manufacturing.html)
> 
> Отже, в принципі: майже всі материнські плати (а також [EXDOS](../hardware/hd-exdos.md) та [картриджі](../hardware/hc-cartridge.md)) постачалися з Далекого Сходу, і [AMI](../companies/ami.md) відправляла виробничі партії чипів прямо до Гонконгу. Саме тому в Англії ніколи не було суттєвих запасів нерозпаяних мікросхем [NICK](../hardware/hm-nick.md)/[DAVE](../hardware/hm-dave.md).
> 
> Назви **AEL** та **FLHK** наразі вилетіли мені з голови, але у мене є копія кодової книги ENTERPRISE — це свого роду «біблія» всіх компонентів, які коли-небудь використовувала компанія. Ймовірно, я зможу знайти щось там. Будь ласка, запасіться терпінням.

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45506/#msg45506)

**Zozosoft**: Невеликий шматочок історії, але дуже цікавий:

> **Werner Lindner**: Ми в [ENTERPRISE Germany](../companies/enterprise-computers-gmbh.md) використовували для своїх розробок компілятор на базі ПК. Код писали в текстовому редакторі, також у нас були пакетні файли для компіляції, а для тестування розширень ROM на самому ENTERPRISE ми використовували емулятори EPROM. Ці емулятори підключалися за допомогою шлейфа безпосередньо до панельок усередині картриджа або до панельки на платі розширення. Усе було дуже просто: пишеш код, компілюєш його, відправляєш на емулятор через LPT-порт, натискаєш Reset на Ентерпрайзі і дивишся, що відбувається.

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45549/#msg45549)

**Zozosoft**: Як виглядав такий емулятор?

> **Werner Lindner**: Деякі люди на форумі запитували про емулятор EPROM. На жаль, у мене вже немає того оригінального пристрою, який ми використовували приблизно з 1990 року. Проте в мене досі зберігся один робочий екземпляр новішої моделі, яку ми купили в 1993 році для підтримки роботи програмістів.
> 
> Старіша модель була набагато більшою і мала всього 128 КБ пам'яті (емулювала EPROM ємністю до 27128). На той час вона коштувала неймовірно дорого, але робота над розробкою з нею вийшла на абсолютно новий рівень. Модель на фотографіях має 512 КБ статичної оперативної пам'яті (SRAM) і може емулювати EPROM аж до 27512. Вона живиться безпосередньо від панельки EPROM, до якої підключена.

<div style="text-align:center;">
<img src="pics/w-lindner/rom-simulator_01.jpg" width="24%"> 
<img src="pics/w-lindner/rom-simulator_02.jpg" width="24%"> 
<img src="pics/w-lindner/rom-simulator_03.jpg" width="24%"> 
<img src="pics/w-lindner/rom-simulator_04.jpg" width="24%"> 
</div>

> Робота з пристроєм дійсно проста:
> - Вставте роз'єм у панельку EPROM.
> - Оберіть тип EPROM, який ви хочете емулювати, за допомогою поворотного перемикача на передній панелі.
> - Підключіть емулятор до ПК за допомогою стандартного LPT-кабелю (25 Pin/Centronics).
> - Надішліть HEX-файл із ПК на LPT-порт (звісно ж, у бінарному режимі).
> - Скиньте (зробіть reset) ENTERPRISE і подивіться, працює ваш код чи ні.

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45561/#msg45561)

**Zozosoft**: А ось тепер справді фантастичні речі! Я ніколи не думав, що побачу їх!

[Схеми чипа Nick, Аркуш 1](http://enterprise.iko.hu/schematics/3006-0000-22_Sheet-1.pdf)  
[Схеми чипа Nick, Аркуш 2](http://enterprise.iko.hu/schematics/3006-0000-22_Sheet-2.pdf)  
[Технічні описи чипа Nick](http://enterprise.iko.hu/technical/NICK-Old-VDC-ELITE-description.pdf)  
[Внутрішні таймінги чипа Nick](http://enterprise.iko.hu/technical/NICK-Internal-timing-of-VDC-Elite.pdf)  

[Схеми чипа Dave, Аркуш 1](http://enterprise.iko.hu/schematics/3007-000-22_Sheet-1.pdf)  
[Схеми чипа Dave, Аркуш 2](http://enterprise.iko.hu/schematics/3007-000-22_Sheet-2.pdf)  
[Цоколівка чипа Dave та інформація про пластиковий корпус](http://enterprise.iko.hu/technical/DAVE-Chip-Pinout-and-plastic-package-dimensions.pdf)

[NICK/DAVE: Легенда (пояснення) до схем](http://enterprise.iko.hu/schematics/NICK-DAVE-Legend_to_Plans.txt)

Величезне-величезне спасибі Вернеру!!!

> **Werner Lindner**: Сьогодні я отримав скани для [NICK](../hardware/hm-nick.md) та [DAVE](../hardware/hm-dave.md), тож настав час для дійсно великого пакета даних. У вкладенні для завантаження ви знайдете всю додаткову оригінальну документацію, яка в мене є щодо цих двох чипів, зокрема:
> 
> - Найперший опис VDC (назва на той момент ще не була затверджена);
> - Більш-менш фінальний опис VDC ELITE (майбутнього NICK);
> - Креслення/розміри для 68-контактного корпусу, включаючи телекс від [AMI](../companies/ami.md), який інформував [EC](../companies/enterprise-computers-ltd.md)/[IS](../companies/intelligent-sofware-ltd.md) про зміну в цоколівці (розводці виводів) ESPRIT;
> - Чотири плани формату А0 з фінальним дизайном обох чипів.
> 
> Плани були відскановані у форматі А0 з роздільною здатністю 400 DPI. Вони сильно відрізняються за розміром файлів через різну якість оригіналів. Постачальник послуг сканування зробив усе можливе, щоб витиснути максимум якості з моїх "оригінальних" копій від [AMI](../companies/ami.md), і я сподіваюся, що все читабельно.
> 
> Схеми для ESPRIT не відображають жодних змін із часом. Тому я припускаю, що хоча [DAVE](../hardware/hm-dave.md) і мав ревізію **D**, це була єдина і неповторна версія (**08-05**), яка взагалі коли-небудь випускалася. На аркуші 1 для ESPRIT можна побачити деякі серйозні зміни/доповнення. Оригінальне креслення датоване 12.08.1983, але сам аркуш має дату 04.11.1983. Я думаю, що на той момент [DAVE](../hardware/hm-dave.md) вже був готовий до виробництва, але до цієї дати він уже зазнав чотирьох великих виправлень.
> 
> Схеми для ELITE показують п'ять ревізій протягом приблизно одного року виробництва. Невідомо, коли саме відбувся перехід від версії 1 (**08-04**) до версії 2 (**08-47**), але остання ревізія **E** — це точно **08-47**. На жаль, на самих схемах немає жодних позначок про ці зміни, тому ми можемо лише припускати, що це були незначні, але важливі виправлення.

----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg46054/#msg46054)

> **Werner Lindner**: Як і обіцяв, я відсканував схеми материнської плати **Issue 6** (компоненти/пайки/план розміщення) у форматі TIF з роздільною здатністю 400dpi.
> 
> [QAWL_EP_ISSUE-6.rar](https://web.archive.org/web/20201101085203/https://25a45f6c-a-62cb3a1a-s-sites.googlegroups.com/site/enterprise128k/home/internet-obzor/qa-werner-linder_main/qa-werner-lindner-hardvaredesign/QAWL_EP_ISSUE-6.rar?attachauth=ANoY7cpPYNeLo4SYHhrYaep7e4qBUbNrrKpWYFNVxeyNF6R3dMyXPCYeelejaKkJ8YikOvwnrTxpoMrgd0h4o6kf5KcmPxRrepebMhs0Bxw5_ddTSXsHAKRQ0TvygsT0DWHXULuWhFX7JwN3tgf6qhg3yDh7c_ZQD5P1AxmpKMLTjGeG7HQPZcGnlcBS5bdqL3AC2pi1DAgIqaljYY0upztKFzMJcy3VaECClg-ekimG9yhGeFawaoxz0jG3JMDoWLGQNuSJ3iMOME1SqOI2MkHb2isMuDakCZ3l00HpfmeAFQ2vv7BFk3NoIl4YAjbirApMeRv0fZBo990LLeGOrrhFwBZGEW6YnA%3D%3D&attredirects=0&d=1)



----

[(оригінал повідомлення)](https://enterpriseforever.com/hall-of-fame/qa-with-werner-lindner-technical-director-of-the-enterprise-computers-gmbh/msg45699/#msg45699)

[Кодова книга Enterprise: деталі та постачальники](http://enterprise.iko.hu/technical/Enterprise-Code-Book_Parts-and-Suppliers.pdf)  
[Деталі Enterprise для іноземних версій](http://enterprise.iko.hu/technical/Enterprise-Parts-of-foreign-variations.pdf)

> **Werner Lindner**: Кодова книга ENTERPRISE (та список деталей для іноземних версій): Ця кодова книга дуже цікава, оскільки в ній вказані всі деталі та постачальники комп'ютерів [ENTERPRISE UK](../companies/enterprise-computers-ltd.md). Дані дуже точні та відображають стан справ на червень 1986 року. Примітки від руки були зроблені мною особисто. На жаль, оригінальної версії більше не існує, а мій роздрукований примірник вицвів, проте все можна прочитати.
> 
> Список деталей для іноземних версій також дуже цікавий, бо в ньому фігурує лише один іноземний комп'ютер (модель 408, EC 128k German). [ENTERPRISE UK](../companies/enterprise-computers-ltd.md) ніколи не виробляла інших версій, окрім англійських моделей на 64к/128к та німецької на 128к. Існували деякі варіації моделей (з інструкцією або без неї, з касетою чи без, з німецькою або європейською вилкою живлення тощо), але жодних інших клавіатур чи системних розширень, подібних до [:BRD](../software/ss-localizations.md). Компанія в Каїрі самостійно займалася нанесенням символів на клавіатуру, а для комп'ютерів із кирилицею, які ми робили, просто використовувалися прозорі наклейки на клавіші.
