if "[%1]" equ "[?]" (
  Echo.
  Echo Creates File Containing Text
  Echo.
  Echo.Usage: C/Create [NAME]
  exit /b 0
)
cd SYSTEM
>nul find "!MCD!:%1" MJOS\FILEPATH.MJOS && (
  echo %1 already exists in !MCD!
  cd ..\
  exit /b 1
) || (
  Echo !MCD!:%1.txt >> MJOS\FILEPATH.MJOS
  cd ..\
  exit /b 0
)
