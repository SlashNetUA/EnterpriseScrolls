# GRAPHICS

`GRAPHICS`  
`GRAPHICS HIRES colour-quantity-number`  
`GRAPHICS LORES colour-quantity-number`  
`GRAPHICS ATTRIBUTE`

The command **GRAPHICS** has the effect of closing and re-opening the default graphics and text pages (**£101** and **£102**); it displays the default graphics page over most of the screen, but with four lines of text at the bottom.

**GRAPHICS** also establishes the default channel (**101**) for video machine options such as **PALETTE**.
Valid colour-quantity numbers are **2**, **4**, **16** and **256**. If nothing is specified for the colour quantity or the **HIRES**/**LORES** option, the values that were used for the previous **GRAPHICS** command will be re-used. For the significance of these values, see '[Video Mode](man_vo-video-mode.md)', in the '[Video Options](man_3-vidoptions.md)' section. Initially, **GRAPHICS** selects a high-resolution graphics page with 4 colours.

**GRAPHICS ATTRIBUTE** selects an 'attribute' mode of graphics in which each colour-cell (8 dots wide by 1 dot deep) can contain one '**ink**' colour and one '**paper**' colour. This mode combines a 16-colour palette with the same resolution as 4-colour HIRES graphics (resolution and colour-quantity cannot be specified by the user). Both printing and plotting commands may be given, although there can be interactive effects between the colours. For flexible use of this mode see the **ATTRIBUTES** video option. See [DISPLAY GRAPHICS](man_cs-display.md).
