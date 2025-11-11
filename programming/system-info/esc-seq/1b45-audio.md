# Ввід огинаючої

Тип каналів: аудіоканал

Обвідні визначаються керуючою послідовністю, що надсилається до звукового каналу.

Формат:

`esc E <en> <ep> <er> [ <cp> <cl> <cr> <pd> ]*`

hex: `1B`,`45`,**en**,**ep**,**er**,**cp**,**cl**,**cr**,**pd**,...

dec: `27`,`69`,**en**,**ep**,**er**,**cp**,**cl**,**cr**,**pd**,...

**en**: Номер обвідної **0**—**254** (8 біт).

**ep**: Загальна кількість фаз **1**—**40** (8 біт).

> [!NOTE]
> В мене не вийшло завантажити у канал огинаючу довшу ніж 21 фаза.

**er**: Кількість фаз перед випуском (8 біт). Якщо фаза випуску не потрібна, то це має бути **FFh**, що призведе до завершення звуку, щойно тривалість звуку закінчиться.

Наступний блок із чотирма значеннями має повторюватися **ep** рази, один раз для кожної фази:

**cp**: Зміна висоти тону (16 біт)  
**cl**: Зміна лівого підсилювача (8 біт)  
**cr**: Зміна правого підсилювача (8 біт)  
**pd**: Тривалість фази (16 біт)  

Коли отримано визначення обвідної, якщо існує існуюче визначення цієї обвідної, воно видаляється. Нове визначення потім додається до списку. Якщо для зберігання нового визначення недостатньо місця, буде повернуто код помилки (`.SENBF`). Якщо це станеться, то старе визначення цієї обвідної буде втрачено.

[IS-Basic](../../../manuals/is-basic-man-en/commands/man_cs-envelope.md).  
[HiSoft Pascal](../../hisoft-pascal-hpu/sound.hpu.md).  

## Eng 

Format of Envelope Definition

Envelopes are defined by an escape sequence sent to the sound channel:

`esc E <en> <ep> <er> [ <cp> <cl> <cr> <pd> ]*`

hex: `1B`,`45`,**en**,**ep**,**er**,**cp**,**cl**,**cr**,**pd**,...

dec: `27`,`69`,**en**,**ep**,**er**,**cp**,**cl**,**cr**,**pd**,...

**en**: Envelope number **0**—**254** (8 bits).  
**ep**: Total number of phases **1**—**40** (8 bits).  
**er**: Number of phases before release (8 bits). If no release phase is required then this should be **FFh** which will result in the sound finishing as soon as the sound duration is expired.  

Next block with four values must repeated **ep** times, once for each phase:

**cp**: Pitch change (16 bits)  
**cl**: Left amp change (8 bits)  
**cr**: Right amp change (8 bits)  
**pd**: Phase duration (16 bits)  

 When an envelope definition is received, if there is an existing definition of that envelope then it is deleted. The new definition is then added to the list. If there is insufficient space to store the new one then an error code (`.SENBF`) will be returned. If this happens then the old definition of that envelope will be lost.