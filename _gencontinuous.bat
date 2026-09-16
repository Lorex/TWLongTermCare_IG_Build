@ECHO OFF
CALL "%~dp0_genonce.bat" -watch %*
EXIT /B %ERRORLEVEL%
