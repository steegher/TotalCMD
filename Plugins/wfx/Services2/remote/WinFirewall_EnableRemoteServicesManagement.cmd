@echo off

setlocal

set netsh=%SystemRoot%\system32\netsh.exe
if exist %SystemRoot%\SysNative\*.exe set netsh=%SystemRoot%\SysNative\netsh.exe

REM --- This script enables only select rules necessary to use Remote Service Management.
REM     Note that this might not work on all Windows versions (especially Server editions)
REM     because the script changes the rules in specific Firewall profiles, and some
REM     Windows versions may use different profiles for the same Windows Firewall rules.

REM --- 29503 = Remote Service Management (RPC)
REM --- 29507 = Remote Service Management (NP-In)

set "rules=29503 29507"

for %%R IN (%rules%) DO (
    for %%P IN (private "private,public") DO (
        "%netsh%" advfirewall firewall set rule name="@FirewallAPI.dll,-%%~R" dir=in profile="%%~P" new enable=yes
    )
)

endlocal
pause
