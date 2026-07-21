@echo off
REM BATCH FILE ACTUALIZADO
cls

:: 1. Forzar al script a ubicarse en la carpeta donde está el archivo .bat
cd /d "%~dp0"

:: 2. Obtener el nombre de la carpeta actual y guardarlo en RULENAME
for %%I in ("%cd%") do set "RULENAME=%%~nxI"

ECHO =======================================================================
ECHO Quieres bloquear todas las conexiones en el firewall para los archivos *.exe
ECHO dentro de esta carpeta?
ECHO.
ECHO Las reglas llevaran el prefijo: "%RULENAME%"
ECHO =======================================================================
ECHO.
pause
Echo.

:: 3. Buscar y bloquear todos los .exe en el directorio del script
FOR /r "%~dp0" %%G in ("*.exe") Do (
    @echo Bloqueando: %%~nxG
    NETSH advfirewall firewall add rule name="%RULENAME% - %%~nxG" dir=in program="%%G" action="block" enable="yes"
    NETSH advfirewall firewall add rule name="%RULENAME% - %%~nxG" dir=out program="%%G" action="block" enable="yes"
)

Echo.
Echo Tarea completada.
Echo.
Echo Bloqueo finalizado...
pause
