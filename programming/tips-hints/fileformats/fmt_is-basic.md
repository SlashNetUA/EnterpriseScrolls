# IS-Basic BAS file format

## Header

| Name             | Length  | Byte offset | Description                                                                |
| ---------------- | ------- |:-----------:| -------------------------------------------------------------------------- |
| EXOS module type | 2 bytes |      0      | `00 03`: IS-BASIC programs in 1 file<br>`00 04`: IS-BASIC program (single) |
|                  |         |             |                                                                            |



## Tokens

| Value | Meaning  |
|:-----:| -------- |
|   0   | ALLOCATE |
|   1   | ASK      |
|   2   | AUTO     |
|   3   | CALL     |
|   4   | CAPTURE  |
|   5   | CASE     |
|   6   | CAUSE    |
|   7   | CLEAR    |
|   8   | CLOSE    |
|   9   | CODE     |
|  10   | CONTINUE |
|       |          |
