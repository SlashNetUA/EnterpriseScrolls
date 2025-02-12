# Засоби керування

## Клавіатура

Більшість ігор використовує стандартний для ZX Spectrum набір клавіш керування: (`Q`, `A`, `O`, `P`, `Space`)

## Вбудований джойстик

Загальновживана назва: **Internal Joystick (IntJoy)**

За замовчуванням, у якості кнопки "Вогонь" використовується клавіша `Space`. Але у деяких іграх вона може бути призначена на клавіші `Enter`, `Alt` або інші.

У деяких іграх які мають функцію перевизначення клавіш (Redefine) дії можна призначати на джойстик (як на звичайні клавіші).

Через невисоку витривалість оригінальної мембрани бажано не використовувати цей тип керування у динамічних іграх.

## Зовнішні джойстики

Загальновживана назва: **External Joystick #** (**ExtJoy#**, **Ext#**), рідше **Control #** (# - номер джойстика від 1 до 6)

У деяких іграх які мають функцію перевизначення клавіш (Redefine) дії можна призначати на джойстик (як на звичайні клавіші).

Не зважаючи на те що портів підключення для пристроїв керування є лише 2, до Enterprise можна під'єднати до 6 однокнопочних джойстиків (за допомогою [спеціального перехідника](../hardware/joy-adapters.md)). Але більшість ігрових програм має підтримку лише перших двох.

### Багатокнопочні джойстики
Деякі ігри мають підтримку багатокнопкових джойстиків. У цьому випадку кнопки `Fire2` і `Fire3` використовують сигнальні лінії джойстиків 3-6. Для використання такого джойстику (наприклад, геймпад від SEGA) необхідний спеціальний перехідник, або за допомогою багатожильного дроту переробити сам джойстик (підключивши додаткові кнопки до відповідних сигнальних ліній)

## Миша

Деяка кількість ігор підтримує керування за допомогою миші. Окрім цього емулятор комп'ютера ZX Spectrum 128 може використовувати мишу у якості Kempston Mouse.

Для використання миші у деяких програмах може знадобитися попереднє завантаження спеціального драйвера, але більшість ПЗ має вбудований драйвер.

На даний час найбільш поширеним є інтерфейс [BoxSoft(Neos) Mouse](mouse-boxsoft.md), або його сучасна реалізація [EnterMice](mouse-entermice.md).

Сучасний драйвер вміє працювати з 5-кнопковою мишею з коліщатком.

## Перевірка обладнання

Для перевірки справності контролерів можна скористатись програмою [HIDTest](../software/su-hidtest.md).

