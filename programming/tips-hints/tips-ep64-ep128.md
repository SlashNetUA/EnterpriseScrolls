# EP64 чи EP128?

Стандартна (немодифікована) машина EP64 має 64КБ ОЗП, EXOS v2.0, IS-Basic v2.0.

## Кількість оперативної пам'яті

Для визначення на якій машині запущена програма можна перевірити розміщення нульової сторінки пам'яті. Якщо **page 0** розміщена у сегменті **FC**, то це EP64 (точніше, комп'ютер із 64КБ ОЗП).

IF [IN](../../manuals/is-basic-man-en/functions/man_fn-in.md)(**176**)=**252** THEN **EP64 machine**.  
IF [IN](../../manuals/is-basic-man-en/functions/man_fn-in.md)(**176**)<=**248** THEN **EP128 machine**.

## Версія EXOS

Для перевірки версії EXOS можна спробувати зчитати значення системної змінної [38](../system-info/exos-variables/exos_var38.md) або [39](../system-info/exos-variables/exos_var39.md). На машинах з EXOS версії 2.0 ми отримаємо помилку №9242 (Unknown EXOS-variable number).

## Версія IS-Basic

Для перевірки версії Бейсіка можна скористатись функціями [VER$](../../manuals/is-basic-man-en/functions/man_fn-ver.md) та [VERNUM](../../manuals/is-basic-man-en/functions/man_fn-vernum.md), що дасть нам уявлення о версії IS-Basic. Але треба мати на увазі, що версія 2.0 не завжди означає, що це комп'ютер із 64КБ ОЗП (комп'ютер може містити розширення пам'яті, або картридж із старим Бейсиком вставили в EP128).

