# EXOS variables

Ці змінні керують багатьма різноманітними функціями системи, але особливо вони корисні для налаштування параметрів периферії перед відкриттям відповідних каналів. Ті з них, які мають важливе значення безпосередньо для вбудованих драйверів пристроїв, описані в межах інструкцій до цих конкретних драйверів. Проте тут наводиться їхній повний перелік.

Кожна змінна має 8-бітне значення, і кожна з них ідентифікується так само 8-бітним номером змінної EXOS. Наведений список містить усі змінні, що використовуються ядром EXOS, але системні розширення можуть створювати додаткові змінні з ідентифікаторами понад 127.

Будь-яку змінну можна встановити в довільне значення від 0 до 255. Однак чимало з цих змінних працюють як перемикачі (прапорці), що вмикають або вимикають певну функцію. У таких випадках значення **0** відповідає стану "увімкнено", а **255** — стану "вимкнено". Для маніпуляцій із ними можна використовувати спеціальний виклик EXOS — так зване перемикання (інверсію), яке робить інверсію бітів поточного значення, змінюючи таким чином 0 на 255 і навпаки.

Системні виклики EXOS для читання / запису / інверсії (перемикання) системних змінних дозволяють користувачеві, драйверу периферії або розширенню системи отримувати доступ до цих змінних, не знаючи їхніх фактичних адрес у пам'яті. 



0 [IRQ_ENABLE_STATE](exos-variables/exos_var0.md) (system)  
1 [FLAG_SOFT_IRQ](exos-variables/exos_var1.md) (system)  
2 [CODE_SOFT_IRQ](exos-variables/exos_var2.md) (system)  
3 [DEF_TYPE](exos-variables/exos_var3.md) (system)  
4 [DEF_CHAN](exos-variables/exos_var4.md) (system)  
5 [TIMER](exos-variables/exos_var5.md) (system)  
6 [LOCK_KEY](exos-variables/exos_var6.md) (keyboard)  
7 [CLICK_KEY](exos-variables/exos_var7.md) (keyboard)  
8 [STOP_IRQ](exos-variables/exos_var8.md) (keyboard)  
9 [KEY_IRQ](exos-variables/exos_var9.md) (keyboard)  
10 [RATE_KEY](exos-variables/exos_var10.md) (keyboard)  
11 [DELAY KEY](exos-variables/exos_var11.md) (keyboard)  
12 [TAPE_SND](exos-variables/exos_var12.md) (sound)  
13 [WAIT_SND](exos-variables/exos_var13.md) (sound)  
14 [MUTE_SND](exos-variables/exos_var14.md) (sound)  
15 [BUF_SND](exos-variables/exos_var15.md) (sound)  
16 [BAUD_SER](exos-variables/exos_var16.md) (serial, net)  
17 [FORM_SER](exos-variables/exos_var17.md) (serial, net)  
18 [ADDR_NET](exos-variables/exos_var18.md) (network)  
19 [NET_IRQ](exos-variables/exos_var19.md) (network)  
20 [CHAN_NET](exos-variables/exos_var20.md) (network)  
21 [MACH_NET](exos-variables/exos_var21.md) (network)  
22 [MODE_VID](exos-variables/exos_var22.md) (video)  
23 [COLR_VID](exos-variables/exos_var23.md) (video)  
24 [X_SIZ_VID](exos-variables/exos_var24.md) (video)  
25 [Y_SIZ_VID](exos-variables/exos_var25.md) (video)  
26 [ST_FLAG](exos-variables/exos_var26.md) (video)  
27 [BORD_VID](exos-variables/exos_var27.md) (video)  
28 [BIAS_VID](exos-variables/exos_var28.md) (video)  
29 [VID_ EDIT](exos-variables/exos_var29.md) (editor)  
30 [KEY_EDIT](exos-variables/exos_var30.md) (editor)  
31 [BUF_EDIT](exos-variables/exos_var31.md) (editor)  
32 [FLG_EDIT](exos-variables/exos_var32.md) (editor)  
33 [SP_TAPE](exos-variables/exos_var33.md) (tape)  
34 [PROTECT](exos-variables/exos_var34.md) (tape)  
35 [LV_TAPE](exos-variables/exos_var35.md) (tape)  
36 [REM1](exos-variables/exos_var36-37.md) (tape)  
37 [REM2](exos-variables/exos_var36-37.md) (tape)  
38 [SPRITE](exos-variables/exos_var38.md) (video) *(EXOS 2.1 та вище)*  
39 [RANDOM_IRQ](exos-variables/exos_var39.md) (system) *(EXOS 2.1 та вище)*  

