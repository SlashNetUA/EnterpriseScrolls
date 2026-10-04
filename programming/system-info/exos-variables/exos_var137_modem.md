---
title: EXOS variable 137 - MOD_STAT
---
# 137 - MOD_STAT — Current modem status

Пристрої: [MODEM](../exos-devices/modem.md)  

`ASK 137 var`  
`SET 137, expr`  
`TOGGLE 137` - inverts value.

This variable contains the current status of the modem.

The variable is used by the modem driver to detect when a change in the modem status has occurred, thus setting the variable to something different than the current modem status, will have the effect of forcing the modem driver to (re)display the current modem status.

The format of the variable is: 

 - Bits **0**-**3**: Current modem 'activity' status:
	- **0**: Disconnected
	- **1**: Dialing
	- **2**: Answer
	- **3**: Carrier
	- **4**: No dial tone
	- **5**: Engaged
	- **6**: (not used)
	- **7**: Loss of carrier
	- **8**: Ring detected
	- **9**: Call in progress
	- **10**: Answering call
 - Bits **4**-**6**: Current modem standard, when there is a carrier.
	 - **0**: no carrier exists
	 - **1**: V21
	 - **2**: V22
	 - **3**: V22bis
	 - **4**:  Bell 103
	 - **5**: Bell 121a
	 - **6**-**7**: invalid.. never occurs.
 - Bit-**7** is don't care.
