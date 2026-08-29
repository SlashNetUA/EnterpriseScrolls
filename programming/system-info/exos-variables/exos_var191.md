---
title: EXOS variable 191 - 
---
# 191 - 

`ASK 191 var`  
`SET 191, expr` - changes only variable value [^1].  
`TOGGLE 191` - inverts value; changes only variable value [^1].

**not exists[^2]**:   

- Bit **0**: не використовується.  
- Bit **1**: встановлюється автоматично в залежності від визначення тактової частоти (**0** — звичайний режим, **1** — турбо-режим).  
- Bits **2**-**3**: встановлюють затримки пам'яті.  
- Bits **4**-**6**: не використовуються.  
- Bit **7**: якщо **1**, то [порт 191](../ports/port191.md) вимкнено ([↗](https://enterpriseforever.com/programozas/exos-2-3-tovabb-fejlesztese/msg27781/#msg27781)). При скиданні поточна частота записується назад в [порт 191](../ports/port191.md). Біт 7 блокує можливість перезапису [порта 191](../ports/port191.md) програмою EXOS у випадку виявлення змін. Таким чином, якщо ви запишете значення (`OUT 191,6`) на машині с частотою 4 МГц, буде помічено що це непідходяще налаштування, и поверне її назад. Якщо перед тим було встановлення `SET 191,128`, він не буде оброблятись.

Затримки пам'яті (wait states) за замовчуванням вимкнені (вмикаються за допомогою `SET 191,4`) ([↗](https://enterpriseforever.com/programozas/exos-2-3-tovabb-fejlesztese/msg32251/#msg32251)).

> [!Note]
> you can select which wait states enabled by the automatic [191 port](../ports/port191.md) setting. If bit **7** of this variable is **disabled**, then the automatic [191 port](../ports/port191.md) settings is disabled.
> - memory wait states disabled at default (can be enabled with `SET 191,4` commands)

[^2]: **not exist** cause error [#9242](../errors/9k/err-9242.md) (Unknown EXOS variable number).
