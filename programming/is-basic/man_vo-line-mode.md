# LINE MODE

`SET £chan:LINE MODE parameter`

Determines the interaction between the colours on the existing display and the new lines which are plotted. In mode **0** (the default mode), a new line overwrites anything plotted before. In modes **1**-**3**, the colour used for any part of the new line will be determined by combining the palette numbers of the old and new ink-colours, in the following ways:

|Mode|Line mode|
|:--:|:-------:|
|0<br>(default)|overwrite
|1|OR
|2|AND
|3|Exclusive OR

Channel number defaults to **£101**.
