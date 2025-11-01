# Очищення звукової черги

Тип каналів: аудіоканал

Очистити окрему звукову чергу.

Формат:

`esc Z <n>`

hex: `1B`,`5A`,**n**

dec: `27`,`90`,**n**


**n**: **0**, **1** або **2** для *тонального каналу* та **3** для *шумового каналу*.

[IS-Basic (CLEAR QUEUE)](../../is-basic_man-en/man_cs-clear.md).  
[HiSoft Pascal](../../hisoft-pascal-hpu/sound.hpu.md).

## Eng 

`Esc Z <n>` - Flush an individual sound queue.

**n**: **0**, **1** or **2** for *tone channel* and **3** for *noise channel*.