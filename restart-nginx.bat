@ECHO OFF
if not exist "nginx\temp" mkdir nginx\temp
if not exist "nginx\logs" mkdir nginx\logs

taskkill /f /im nginx.exe
cd nginx
..\RunHiddenConsole.exe nginx.exe
cd ..