## EXDOS

64 [ROM_EXDOS](exos-variables/exos_var64.md)  
65 [IS_P0](exos-variables/exos_var65-68.md)  
66 [IS_P1](exos-variables/exos_var65-68.md)  
67 [IS_P2](exos-variables/exos_var65-68.md)  
68 [IS_P3](exos-variables/exos_var65-68.md)  
69 [ECHO](exos-variables/exos_var69.md)  
70 [VERIFY](exos-variables/exos_var70.md)  
71 [DEF_UNIT](exos-variables/exos_var71.md)  
72 [BOOT DRV](exos-variables/exos_var72.md)  
73 [STEP_RATE](exos-variables/exos_var73.md)  
74 [DSK_CHK](exos-variables/exos_var74.md)  
75 [IN_ERROR](exos-variables/exos_var75.md)  
76 [OUT_ERROR](exos-variables/exos_var76.md)  
77 [IN_CLI](exos-variables/exos_var77.md)  
78 [OUT_CLI](exos-variables/exos_var78.md)  
79 [DT_FORM](exos-variables/exos_var79.md)  
80 [ER_MESS](exos-variables/exos_var80.md)  
81 [AB_ERR](exos-variables/exos_var81.md)  
82 [DSK_ERR](exos-variables/exos_var82.md)  
83 [CLI_PROT](exos-variables/exos_var83.md)  
84 [RND_0](exos-variables/exos_var84-87.md)  
85 [RND_1](exos-variables/exos_var84-87.md)  
86 [RND_2](exos-variables/exos_var84-87.md)  
87 [RND_3](exos-variables/exos_var84-87.md)  
88 [CLI_EN](exos-variables/exos_var88.md)  
89 [DCH_DIS](exos-variables/exos_var89.md)  
90 [FAST_VID](exos-variables/exos_var90.md)  
91 [CD_PROMPT](exos-variables/exos_var91.md)  
92  
93  
94  
95  
96  
97  
98  
99  

## EXDOS 3.0

90 [Drive A: type](exos-variables/exos_var90-93_exdos30.md)  
91 [Drive B: type](exos-variables/exos_var90-93_exdos30.md)  
92 [Drive C: type](exos-variables/exos_var90-93_exdos30.md)  
93 [Drive D: type](exos-variables/exos_var90-93_exdos30.md)  
94 [Drive A: clock](exos-variables/exos_var94-97_exdos30.md)  
95 [Drive B: clock](exos-variables/exos_var94-97_exdos30.md)  
96 [Drive C: clock](exos-variables/exos_var94-97_exdos30.md)  
97 [Drive D: clock](exos-variables/exos_var94-97_exdos30.md)  

## MOUSE (Hsoft)

128 [XPL](exos-variables/exos_var128-131_mouse-hsoft.md)  
129 [XPH](exos-variables/exos_var128-131_mouse-hsoft.md)  
130 [YPL](exos-variables/exos_var128-131_mouse-hsoft.md)  
131 [YPH](exos-variables/exos_var128-131_mouse-hsoft.md)  
132 [KEY](exos-variables/exos_var132_mouse-hsoft.md)  
133 [SI](exos-variables/exos_var133_mouse-hsoft.md)  
134 [XE](exos-variables/exos_var134-135_mouse-hsoft.md)  
135 [YE](exos-variables/exos_var134-135_mouse-hsoft.md)  
136 [BL](exos-variables/exos_var136-138_mouse-hsoft.md)  
137 [BH](exos-variables/exos_var136-138_mouse-hsoft.md)  
138 [BS](exos-variables/exos_var136-138_mouse-hsoft.md)  

