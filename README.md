# Add Firewall Rules v3

Script para Windows que bloquea en el firewall todos los archivos `.exe` de una carpeta y sus subcarpetas.

## Uso

1. Copia `addfwrs_v3.bat` dentro de la carpeta que quieras proteger.
2. Ejecuta el archivo como **administrador**.
3. Confirma el aviso para iniciar el bloqueo.

El script busca los ejecutables de forma recursiva y crea dos reglas por archivo: una para conexiones entrantes y otra para conexiones salientes. Los nombres de las reglas usan como prefijo el nombre de la carpeta donde se encuentra el script.

> **Nota:** requiere Windows y permisos de administrador para modificar el firewall.
