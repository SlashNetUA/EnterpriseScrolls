# APPENDIX 3: DATA REPRESENTATION AND STORAGE

## A 3.1 Data Representation

The following discussion details how data is represented internally by HiSoft Pascal.

The information on the amount of storage required in each case should be of use to most programmers; other details may be needed by those attempting to merge Pascal and machine code programs.

### A 3.1.1 Integers
Integers occupy **2** bytes of storage each, in 2's complement form.

Examples:

`1` ≡ `£0001`  
`256` ≡ `£0100`  
`-256` ≡ `£FFOO`

The standard Z80 register used by the compiler to hold integers is **HL**.

### A 3.1.2 CHARACTERS, BOOLEANS AND OTHER SCALARS

These occupy **1** byte of storage each, in pure, unsigned binary.

Characters:  
**8** bit, extended ASCII is used.

'`E`' ≡ `£45`  
'`[`' ≡ `£5B`

Booleans:  

`ORD(TRUE)`=`1` so **TRUE** is represented by **1**.  
`ORD(FALSE)`=`0` so **FALSE** is represented by **0**.

The standard Z80 register used by the compiler for the above is register **A**.

### A 3.1.3 REALS

The (mantissa, exponent) form is used similar to that used in standard scientific notation - only using binary instead of denary.

Examples:

**2** ≡ **2\*10<sup>0</sup>** or **1.0<sub>2</sub>\*2<sup>1</sup>**

**1** ≡ **1\*10<sup>0</sup>** or **1.0<sub>2</sub>\*2<sup>0</sup>**

**-12.5** ≡ **-1.25\*10<sup>1</sup>** or **-25\*2<sup>-1</sup>** ≡ **-11001<sub>2</sub>\*2<sup>-1</sup>** ≡ **-1.1001<sub>2</sub>\*2<sup>3</sup>** when normalised.

**0.1** ≡ **1.0\*10<sup>-1</sup>** or **1/10** ≡ **1/1010<sub>2</sub>** ≡ **0.1<sub>2</sub>/101<sub>2</sub>**
				so now we need to do some binary long division.
```
      0.0001100
    -----------------
101 | 0.100000000000000
         101
        ------
		  110
          101
         -----   
            1000
             101 at this point we see that the fraction recurs
            ----- 
```
≡ **0.1<sub>2</sub>/101<sub>2</sub>** ≡ **0.0001100<sub>2</sub>** ≡ **1.1001100<sub>2</sub>\*2<sup>-4</sup>** answer.

So how do we use the above results to represent these numbers in the computer? Well, firstly we reserve 4 bytes of storage for each real in the following format:

```
[sign] [normalised mantissa] [exponent] data
23      22                 0 7        0 bit
\________________/ \__________________/
        HL                  ED          register
```

**sign:**	the sign of the mantissa; **1** = negative, **0** = positive.  
**normalised mantissa:**	the mantissa normalised to the form **1.xxxxxx** with the top bit (bit **22**) always **1** except when representing zero (**HL**=**0**, **DE**=**0**).  
**exponent:**	the exponent in binary **2**'s complement form.

Thus:

**2** ≡ `0 1000000 00000000 00000000 00000001` (**£40,£00,£00,£01**)
**1** ≡ `0 1000000 00000000 00000000 00000000` (**£40,£00,£00,£00**)
**-12.5** ≡ `1 1100100 00000000 00000000 00000011` (**£E4,£00,£00,£03**)
**0.1** ≡ `0 1100110 01100110 01100110 11111100` (**£66,£66,£66,£FC**)

So, remembering that **HL** and **DE** are used to hold real numbers, then we would have to load the registers in the following way to represent each of the above numbers:

```
2 ≡ LD HL,£4000
    LD DE,£0100
```
```
1 ≡ LD HL,£4000
    LD DE,£0000
```
```
-12.5 ≡ LD HL,£E400
	    LD DE,£0300
```
```
0.1 ≡ LD HL,£6666
      LD DE,£FC66
```
The last example shows why calculations involving binary fractions can be inaccurate; **0.1** cannot be accurately represented as a binary fraction, to a finite number of decimal places.

