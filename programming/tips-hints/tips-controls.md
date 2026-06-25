# Робота з пристроями введення

## Q: How to check if any key pressed?  
  
for example, on ZX is:

```
xor a
in a,($FE)
```

### A1: keyboard

You have to read all key rows, something like the following:  

```
chkkey
	ld b,0ah
readkey
	ld a,b
	dec a
	out (0b5h),a
	in a,(0b5h)
	inc a
	ret nz          ;NZ if key pressed
	djnz readkey
	ret             ;Z if key not pressed
```

### A2: keyboard+joystick

if you want to check joystick also then:  

```
chkkey
	ld b,0ah
readkey
	ld a,b
	dec a
	out (0b5h),a
	in a,(0b5h)
	ld c,a
	in a,(0b6h)
	or 0feh
	and c
	inc a
	ret nz          ;NZ if key pressed
	djnz readkey
	ret             ;Z if key not pressed
```

> [!NOTE]
> With new [EnterMice](../../hardware/hid/mouse-entermice.md): to test the three fire buttons put `or 0f8h` ("**11111000b**") instead of  `or 0feh` ("**11111110b**")  on rows **0** and **5** of external joysticks (port **0b6h**).