---
title: "2dfx: посібник програміста"
---
# 2dfx: посібник програміста

(переклад з угорської)

> [!Примітка]
> книга базується на прошивці 2dfx **v1.0.0** та ревізії схеми **v6** (TVC: **v1**)

[Висловлення подяки](2dfx/0_acknowledgement.md)

[Загальна інформація](2dfx/1_general-info.md)

 - [ПОПЕРЕДЖЕННЯ](2dfx/1-1_warning.md)
 - [Інші плати розширення, що використовують зовнішнє керування кольором](2dfx/1-2_other-extcol-cards.md)
 - [Технічна інформація](2dfx/1-3_tech-info.md)
 - [Що таке 2dfx?](2dfx/1-4_what-is-2dfx.md)
 - [Загальні принципи роботи та обмеження 2dfx](2dfx/1-5_general-operation-and-limitations.md)
 - [Геометрія екрану](2dfx/1-6_geometry.md)
 - [Робота з кольором](2dfx/1-7_color-handling.md)
 - [Шари](2dfx/1-8_layers.md)
 - [Комунікація з 2dfx](2dfx/1-9_2dfx-comunication.md)
 - [Регістр статусу](2dfx/1-10_status-register.md)

[Детальний опис команд](2dfx/2_command-reference.md)

- [Структура та використання Resource RAM (RRAM)](2dfx/2-1_rram.md)
- [Глобальні команди, що впливають на загальну роботу](2dfx/2-2_general-operation-commands.md)
- [Спрайтова підсистема та її використання](2dfx/2-3_sprite-subsystem.md)
- [2DPT - використання шарів малювання 2D-графіки](2dfx/2-4_2dpt-introducing.md)
- [Загальні команди 2DPT](2dfx/2-5_2dpt-general-commands.md)  
- [Графічні примітиви 2DPT](2dfx/2-6_2dtp-graphics-primitives.md)  
- [2DPT ресурсно-орієнтовані команди](2dfx/2-7_2dpt-res-based-commands.md)  
	- [2DPT BLIT — швидке виведення бітмапів та фонових зображень](2dfx/2-8_2dpt-blitter.md)  
	- [2DPT FONT — виведення текстів та стрічок](2dfx/2-9_2dpt-fonts.md)  
	- [2DPT PATTERN_FILL — узорне заповнення прямокутників](2dfx/2-10_2dpt-patterns.md)  
	- [2DPT TILEMAP — малювання тайлового ігрового поля](2dfx/2-11_2dpt-tilemaps.md)  

[Практичне використання 2dfx](2dfx/3_using-2dpt.md)

- [Ініціалізація](2dfx/3-1_init.md)  
- [Рекомендований порядок роботи](2dfx/3-2_recommended-workflow.md)  
- [Посібник із завантаження даних](2dfx/3-3_res-upload.md)  
- [Оновлення прошивки](2dfx/3-4_fw-update.md)  
- [Зведена таблиця команд](2dfx/3-5_all-сommands.md)

[Вбудовані демонстрації](2dfx/4_easter-eggs.md)

- [EGG_C0 (C0h / 192) – «Як тебе назвати?»](2dfx/commands/egg_c0.md)
- [EGG_C1 (C1h / 193) – бенчмарк трансформацій](2dfx/commands/egg_c1.md)
- [EGG_C2 (C2h / 194) – анімоване 2DPT-демо](2dfx/commands/egg_c2.md)
- [EGG_C3 (C3h / 195) – робота зі шрифтами та виведення тексту](2dfx/commands/egg_c3.md)
- [EGG_C4 (C4h / 196) – демонстрація BLIT](2dfx/commands/egg_c4.md)
- [EGG_C5 (C5h / 197) – демонстрація PATTERN_FILL](2dfx/commands/egg_c5.md)
- [EGG_C6 (C6h / 198) – міні-демонстрація TILEMAP](2dfx/commands/egg_c6.md)
- [EGG_C7 (C7h / 199) – інтерактивний класичний Pong](2dfx/commands/egg_c7.md)
- [EGG_C8 (C8h / 200) – інтерактивний WOW pong](2dfx/commands/egg_c8.md)
- [EGG_C9 (C9h / 201) – «Вторгнення хробаків!»](2dfx/commands/egg_c9.md)
- [EGG_CA (CAh / 202) – Boulder Dash від 2dfx](2dfx/commands/egg_ca.md)
- [EGG_CB (CBh / 203) – демонстрація перевищення часу рендерингу](2dfx/commands/egg_cb.md)
- [EGG_CC (CCh / 204) – діагностичні тести](2dfx/commands/egg_cc.md)
- [EGG_CD (CDh / 205) – повноекранний BLIT](2dfx/commands/egg_cd.md)
- [EGG_CE (CEh / 206) – «В'язниця»](2dfx/commands/egg_ce.md)
- [EGG_CF (CFh / 207) – тест дискретизації зовнішнього кольору «TVC»](2dfx/commands/egg_cf.md)
- [EGG_D0 (D0h / 208) – стрес-тест оновлення зображення «TVC»](2dfx/commands/egg_d0.md)
- [EGG_D1 (D1h / 209) – координати видимої області екрана](2dfx/commands/egg_d1.md)
- [EGG_D2 (D2h / 210) – анімований 2DPT та демонстрація SET_XY_OFFSET](2dfx/commands/egg_d2.md)

----

*дизайн усього апаратного забезпечення: [Кароль Вацко](../peoples/community/kvaczko.md)  
архітектура програмного забезпечення, дизайн інтерфейсу команд: [Кароль Вацко](../peoples/community/kvaczko.md)  
код для мікроконтролера було запрограмовано **ChatGPT 5.5 Plus**, а потім **ChatGPT 5.6 Sol**, після чого він пройшов кілька додаткових перевірок на коректність від **Fable 5** від **Anthropic**  
посібник написав: [Кароль Вацко](../peoples/community/kvaczko.md)*  

*серпень 2026 року*  