# Random Access Filer

stod der i den farvestrålende brochure fra [Enterprise Computers](../../../../companies/enterprise-computers-ltd.md).

Da jeg fik min [EXDOS](../../../../hardware/hd-exdos.md)-controller, var random access filer noget af det første jeg kiggede efter i [manualen](../../../../manuals/ss-exdos-manual-en.md), efter jeg havde tilsluttet og afprøvet nogle af de mest elementære disk-operationer. Jeg kom til at lede længe. Faktisk læste jeg den ellers manual igennem 3 gange forfra og 2 gange bagfra, før jeg opgav.

Faktisk står der intet som helst om behandling af datafiler. Så måtte der ekspermenteres. Alle gode og mindre gode teorier blev afprøvet, men lige lidt hjalp det. Den eneste måde jeg kunne hente og gemme data på, var som man gjorde på kassettebåndoptageren, altså sekventielt. Det kunne da ikke være rigtigt? En så stærk controller med en så stærk computer bag sig, kunne den eneste tilgang til fildata da ikke kun være sekventiel. SÅ var gode dyr rådne. Hvad gjorde man? Lovede [Enterprise Computers](../../../../companies/enterprise-computers-ltd.md) mere end de kunne holde?

Pludselig slog det mig. Engang jeg sad og læste i Tecnical Informations, stod der i afsnittet om 'Kernel specifications' under funktion 10, at man med denne funktion, kunne få 'random access' til fil drivere; så som disks. Fluks greb jeg min T.I. (ikke Texas Instruments) og slog op på side 52. Her stod det sørme.

Før jeg fortæller hvordan man laver Random access filer, bør jeg nok lige forklare hvad det i grunden er for et fænomen. En sekventiel fil, er som ordet siger, en fil, der kun kan læses og skrives sekventielt i rækkefølge. En fil, der ligger på et kasettebånd, er en sekventiel fil, da man kun kan læse fra starten til slutningen og ikke springe rundt efter for godt befindende. En Random access fil, eller på dansk, en direkte fil, som jeg hellere vil bruge, er en fil hvor der er direkte tilgang til de enkelte bytes.

Hvad er så fordelen med direkte filer frem for sekventielle? og hvad skal man bruge dem til?

Laver man f.eks. et kartoteksprogram kan man med direkte filer, gå ind og se hvem medlem nr. 50 er. I sekventielle filer bliver man først nødt til at hente 49 medlemmer ind, før man når til nr. 50, som man skulle bruge. Sorteringsrutiner bliver ligeså nemme at lave for ikke at sige mere effektive; man kan her lave dem med optimal hastighed.

Før man starter med at lave sin 'adresseringsrutine, skal man først finde ud af hvordan. Altså hvordan man vil bygge den op. Det viser sig at være smart at have antallet af poster (records) i starten af filen, da man så slipper for at flytte den rundt efterhånden som man udvider sin fil. Herefter kan man f.eks. have et felt, der fortæller om filen er sorteret eller ej, og hvis der er flere måder den kan være sorteret efter, måden den er sorteret på (alfabetisk orden efter navn, adresse eller by). Er der flere ting man vil have efter, der fortæller om filens status, lægges de efter. En anden mulighed er at have en seperat statusfil.

Fordelen ved at have den i en fil er at man slipper for roderiet med flere filer.

Når dette er bestemt, kommer vi til selve recorden. Lad os sige vi ønsker at lave en adresseliste over venner og bekendte. Den kan for eksempel indeholde navn, adresse, postnr. og by. Herefter skal den maksimale længde af alle disse variable findes. Vi antager at vi har følgende erklæring i starten af programmet:

```
STRING *30 NAVN$,ADRESSE$,BY$,POSTNR$*4
```

Recordlængden bliver hermed:

```
reclen=maxlen(navn$)+
       maxlen(adresse$)+
       maxlen(by$)+
       maxlen(postnr$)+
       2+3
      =
       30+30+30+4+2+3
      =99
```

