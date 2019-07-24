@echo off

setlocal

set netsh=%SystemRoot%\system32\netsh.exe
if exist %SystemRoot%\SysNative\*.exe set netsh=%SystemRoot%\SysNative\netsh.exe

REM --- This script enables all rules in the Remote Service Management group.
REM     That makes it like a catch-all.

REM --- 29502 = Remote Service Management [Group]

set "rules=29502"

for %%R IN (%rules%) DO (
    "%netsh%" advfirewall firewall set rule group="@FirewallAPI.dll,-%%~R" new enable=yes
)

endlocal
pause
