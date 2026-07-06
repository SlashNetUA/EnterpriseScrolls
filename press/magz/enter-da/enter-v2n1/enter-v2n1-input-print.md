# INPUT >< PRINT

**INPUT £1**: «Forst tak for ENTER nr.2. Der er mange gode tips og fiduser.

Jeg har et problem som jeg håber i kan løse:

Jeg har en EP 64, hvortil er tilsluttet en Epson MX-80 type III printer. Da denne printer også skal bruges på en ABC-80 er det nødvendigt at bruge den serielt.

Jeg bruger kommandoen:

```
OPEN £1:"SERIAL:"
REDIRECT FROM £104 TO £1
```

Dette virker fint ved [LLIST](../../../../manuals/is-basic-man-en/commands/man_cs-llist.md) (med mindre £1 er brugt i programmet), men ved brug af [WP](../../../../software/st-wp.md), kan jeg kun få udskrevet een linie!! Hvordan klarer jeg (vi) den?

En anden ting: I min danske manual er der ikke noget indeks, er det muligt at få et sådan løst?

Jeg overvejer at få opgraderet til 128K, og er i tvivl om, hvorvidt det er en fordel (økonomisk), at få dansk tegnsæt i samme forbindelse? (nyt modul).

Ang. forslag til artikler i ENTER, kunne jeg godt tænke mig noget om tilbehør (test) af MUS, DISC, TALEMODUL o.l., samt bøger og tidsskrifter om EP.

Kunne man ikke bringe en medlemsliste så det var muligt at finde «lidelsesfæller» i nærheden af egen bopæl.

Er [EP 80+](../../../../hardware/printer/ep80.md) printeren en Epson, og i så fald, hvilken type, er det muligt at få en fortegnelse over controlkoderne?»

Med venlig hilsen  
Kenneth Parmo

**PRINT £1**: «Dit printerproblem skulle være til at løse. Istedet for at skrive hvad du gør, prøv da at skrive:

```
CLOSE £104
SET SERIAL BAUD x
OPEN £104:"SERIAL:"
```

her skal x være den ønskede baud rate. Nu kan du bruge kanal 104 normalt til [LLIST](../../../../manuals/is-basic-man-en/commands/man_cs-llist.md) og [LPRINT](../../../../manuals/is-basic-man-en/commands/man_cs-lprint.md). Skal du udskrive noget fra [WP](../../../../software/st-wp.md) skal du derimod trykke på `F3`, når du skal skrive din tekst ud på printeren. Istedet for at trykke <`ENTER`>, skal du først skrive

```
SERIAL:
```

og dernæst trykke <`ENTER`>. Sa skulle dit problem være løst.

Jeg tror ikke der er lavet noget indeks til den danske manual, men prøv at ringe til [Semicap](../../../../companies/semicap-aps.md) i Odense og hør normere.

After hvad jeg ved får du ikke rabat ved køb af begge ting samtidigt, men det vil uden tvivl være en kæmpe fordel at få begge ting.

En medlemsliste kan vi ikke bringe, da det ikke er sikkert at alle vil have deres navn offentliggjort. Er man interesseret, kan man sende os et brev og fortælle at man gerne vil have sit navn bragt i ENTER. Det kan have den fordel, at man måske kan finde sammen med andre.

Brevene behøver ikke at være skrevet på printer. Det eneste krav vi stiller er at vi kan tyde kragetæerne.»

Hvad I vil gøre ved mit brev, det bliver Jeres problem. Hvis altså I vil bringe det i ENTER. Her er både punkter, som kan gå under «risroser» og noget der kan gå under «input><print», andet kan måske slet ikke placeres under nogen af disse rubrikker. Men her er altså 14 punkter:

1) I '[Private Enterprise](../../../pr-private-enterprise-uk.md)', som sikkert alle medlemmer har modtaget (eller hvor mange er der nu?), er der en lille fejl i screensaver programmet. Hvis man ikke allerede har fundet fejlen, så er den her: i linie 210 skal der stå `RUN 300` og ikke bare `RUN`. Ellers vil programmet køre i en løkke indtil der ikke er mere «allocate-plads». Prøv at sætte `TRACE ON`!

2) I sidste nummer af ENTER havde I et tredimentionelt tegneprogram på siderne **26**-**29**. I mit nummer af ENTER er det yderste af nogen af siderne desværre forsvundet i trykket. Det drejer sig om linierne **660**, **700**, **770**, **780** og **1030** på side **27**. Også på side **28** har jeg problemer i linie **520**. Vil man gøre mig den tjeneste at vise disse linier igen i næste nummer af ENTER?

