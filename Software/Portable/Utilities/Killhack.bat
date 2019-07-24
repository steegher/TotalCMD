echo "Stop Service"
net stop TrustedInstaller
net stop wuauserv
net stop SysMain
net stop WdiServiceHost
net stop WdiSystemHost
net stop BITS
timeout /t 1
exit