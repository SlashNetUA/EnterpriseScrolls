# 3.1 COMMENTS

A comment may occur between any two reserved words, numbers, identifiers or special symbols – see [Appendix 2](man_a2-reserved-words.md). A comment starts with a '`(`' character or the '`(*`' symbol pair. Unless the next character is a '`$`' all characters are ignored until the next '`)`' or '`*)`' character pair. If a '`$`' was found then the compiler looks for a series of compiler options (see below) after which characters are skipped until a '`)`' or '`*)`' is found.