3) Jeg ved ikke om I selv har tænkt jer at udvikler nogen af de programmer, der skal komme i ENTER fremover, eller om i udelukkende vil bringe læserprogrammer, men hvis i også selv har tænkt jer at udvikle dem, hvad så med et godt tipsprogram, som også kan skrive rækkerne ud på de nye datakuponer? Jeg kunne forestille mig at programmet skulle kunne bruges med en [EP80+](../../../../hardware/printer/ep80.md) printer.

4) Og så et lille ønske om at høre noget om peeks og pokes, eller hvad med nogle smarte maskinkoderutiner?

5) Jeg synes, det er en dum ide at udelade karakterer i jeres spiltests. Uden dem synes jeg slet ikke man har noget sammenligningsgrundlag, og det er ikke alle, der bor i nærheden af en Enterprise forhandler, hvor man kan prøve spillene før køb. Jeres synes heller ikke det bliver mere objektivt uden. I skriver bare i stedet, at grafikken er virkelig god, og at den er alle pengene værd (sludder hvem betaler 190 kr. udelukkende for grafik?). Er det, det I mener med en objektiv vurdering? Eller er det helt at udelade kommentarer om programmets hastighed, hvor varieret det var, og hvor længe i kunne holde ud at spille det?  
   I øvrigt synes jeg ikke handlingen lød som et helt traditionelt spacespil som I skriver!?  
   Jeg vil foreslå at i deler karaktergivningen op i forskellige emner. Det kan være hastighed, fængslende, variation, grafik og lyd, men uden at i absolut skal give karakterer i det hele. Kun hvad I finder aktuelt i det pågældende program. Hvad nu hvis det foreksempel var et nyt programmeringssprog eller et regneark? Finder I det aktuelt kan I bl.a. også give karakterer i gennemarbejdethed, tale humor eller originalitet. Men husk at angive for hvad I giver points. Der kan f.eks. være ret så stor forskel på karakteren for hvor avanceret lyden er eller hvor længe man kan holde ud at høre på den!

6) Hvad med at krydre bladet med lidt billeder, eller måske bare nogle tegninger som i 'Private Enterprise'?

7) var det ikke en ide med nogle maskinkode rutiner, så man kan lave sprites i sine programmer? Eller så man kunne placere sine vinduer hvor som helst på skærmen f.eks. helt ude i den ene side?

8) Kunne man ikke lave en «skaermsqueezer», som istedet for at lagre hver eneste pixel og dens farve i hukommelsen, som jeg går ud fra den gør(?), lagrede en pixel og dens farve, og antallet af ens der følger efter? Enterprises faciliteter lokker jo til at have en masse grafiksider liggende i hukommelsen. Og en sådan rutine må da spare plads i langt de fleste tilfælde.

9) Er det iøvrigt nævnt i manualen at man kan skrive på en almindelig grafikside, og tilmed ændre karakterstørelsen ved at ændre opløsningen?

10) Hvilke fordele har attribute-moden og hvordan bruger man den? Manualens sparsomme oplysninger kan jeg ikke blive klog på.

11) Har I overvejet at bringe reklamer i ENTER?

12) Er det muligt at lave en buffer til hvilken som helst kanal, f.eks. til sine grafiksider?

13) Var det ikke en ide at bringe en komplet liste over forhandlere at Enterprise- udstyr jævnligt i ENTER?

14) Og så en opfordring til alle dem, som programmerer: Udover at sende dine bedste programmer til ENTER (hvad man forhåbentligt gør), var det så ikke også en god ide at sende dem ind til et af de populære datablade som f.eks. «Alt om Data». Jeg tror det ville give en god reklame for maskinen, hvis der var lidt flere programmer i de populære blade. Og ønsker alle Enterprise-ejere ikke at maskinen bliver så udbredt som overhovedet muligt?

P.S. Jeg ved ikke, hvor meget forstand I har på Enterprise derinde på ENTER. Måske er nogen af mine ideer lidt for «vilde»? Eller mon jeg fornærmer jer nu?

Venlig hilsen  
Stig Nygaard

Tak for problemet. Det er alligevel ikke noget problem. Som du selv skriver kan det placeres forskellige steder i bladet, så derfor valgte vi at give dig din egen artikel navngivet 'Stig Nygaard'. Selvfølgelig bringer vi dit brev i ENTER. Først kikker vi på om det kan have almen interesse, har det det, kommer det selvfølgelig i bladet, ellers svarer vi privat.

