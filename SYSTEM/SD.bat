if "[%1]" equ "[?]" (
  Echo.
  Echo Displays Files and SubDirectories in Directory
  Echo.
  Echo Usage: SD [DIRECTORY]
  Echo.Use full path
  exit /b 0
)
cd SYSTEM
echo.
Echo [%1]
echo.
for /f "tokens=*" %%A in (MJOS\MAPPATH.MJOS) do (
  echo %%A |findstr /b "%1:" >nul && (
    echo.%%A
  )
)
for /f "tokens=*" %%B in (MJOS\FILEPATH.MJOS) do (
  echo %%B |findstr /b "%1:" >nul && (
    echo.%%B
  )
)
cd ..\
exit /b 0
