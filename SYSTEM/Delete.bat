if "[%1]" equ "[?]" (
  Echo.
  Echo Deletes File
  Echo.
  Echo Usage: D/Delete [NAME]
  exit /b 0
)
cd SYSTEM
(
  type MJOS\FILEPATH.MJOS | findstr /v "%1"
) >> MJOS\TEMP.txt
del MJOS\FILEPATH.MJOS
ren MJOS\TEMP.txt FILEPATH.MJOS
cd ..\
exit /b 0
