@echo off
title Descargador de Videos - yt-dlp
color 0A

:: Crear la carpeta si no existe
if not exist "C:\Videos_Descargados" mkdir "C:\Videos_Descargados"

:: Pedir al usuario que ingrese el link
set /p VIDEO_URL=Pegá el link del video de YouTube y presioná ENTER:

:: Ejecutar descarga con yt-dlp
yt-dlp -o "C:\Videos_Descargados\%%(title)s.%%(ext)s" %VIDEO_URL%

:: Pausa para que no se cierre el CMD
echo.
echo Descarga finalizada. El video fue guardado en C:\Videos_Descargados
pause
Eliminar archivos viejos que ya no se usan
