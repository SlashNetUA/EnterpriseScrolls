# Визначення поточної частоти процесора

## Q: Is there a way to programatically check for turbo mode (and of what kind/speed is it)?

### A1: by Zozosoft

From my Quick memory test which is write the CPU speed at the startup screen:  
  
At **38h**:  
```
ROMIRQ            JP (IX)
```

```
LD HL,0  
                LD IX,IRQ1  
                LD BC,30B4H  
                OUT (C),B  
                EI  
                HALT  
IRQ1            LD IX,IRQ2  
                OUT (C),B  
                EI  
IRQW            INC HL  
                JP IRQW  
IRQ2            DI  
                LD BC,HL  
                LD DE,1000  
                CALL MUL_DE_BC  
                LD BC,HL  
                LD A,E  
                LD DE,12485  
                CALL DIV_ABC_DE  
                OR A  
                LD DE,6243  
                SBC HL,DE  
                JR C,NOTROUND  
                INC C  
NOTROUND
```
  
Then you got Mhz×100 value in **BC**. Measurement code need to run in non waited memory.  
  
In the real life these CPU speeds used: **4**, **6**, **7.12**, **10** MHz.

### Q2: Geco

Yes, count the instructions in a frame, and in this way possible to decide if the program runs in an emulator, or on real machine also if it is a turbo EP.  
My solution gives back 81h value in HL at 4 MHz 100h at 8 MHz, 200h at 16 MHz , and so on, but for this 14 lines should be defined into that LPB where the interrupt flag is set.  
István's solution is much more flexible, you can find it in source of DTM player, or in multimedia pack, or in any game conversion by István.