# Позиціонування курсора

Керуюча послідовність для позиціонування курсора працює в усіх відеорежимах. У текстовому режимі вона просто переміщує курсор. У режимі атрибутної графіки вона переміщує текстовий курсор, але залишає вказівник графічного променя незмінним. У режимах піксельної графіки вона переміщує вказівник графічного променя до відповідних текстових координат, тому він буде на межі символів. 

Формат керуючої послідовності:

`esc=<у><х>`

`1B`,`3D`,**y**,**x**

Це встановлює курсор на рядок (`y-20h`) та стовпець (`x-20h`). Якщо **x** або **y** дорівнює **20h** (таким чином встановлюючи рядок або стовпець на нуль), то ця координата залишиться незмінною. Це дозволяє встановити лише рядок або стовпець.

## Eng
The escape sequence to position the cursor works in all modes. In text mode it simply moves the cursor. In attribute graphics mode it moves the text cursor but leaves the graphics beam pointer alone. In pixel graphics modes it moves the graphics beam pointer to the appropriate text co-ordinates, so it will be on a character boundary.

The format of the escape sequence is:

`esc=<у><х>`

`1B`,`3D`,**y**,**x**

This sets the cursor to row (`y-20h`) and column (`x-20h`). If either **x** or **y** is **20h** (thus setting row or column zero) then that co-ordinate will remain un-changed. This allows just the row or column to be set.

