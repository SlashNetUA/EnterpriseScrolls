---
title: "IS-Basic Manual. INK"
---
# INK

`SET £chan:INK colour-number`

Sets the current plotting colour. The colour number is a **palette-number** except in colour mode **3** (256 colours), when it is a standard **colour-code** number. Channel number defaults to **£101**.

For an 80-column text page (video mode **2**), the valid ink colours are palette numbers **1**, **3**, **5** and **7**. These are paired with paper colours **0**, **2**, **4** and **6** respectively; a character printed in a specific ink colour will automatically be given the associated paper colour for its own individual background. A colour-pair for ink and paper is selected by typing [SET PAPER](man_vo-paper.md) or [SET INK](man_vo-ink.md), followed by either of the two relevant **palette-numbers**.

A 40-column text page (video mode **0**) is similar except that there are only **2** available colour-pairs.

----

See also: [SET PAPER](man_vo-paper.md)