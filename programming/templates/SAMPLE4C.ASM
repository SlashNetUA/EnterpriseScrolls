		;Define EXOS call macro (not needed in Enterprise assemblers)

                MACRO EXOS n
                  RST 30H
                  DB  n
                ENDM

		ORG 0F0H

		;16 bytes EXOS file header (not needed in Enterprise assemblers)

		DB 0,5		;type 5 = machine code application program
		DW PEND-100H	;16 bit lenght
		DB 0,0,0,0,0,0,0,0,0,0,0,0 ;not used bytes

		;start of program, loaded at 100h

                LD SP,100H	;set the User Stack, 164 bytes free
				;EXOS use own system stack
				;When EXOS called or EXOS IRQ routine runing
				;only 8 bytes required in the User Stack
                LD HL,EXIT
                LD (0BFF8H),HL	;set the EXOS Warm ReStart address

				;this routine run whne the rest button pressed once
				;Now we use same routine as the "exit on error"
				;The EXIT ruotine release the allocated memory and
				;properly exit to ENTERPRISE logo.
				;With this way the program exit properly when the reset
				;pressed, no data loss (RAMDISK, System settings, loaded extensions, etc)
				;because no cold restart.

                LD A,12		;disable
                OUT (191),A	;memory wait states
		
		;setting the Border color to black

                LD BC,100H+27	;B=1 write
				;C=27 number of system variable (BORDER)	
                LD D,0		;new value
                EXOS 16		;handling EXOS variable

                CALL VID	;get a free Video segment
                JP NZ,EXIT	;if not available then exit
                LD A,C		;store
                LD (VIDS),A	;segment number
		OUT (0B3H),A	;paging to the page 3.

		
                LD DE,0		;segment number low
                RRA		;two bits
                RR D		;will be the
                RRA		;top two bits
                RR D		;of the video address
                LD (VIDADR1),DE ;this is the start of
				;pixel data in the video memory

		LD HL,3F00H	;after the pixel bytes
		ADD HL,DE	;starting the
		LD (LPTADR),HL	;Line Parameter Table (LPT)
                EXOS 24		;get a free segment
		JP NZ,EXIT	;if not available then exit
                LD A,C		;store
                LD (P1S),A	;segment number
                OUT (0B1H),A	;paging to the page 1.
                EXOS 24		;get a free segment
		JP NZ,EXIT	;if not available then exit
                LD A,C		;store
                LD (P2S),A	;segment number
                OUT (0B2H),A	;paging to the page 2.

		LD HL,4000H	;zero fill
		LD DE,4001H	;all
		LD (HL),L	;alocated
		LD BC,0BFFFH	;memory
		LDIR

                LD HL,LPT	;Line Parameter Table
                LD DE,0FF00H	;copy to
                LD BC,LPTH	;the end of video
                LDIR		;segment
		
                LD HL,(LPTADR)	;LPT video address
                LD B,4		;4 bit rotate
LPTA:           SRL H
                RR L
                DJNZ LPTA
                LD A,L		;low byte
                OUT (82H),A	;send to Nick
                LD A,H		;high 4 bits
                OR 0C0H		;enable Nick running
				;switch to the new LPT
				;at the end of current frame
                OUT (83H),A	;send to Nick
	
	;memory allocated, and 320x200 4 color display is ready

	;there is the room for the main program




	;wait for SPACE key
                DI
                LD A,8		;number of Space row
                OUT (0B5H),A	;select at the keyboard matrix
