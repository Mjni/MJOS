if "[%1]" equ "[?]" (
  Echo Creates New Directory in Current Directory
  Echo.
  Echo Usage: ND [DIRECTORY]
  exit /b 0
)
cd SYSTEM
Set "DirectoryPath=!MCD!:%1"
if "!DirectoryPath!" equ "!MCD!:-" (
  Echo. You cannot use - in folder names
  cd ..\
  exit /b 0
)
>nul find "!DirectoryPath!" MJOS\MAPPATH.MJOS && (
  echo !DirectoryPath! already exists
  cd ..\
  exit /b 1
) || (
  Echo.!DirectoryPath!>>MJOS\MAPPATH.MJOS
  Echo. Directory Made at !DirectoryPath!
  cd ..\
  exit /b 0
)
