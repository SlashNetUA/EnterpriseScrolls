---
title: "2dfx: посібник програміста - Графічні примітиви 2DPT"
---

## Графічні примітиви 2DPT

Графічні примітиви слугують для малювання точок, ліній, прямокутників, еліпсів та їхніх різних варіацій. Кожен примітив займає один слот [2DPT](2-4_2dpt-introducing.md). Список графічних примітивів та їхні детальні параметри наведено нижче. Для кожної команди 2DPT необхідно передавати саме стільки параметрів, скільки вказано в її описі.

[2DPT - PLOT (62h, E2h / 98, 226)](commands/2dpt-plot.md) — малювання крапки  
[2DPT - LINE (63h, E3h / 99, 227)](commands/2dpt-line.md) — малювання лінії  
[2DPT - ERASE_LINE (64h, E4h / 100, 228)](commands/2dpt-erase_line.md) — стирання лінії  
[2DPT - BUCKET_FILL (65h, E5h / 101, 229)](commands/2dpt-bucket_fill.md) — заливка  
[2DPT - RECT (66h, E6h / 102, 230)](commands/2dpt-rect.md) — малювання прямокутника  
[2DPT - FILL_RECT (67h, E7h / 103, 231)](commands/2dpt-fill_rect.md) — малювання заповненого прямокутника  
[2DPT - ROUND_RECT (68h, E8h / 104, 232)](commands/2dpt-round_rect.md) — малювання заокругленого прямокутника  
[2DPT - FILL_ROUND_RECT (69h, E9h / 105, 233)](commands/2dpt-fill_round_rect.md) — малювання заповненого заокругленого прямокутника  
[2DPT - ELLIPSE (6Ah, EAh / 106, 234)](commands/2dpt-ellipse.md) — малювання еліпсу  
[2DPT - FILL_ELLIPSE (6Bh, EBh / 107, 235)](commands/2dpt-fill_ellipse.md) — малювання заповненого еліпсу  
[2DPT - ARC (6Ch, ECh / 108, 236)](commands/2dpt-arc.md) — малювання дуги  
[2DPT - PIE (6Dh, EDh / 109, 237)](commands/2dpt-pie.md) — малювання сектора  

