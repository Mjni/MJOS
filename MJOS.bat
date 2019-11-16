@Echo off
Title MJOS / 1.0
CHCP 65001 >NUL
setlocal enabledelayedexpansion
if not exist SYSTEM\MJOS\ md SYSTEM\MJOS
if not exist SYSTEM\MJOS\Data\ md SYSTEM\MJOS\Data
if not exist SYSTEM\MJOS\FILEPATH.MJOS (
  cls
  Echo. Creating File
  break>SYSTEM\MJOS\FILEPATH.MJOS
)
if not exist SYSTEM\MJOS\MAPPATH.MJOS (
  cls
  Echo. Creating Paths
  (
  Echo.C
  ) >> SYSTEM\MJOS\MAPPATH.MJOS
)
Set MCD=C
:Enter
cls
Echo.
Echo.      MJOS.BAT
Echo.      MJNI © 2019
Echo.      V 1.0
:Command
Echo.
Set /p Command="!MCD!^>"
call SYSTEM\!Command!
goto :Command
