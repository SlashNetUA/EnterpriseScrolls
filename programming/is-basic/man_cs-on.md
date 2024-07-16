# ON

`ON expr GOTO line-number-list`  
`ON expr GOSUB line-number-list`

Evaluates expression, converts result to an integer, and uses integer result **N** to choose **Nth line-number** from the list (the count starts from **1**). Program execution then resumes from that line. If there is no **Nth line-number**, no action is taken. Use [SELECT](man_cs-select.md) or [IF](man_cs-if.md) block for a more readable program.

`ON A+2 GOTO 100,200,300,400,99,700`

----

Эта команда была добавлена для простого переноса программ с других диалектов Бейсика.
