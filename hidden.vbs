Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "<path_to_script" & Chr(34), 0
Set WshShell = Nothing
