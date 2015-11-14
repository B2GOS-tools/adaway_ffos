@echo off
title AdAway para Firefox OS
@echo ----------------------------------------------
@echo ----       AdAway para Firefox OS         ----
@echo ----    Script creado por @amirtorrez     ----
@echo ----     para la comunidad Vegnuxmod      ----
@echo ----------------------------------------------
@echo.
echo  Acciones:
echo   i = Instalar archivo hosts AdAway
echo   r = Restaurar archivo hosts por defecto
echo   s = Salir
@echo.
set/p acc= ?: 
@echo.
if "%acc%"=="i" goto inst
if "%acc%"=="r" goto rest
if "%acc%"=="s" goto final
:error
echo Accion ingresada no es correcta
@echo.
goto final
:inst
echo Instalando archivo hosts de AdAway...
@echo.
lib\adb.exe remount
lib\adb.exe push file/adaway/hosts /system/etc/
@echo.
echo Reiniciando dispositivo
lib\adb.exe reboot
@echo.
goto final
:rest
echo Instalando archivo hosts predeterminado...
@echo.
lib\adb.exe remount
lib\adb.exe push file/default/hosts /system/etc/
@echo.
echo Reiniciando dispositivo
lib\adb.exe reboot
@echo.
goto final
:final
pause
exit
