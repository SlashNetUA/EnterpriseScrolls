# TAPE PROTECT  
`SET TAPE PROTECT ON/OFF`  
`TOGGLE TAPE PROTECT`

Egy jelzőt állít a magnós fejlécben. Ha ez a jelző bekapcsolt állapotban van a kimentett file fejlécében, akkor a file másolásvédett, vagyis az EXOS nem enged megnyitni egyszerre két csatornát a TAPE: eszköz számára írásra, olvasásra. Ha a jelző nulla (vagyis alapértelmezés szerinti), akkor a file nem másolásvédett. Használható a TOGGLE.

# TAPE PROTECT

`SET TAPE PROTECT expr`  
`ASK TAPE PROTECT var`  
`TOGGLE TAPE PROTECT`

Незадокументована опція.

Він встановлює прапорець (маркер) у заголовку файлу для магнітофона. Якщо цей прапорець увімкнено в заголовку збереженого файлу, то файл є захищеним від копіювання. Це означає, що EXOS не дозволить одночасно відкрити два канали для пристрою `TAPE:` на читання та запис. Якщо цей прапорець дорівнює нулю (тобто встановлений за замовчуванням), файл не захищений від копіювання. Можна використовувати перемикач (`TOGGLE`).


Змінює значення змінної EXOS [PROTECT](../../../programming/system-info/exos-variables/exos_var34.md), що впливає на збереження "захищених від копіювання програм".