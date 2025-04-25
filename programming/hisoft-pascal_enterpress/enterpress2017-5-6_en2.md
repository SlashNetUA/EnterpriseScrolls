# Implementing string management functions

Written by: [Kiss László (Lacika)](../../community/lacika.md)  
Published in [Enterpress 2017 \#5-6](http://enterprise.iko.hu/magazines/Enterpress_2017_per_5-6_UK.pdf#page=9)  

In Pascal, therefore, a string of characters always stores the same number of characters, and this is settled when you specify the type of index when defining the type. If you want, for example, to use a string whose length varies during the program run, the following defining type is recommended: 

```
CONST MAXLGTH=78; 
TYPE STR=RECORD         
  LGTH:INTEGER;
  TEXT:ARRAY[1..MAXLGTH] OF CHAR;
END;
```

The **MAXLGTH** constant specifies the maximum length of the string used. We store in the **LGTH** field of the record that at the moment the first text element of the text field stores the actual text. The **NEV** variable type can be conveniently written in the usual way: 

`WRITELN(NEV.TEXT);`

When reading the value of a variable we also have to specify the length: 

```
PROCEDURE READSTR(VAR ST:STR); 
VAR I:INTEGER; 
BEGIN 
  READLN;READ(ST.TEXT); 
  IF (ST.TEXT[MAXLGTH]<>CHR(0)) THEN ST.LGTH:=- MAXLGTH
  ELSE BEGIN 
    I:=0; 
    REPEAT 
      I:=I+1 
    UNTIL ST.TEXT[I]=CHR(0);
    ST.LGTH:=I-1
  END
END;
```

If you want to read a text string named NEV in a STR variable, you simply have to call the procedure: 

`READSTR(NEV);`

Thus, is very easy to do an assignment between two identical STR type variables:

`NEV2:=NEV;`

You can also create string management procedures and functions, the easiest of which is to query the length of the text string stored in the variable: 

```
FUNCTION LENGTH(ST:STR):INTEGER; 
BEGIN  
  LENGTH:=ST.LGTH 
END;
```

The value of a STR variable can be deleted by the procedure below: 

```
PROCEDURE ERASESTR(VAR ST:STR); 
VAR I:INTEGER; 
BEGIN  
  FOR I:=1 TO MAXLGTH DO    
    ST.TEXT[I]:=CHR(0);  
  ST.LGTH:=0 
END;
```

The content of two **STR** variables can be concatenated with the **CONCAT** method, the result will go to the variable specified as the first parameter. 

```
PROCEDURE CONCAT(VAR ST1,ST2:STR); 
VAR I:INTEGER; 
BEGIN 
  I:=1;
  WHILE (ST1.LGTH<MAXLGTH) AND (I<=ST2.LGTH) DO 
  BEGIN
    ST1.TEXT[ST1.LGTH+1]:=ST2.TEXT[I];
    ST1.LGTH:=ST1.LGTH+1;I:=I+1
  END
END;
```

Using the **COPYSTR** method, you can copy the specified portion of a string variable to another string variable.

Template: `COPYSTR(VAR1,n1,n2,VAR2)`

The character on the **n1** position will be copied to **n2** position and the generated result stored in **VAR2**, its previous content overwritten.

```
PROCEDURE COPYSTR(ST1:STR;POS1,POS2:INTEGER;VAR ST2:STR);
VAR I:INTEGER;
BEGIN
  ERASESTR(ST2);
  IF POS1<1 THEN POS1:=1;
  IF POS2>ST1.LGTH THEN POS2:=ST1.LGTH;
  FOR I:=POS1 TO POS2 DO
    ST2.TEXT[I]:=ST1.TEXT[I];
  ST2.LGTH:=POS2-POS1+1;
  IF ST2.LGTH<0 THEN ST2.LGTH:=0
END;
```

With **DELSTR**, you can delete the specified part from the content of a string variable.

Template: `DELSTR (VAR,n1,n2)`

The deletion is done from the **n1** to the **n2** positions. The **COPYSTR** and **DELSTR** procedures are „dummyproof”, ie they control the specified parameters.

Using the **DELSTR** procedure, you can easily create the **LTRIM** method, which deletes spaces at the beginning of a string.

The **RTRIM** method, which deletes the spaces at the end of the string, can be created on a similar way:

```
```

The **UCASE** method capitalizes a string variable (replaces lowercase letters with uppercase letters, all other characters remain unchanged):

```
```

The **LCASE** procedure converts a string variable to lowercase:

```
PROCEDURE LCASE(VAR ST:STR);
VAR I:INTEGER;
BEGIN
  FOR I:=1 TO ST.LGTH DO
    IF ST.TEXT[I] IN ['A'..'Z'] THEN
      ST.TEXT[I]:=CHR(ORD(ST.TEXT[I])+32)
END;
```

The **POS** node searches for the position of the first occurrence of the text stored in the ST2 variable in the text string stored in the **ST1** variable. If the text you are looking for is not found, the returned value of the function is zero.

```
FUNCTION POS(ST1,ST2:STR):INTEGER;
VAR I,J:INTEGER;
BEGIN
  I:=1;J:=1;
  REPEAT
    IF ST1.TEXT[I]=ST2.TEXT[J] THEN J:=J+1 ELSE J:=1;
    I:=I+1;
  UNTIL (I>ST1.LGTH) OR (J>ST2.LGTH);
  IF J=ST2.LGTH+1 THEN POS:=I-J+1 ELSE POS:=0
END;
```

Eg, with the following function, any string, except a null one(empty), can be converted to an INTEGER type number. For the sake of simplicity, the largest convertible number is **32759**.

```
FUNCTION VAL(ST:STR):INTEGER;
VAR I,SZ:INTEGER;
  N:BOOLEAN;
BEGIN
  I:=0;SZ:=0;N:=FALSE;
  REPEAT
    I:=I+1;
    IF ST.TEXT[I]=’-’ THEN N:=TRUE;
  UNTIL (ST.TEXT[I] IN ['0'..'9']) OR (I=ST.LGTH);
  IF ST.TEXT[I] IN ['0'..'9'] THEN BEGIN
    SZ:=ORD(ST.TEXT[I])-48;
    FOR I:=I+1 TO ST.LGTH DO
      IF (ST.TEXT[I] IN [‚0’..’9’]) AND (SZ<3276) THEN
        SZ:=SZ*10+(ORD(ST.TEXT[I])-48)
  END;
  IF N THEN VAL:=-SZ ELSE VAL:=SZ
END;
```
