# File management in Pascal

Written by [Zoltán Povázsay (Povi)](../../community/povi.md)  
Published in [Enterpress 2017 \#5-6](http://enterprise.iko.hu/magazines/Enterpress_2017_per_5-6_UK.pdf#page=8)  

HiSoft Pascal does not recognize file types. But there are two non-standard procedures for managing files, which we can use(with some limitations) to perform simple file operations: 

Using the [TOUT](../../manuals/hisoft-pascal-man-en/man_s2-4-5-tout.md) method, you can save any area of memory to a mass storage device: 

`tout(filename: string; address, count: integer);` 

The procedure writes the byte count and the starting address on the file header. The procedure automatically creates the file (if you open an existing file, it will be overwritten) and then closes it at the end of the operation.

You can retrieve the saved file using the [TIN](../../manuals/hisoft-pascal-man-en/man_s2-4-5-tin.md) procedure:

`tin(filename: string; address: integer);`

The procedure loads the filename file to the specified memory address. But the number of bytes you want to load cannot be specified, the entire contents of the file will be loaded at the address. Both procedures use channel 122, be careful to not open channel 122 before calling the procedures (in plain English: do not use this channel)! 

Let’s see an example of how to use the procedures! 

Suppose there is an array in which we store the names and scores of the top ten players:  

```
const fn = 'HISCORE';  

type     
  TSCORE = record      
    name  : packed array[1..3] of char;      
    score : integer;     
  end;
  
var     
  scores : array[1..10] of TSCORE; 
```  
  
The scores array can be written to the disk as follows: 
  
`tout (fn, addr (scores), size (scores));`
  
And when we start our game, we can load the saved scores as follows: 
   
`tin(fn, addr(scores));`

What are the disadvantages of these two procedures? One minor problem is that they are slow: the files are written and read character by character (Using exos 7 or exos 5); while using block operations would be much faster (exos 8 and exos 6). 

But the bigger problem is the lack of error handling! In the example above (reading scores from disk), if the file HISCORE does not exist on the disc (which is a common occurrence when the game is first launched), our game would stop with an error message! It would be good if we could handle the incorrect file operations that might occur (such as opening a non-existent file for reading, or writing to a read-only disk, etc.) ourselves.

Another limitation in the procedures is that we can’t position the file pointer (we only can read or write from the beginning, there is no possibility to add data at the end of the file).

To resolve these issues, look on the following magazine number for how to create your own file management procedures using Exos functions.