SPACE           IN A,(0B5H)	;read the selected row from matrix
                BIT 6,A		;SPACE pressed?
                JR NZ,SPACE	;continue waiting if no
                JP EXIT		;go to EXIT

 ;EP keyboard matrix:
 ;        b7    b6    b5    b4    b3    b2    b1    b0
 ;Row    80H   40H   20H   10H   08H   04H   02H   01H
 ; 0   L.SH.     Z     X     V     C     B     \     N
 ; 1    CTRL     A     S     F     D     G  LOCK     H
 ; 2     TAB     W     E     T     R     Y     Q     U
 ; 3     ESC     2     3     5     4     6     1     7
 ; 4      F1    F2    F7    F5    F6    F3    F8    F4
 ; 5         ERASE     ^     0     -     9           8
 ; 6             ]     :     L     ;     K           J
 ; 7     ALT ENTER   LEFT  HOLD   UP   RIGHT DOWN  STOP
 ; 8     INS SPACE R.SH.     .     /     ,   DEL     M
 ; 9                   [     P     @     0           I

	;EXIT routine at error or reset

EXIT:           DI
                LD SP,100H	;set User Stack
                LD A,255	;system segment
                OUT (0B2H),A	;to page 2.
                LD HL,EXIT
                LD (0BFF8H),HL	;set Warm ReStart address
                LD HL,(0BFF4H)	;EXOS LPT address
                SET 6,H		;convert to video address
                LD B,4		;rotate with 4 bits
ELPT:           SRL H
                RR L
                DJNZ ELPT
                LD A,L		;low byte
                OUT (82H),A	;send to Nick
                LD A,H		;high 4 bits
                OR 0C0H		;enable Nick running
				;switch to the new LPT
				;at the end of current frame
                OUT (83H),A	;send to Nick
                LD A,0F5H	;restore original
                LD HL,1837H	;EXOS IRQ routine
                LD (38H),A	;starting
                LD (39H),HL	;
				;If we make a own IRQ
				;routine with placing
				;JP instruction to 38h
                
                LD C,40H	;reset code=40 Deallocate all User RAM
                EXOS 0		;EXOS reset
                LD A,1		;ROM 1.
                OUT (0B3H),A	;to page 3.
                LD A,6		;6. function= Enterprise logo screen
                JP 0C00DH	;exit to ROM

	;video segment allocating routine

VID:            LD HL,PEND	;puffer area
                LD (HL),0	;start of the list
GETS:           EXOS 24		;get a free segment
                RET NZ		;if error then return
                LD A,C		;segment number
                CP 0FCH		;<0FCh?, no video segment?
                JR NC,ENDGET	;exit cycle if video
                INC HL		;next puffer address
                LD (HL),C	;store segment number
                JR GETS		;get next segment
ENDGET          PUSH BC		;store segment number
FREES           LD C,(HL)	;deallocate onwanted
                EXOS 25		;non video segments
                DEC HL		;previoud puffer address
                JR Z,FREES	;continue deallocating
				;when call the EXOS 25 function with
				;c=0 which is stored at the start of
				;list, then got a error, flag is NZ
                POP BC		;get back the video segment number
                XOR A		;Z = no error

                RET		;return

	;variables for storing allocated memory

VIDS            DB 0
P1S             DB 0
P2S             DB 0
LPTADR          DW 0

	;NICK Line Parameter Table (LPT)

LPT:        DB -200 ;200 lines
            DB 32H  ;0 01 1 001 0
                    ;VINT=0, no IRQ
                    ;Colour Mode=01, 4 colours mode
                    ;VRES=1, full vertical resolution
                    ;Video Mode=001, pixel graphics mode
                    ;Reload=0, LPT will continue
            DB 11   ;left margin=11
            DB 51   ;right margin=51
VIDADR1:    DW 0    ;primary video address, address of pixel data
            DW 0    ;secondary videó address, not used in pixel graphics mode
PALETTE:    DB 0,36,219,73,0,0,0,0 ;black, blue, yellow, red (not used colour are black)

            DB -50,12H,63,0,0,0,0,0,0,0,0,0,0,0,0,0
               ;50 lines of border, this is the bottom margin,

            DB -3,16,63,0,0,0,0,0,0,0,0,0,0,0,0,0
               ;3 black lines, syncronization off

            DB -4,16,6,63,0,0,0,0,0,0,0,0,0,0,0,0
               ;4 lines, syncronization on

            DB -1,90H,63,32,0,0,0,0,0,0,0,0,0,0,0,0
               ;1 line, syncronization will switch off at half of line
               ;the NICK chip generate video IRQ at this line

            DB 252,12H,6,63,0,0,0,0,0,0,0,0,0,0,0,0
               ;4 black lines

            DB -50,13H,63,0,0,0,0,0,0,0,0,0,0,0,0,0
               ;50 lines of border, this is the top margin,

                
LPTH:           EQU $-LPT ;length of LPT
PEND		EQU $	  ;end of program code, start of free area
                END


