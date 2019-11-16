if "[%1]" equ "[?]" (
  Echo.
  Echo Reads File
  Echo.
  Echo Usage: R/Read [NAME]
  exit /b 0
)
cd SYSTEM
>nul find "%*" MJOS\FILEPATH.MJOS && (
  Set File=%*
  Set File=!File::=+!
  Echo [%*]
  Echo.
  TYPE MJOS\Data\!File!.MJOS
  cd ..\
  exit /b 0
) || (
  Echo %* does not exist
  cd ..\
  exit /b 1
)
