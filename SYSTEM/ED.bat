if "[%1]" equ "[?]" (
  Echo.
  Echo Enters a directory
  Echo.
  Echo Usage: ED [DIRECTORY]
  exit /b 0
)
cd SYSTEM
>nul find "%1" MJOS\MAPPATH.MJOS && (
  Set "MCD=!MCD!:%1"
  cd ..\
  exit /b 0
) || (
  Echo.
  Echo %1 does not exist
  Echo.
  cd ..\
  exit /b 1
)
