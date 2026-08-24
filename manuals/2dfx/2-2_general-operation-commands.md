---
title: "2dfx: посібник програміста - Команди, що впливають на загальну роботу"
---
## Глобальні команди, що впливають на загальну роботу

Глобальні команди впливають на загальну роботу [2dfx](../../hardware/hv-2dfx.md). Вони не належать до окремих спрайтів чи об'єктів малювання, а діють на весь графічний рушій: налаштовують режим роботи, прозорий колір, частоту рендерингу та сигнали, пов'язані з функціонуванням.

[SYS_RESET (8Fh / 143)](commands/sys_reset.md) — м'який перезапуск 2dfx  
[SET_ENGINE_MODE (50h / 80)](commands/set_engine_mode.md) — вибір режиму роботи 2dfx  
[SET_TRANSPARENT_COLOR (40h..4Fh / 64..79)](commands/set_transparent_color.md) — вибір прозорого кольору    
[SET_FPS (51h / 81)](commands/set_fps.md) — вибір частоти оновлення сцен    
[SET_RASTER_INT1..4 (54h..57h / 84..87)](commands/set_raster_int1-4.md) — налаштування растрових переривань    
[CLEAR_RASTER_INT (58h / 88)](commands/clear_raster_int.md) — скидання растрових переривань    
[SET_RENDER_OVERRUN_VISUAL (52h / 82)](commands/set_render_overrun_visual.md) — індикація перевантаженого рендерера  
[CLEAR_RENDER_OVERRUN (53h / 83)](commands/clear_render_overrun.md) — скидання індикації перевантаження рендерера  
[SHOW_BUILTIN_LOGO (90h / 144)](commands/show_builtin_logo.md) — вивести вбудоване лого  
[HIDE_BUILTIN_LOGO (91h / 145)](commands/hide_builtin_logo.md) — приховати вбудоване лого  
[SHOW_FW (8Eh / 142)](commands/show_fw.md) — інформація щодо прошивки  
