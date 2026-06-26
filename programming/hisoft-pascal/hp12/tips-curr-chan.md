# Зміна поточного каналу виведення

Процедури [WRITE](../../../manuals/hisoft-pascal-man-en/man_s2-4-1-write.md) та [WRITELN](../../../manuals/hisoft-pascal-man-en/man_s2-4-1-writeln.md) у HiSoft Pascal записують дані у канал [EDITOR](../../system-info/exos-devices/editor.md) за замовчуванням (**121**). Однак, область дії процедур [WRITE](../../../manuals/hisoft-pascal-man-en/man_s2-4-1-write.md), [WRITELN](../../../manuals/hisoft-pascal-man-en/man_s2-4-1-writeln.md), [GOTOXY](proc-gotoxy.md) та [CLRSCR](proc-clrscr.md) можна змінити на будь-який відеоканал за допомогою наступної команди (де **chan** це потрібний номер каналу):

```
poke(#0328,chr(chan));
```

Відтепер ми можемо записувати у вказаний канал, доки не змінимо номер відеосторінки за замовчуванням за допомогою цієї ж інструкції. Однак, перед завершенням програми необхідно відновити стан за замовчуванням (121 – номер каналу редактора):

```
poke(#0328,chr(121));
```