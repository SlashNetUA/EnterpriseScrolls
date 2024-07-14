# DIM

`DIM array-list`

Declares numeric or string arrays; lower bound defaults to 0 if not specified. One or two dimensions are allowed. Maximum length cannot be specified for a string by using DIM, so the default of 132 characters is used. (Compare [STRING](man_cs-string.md).)

`DIM А(1 TO 10), FRED$(9), B(-7899 TO -7890)`

Note: all the above have 10 elements.
