# 2.4.5.8 TOUT (NAME,START,SIZE)

**TOUT** is the procedure which is used to save variables to a device. The first parameter is of type `ARRAY[1..n] OF CHAR;` and is the EXOS device/filename of the file to be saved. **SIZE** bytes of memory are dumped starting from address **START**. Both these parameters are of type INTEGER. For compatibility with other versions of HiSoft Pascal you should use a filename of exactly **8** characters padded to the right with spaces and use the default device.

E.g. to save the variable **TEMP** to the default device under the name **TESTDATA**, you should use:

`TOUT('TESTDATA',ADDR(TEMP),SIZE(TEMP));`

The use of actual memory addresses (via [ADDR](man_s2-4-6-addr.md)) gives you far more flexibility than just the ability to save arrays. For example all the global variables may be saved in one file.

See [Appendix 4](man_a4-examples.md) for an example of the use of [TIN](man_s2-4-5-tin.md) and **TOUT**.