## ZozoTools

141 [VAR 141](exos-variables/exos_var141_zozotools.md)  
142 [VAR 142](exos-variables/exos_var142_zozotools.md)  
143 [VAR 143](exos-variables/exos_var143_zozotools.md)  

## Language extensions
140 [VAR 140](exos-variables/exos_var140.md) Language extensions  (?)
144 [VAR 144](exos-variables/exos_var144.md) Language extensions  

## DBASX

145 [VAR 145](exos-variables/exos_var145_dbasx.md)  

## Speak (speech syntez)

150 [Volume](exos-variables/exos_var150-153_speak.md)  
151 [Speed](exos-variables/exos_var150-153_speak.md)  
152 [Tone](exos-variables/exos_var150-153_speak.md)  
153 [Pause](exos-variables/exos_var150-153_speak.md)  

## Pluto

150-161  

## ODD

150-157  

## MOUSE.XR

180 [VAR 180](exos-variables/exos_var180_mouse.md)  
181 [VAR 181](exos-variables/exos_var181_mouse.md)  
182 [VAR 182](exos-variables/exos_var182_mouse.md)  
183 [VAR 183](exos-variables/exos_var183_mouse.md)  
184 [VAR 184](exos-variables/exos_var184_mouse.md)  
185 [VAR 185](exos-variables/exos_var185_mouse.md)  
186 [VAR 186](exos-variables/exos_var186_mouse.md)  
187 [VAR 187](exos-variables/exos_var187_mouse.md)  
188 [VAR 188](exos-variables/exos_var188_mouse.md)  
189 [VAR 189](exos-variables/exos_var189_mouse.md)  
190 [VAR 190](exos-variables/exos_var190_mouse.md)  

## EXOS 2.4

191 [VAR 191](exos-variables/exos_var191.md) Memory wait states *(EXOS 2.4 та вище)*

## EPDOS 2.x

192-211  

## Enterprise Plus

199 [EPPLUS_VARS](exos-variables/exos_var199_epplus.md)  
200 [VDUMP_RES](exos-variables/exos_var200_epplus.md)  
201 [JOY_MOD](exos-variables/exos_var201_epplus.md)  
202 [VTPR_FLAG](exos-variables/exos_var202_epplus.md)  
203 [DATUM_FLAG](exos-variables/exos_var203_epplus.md)  

## CBM Multi File Transfer

200 [CBM 200 (BV)](exos-variables/exos_var200_cbm.md)  
201 [CBM 201 (BV+1)](exos-variables/exos_var201_cbm.md)  
202 [CBM 202 (BV+2)](exos-variables/exos_var202_cbm.md)  
203 [CBM 203 (BV+3)](exos-variables/exos_var203_cbm.md)  
204 [CBM 204 (BV+4)](exos-variables/exos_var204_cbm.md)  
205 [CBM 205 (BV+5)](exos-variables/exos_var205_cbm.md)  

## Venus

240-249

## Watch.rsx / Clock.ext

247 [VAR 247](exos-variables/exos_var247-255_watch.ext.md)  
248 [VAR 248](exos-variables/exos_var247-255_watch.ext.md)  
249 [VAR 249](exos-variables/exos_var247-255_watch.ext.md)  
250 [VAR 250](exos-variables/exos_var247-255_watch.ext.md)  
251 [VAR 251](exos-variables/exos_var247-255_watch.ext.md)  
252 [VAR 252](exos-variables/exos_var247-255_watch.ext.md)  
253 [VAR 253](exos-variables/exos_var247-255_watch.ext.md)  
254 [VAR 254](exos-variables/exos_var247-255_watch.ext.md)  
255 [VAR 255](exos-variables/exos_var247-255_watch.ext.md)  

