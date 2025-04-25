# APPENDIX 4: SOME EXAMPLE HISOFT PASCAL PROGRAMS

There follow some example programs written in HiSoft Pascal. All have been thoroughly tested and therefore can be typed in with confidence.

Some of the programs may be of practical use; certainly all of them demonstrate particular aspects of the implementation of Pascal within HiSoft Pascal, to facilitate the user's learning process.

```
(Program to illustrate the use of TIN and TOUT.
The program constructs a very simple telephone
directory on tape and then reads it back. You
should write any searching required.)

PROGRAM TAPE;
CONST
	SizeStr=10;
TYPE
	Entry=RECORD
		Name:ARRAY [1..10] OF CHAR;
		Number:ARRAY [1..10] OF CHAR
	END;
VAR
	Directory:ARRAY [1..SizeStr] OF Entry;
	I:INTEGER;
BEGIN
(Set up the directory..)
FOR I:=1 TO SizeStr DO
BEGIN
	WITH Directory [I] DO
	BEGIN
		WRITE('Name please');
		READLN;
		READ(Name);
		WRITELN;
		WRITE('Number please');
		READLN;
		READ(Number);
		WRITELN
	END
END;

(To dump the directory to tape use..)
	TOUT('Director',ADDR(Directory),SIZE(Directory))

(Now to read the array back do the following..)
	TIN('Director',ADDR(Directory))

(And now you can process the directory as you wish.....)
END.
```
```
10 (Program to shown the use of recursion)
20
30 PROGRAM FACTOR;
40
50 (This program calculates the factorial of a number input
60 from the keyboard 1) using recursion and 2) using an
70 iterative method.)
80 TYPE
90 	POSINT = 0..MAXINT;
100
110 VAR
120 	METHOD:CHAR;
130 	NUMBER:POSINT;
140
150 (Recursive algorithm.)
160
170 FUNCTION RFAC(N:POSINT):INTEGER;
180
190 VAR F:POSINT;
200
210 BEGIN
220 	IF N>1 THEN F:=N*RFAC(N-1)	(RFAC invoked N times)
230 		ELSE F:=1;
240 	RFAC:=F
250 END;
260
270 (Iterative solution)
280
290 FUNCTION IFAC(N:POSINT):INTEGER;
300
310 	VAR I,F:POSINT;
320 	BEGIN
330 		F:=1;
340 		FOR I:=2 TO N DO F:=F*I;	(Simple Loop)
350 		IFAC:=F
360 	END;
370
380 BEGIN
390 	REPEAT
400 		WRITE('Give method (I or R) and number ');
410 		READLN;
420 		READ(METHOD,NUMBER);
430 		IF METHOD ='R'
440 			THEN WRITELN(NUMBER,'! = ',RFAC(NUMBER))
450 			ELSE WRITELN(NUMBER,'! = ',IFAC(NUMBER))
460 	UNTIL NUMBER=0
470 END.
```
```
10 (Program to list lines of a file in reverse order.
20 Shows use of pointers, records, MARK and RELEASE.)
30
40 PROGRAM ReverseLine;
50
60 TYPE elem=RECORD	(Create linked-list structure)
70 		next:^elem;
80 		ch:CHAR
90 	END;
100 link=^elem;
110
120 VAR prev,cur,heap:link;	(all pointers to 'elem')
130
140 BEGIN
150 	REPEAT			(do this many times)
160 		MARK (heap);	(assign top of heap to 'heap')
170 		prev:=NIL;		(points to no variable yet)
180 		WHILE NOT EOLN DO
190 			BEGIN
200 				NEW(cur);		(create a new dynamic record)
210 				READ(cur^.ch);	(and assign its field to one
220 							character from file)
230 				cur^.next:=prev;	(this field's pointer address)
240 				prev:=cur		(previous record)
250 			END;
260
270 (Write out the line backwards by scanning the records
280 set up backwards.)
290
300 	cur:=prev;
310 	WHILE cur <> NIL DO		(NIL is first)
320 		BEGIN
330 			WRITE(cur^.ch);	(WRITE this field i.e. character)
340 			cur:=cur^.next	(Address previous field.)
350 		END;
360 	WRITELN;
370 	RELEASE(heap);	(Release dynamic variable space.)
380 	READLN		(Wait for another line)
390 UNTIL FALSE		(Use STOP to exit)
400 END.
```
```
10 (Program to show how to 'get your hands dirty'!
20 i.e. how to modify Pascal Variables using machine code.
30 Demonstrates PEEK, POKE, ADDR and INLINE.)
40 
50 PROGRAM divmult2;
60
70 VAR r:REAL;
80
90 FUNCTION divby2(x:REAL):REAL;	(Function to divide 2 ..
100 						.. quickly)
110 VAR i:INTEGER;
120 BEGIN
130 	i:=ADDR(x)+1;		(Point to the exponent of x)
140 	POKE(i,PRED(PEEK(i,CHAR)));	(Decrement the exponent of x.
150 							see Appendix 3.1.3.)
160 	divby2:=x
170 END;
180
190 FUNCTION multby2(x:REAL):REAL;	(Function to multiply by 2..
200						.. quickly)
210 BEGIN
220 	INLINE(?DD,?34,3)			(INC (IX+3) — the exponent of x
230 							— see Appendix 3.2.)
240 	multby2:=x
250 END;
260 
270 BEGIN
280 	REPEAT
290 		WRITE('Enter the number r ');
300 		READ(r);					(No need for READLN - see
310 									Section 2.4.1.4)
320
330 		WRITELN('r divided by two is ',divby2(r):7:2);
340 		WRITELN('r multiplied by two is ',multby2(r):7:2)
350 	UNTIL r=0
360 END.
```