# NET:

`NET:`  
`NETn:`  
`NET-n:`  

Built-in local net. The number **n** is the network address (in the range **1**-**32**) of the machine with which communications are being established. If **n** is **0**, this defines a "general" channel — used for broadcasting to all machines, and for receiving data without specifying the source machine.

З точки зору користувача, послідовний інтерфейс та мережа реалізовані як два окремі драйвери пристроїв EXOS із назвами пристроїв [SERIAL:](serial.md) та `NET:` відповідно. Однак, оскільки вони використовують одне й те саме апаратне забезпечення, одночасно може підтримуватися лише один із цих пристроїв. Тому, якщо користувач бажає відкрити канал до послідовного пристрою, він повинен спочатку закрити всі канали, відкриті для мережі, і навпаки.

Одночасно може існувати лише один послідовний канал, тоді як для мережевого пристрою можна відкрити будь-яку кількість каналів за умови, що достатньо RAM для виділення 512 байт буфера під кожен канал. Усі канали, відкриті для мережевого або послідовного пристрою, підтримують як введення, так і виведення даних.

Технічні специфікації драйверу послідовного порту та мережі:

- [EXOS version 1](http://enterprise.iko.hu/technical/ET15-3_EXOS_1_Serial-Network_Driver.pdf) (1984-Sep-10)
- [EXOS version 2.0](http://enterprise.iko.hu/technical/ET15-6_EXOS_20_Serial-Network_Driver.pdf) (1984-Nov-23)
- [EXOS version 2.1](http://enterprise.iko.hu/technical/ET15-7_EXOS_21_Serial-Network_Driver.pdf) (1985-Jan-16) *(current)*