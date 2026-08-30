---
title: "HiSoft Pascal Manual. 0.0 Introduction"
---
# 0.0 INTRODUCTION

**Hisoft Pascal** is a fast, easy-to-use and powerful version of the Pascal language as specified in the Pascal User Manual and Report (Jensen/Wirth Second Edition). Omissions from this specification are as follows:

The **FILE** structure is not supported; although variables may be saved to and loaded from tape or disc.  
A **RECORD** type may not have a **VARIANT** part.  
**PROCEDURE**s and **FUNCTION**s are not valid as parameters.  

Some extra functions and procedures are included to reflect the microcomputer environment (and EXOS in particular); among these are [INLINE](man_s2-4-5-inline.md), [POKE](man_s2-4-5-poke.md), [PEEK](man_s2-4-6-peek.md), [ADDR](man_s2-4-6-addr.md) and [EXOS](man_s2-4-6-exos.md).

The compiler occupies approximately **12K** of storage, the editor takes up **2K** and the runtimes roughly **5K**. The package is supplied on cassette tape.
