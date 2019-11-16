if "[%1]" equ "[?]" (
  Echo.
  Echo Writes To File
  Echo.
  Echo Usage: Write [NAME] [STRING]
  Echo Use Full Path
  exit /b 0
)
cd SYSTEM
Set "File=;%1"
Set "String=;%*"
Set "String=!String:%File%=!"
Set "File=!File:;=!"
>nul find "!File!" MJOS\FILEPATH.MJOS && (
  Set File=!File::=+!
  Echo !String! >> MJOS\Data\!File!.MJOS
  cd ..\
  exit /b 0
) || (
  Echo %1 does not exist
  cd ..\
  exit /b 0
)
