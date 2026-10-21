@echo off
setlocal
if exist "%~dp0build\classes\blahblah\hGui.class" goto launch
call "%~dp0build.bat"
if errorlevel 1 exit /b 1
:launch
rem Keep the caller's working directory so existing relative save files remain discoverable.
java -Xmx1g -cp "%~dp0build\classes" blahblah.hGui %*
