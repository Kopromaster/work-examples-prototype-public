@echo off
setlocal disabledelayedexpansion

set /p "reply=Would you like to delete .git directory including all subdirectories? [Y/other keys (+ Enter)] "

if /i "%reply%"=="Y" (
    echo Proceeding...
) else (
    echo Aborted.
    exit /b 1
)

set "CURRENT_PATH=%~dp0"

if exist "%CURRENT_PATH%.git\" (
    rd /s /q "%CURRENT_PATH%.git" >nul 2>&1
)

echo Done
endlocal
