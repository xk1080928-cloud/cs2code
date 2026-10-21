@echo off
setlocal EnableDelayedExpansion
pushd "%~dp0"
if not exist build\classes mkdir build\classes
rem Quote each source path and use forward slashes for javac argument-file parsing.
(for /r src %%F in (*.java) do (
    set "SOURCE=%%F"
    echo "!SOURCE:\=/!"
)) > build\sources.list
javac -encoding UTF-8 -d build\classes @build\sources.list
set "RESULT=%ERRORLEVEL%"
popd
if not "%RESULT%"=="0" exit /b %RESULT%
echo Build complete. Launch with: run.bat
