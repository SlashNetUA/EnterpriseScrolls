# ENTERPRISE'n STYREKODER

Enterprise tekstbehandling (WP) indeholder ikke nogen specielle koder til at styre Enterpriseprinteren [EP80+](../../../../hardware/printer/ep80.md) med. Dette betyder imidlertid ikke, at der ikke kan sendes styrekoder fra [WP](../../../../software/st-wp.md) til [EP80+](../../../../hardware/printer/ep80.md), blot fremgår det ikke helt indlysende hvordan.

Alle styrekoder til printeren ligger i intervallet 0-31, og disse koder kan man ikke skrive i [WP](../../../../software/st-wp.md), hvorimod man kan skrive koderne 128-159, og de kan bruges i stedet for.

Som det fremgår af bl.a. [EP80+ manualen](../../../../manuals/hw-ep80-plus-manual.md), side 36 nederst, er kode `0-31` magen til kode `128-159`; altså kan man sende en kode `155` i stedet for en kode `27` - med samme resultat. Man kan ikke se direkte på tasteturet, hvilken tast der skal trykkes på for at sende en kode `155`, men følgende regel kan bruges:

Hvis man holder `ALT`-tasten nede samtidig med, at man trykker på en anden tast, vil den værdi, der genereres, være 64 højere end det, der står på tasten, f.eks.:

`ALT/A` giver **129** (65+64)  
`ALT/Z` giver **154** (90+64)

I praksis vil det sige, at skal man sende en styrekode, der er mindre end `32`, til printeren, skal man finde tasten, der har en værdien 64 større end styrekoden, og trykke på denne, samtidig med at man holder `ALT`-tasten nedtrykket.

Disse værdier er ikke svære at finde, blot man bruger ASCII-tabellen på side 36 i [EP80+ manualen](../../../../manuals/hw-ep80-plus-manual.md), eller en gang for alle, laver sig en liste over hvilke taster det er, man skal bruge.

F.eks. aktiveres den automatiske understregning med følgende sekvens:

Kode **27** (ESC),  
Kode `-`,  
Kode `1`.

Dette sker fra [WP](../../../../software/st-wp.md) ved at trykke på:

`ALT/Æ` (skarp v.parantes på engelske maskiner)  
`-` (bindestreg)  
`1` (et-talet)

-så resultatet på skærmen bliver: `!-1`.

Denne automatiske understregning annuleres igen med denne sekvens:

kode **27** (ESC),  
Kode `-`,  
Kode `0`.

Dette sker fra [WP](../../../../software/st-wp.md) ved at trykke på:

`ALT/Æ` (skarp v.parantes på engelske maskiner)  
`-` (bindestreg)  
`0` (nullet)  

-så resultatet på skærmen bliver: `!-0`

Det er altså muligt at sende alle koder, eller [CHR\$](../../../../manuals/is-basic-man-en/functions/man_fn-chr.md)-værdier som det hedder i [BASIC](../../../../programming/is-basic.md), mellem **0** og **159** til printeren, og dermed stort set alle styrekode-sekvenser. Dem man ikke kan sende, kan man i vidt omfang sende fra f.eks. [BASIC](../../../../programming/is-basic.md), ved hjælp af [CHR\$](../../../../manuals/is-basic-man-en/functions/man_fn-chr.md)-funktionen, inden man går over i [WP](../../../../software/st-wp.md).