Tretallet kommer fra de tre kommaer, der skal bruges som skilletegn mellem variablene og totallet fra carriage return+linefeed, der skal være sidst i sætningen, som printer variablene ud på filen.

Vi er nu kommet så langt at vi kan lave adresseringsalgoritmen.

```
nr = 99 * recnr + 11
```

recnr er nummeret på den post i filen vi gerne ville have fat på, 11-tallet er længden af på feltet, som indeholder antallet af poster i filen og endelig er nr det antal [EXDOS](../../../../software/ss-exdos.md) skal steppe frem i filen før den kommer til det vi skal bruge.

Nu er der kun tilbage at lave selve adresserings rutinerne. Disse er vist i nedenstående program.

BEMÆRK: Åbnes filen med

`ACCESS OUTPUT`

bliver en eventuelt eksiste-rende fil slettet og derpå oprettet og åbnet. Brug derfor kun denne kommando første gang filen benyttes, ellers bruges

`ACCESS INPUT`

som også er default. Åbnes i denne mode kan der stadigvæk skrives på filen, forudsat at den eksisterer.

```
1 ALLOCATE 27
2 ! PARABLOCK er en parameterblok, som rutinen POINT skal
3 ! bruge til sine parametre. POINT er selve adresserings
4 ! rutinen, som peger på den byte, der bliver udpeget af
5 ! de fire første bytes i PARABLOCK. I bytenr. 4, 5, 6
6 ! og 7 står filstørelsen.
7 CODE PARABLOCK=HEX$("0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0")
8 CODE POINT=HEX$("7D,0E,01,11")&WORD$(PARABLOCK)&HEX$("F7, 0A,67,69,C9")
9 !
10 DEF SEEK(CHAN,LIN)
11   NUMERIC L,L1,I,P
12   LET L1=99*LIN+11
13   IF L1<0 THEN LET L1=0
14   FOR I=3 TO 0 STEP -1
15     LET L=INT(L1/256^I)
16     LET L1=L1-L*256^I
17   NEXT
18   CALL USR(POINT,CHAN)
19   LET P=PARABLOCK
20   LET FILESIZE=PEEK(P+4)+256*PEEK(P+5)+2*256*PEEK(P+6)+3*256*PEEK(P+7)
21 END DEF
22 !
23 DEF GETANT(F,REF A)
24   CALL SEEK(F,-1)
25   INPUT £F:A
26 END DEF
27 !
28 DEF PUTANT(F,A)
29   CALL SEEK(F,-1)
30   PRINT £F:A
31 END DEF
32 !
33 DEF WRITEREC(NR,A$,B$,C$,D$)
34   STRING SPACES$*30
35   LET SPACES$="                                        " ! 40 spaces.
36   CALL SEEK(OUTFIL,-1)
37   PRINT £OUTFIL:STR$(ANTAL)&SPACES$(:9-LEN(STR$(ANTAL)))
38   CALL SEEK(OUTFIL,NR)
39   PRINT £OUTFIL:A$&SPACES$(:30-LEN(A$));",";B$&SPACES$(:30-LEN(B$));",";C$&SPACES$(:30-LEN(C$));",";D$&SPACES$(:30-LEN(D$))
40 END DEF
41 !
42 DEF READREC(NR,REF A$,REF B$,REF C$,REF D$)
43   CALL SEEK(INFIL,NR)
44   INPUT £INFIL:A$,B$,C$,D$
45   LET A$=RTRIM$(A$)
46   LET B$=RTRIM$(B$)
47   LET C$=RTRIM$(C$)
48   LET D$=RTRIM$(D$7)
49 END DEF
```

----

<div style="text-align:center;">
<img src="enter_v2n1_07.png" alt="'Den nægter at køre noget program for mig, så længe jeg ikke betaler de 14.000 kr., jeg tabte til den i en omgang enarmet bandit i sidste måned'" width="50%"><br><i>'Den nægter at køre noget program for mig, så længe jeg ikke betaler de 14.000 kr., jeg tabte til den i en omgang enarmet bandit i sidste måned'</i></div>


