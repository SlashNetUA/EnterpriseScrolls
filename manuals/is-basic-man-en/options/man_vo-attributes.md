# ATTRIBUTES

`SET ATTRIBUTES expr`

Sets a special flag to control operations in attribute video mode (number **15**). Values of this flag have the following significance:

|Flag value|Significance|
|:--------:|------------|
|0 (default)||
|1|plotting in 0s (paper colour)
|2|plotting without affecting bit map (pixel) data
|4|plotting without affecting ink attributes
|8|plotting without affecting paper attributes
|16|printing in 0s
|32|printing without affecting bit map
|64|printing without affecting ink attributes
|128|printing without affecting paper attributes

To achieve combination effects, the numbers should be added together. The default value is **0**.
