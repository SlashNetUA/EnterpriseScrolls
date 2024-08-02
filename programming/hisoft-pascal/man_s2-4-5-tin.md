# 2.4.5.9 TIN(NAME,START)

This procedure is used to load variables etc. that have been saved using the **TOUT** procedure. **NAME** is of type `ARRAY [1..n] OF CHAR` but should be exactly **8** characters in length if you wish compatibility with other versions of HiSoft Pascal, while **START** is of type INTEGER. The device is searched for the specified filename (if relevant) which is then loaded at memory address **START**. The length of the file is stored in the file by **TOUT**.

E.g. to load the variable saved in the above example use:

`TIN('TESTDATA',ADDR(TEMP));`

See [Appendix 4](man_a4-examples.md) for an example of the use of **TIN** and [TOUT](man_s2-4-5-tout.md).
