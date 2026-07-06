Стаття з журналу [ENTER Vol 2 #1](../enter-v2n1.md).

# SPEAKEASY

Så fik vi den endelig. ENTER modtog for et par måneder siden et eksemplar af talemodulet, også kaldet [SPEAKEASY](../../../../hardware/sound/hs-speakeasy.md), for at anmelde det. Det skal indrømmes, at det var med en anelse skepsis, vi åbnede æsken med modulet, hvilket dog senere viste sig at være aldeles ubegrundet.

Inde i æsken lå modulet, meget fint emballeret i et tykt lag skumgummie, sammen med et bånd og en brugervejledning.

Tilslutningen til Enterprisen foregik ganske simpelt uden nogen brug af værktøj. Bag på modulet sider der to ledninger med hvert sit stik.

Det ene stikkes ganske enkelt ind i printerudgangen, på Enterprisen hvorimod det andet bruges lidt specielt. Man afmonterer power stikket fra strømforsyningen og erstatter det med det sidste stik fra talemodulet. I selve modulet, er der bag på monteret et powerstik (hun), som stikket fra strømforsyningen passer ind i. På den måde får både modulet og computerens forsyningsspænding.

Nok om tilslutningen (det er forøvrigt forklaret meget tydeligt i den vedlagte brugervejledning). Vi var nu meget spændt pi, hvor let det var at få modulet til at tale. Modulet er ikke, som du måske troede, direkte i stand til at udtale hele ord. Men man må 'bygge' et ord op, ved at benytte en kombination af forskellige phonomener, som står beskrevet i vejledningen.

Begrebet - phonemer kan bedst forklares, som udtalen af et enkelt bogstav. Modulet er i alt, i stand til at gengive 64 forskellige phonemer, hvilket i og for sig er nok til at genererer 'alle' ord.

Hvert phonem er symboliseret med et tal, (0-63). Det er nu meningen at man via printerudgangen skal overfører sin talkombination (ord) til modulet. Dette gøres meget simpelt ved at skrive f.eks.

```
LPRINT CHR$(45),
```

hvilket vil få modulet til at udstøde et ubestemmeligt grynt.

Det er så meningen at man opbygger et program, der udsender en talkombination, som giver det ønskede ord. Hvis vi f.eks. vil have modulet til at sige «computer» kan programmet se således ud:

```
100 FOR I=1 TO 8 
110   READ A
120   LPRINT CHR$(a);
130 NEXT I
140 DATA 42,15,16,63
150 DATA 49,22,13,51
160 LPRINT CHR$(4);
```

Linie **160** skal med, da modulet ellers vil blive ved med at sige lyden for den sidste talværdi.

Nu kan det jo i længden være irreterende at skulle side at 'hånd assemblere' sig frem til hvert enkelt ord. Her kommer så det vedlagte bånd ind i billedet. På dette bånd ligger der et stærkt lille program, som gør betjeningen af modulet til en leg. I stedet for at at side og finde frem til hvilken talkobination, der giver ordet «computer» skriver man nu blot:

```
LPRINT SAY$("COMPUTER");
```

-a piece of cake. Ikke sandt!

Tilbage er kun at fortælle lidt om lyden. Den kommer fra modulets inbyggede forstærker og højtaler, og kan på et potentiometer i siden requleres fra komplet stilhed til høje råb. Hvis man, uvist af hvilken grund, ikke synes dette er højt nok, kan man desuden via et udvendigt stik tilslutte sin egen forstærker eller højtaler.

KONKLUSION: Jeg startede denne artkel med at skrive, at det var med en anelse skepsis, at vi åbnede æsken med modulet. Grunden hertil, er at vi, som så mange andre, har set utallige af film, hvor man har hørt computere tale. Og indtil nu har det ikke virket særligt overbevisende på os. Denne opfattelse er for vort vedkommende hermed ændret.

De lyde som man første gang får ud af SPEAKEASY, lyder måske ikke særligt overbevisende, men når man har haft tid til at side at lege lidt med modulet, kan man virkelig få det til at ligne. Jeg er overbevist om at fremtidige ejere af SPEAKEASY vil give mig ret heri.

I sidste blad nævnte vi, at vi af forskellige grunde ikke var tilbøjelige til at give et stykke soft- eller hardware karakter. Denne udtalelse medførte en 'læserstorm', hvor utallige af medlemmerne ligefrem krævede en karakter. Dette har vi fra redaktionen indvilliget i og anmeldelser vil for eftertiden være forsynet med en karakter, dog frasiger vi os ethvert ansvar for fejlkøb fra læsernes side, da det, som nævnt i sidste blad. kun kan være køberen/brugeren der kan bedømme kvaliteten af det købte.

KARAKTER: 9.