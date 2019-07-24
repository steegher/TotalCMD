@echo off

setlocal

set netsh=%SystemRoot%\system32\netsh.exe
if exist %SystemRoot%\SysNative\*.exe set netsh=%SystemRoot%\SysNative\netsh.exe

REM --- 29503 = Remote Service Management (RPC)
REM --- 29507 = Remote Service Management (NP-In)

set "rules=29503 29507"

for %%R IN (%rules%) DO (
    "%netsh%" advfirewall firewall set rule name="@FirewallAPI.dll,-%%~R" dir=in profile="private,public" new profile=private
)

endlocal
pause
