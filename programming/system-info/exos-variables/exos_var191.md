# 191 - 

`ASK 191 var`  
`SET 191, expr` - changes only variable value [^1].  
`TOGGLE 191` - inverts value; changes only variable value [^1].

**not exists[^2]**:   
**1**:   
**2**:   

Нулевой бит не используется.  
Бит 1 устанавливается автоматически в зависимости от определения тактовой частоты (0 — нормальный режим, 1 — турбо-режим).  
Биты 2-3 устанавливают задержки памяти.  
Биты 4-6 не используются.  
7. Если 1, то порт 191 отключен.
https://enterpriseforever.com/programozas/exos-2-3-tovabb-fejlesztese/msg27781/#msg27781
 При сбросе текущая частота записывается обратно в порт 191.  
- Ожидание в памяти отключено по умолчанию (SET 191.4 включает его).
https://enterpriseforever.com/programozas/exos-2-3-tovabb-fejlesztese/msg32251/#msg32251
Бит 7 блокирует возможность перезаписи порта 191 программой EXOS в случае обнаружения изменений.  
Таким образом, если вы выведете значение OUT 191.6 на машине с частотой 4 МГц, она заметит, что это неподходящая настройка, и запишет её обратно.  
Если перед ним был набор SET 191,128, он не будет обработан.


> [!NOTE]
> you can select which wait states enabled by the automatic 191. port setting. If bit 7 of this variable is disabled, then the automatic 191. port settings is disabled.
> - memory wait states disabled at default (can be enabled with SET 191,4 commands)

[^2]: **not exist** cause error #9242 (Unknown EXOS variable number).
