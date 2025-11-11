# Appendix D: Working with an Enterprise 64

An **Enterprise 64** can be used with the disk interface unit in exactly the same manner as an **Enterprise 128**, although there will of course be less memory to use for the [RAMDISK](../dos-commands/cmd-ramdisk.md) and other EXDOS features. The advantages of IS-DOS will be best realised with the **Enterprise 128**.

If you are using an Enterprise 64 with EXOS version **2.0**, there are two restrictions you will have on the use of EXDOS:

 - You will not be able to use the "null" filename to load the file "START" from disk (see appendix E). If you press **Fkey 1** (START) from BASIC, EXDOS will think that you are trying to load a file from the [RAMDISK](../dos-commands/cmd-ramdisk.md). *(fixed in EXDOS 1.4)*
 - The wildcard operation of `*` and `?` cannot be used from BASIC or other programs which use the EXOS "disk device" (this does not apply to the EXDOS command interpreter).

Note: Enterprise Computers Ltd. offers an upgrade service for owners of Enterprise 64 computers.