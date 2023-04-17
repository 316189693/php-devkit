@ECHO OFF

ECHO Starting PHP FastCGI...

taskkill /f /im php-cgi.exe

set mypath=%cd%
ECHO %mypath%
set PHP_ROOT=%mypath%\php
ECHO %PHP_ROOT%
ECHO `.\RunHiddenConsole.exe %PHP_ROOT%\php-cgi.exe -c %PHP_ROOT%\php.ini -b 127.0.0.1:9001`
.\RunHiddenConsole.exe %PHP_ROOT%\php-cgi.exe -c %PHP_ROOT%\php.ini -b 127.0.0.1:9001
