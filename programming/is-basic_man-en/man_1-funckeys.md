# THE FUNCTION KEYS

You have already tried pressing some or all of these keys. They are located above the number keys and are themselves numbered **1**-**8**.

These keys can be redefined by you to perform whatever function you may wish them to do. Until you redefine them, however, the computer provides functions for each key which you will probably find useful at some stage.

Redefining the function keys is done by typing (for example):

```
SET FKEY 1 "PRINT"
```

The function you wish the key to perform should come in inverted commas. The number after [FKEY](man_mo-fkey.md) is the number of the key being redefined.

Try typing in the command above and then press the first function key. The word `PRINT` will appear on the screen. This means the keys can be used to put frequently-used keywords on the screen just by pressing one key instead of typing the whole word. Words like `RUN`, `LIST` and `RENUMBER` are possibly more useful because you do not always need to add anything after them. Pressing a function key to list a program is far quicker than typing the word [LIST](man_cs-list.md) and pressing '**Enter**'.

A carriage 'return' – the equivalent of pressing '**Enter**' – can be added to a function key definition, by appending

```
&CHR$(13)
```

to the end of that definition, e.g.:

```
SET FKEY 1 "PRINT"&CHR$(13)
```

The large table on [page 45](man_1-funcop.md) shows the uses of each function key as they stand when you switch on the computer with the BASIC cartridge inserted. Notice that you can use '**Shift**', '**Ctrl**' and '**Alt**' with the function keys, which means each function key actually carries four different functions. When you want to reset the keys to these functions after redefining them, type `CLEAR FKEYS`.

When pressed by themselves, as you know, the function keys have different uses when you are operating the word processor. These uses are set out in the smaller table.