ad 1.) Tak for tippet. Der er ca. 90 medlemmer.

ad 2.) Vi havde modtaget en udskrift af 'Perspektiv' programmet og havde ikke tid til at taste det ind igen, så derfor bragte vi det direkte i bladet og de yderste linier forsvandt i trykken da der var skrevet helt ud til kanten af papiret. DERFOR, sender i programmer ind SKAL de sendes på bånd så vi selv kan skrive den ud i det rigtige format.

Linie 660: `FAK(3,3)=COS(Y)`  
Linie 700: `FAK(2,2)=COS(Z)`  
Linie 770:..`REFAFST/(-Z1+0Z)+0Y)*17+360;`  
Linie 780:..`REFAFST/(-Z2+0Z)+0Y)*17+360`  
Linie 1030: ...`,2),PKT(T,3))`  
Linie 1520: ...`RESTEMP(4),MATRIX(4,4)`  

Som I kan se er linienumrerne på side **28** fra og med **1220** til og med **1850**. Det yderste 1'tal er også faldet ud i trykken.

ad 3.) Vi vil nok ikke selv udvikle programmer specielt til bladet, men hvis og når vi har lavet noget selv vi mener kan have interesse for andre, bringer vi dem selvfølge i bladet. Med hensyn til dit forslag om et tipsprogram må vi nok skuffe dig og mange andre. For det første er der ingen af os i radaktionen, der har en døjt forstand på tipning. Vi ved dog begge at det vist nok er noget med nogle ettaller, krydser og totaller. Og for det andet: Havde vi fundet et godt system, ville vi højst sandsynligt ikke plabre ud med det til alle og enhver, men derimod beholde 13'neren for os selv. Endelig læste jeg en gang i Alt om Data, at karakterafstanden ikke er en standard på de nye tipskuponer og så vidt jeg er orienteret kan man ikke selv bestemme afstanden på [EP80+](../../../../hardware/printer/ep80.md) printeren.

ad 4.) Peek's og Poke's på Enterprisen er noget man skal gå meget forsigtigt med. Maskinen har jo som mange nok ved, et enormt stærkt operativsystem, [EXOS](../../../../software/ss-exos.md). Alt kommunikation med RAM og ROM skal gå gennem operativsystemet, fordi man aldrig kan være sikker på hvad der ligger hvor. I den tekniske manual er der i afsnittet om [EXOS-variable](../../../../programming/system-info/info_exos-variables.md) ikke nævnt hvike adresser disse befinder sig på. I [BASIC](../../../../programming/is-basic.md) findes ordrene [SET](../../../../manuals/is-basic-man-en/commands/man_cs-set.md), [ASK](../../../../manuals/is-basic-man-en/commands/man_cs-ask.md) og [TOGGLE](../../../../manuals/is-basic-man-en/commands/man_cs-toggle.md). Disse kan bruges med sindsro, da det er variabel nummeret man refererer til og ikke en adresse:

```
SET TAPE SOUND OFF
```

kan omskrives til

```
SET 12,255
```

De forskellige variable numrer kan findes i den tekniske manual. Grunden til dette er de store udvidelses muligheder maskinen har. Et godt eksempel hvor det går galt er hvis man vil spille Snooker med en Enterprise med dansk modul tilsluttet. Når det danske modul tilsluttes bliver der allokeret nogle tabeller i maskinens RAM-lager. Det er tilfældigvis også i denne RAM-plads at Snooker bruger nogle tabeller. Her sker der altså et sammenfald, der betyder at man ikke kan spille spillet. Havde programmøren holdt sig til kommunikation med EXOS ville fejlen aldrig være opstået, da EXOS selv ville have fundet en plads til modulet først og dernæst til Snooker's tabeller.

En anden grund til vi ikke kan fortælle om de meget berømte og eftertragtede peek's og poke's er den simple, at vi ingen har modtaget det kan jo kun betyde at der ingen er, som har opdaget noget sjovt. [Enterprise Computers](../../../../companies/enterprise-computers-ltd.md) vil heller ikke ud med noget om deres maskine.

Hvad er 'smarte' maskinkoderutiner? Dette ord vil vi meget gerne have forklaret nærmere. Eventuelt med nogle konkrete ønsker.

