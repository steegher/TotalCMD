@echo off

setlocal

set dism=%SystemRoot%\system32\dism.exe
if exist %SystemRoot%\SysNative\dism.exe set dism=%SystemRoot%\SysNative\dism.exe

set feature=SMB1Protocol-Server

echo.
echo Please make sure to run this script only when necessary, i.e. if you
echo need to remotely manage services on a Vista or higher system from
echo a system running XP or older!
echo.
pause

echo.
echo Installing Windows feature %feature% ...
"%dism%" /Online /Enable-Feature /All /FeatureName:%feature% /LimitAccess

echo.
echo Installation complete. Please restart the system to enable the SMB1 server.

endlocal
