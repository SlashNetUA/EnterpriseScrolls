# NET CHANNEL

`ASK NET CHANNEL var`

Returns the channel number from which there is data in a network buffer waiting to be read.

When the first byte is read from this channel. **NET CHANNEL** moves on to pointing at the next channel which needs to be serviced. The value **255** is returned if no more channels have data.
