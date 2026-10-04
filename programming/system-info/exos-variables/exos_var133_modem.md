---
title: EXOS variable 133 - MOD_MODE
---
# 133 - MOD_MODE — Current modem mode

Пристрої: [MODEM](../exos-devices/modem.md)  

`ASK 133 var`  
`SET 133, expr`  
`TOGGLE 133` - inverts value.

This variable select the standard used, dialing/answering method and guard tone control:

Default value: **2** (V22)

Modem standard used when answering/calling:

 - bits-**2**-**1**-**0**

| **2** | **1** | **0** |  №  |                                   |
|:-----:|:-----:|:-----:|:---:| --------------------------------- |
|   0   |   0   |   0   |  0  | Autoadjust		(only when answering) |
|   0   |   0   |   1   |  1  | **V21**			(300/150 baud)          |
|   0   |   1   |   0   |  2  | **V22**			(1200/600 bps)          |
|   0   |   1   |   1   |  3  | **V22bis**		(2400/1200/600 bps)   |
|   1   |   0   |   0   |  4  | **Bell 103**	(300/150 baud)       |
|   1   |   0   |   1   |  5  | **Bell212a**	(1200/600 baud)      |
|   1   |   1   |   0   |  6  | invalid - reserved                |
|   1   |   1   |   1   |  7  | invalid - reserved                |

 - bit-**3**:  **0**=autodial, **1**=manual dialing. (dials/connects immidiately)
 - bit-**4**:  **0**=autoanswer, **1**=manual answer. 

If autoanswer is selected then the modem will answer when the programmed no. of rings have been detected, else the modem does nothing.  When manual answer is selected, the modem will connect immidiately when a channel is opened and no phone no. is given.  

 - bit-**5**:  **0**=tone dialing, **1**=pulse dialing.
 - bit-**6**:  **0**=1800 Hz, **1**=550 Hz guard tone.
 - bit-**7**:  **0**=guard tone disabled, **1**=guard tone enabled.

The guard tone is transmitted together with the data, and only in answer mode. Normally the guard tone is disabled.