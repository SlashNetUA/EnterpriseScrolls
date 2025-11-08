# PATH

## Format

`PATH [item [;item]... ]`

## Purpose

Displays or sets the transient command search path.

## Use

**item** consists of `[d:] [path]`

The "search path" is a list of directory paths which are searched, in the specified order, when the name of a transient command is given to IS-DOS for execution and is not found in the current directory. The search continues until the corresponding command file is found or the list is exhausted.

If no parameters are given with the **PATH** command, the list constituting the current "search path" will be printed, with the items separated by semi-colons. If the **PATH** command includes parameters, it specifies the search path which is subsequently to be used.

If no drive name is specified for an item, the logged-on drive (at the moment when the transient command is given) will be assumed. Similarly, if an item includes no directory path, the current directory of the specified drive will be searched.

If no **PATH** command has been given, the default action when searching for command files is to search only the current directory of the current drive. Hence, the command

```
PATH ;
```

can be used to cancel a previous PATH command.

Other valid separators, apart from a **semi-colon**, are **space**, **comma**, `/` and `=`.

## Examples

`PATH`  
_E:\\; A:\\; A:\\UTIL; B:\\_

`PATH ;`  
`PATH A:\, A:\COM, B:`

The effect of the last example is that when a transient command is subsequently given, the (then) current directory of the logged-on drive will be searched first, followed by the root directory of drive **A:**, then the sub-directory **A:\COM**, then the current directory for drive **B:**.