ad 5) Til bl.a. din tilfredsstillelse har redaktionen, som beskrevet andet steds i bladet, indvillget i, for fremtiden, at give vores anmeldelser en karakter.

Som svar på dit spørgsmål, om beskivelsen af Nodes of Yesod, må vi indrømme at der har indsneget sig en fejl i vores definition på spillet. Og vi giver dig derfor fuldstændig ret i, at spillet ikke har noget at gøre med et space-spil, snarer et arkade/adventure spil.

ad 6.) O.K. Send os nogle da, hverken Lars eller jeg selv er særlig kunstnerisk anlagte. Billeder vil vi som du ser i dette nummer have et af pr. programanmeldelse.

ad 7.) Der skulle komme en spritehandler meget snart. Med denne skulle man, efter hvad vi kan få oplyst, kunne lave sprites i egne programmer. Med vinduerne håber vi på et tidspunkt at kunne få nok at vide om maskinen til at vi kan lave dem.

ad 8.) Selvfølge kan man da en sådan skærmsqueezer. Det var måske en ide til Den hårde Nød?

ad 9.) Der står i den tekniske manual i afsnit 4.1.2 at man kan skrive til en grafikside og at højden bliver doblet i 16 og 256 farve mode.

ad 10.) Fordelen skulle være at man har 16 farver med en opløsning der svarer til en normal 4 farvers opløsning.

ad 11.) Ja, da. Nar vi engang finder en der er villig til at få reklame i ENTER, bringer vi den. Det er selvfølgelig også tlladt firmaerne sev at henvende sig til os. Dem vi har kontaktet har ikke haft lyst til at få reklamer i bladet. Hovedsageligt syntes de at bladet var for lille (læs for få medlemmer), uden at præciserer en nærmere størelse.

ad 12.) Jeg forstår ikke spørgsmålet! Hvad glæde skulle man have af en buffer til en grafik side? Derimod ville det mange gange være ønskeligt, hvis tasteturets buffer kunne udviddes til flere tegn.

ad 13.) Vi se nærmere på ønsket.

ad 14.) Vi kan kun tilslutte os opfordringen.

P.S. Nej, vi bliver ikke fornærmet. Men husk på at det er Jeres eget blad. Det er faktisk Jer der skal skrive bladet, sende stof og programmer ind. Vi har hverken tid eller kræfter til at lave det 100% af os selv. Og sikke et ego trip det ville være. Hvis nogle tror de kan lave det bedre og har de lyst til at overtage bladet, skal le da være hjertelig velkomne.

----

**Hvorfor købte jeg Enterprise?**

**INPUT £2**: «Tja, det har jeg faktisk også spurgt mig selv om mange gange siden – uden at få svar! Og dog - når jeg ser på specifikationerne for andre computere samt udskrifter af programmer til disse, så får jeg noget af svaret.

Et af de mest nærliggende alternativer var jo, i hvert fald kvalitetsmæssigt, commodore - men jeg kan absolut ikke goutere dens mærkværdige form for Basic, hvor programmerne jo er komplet umulige at læse.

Men som sagt, specifikationerne, heraf måske mest maskinens høje opløsning og dens let overskuelige programudskrifter samt at den blev rost til skyerne i diverse tidsskrifter, bl.a. for dens gode instruktionsbog, var vel nok det, der gjorde udslaget.

Efter købet kan jeg så konstatere, at d'herrer test-kørere må have haft en anden instruktionsbog end den, jeg har fået, for magen til elendig bog skal man da lede efer - alle finesserne er jo totalt udeladt. Den er til overflod fyldt med uanvendelige programmer, hvor man får brugt de samme ordrer i een uendelighed. Nogle af programmerne kan slet ikke køre, f.eks. side 76, hvor man får fejlmeddelsen «Variable not initialized». Man får at vide at Enterprisen kan køre flere programmer samtidigt samt at den kan behandle 2-dimentionle arrays-jamen, så giv dog nogle eksempler på hvordan man anvender det. At gemme variabler på bånd – `tape:file` access output og input er heller ikke omtalt i eksempler. Maskinens lydmuligheder anvender jeg ikke, og hvis man skal bedømme dem ud fra democasetten eller spillet «Voveligt», så er de ikke særlig gode.

Efterhånden finder man ud af noget af det selv, men det kniber i høj grad med opbakningen i diverse blade – det er meget få programmer, jeg finder i dem. Det må være en opgave for ENTER at fortælle hvor man finder sådanne. Det kan måske lyde, som om jeg er utilfreds med maskinen, men det er jeg ikke - det er den manglende opbakning og instruktionsbogen jeg er utilfreds med.

