# Function 0Bh: Console Status

## Parameters

None

## Results

**L**=**A** =
 - **00h**: if no character ready
 - **FFh**: if a character is ready

## Description

A flag is returned in register **A** to indicate whether a character is ready. Checks for '**Ctrl-C**', '**Ctrl-S**' and '**Ctrl-P**' will be done as for [function 02h](f02h.md).