# 2.4.6.10 MAKESTR(s)

This function is used to pass strings to EXOS as EXOS requires strings to be stored in a different form to HiSoft Pascal. **MAKESTR** has one parameter of a string type (`ARRAY[1..N] OF CHAR`) and returns an integer value of the address of the corresponding EXOS string. This returned value may then be assigned to **RDE** etc. before calling EXOS. See the Turtle graphics package for an example of its use.
