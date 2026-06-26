# Порт 191 / BFh



----

> When and why would you want to enable the wait states on dave port $bf?  

**IstvanV**:    
> Enabling the wait states is generally only useful if you need:  
> - compatibility with real machines that use unusually slow DRAM; I think these are a small minority, but Zozosoft could probably tell more about how much of an issue this is in practice  
> - slower speed for better compatibility e.g. with the timing of ZX Spectrum conversions; writing 4 to port BFh results in comparable performance to a 3.5 MHz Z80 with no wait states  
>   
> Otherwise, it is better to disable wait states by writing 0Ch to port BFh.

**Zozosoft**:  
> Only very few machines got a slow DRAM or EPROM chips, which need the wait state. Because many programs use the no wait setting, then these machines failed and went to repair at about 25-30 years ago ! Personally I replaced memory in one machine, and about 2-3 German Basic EPROM.  
> At the early 90's some system expansions started set the no wait as default at the startup.  
> Finally I decided to change the default in my memory test.