# PAPER

`SET £chan:PAPER:colour-number`

Selects the colour which will be used as a background for printing or plotting. In colour-mode **3**, the paper colour is defined by a standard **color-code**; in other modes, by a **palette-number**. The channel number defaults to **£101**.

For a graphics video page (modes **1** and **5** – see [VIDEO MODE](man_vo-video-mode.md) option), the **PAPER** command will only take effect when the page is cleared – when a new background is selected for the graphics display.

For an 80-column text page (video mode **2**), the valid paper colours are palette numbers **0**, **2**, **4** and **6**. These are paired with ink colours **1**, **3**, **5** and **7** respectively; a character printed in a specific ink colour will automatically be given the associated paper colour for its own individual background. A colour-pair for ink and paper is selected by typing [SET PAPER](man_vo-paper.md) or [SET INK](man_vo-ink.md), followed by either of the two relevant **palette-numbers**.

A 40-column text page (video mode **0**) is similar except that there are only **2** available colour-pairs.
