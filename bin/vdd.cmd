@echo off
setlocal

set app_exe=%~dp0ParsecVDisplay.exe
set parent_exe=%~dp0..\ParsecVDisplay.exe

if exist "%app_exe%" (
    start /b /wait "" "%app_exe%" -cli %*
) else if exist "%parent_exe%" (
    start /b /wait "" "%parent_exe%" -cli %*
) else (
    echo ParsecVDisplay.exe does not exist.
)

endlocal
