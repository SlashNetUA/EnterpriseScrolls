---
title: "2dfx: посібник програміста - Посібник із завантаження"
---

## Посібник із завантаження даних

У [розділі про використання RRAM](2-1_rram.md) пояснюється, що 2dfx підтримує кілька режимів завантаження та розпакування. Наведена нижче оглядова таблиця допоможе вибрати правильні комбінації.

Таблиця містить усі можливі комбінації. Дані карти [TILEMAP](2-11_2dpt-tilemaps.md), дані набору символів [FONT](2-9_2dpt-fonts.md) та текстові/рядкові дані для [DRAW_TEXT](commands/2dpt-draw_text.md) завжди мають бути даними у форматі **RAW**.

| Тип даних                                                                                                                                                                   | Формат | Дані<br>cтиснені? | Команда завантаження                   | Команда розпакування                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |:---------------:|:-----------------:| -------------------------------------- | ------------------------------------ |
| дані зображень для [спрайтів](2-3_sprite-subsystem.md), [BLIT](2-8_2dpt-blitter.md) та [PATTERN_FILL](2-10_2dpt-patterns.md); дані зображень тайлів [TILESET](2-11_2dpt-tilemaps.md) | внутрішній 2dfx |        ні         | [UPLOAD_RAW](commands/upload_raw.md)   | –                                    |
| дані зображень для [спрайтів](2-3_sprite-subsystem.md), [BLIT](2-8_2dpt-blitter.md) та [PATTERN_FILL](2-10_2dpt-patterns.md); дані зображень тайлів [TILESET](2-11_2dpt-tilemaps.md) |       TVC       |        ні         | [UPLOAD_TVC](commands/upload_tvc.md)   | –                                    |
| дані зображень для [спрайтів](2-3_sprite-subsystem.md), [BLIT](2-8_2dpt-blitter.md) та [PATTERN_FILL](2-10_2dpt-patterns.md); дані зображень тайлів [TILESET](2-11_2dpt-tilemaps.md) |      NICK       |        ні         | [UPLOAD_NICK](commands/upload_nick.md) | –                                    |
| дані карти [TILESET](2-11_2dpt-tilemaps.md); дані набору символів [FONT](2-9_2dpt-fonts.md); текст/рядок для [DRAW_TEXT](commands/2dpt-draw_text.md)                                 | внутрішній 2dfx |        ні         | [UPLOAD_RAW](commands/upload_raw.md)   | –                                    |
| дані зображень для [спрайтів](2-3_sprite-subsystem.md), [BLIT](2-8_2dpt-blitter.md) та [PATTERN_FILL](2-10_2dpt-patterns.md); дані зображень тайлів [TILESET](2-11_2dpt-tilemaps.md) | внутрішній 2dfx |        так        | [UPLOAD_RAW](commands/upload_raw.md)   | [UNZX1_RAW](commands/upload_raw.md)  |
| дані зображень для [спрайтів](2-3_sprite-subsystem.md), [BLIT](2-8_2dpt-blitter.md) та [PATTERN_FILL](2-10_2dpt-patterns.md); дані зображень тайлів [TILESET](2-11_2dpt-tilemaps.md) |       TVC       |        так        | [UPLOAD_RAW](commands/upload_raw.md)   | [UNZX1_TVC](commands/unzx1_tvc.md)   |
| дані зображень для [спрайтів](2-3_sprite-subsystem.md), [BLIT](2-8_2dpt-blitter.md) та [PATTERN_FILL](2-10_2dpt-patterns.md); дані зображень тайлів [TILESET](2-11_2dpt-tilemaps.md) |      NICK       |        так        | [UPLOAD_RAW](commands/upload_raw.md)   | [UNZX1_NICK](commands/unzx1_nick.md) |
| дані карти [TILESET](2-11_2dpt-tilemaps.md); дані набору символів [FONT](2-9_2dpt-fonts.md); текст/рядок для [DRAW_TEXT](commands/2dpt-draw_text.md)                                 | внутрішній 2dfx |        так        | [UPLOAD_RAW](commands/upload_raw.md)   | [UNZX1_RAW](commands/unzx1_raw.md)   |