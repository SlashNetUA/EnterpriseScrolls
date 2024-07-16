# TIMER

`SET TIMER expr`

Starts a timer which will cause a software interrupt when it counts down to zero. The value is specified in seconds, maximum **255**. Setting the value to **0** will stop the timer without causing an interrupt.

The timer always stops when it reaches **0**, and must be explicitly re-started.

The software interrupt exception (**EXTYPE 9229**) will have to be dealt with by an exception handler, or the program will stop operation. After the exception, `ASK INTERRUPT CODE A` will assign to **A** the value **64** if the interrupt came from the timer.