*N.B. Reals are stored in memory in the order **ED LH**.*

### A 3.1.4 RECORDS AND ARRAYS

Records use the same amount of storage as the total of their components.

Arrays:

if  
**n**=number of elements in the array and  
**s**=size of each element then  
the number of bytes occupied by the array is **n\*s**. e.g.

an `ARRAY[1..10] OF INTEGER` requires **10\*2** = **20** bytes
an `ARRAY[2..12,1..10] OF CHAR` has **11\*10**=**110** elements and so requires **110** bytes.

### A3.1.5 SETS

Sets are stored as bit strings and so if the base type has n elements then the number of bytes used is: **(n-1) DIV 8 + 1**.

Examples:

a `SET OF CHAR` requires **(256-1) DIV 8 + 1** = **32** bytes.
a `SET OF (blue, green, yellow)` requires **(3-1) DIV 8 + 1** = **1** byte.

### A 3.1.6 POINTERS

Pointers occupy **2** bytes which contain the address (in Intel format i.e. low byte first) of the variable to which they point.

### A 3.2 VARIABLE STORAGE AT RUNTIME

There are **3** cases where the user needs information on how variables are stored at runtime:

a. Global variables – declared in the main program block.  
b. Local variables – declared in an inner block.  
c. Parameters and return values – passed to and from procedures and functions.  

These individual cases are discussed below and an example of how to use this information may be found in [Appendix 4](man_a4-examples.md).

#### GLOBAL VARIABLES

Global variables are allocated from the top of the runtime stack downwards e.g. if the runtime stack is at **£B000** and the main program variables are:

```
VAR	i:INTEGER;
	ch:CHAR;
	x:REAL;
```
then:

**i** (which occupies **2** bytes – see the previous section) will be stored at locations **£B000-2** and **£B000-1** i.e. at **£AFFE** and **£AFFF**.

**ch** (**1** byte) will be stored at location **£AFFE-1** i.e. at **£AFFD**.

**x** (**4** bytes) will be placed at **£AFF9**, **£AFFA**, **£AFFB** and **£AFFC**.

#### LOCAL VARIABLES

Local variables cannot be accessed via the stack very easily so, instead, the **IX** register is set up at the beginning of each inner block so that (**IX-4**) points to the start of the block's local variables e.g.

```
PROCEDURE test;
VAR	i,j:INTEGER;
```
then:

**i** (integer – so **2** bytes) will be placed at **IX-4-2** and **IX-4-1** i.e. **IX-6** and **IX-5**.

**j** will be placed at **IX-8** and **IX-7**.

#### PARAMETERS AND RETURNED VALUES

Value parameters are treated like local variables and, like these variables, the earlier a parameter is declared the higher address it has in memory. However, unlike variables, the lowest (not the highest) address is fixed and this is fixed at (**IX+2**) e.g.

```
PROCEDURE test(i:REAL; j:INTEGER);
```
then:

**j** (allocated first) is at **IX+2** and **IX+3**.

**i** is at **IX+4**, **IX+5**, **IX+6**, and **IX+7**.

Variable parameters are treated just like value parameters except that they are always allocated **2** bytes and these **2** bytes contain the address of the variable e.g.

```
PROCEDURE test(i:INTEGER; VAR x:REAL);
```
then:

the reference to **x** is placed at **IX+2** and **IX+3**; these locations contain the address where **x** is stored. The value of **i** is at **IX+4** and **IX+5**.

Returned values of functions are placed above the first parameter in memory e.g.

```
FUNCTION test(i:INTEGER):REAL;
```
then **i** is at **IX+2** and **IX+3** and space is reserved for the returned value at **IX+4**, **IX+5**, **IX+6** and **IX+7**.

## A3.3 INTERACTION WITH EXOS

HiSoft Pascal uses the following channel numbers:

**105** - keyboard
**120** - video for the editor
**121** - editor channel itself
**122**-**123** - internal for tape, printer etc.

We recommend using channel numbers from **131** upwards for any extra channels you wish to open in your open programs.