En enkelt ting, nemlig tasteturet, kunne dog godt være bedre, det låser for ofte, når man trykker lidt skævt.

I skriver som svar til M.N. i ENTER 2, at alle fejlmeddelelser står i bogen. Det passer ikke, der mangler godt 100 stykker, nemlig fra 9463-9999, som jeg vedlægger en udskrift af.

Af emner, som jeg kunne tænke mig at få belyst, er følgende:

1) Program for udskrift at skærm (udprintning af f.eks. tegning)  
2) Hvordan tegnes en bue (uden Turtle)  
3) Hvordan styre printeren fra [WP](../../../../software/st-wp.md)  
4) Programeksempler med 2-dim.arrays  
5) Eksempler på fler program kørsel. Vil det f.eks. være muligt at lave en ny bane klar i «Voveligt» mens man spillet et spil?  
6) Findes der, eller kommer der et CAD-program - maskinen er jo velegnet til netop det?  
7) Vi har campingvogn, og er derfor interesseret i at finde et lille farvefjernsyn, der har RGB-indgang og dermed kan anvendes som monitor. Jeg har endnu ikke fundet et sådant, men har hørt, at det skulle eksistere. Muligvis hos Ferguson, men er der en dansk forhandler af det?

Jeg vedlægger et tipsprogram som delvist er en omarbejdning fra «Alt om Data» nr.2-84 side 61: TIPS 13'er for spectrum. Det virker, men finesserne mangler- det er ikke «idiotsikret».»

Med venlig hilsen  
V. Boelskov

**PRINT £2**: «En ting vil jeg da også give dig ret i. Der er alt for få programeksempler i manualen. I ENTER, både nr. 1 og 2 står der lidt om det at gemme variable på bånd. Du gør lige som når du skriver på en skærm eller læser fra tasteturet.

Er det lydmuligheder du leder efter så kig i programmerne 'Orient express' og 'Race Ace'. Det er vist nok det bedste lyd, der er præsteret på Enterprisen til dato.

Vi vil da med glæde viderebringe navnene på blade hvori der findes programmer til Enterprise, men vi kan jo ikke selv sidde og læse alverdens blade igennem. Dog kan vi da fortælle at Alt om Data's søsterblad Softspecial ofte har programmer til Enterprise bragt.

Det er rigtigt nok at, der 'mangler' 100 stykker med fejlmeddelser. Ser du godt efter er det de samme der går igen. Det er kun nummeret der er forskelligt.

ad 1.) Som før nævnt, findes en sådan rutine i det danske modul. Det afhænger dog også af printerens art.

ad 2.) Jeg går ud fra, at med ordet bue mener du cirkelbue! Hertil kan du bruge dette lille program:

```
100 OPTION ANGLE DEGREES
110 FOR I=FRA TO TIL STEP OPL
120   PLOT R*COS(I)+X,R*SIN(I)+Y;
130 NEXT
```

Følgende variable er brugt:

FRA : Den vinkel buen starter fra.  
TILL : Den vinkel buen slutter i.  
OPL : Den opløsning buen skal tegnes i.  
R : Buens radius.  
X : Buens x-koor - radius.  
Y : Buens y-koor - radius.

ad 3.) Se artiklen andetsteds i bladet.

ad 4.) Se beskrivelsen i Enterprise manualen side 73 og 74.

Et lille eksempel:

```
100 NUMERIC A(1 TO 9, 1 TO 9)
110 FOR I=1 TO 9
120   FOR J=1 TO 9
130     A(I,J)=I*10+J
140   NEXT
150 NEXT
160 FOR X=1 TO 9
170   FOR Y=1 TO 9
180     PRINT USING "££££":A(X,Y);
190   NEXT
200   PRINT
210 NEXT
```

ad 5.) Rigtig multi-tasking på Enterprise tror jeg ikke er mulig. Du kan simulerer multi-tasking ved hjælp af den indbyggede timer og handler-rutiner. Efter en bestemt tid kan du kalde et andet program nummer.

ad 6.) Mig bekendt findes ikke nogle.

ad 7.) Forhør dig i forskellige radioforretninger. Enterprise har lave et Fjernsyn/monitor der kører UHF og med monitorindgang. Hør nærmere om dette hos din Enterprise forhandler.»