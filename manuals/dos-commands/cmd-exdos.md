# EXDOS

## Applicable systems

**EXDOS**: all versions  
**IS-DOS**: all versions  

## Format

`EXDOS [device:filename | channel]`

## Purpose

To initialise the EXDOS system and run simple batch files.

## Use

The EXDOS command reads EXOS extension commands ("colon" commands) and executes them, with it's own private video, editor and keyboard channels.

If a device/filename is specified, then a channel is opened to the device and closed again after the operation (default filename is **EXDOS.INI**). In this case, or if a channel is specified, then commands are read from the channel and executed. The commands may include any extension commands implemented by EXOS system extensions. Any error messages or text produced by the commands will appear on a video/editor page, which will be closed when the EXDOS command terminates.

If no device or channel are specified, then EXDOS enters an "interactive mode". In this mode, a prompt is printed (`:`) and commands are read from the editor.

Upon reading an end of file, Ctrl-Z or the **Esc** being pressed (in "interactive" mode), the EXDOS command terminates, closing all channels it may have opened and restoring all EXOS variables it may have changed. See Appendix E for more details.

## Examples

`:EXDOS B:`  
`:EXDOS EXDOS.INI`  
`:EXDOS #10`  
`:EXDOS`  